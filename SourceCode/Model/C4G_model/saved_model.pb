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
dense_213/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_213/kernel
u
$dense_213/kernel/Read/ReadVariableOpReadVariableOpdense_213/kernel*
_output_shapes

:
*
dtype0
t
dense_213/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_213/bias
m
"dense_213/bias/Read/ReadVariableOpReadVariableOpdense_213/bias*
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
lstm_639/lstm_cell_639/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_639/lstm_cell_639/kernel
?
1lstm_639/lstm_cell_639/kernel/Read/ReadVariableOpReadVariableOplstm_639/lstm_cell_639/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_639/lstm_cell_639/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_639/lstm_cell_639/recurrent_kernel
?
;lstm_639/lstm_cell_639/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_639/lstm_cell_639/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_639/lstm_cell_639/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_639/lstm_cell_639/bias
?
/lstm_639/lstm_cell_639/bias/Read/ReadVariableOpReadVariableOplstm_639/lstm_cell_639/bias*
_output_shapes	
:?*
dtype0
?
lstm_640/lstm_cell_640/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_640/lstm_cell_640/kernel
?
1lstm_640/lstm_cell_640/kernel/Read/ReadVariableOpReadVariableOplstm_640/lstm_cell_640/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_640/lstm_cell_640/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_640/lstm_cell_640/recurrent_kernel
?
;lstm_640/lstm_cell_640/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_640/lstm_cell_640/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_640/lstm_cell_640/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_640/lstm_cell_640/bias
?
/lstm_640/lstm_cell_640/bias/Read/ReadVariableOpReadVariableOplstm_640/lstm_cell_640/bias*
_output_shapes	
:?*
dtype0
?
lstm_641/lstm_cell_641/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_641/lstm_cell_641/kernel
?
1lstm_641/lstm_cell_641/kernel/Read/ReadVariableOpReadVariableOplstm_641/lstm_cell_641/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_641/lstm_cell_641/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_641/lstm_cell_641/recurrent_kernel
?
;lstm_641/lstm_cell_641/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_641/lstm_cell_641/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_641/lstm_cell_641/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_641/lstm_cell_641/bias
?
/lstm_641/lstm_cell_641/bias/Read/ReadVariableOpReadVariableOplstm_641/lstm_cell_641/bias*
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
Adam/dense_213/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_213/kernel/m
?
+Adam/dense_213/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_213/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_213/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_213/bias/m
{
)Adam/dense_213/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_213/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_639/lstm_cell_639/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_639/lstm_cell_639/kernel/m
?
8Adam/lstm_639/lstm_cell_639/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_639/lstm_cell_639/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_639/lstm_cell_639/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_639/lstm_cell_639/recurrent_kernel/m
?
BAdam/lstm_639/lstm_cell_639/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_639/lstm_cell_639/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_639/lstm_cell_639/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_639/lstm_cell_639/bias/m
?
6Adam/lstm_639/lstm_cell_639/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_639/lstm_cell_639/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_640/lstm_cell_640/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_640/lstm_cell_640/kernel/m
?
8Adam/lstm_640/lstm_cell_640/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_640/lstm_cell_640/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_640/lstm_cell_640/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_640/lstm_cell_640/recurrent_kernel/m
?
BAdam/lstm_640/lstm_cell_640/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_640/lstm_cell_640/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_640/lstm_cell_640/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_640/lstm_cell_640/bias/m
?
6Adam/lstm_640/lstm_cell_640/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_640/lstm_cell_640/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_641/lstm_cell_641/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_641/lstm_cell_641/kernel/m
?
8Adam/lstm_641/lstm_cell_641/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_641/lstm_cell_641/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_641/lstm_cell_641/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_641/lstm_cell_641/recurrent_kernel/m
?
BAdam/lstm_641/lstm_cell_641/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_641/lstm_cell_641/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_641/lstm_cell_641/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_641/lstm_cell_641/bias/m
?
6Adam/lstm_641/lstm_cell_641/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_641/lstm_cell_641/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_213/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_213/kernel/v
?
+Adam/dense_213/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_213/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_213/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_213/bias/v
{
)Adam/dense_213/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_213/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_639/lstm_cell_639/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_639/lstm_cell_639/kernel/v
?
8Adam/lstm_639/lstm_cell_639/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_639/lstm_cell_639/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_639/lstm_cell_639/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_639/lstm_cell_639/recurrent_kernel/v
?
BAdam/lstm_639/lstm_cell_639/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_639/lstm_cell_639/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_639/lstm_cell_639/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_639/lstm_cell_639/bias/v
?
6Adam/lstm_639/lstm_cell_639/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_639/lstm_cell_639/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_640/lstm_cell_640/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_640/lstm_cell_640/kernel/v
?
8Adam/lstm_640/lstm_cell_640/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_640/lstm_cell_640/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_640/lstm_cell_640/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_640/lstm_cell_640/recurrent_kernel/v
?
BAdam/lstm_640/lstm_cell_640/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_640/lstm_cell_640/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_640/lstm_cell_640/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_640/lstm_cell_640/bias/v
?
6Adam/lstm_640/lstm_cell_640/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_640/lstm_cell_640/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_641/lstm_cell_641/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_641/lstm_cell_641/kernel/v
?
8Adam/lstm_641/lstm_cell_641/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_641/lstm_cell_641/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_641/lstm_cell_641/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_641/lstm_cell_641/recurrent_kernel/v
?
BAdam/lstm_641/lstm_cell_641/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_641/lstm_cell_641/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_641/lstm_cell_641/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_641/lstm_cell_641/bias/v
?
6Adam/lstm_641/lstm_cell_641/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_641/lstm_cell_641/bias/v*
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
VARIABLE_VALUEdense_213/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_213/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_639/lstm_cell_639/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_639/lstm_cell_639/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_639/lstm_cell_639/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_640/lstm_cell_640/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_640/lstm_cell_640/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_640/lstm_cell_640/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_641/lstm_cell_641/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_641/lstm_cell_641/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_641/lstm_cell_641/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_213/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_213/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_639/lstm_cell_639/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_639/lstm_cell_639/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_639/lstm_cell_639/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_640/lstm_cell_640/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_640/lstm_cell_640/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_640/lstm_cell_640/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_641/lstm_cell_641/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_641/lstm_cell_641/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_641/lstm_cell_641/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_213/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_213/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_639/lstm_cell_639/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_639/lstm_cell_639/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_639/lstm_cell_639/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_640/lstm_cell_640/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_640/lstm_cell_640/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_640/lstm_cell_640/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_641/lstm_cell_641/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_641/lstm_cell_641/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_641/lstm_cell_641/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_639_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_639_inputlstm_639/lstm_cell_639/kernel'lstm_639/lstm_cell_639/recurrent_kernellstm_639/lstm_cell_639/biaslstm_640/lstm_cell_640/kernel'lstm_640/lstm_cell_640/recurrent_kernellstm_640/lstm_cell_640/biaslstm_641/lstm_cell_641/kernel'lstm_641/lstm_cell_641/recurrent_kernellstm_641/lstm_cell_641/biasdense_213/kerneldense_213/bias*
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
%__inference_signature_wrapper_3700244
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_213/kernel/Read/ReadVariableOp"dense_213/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_639/lstm_cell_639/kernel/Read/ReadVariableOp;lstm_639/lstm_cell_639/recurrent_kernel/Read/ReadVariableOp/lstm_639/lstm_cell_639/bias/Read/ReadVariableOp1lstm_640/lstm_cell_640/kernel/Read/ReadVariableOp;lstm_640/lstm_cell_640/recurrent_kernel/Read/ReadVariableOp/lstm_640/lstm_cell_640/bias/Read/ReadVariableOp1lstm_641/lstm_cell_641/kernel/Read/ReadVariableOp;lstm_641/lstm_cell_641/recurrent_kernel/Read/ReadVariableOp/lstm_641/lstm_cell_641/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_213/kernel/m/Read/ReadVariableOp)Adam/dense_213/bias/m/Read/ReadVariableOp8Adam/lstm_639/lstm_cell_639/kernel/m/Read/ReadVariableOpBAdam/lstm_639/lstm_cell_639/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_639/lstm_cell_639/bias/m/Read/ReadVariableOp8Adam/lstm_640/lstm_cell_640/kernel/m/Read/ReadVariableOpBAdam/lstm_640/lstm_cell_640/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_640/lstm_cell_640/bias/m/Read/ReadVariableOp8Adam/lstm_641/lstm_cell_641/kernel/m/Read/ReadVariableOpBAdam/lstm_641/lstm_cell_641/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_641/lstm_cell_641/bias/m/Read/ReadVariableOp+Adam/dense_213/kernel/v/Read/ReadVariableOp)Adam/dense_213/bias/v/Read/ReadVariableOp8Adam/lstm_639/lstm_cell_639/kernel/v/Read/ReadVariableOpBAdam/lstm_639/lstm_cell_639/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_639/lstm_cell_639/bias/v/Read/ReadVariableOp8Adam/lstm_640/lstm_cell_640/kernel/v/Read/ReadVariableOpBAdam/lstm_640/lstm_cell_640/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_640/lstm_cell_640/bias/v/Read/ReadVariableOp8Adam/lstm_641/lstm_cell_641/kernel/v/Read/ReadVariableOpBAdam/lstm_641/lstm_cell_641/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_641/lstm_cell_641/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3703456
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_213/kerneldense_213/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_639/lstm_cell_639/kernel'lstm_639/lstm_cell_639/recurrent_kernellstm_639/lstm_cell_639/biaslstm_640/lstm_cell_640/kernel'lstm_640/lstm_cell_640/recurrent_kernellstm_640/lstm_cell_640/biaslstm_641/lstm_cell_641/kernel'lstm_641/lstm_cell_641/recurrent_kernellstm_641/lstm_cell_641/biastotalcountAdam/dense_213/kernel/mAdam/dense_213/bias/m$Adam/lstm_639/lstm_cell_639/kernel/m.Adam/lstm_639/lstm_cell_639/recurrent_kernel/m"Adam/lstm_639/lstm_cell_639/bias/m$Adam/lstm_640/lstm_cell_640/kernel/m.Adam/lstm_640/lstm_cell_640/recurrent_kernel/m"Adam/lstm_640/lstm_cell_640/bias/m$Adam/lstm_641/lstm_cell_641/kernel/m.Adam/lstm_641/lstm_cell_641/recurrent_kernel/m"Adam/lstm_641/lstm_cell_641/bias/mAdam/dense_213/kernel/vAdam/dense_213/bias/v$Adam/lstm_639/lstm_cell_639/kernel/v.Adam/lstm_639/lstm_cell_639/recurrent_kernel/v"Adam/lstm_639/lstm_cell_639/bias/v$Adam/lstm_640/lstm_cell_640/kernel/v.Adam/lstm_640/lstm_cell_640/recurrent_kernel/v"Adam/lstm_640/lstm_cell_640/bias/v$Adam/lstm_641/lstm_cell_641/kernel/v.Adam/lstm_641/lstm_cell_641/recurrent_kernel/v"Adam/lstm_641/lstm_cell_641/bias/v*4
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
#__inference__traced_restore_3703586??+
?
?
/__inference_lstm_cell_609_layer_call_fn_3703036

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698051o
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
while_cond_3702915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702915___redundant_placeholder05
1while_while_cond_3702915___redundant_placeholder15
1while_while_cond_3702915___redundant_placeholder25
1while_while_cond_3702915___redundant_placeholder3
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
while_body_3702014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699699

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3699615*
condR
while_cond_3699614*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3702773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_213_lstm_641_while_body_3697894L
Hsequential_213_lstm_641_while_sequential_213_lstm_641_while_loop_counterR
Nsequential_213_lstm_641_while_sequential_213_lstm_641_while_maximum_iterations-
)sequential_213_lstm_641_while_placeholder/
+sequential_213_lstm_641_while_placeholder_1/
+sequential_213_lstm_641_while_placeholder_2/
+sequential_213_lstm_641_while_placeholder_3K
Gsequential_213_lstm_641_while_sequential_213_lstm_641_strided_slice_1_0?
?sequential_213_lstm_641_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_641_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_213_lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0:2(`
Nsequential_213_lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
([
Msequential_213_lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0:(*
&sequential_213_lstm_641_while_identity,
(sequential_213_lstm_641_while_identity_1,
(sequential_213_lstm_641_while_identity_2,
(sequential_213_lstm_641_while_identity_3,
(sequential_213_lstm_641_while_identity_4,
(sequential_213_lstm_641_while_identity_5I
Esequential_213_lstm_641_while_sequential_213_lstm_641_strided_slice_1?
?sequential_213_lstm_641_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_641_tensorarrayunstack_tensorlistfromtensor\
Jsequential_213_lstm_641_while_lstm_cell_611_matmul_readvariableop_resource:2(^
Lsequential_213_lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource:
(Y
Ksequential_213_lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource:(??Bsequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp?Asequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp?Csequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp?
Osequential_213/lstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_213/lstm_641/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_213_lstm_641_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_641_tensorarrayunstack_tensorlistfromtensor_0)sequential_213_lstm_641_while_placeholderXsequential_213/lstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpLsequential_213_lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_213/lstm_641/while/lstm_cell_611/MatMulMatMulHsequential_213/lstm_641/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpNsequential_213_lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_213/lstm_641/while/lstm_cell_611/MatMul_1MatMul+sequential_213_lstm_641_while_placeholder_2Ksequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_213/lstm_641/while/lstm_cell_611/addAddV2<sequential_213/lstm_641/while/lstm_cell_611/MatMul:product:0>sequential_213/lstm_641/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpMsequential_213_lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_213/lstm_641/while/lstm_cell_611/BiasAddBiasAdd3sequential_213/lstm_641/while/lstm_cell_611/add:z:0Jsequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_213/lstm_641/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_213/lstm_641/while/lstm_cell_611/splitSplitDsequential_213/lstm_641/while/lstm_cell_611/split/split_dim:output:0<sequential_213/lstm_641/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_213/lstm_641/while/lstm_cell_611/SigmoidSigmoid:sequential_213/lstm_641/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_213/lstm_641/while/lstm_cell_611/Sigmoid_1Sigmoid:sequential_213/lstm_641/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_213/lstm_641/while/lstm_cell_611/mulMul9sequential_213/lstm_641/while/lstm_cell_611/Sigmoid_1:y:0+sequential_213_lstm_641_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_213/lstm_641/while/lstm_cell_611/ReluRelu:sequential_213/lstm_641/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_213/lstm_641/while/lstm_cell_611/mul_1Mul7sequential_213/lstm_641/while/lstm_cell_611/Sigmoid:y:0>sequential_213/lstm_641/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_213/lstm_641/while/lstm_cell_611/add_1AddV23sequential_213/lstm_641/while/lstm_cell_611/mul:z:05sequential_213/lstm_641/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_213/lstm_641/while/lstm_cell_611/Sigmoid_2Sigmoid:sequential_213/lstm_641/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_213/lstm_641/while/lstm_cell_611/Relu_1Relu5sequential_213/lstm_641/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_213/lstm_641/while/lstm_cell_611/mul_2Mul9sequential_213/lstm_641/while/lstm_cell_611/Sigmoid_2:y:0@sequential_213/lstm_641/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_213/lstm_641/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_213_lstm_641_while_placeholder_1)sequential_213_lstm_641_while_placeholder5sequential_213/lstm_641/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_213/lstm_641/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_213/lstm_641/while/addAddV2)sequential_213_lstm_641_while_placeholder,sequential_213/lstm_641/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_213/lstm_641/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_213/lstm_641/while/add_1AddV2Hsequential_213_lstm_641_while_sequential_213_lstm_641_while_loop_counter.sequential_213/lstm_641/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_213/lstm_641/while/IdentityIdentity'sequential_213/lstm_641/while/add_1:z:0#^sequential_213/lstm_641/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_641/while/Identity_1IdentityNsequential_213_lstm_641_while_sequential_213_lstm_641_while_maximum_iterations#^sequential_213/lstm_641/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_641/while/Identity_2Identity%sequential_213/lstm_641/while/add:z:0#^sequential_213/lstm_641/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_641/while/Identity_3IdentityRsequential_213/lstm_641/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_213/lstm_641/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_641/while/Identity_4Identity5sequential_213/lstm_641/while/lstm_cell_611/mul_2:z:0#^sequential_213/lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_213/lstm_641/while/Identity_5Identity5sequential_213/lstm_641/while/lstm_cell_611/add_1:z:0#^sequential_213/lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_213/lstm_641/while/NoOpNoOpC^sequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOpB^sequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOpD^sequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_213_lstm_641_while_identity/sequential_213/lstm_641/while/Identity:output:0"]
(sequential_213_lstm_641_while_identity_11sequential_213/lstm_641/while/Identity_1:output:0"]
(sequential_213_lstm_641_while_identity_21sequential_213/lstm_641/while/Identity_2:output:0"]
(sequential_213_lstm_641_while_identity_31sequential_213/lstm_641/while/Identity_3:output:0"]
(sequential_213_lstm_641_while_identity_41sequential_213/lstm_641/while/Identity_4:output:0"]
(sequential_213_lstm_641_while_identity_51sequential_213/lstm_641/while/Identity_5:output:0"?
Ksequential_213_lstm_641_while_lstm_cell_611_biasadd_readvariableop_resourceMsequential_213_lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
Lsequential_213_lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resourceNsequential_213_lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0"?
Jsequential_213_lstm_641_while_lstm_cell_611_matmul_readvariableop_resourceLsequential_213_lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0"?
Esequential_213_lstm_641_while_sequential_213_lstm_641_strided_slice_1Gsequential_213_lstm_641_while_sequential_213_lstm_641_strided_slice_1_0"?
?sequential_213_lstm_641_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_641_tensorarrayunstack_tensorlistfromtensor?sequential_213_lstm_641_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_641_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOpBsequential_213/lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp2?
Asequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOpAsequential_213/lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp2?
Csequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOpCsequential_213/lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3701152

inputsH
5lstm_639_lstm_cell_609_matmul_readvariableop_resource:	?J
7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource:	d?E
6lstm_639_lstm_cell_609_biasadd_readvariableop_resource:	?H
5lstm_640_lstm_cell_610_matmul_readvariableop_resource:	d?J
7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource:	2?E
6lstm_640_lstm_cell_610_biasadd_readvariableop_resource:	?G
5lstm_641_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_641_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_213_matmul_readvariableop_resource:
7
)dense_213_biasadd_readvariableop_resource:
identity?? dense_213/BiasAdd/ReadVariableOp?dense_213/MatMul/ReadVariableOp?-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp?,lstm_639/lstm_cell_609/MatMul/ReadVariableOp?.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp?lstm_639/while?-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp?,lstm_640/lstm_cell_610/MatMul/ReadVariableOp?.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp?lstm_640/while?-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp?,lstm_641/lstm_cell_611/MatMul/ReadVariableOp?.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp?lstm_641/whileD
lstm_639/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_sliceStridedSlicelstm_639/Shape:output:0%lstm_639/strided_slice/stack:output:0'lstm_639/strided_slice/stack_1:output:0'lstm_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_639/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_639/zeros/packedPacklstm_639/strided_slice:output:0 lstm_639/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_639/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_639/zerosFilllstm_639/zeros/packed:output:0lstm_639/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_639/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_639/zeros_1/packedPacklstm_639/strided_slice:output:0"lstm_639/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_639/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_639/zeros_1Fill lstm_639/zeros_1/packed:output:0lstm_639/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_639/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_639/transpose	Transposeinputs lstm_639/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_639/Shape_1Shapelstm_639/transpose:y:0*
T0*
_output_shapes
:h
lstm_639/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_639/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_1StridedSlicelstm_639/Shape_1:output:0'lstm_639/strided_slice_1/stack:output:0)lstm_639/strided_slice_1/stack_1:output:0)lstm_639/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_639/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_639/TensorArrayV2TensorListReserve-lstm_639/TensorArrayV2/element_shape:output:0!lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_639/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_639/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_639/transpose:y:0Glstm_639/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_639/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_639/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_2StridedSlicelstm_639/transpose:y:0'lstm_639/strided_slice_2/stack:output:0)lstm_639/strided_slice_2/stack_1:output:0)lstm_639/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_639/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_639_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_639/lstm_cell_609/MatMulMatMul!lstm_639/strided_slice_2:output:04lstm_639/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_639/lstm_cell_609/MatMul_1MatMullstm_639/zeros:output:06lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_639/lstm_cell_609/addAddV2'lstm_639/lstm_cell_609/MatMul:product:0)lstm_639/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_639/lstm_cell_609/BiasAddBiasAddlstm_639/lstm_cell_609/add:z:05lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_639/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_639/lstm_cell_609/splitSplit/lstm_639/lstm_cell_609/split/split_dim:output:0'lstm_639/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_639/lstm_cell_609/SigmoidSigmoid%lstm_639/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_639/lstm_cell_609/Sigmoid_1Sigmoid%lstm_639/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mulMul$lstm_639/lstm_cell_609/Sigmoid_1:y:0lstm_639/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_639/lstm_cell_609/ReluRelu%lstm_639/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mul_1Mul"lstm_639/lstm_cell_609/Sigmoid:y:0)lstm_639/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/add_1AddV2lstm_639/lstm_cell_609/mul:z:0 lstm_639/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_639/lstm_cell_609/Sigmoid_2Sigmoid%lstm_639/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_639/lstm_cell_609/Relu_1Relu lstm_639/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mul_2Mul$lstm_639/lstm_cell_609/Sigmoid_2:y:0+lstm_639/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_639/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_639/TensorArrayV2_1TensorListReserve/lstm_639/TensorArrayV2_1/element_shape:output:0!lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_639/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_639/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_639/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_639/whileWhile$lstm_639/while/loop_counter:output:0*lstm_639/while/maximum_iterations:output:0lstm_639/time:output:0!lstm_639/TensorArrayV2_1:handle:0lstm_639/zeros:output:0lstm_639/zeros_1:output:0!lstm_639/strided_slice_1:output:0@lstm_639/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_639_lstm_cell_609_matmul_readvariableop_resource7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource6lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_639_while_body_3700784*'
condR
lstm_639_while_cond_3700783*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_639/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_639/TensorArrayV2Stack/TensorListStackTensorListStacklstm_639/while:output:3Blstm_639/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_639/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_639/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_3StridedSlice4lstm_639/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_639/strided_slice_3/stack:output:0)lstm_639/strided_slice_3/stack_1:output:0)lstm_639/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_639/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_639/transpose_1	Transpose4lstm_639/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_639/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_639/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_640/ShapeShapelstm_639/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_640/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_640/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_640/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_sliceStridedSlicelstm_640/Shape:output:0%lstm_640/strided_slice/stack:output:0'lstm_640/strided_slice/stack_1:output:0'lstm_640/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_640/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_640/zeros/packedPacklstm_640/strided_slice:output:0 lstm_640/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_640/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_640/zerosFilllstm_640/zeros/packed:output:0lstm_640/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_640/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_640/zeros_1/packedPacklstm_640/strided_slice:output:0"lstm_640/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_640/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_640/zeros_1Fill lstm_640/zeros_1/packed:output:0lstm_640/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_640/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_640/transpose	Transposelstm_639/transpose_1:y:0 lstm_640/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_640/Shape_1Shapelstm_640/transpose:y:0*
T0*
_output_shapes
:h
lstm_640/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_640/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_1StridedSlicelstm_640/Shape_1:output:0'lstm_640/strided_slice_1/stack:output:0)lstm_640/strided_slice_1/stack_1:output:0)lstm_640/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_640/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_640/TensorArrayV2TensorListReserve-lstm_640/TensorArrayV2/element_shape:output:0!lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_640/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_640/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_640/transpose:y:0Glstm_640/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_640/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_640/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_2StridedSlicelstm_640/transpose:y:0'lstm_640/strided_slice_2/stack:output:0)lstm_640/strided_slice_2/stack_1:output:0)lstm_640/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_640/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_640_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_640/lstm_cell_610/MatMulMatMul!lstm_640/strided_slice_2:output:04lstm_640/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_640/lstm_cell_610/MatMul_1MatMullstm_640/zeros:output:06lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_640/lstm_cell_610/addAddV2'lstm_640/lstm_cell_610/MatMul:product:0)lstm_640/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_640/lstm_cell_610/BiasAddBiasAddlstm_640/lstm_cell_610/add:z:05lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_640/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_640/lstm_cell_610/splitSplit/lstm_640/lstm_cell_610/split/split_dim:output:0'lstm_640/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_640/lstm_cell_610/SigmoidSigmoid%lstm_640/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_640/lstm_cell_610/Sigmoid_1Sigmoid%lstm_640/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mulMul$lstm_640/lstm_cell_610/Sigmoid_1:y:0lstm_640/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_640/lstm_cell_610/ReluRelu%lstm_640/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mul_1Mul"lstm_640/lstm_cell_610/Sigmoid:y:0)lstm_640/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/add_1AddV2lstm_640/lstm_cell_610/mul:z:0 lstm_640/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_640/lstm_cell_610/Sigmoid_2Sigmoid%lstm_640/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_640/lstm_cell_610/Relu_1Relu lstm_640/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mul_2Mul$lstm_640/lstm_cell_610/Sigmoid_2:y:0+lstm_640/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_640/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_640/TensorArrayV2_1TensorListReserve/lstm_640/TensorArrayV2_1/element_shape:output:0!lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_640/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_640/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_640/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_640/whileWhile$lstm_640/while/loop_counter:output:0*lstm_640/while/maximum_iterations:output:0lstm_640/time:output:0!lstm_640/TensorArrayV2_1:handle:0lstm_640/zeros:output:0lstm_640/zeros_1:output:0!lstm_640/strided_slice_1:output:0@lstm_640/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_640_lstm_cell_610_matmul_readvariableop_resource7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource6lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_640_while_body_3700923*'
condR
lstm_640_while_cond_3700922*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_640/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_640/TensorArrayV2Stack/TensorListStackTensorListStacklstm_640/while:output:3Blstm_640/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_640/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_640/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_3StridedSlice4lstm_640/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_640/strided_slice_3/stack:output:0)lstm_640/strided_slice_3/stack_1:output:0)lstm_640/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_640/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_640/transpose_1	Transpose4lstm_640/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_640/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_640/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_641/ShapeShapelstm_640/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_641/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_641/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_641/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_sliceStridedSlicelstm_641/Shape:output:0%lstm_641/strided_slice/stack:output:0'lstm_641/strided_slice/stack_1:output:0'lstm_641/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_641/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_641/zeros/packedPacklstm_641/strided_slice:output:0 lstm_641/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_641/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_641/zerosFilllstm_641/zeros/packed:output:0lstm_641/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_641/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_641/zeros_1/packedPacklstm_641/strided_slice:output:0"lstm_641/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_641/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_641/zeros_1Fill lstm_641/zeros_1/packed:output:0lstm_641/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_641/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_641/transpose	Transposelstm_640/transpose_1:y:0 lstm_641/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_641/Shape_1Shapelstm_641/transpose:y:0*
T0*
_output_shapes
:h
lstm_641/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_641/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_1StridedSlicelstm_641/Shape_1:output:0'lstm_641/strided_slice_1/stack:output:0)lstm_641/strided_slice_1/stack_1:output:0)lstm_641/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_641/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_641/TensorArrayV2TensorListReserve-lstm_641/TensorArrayV2/element_shape:output:0!lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_641/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_641/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_641/transpose:y:0Glstm_641/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_641/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_641/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_2StridedSlicelstm_641/transpose:y:0'lstm_641/strided_slice_2/stack:output:0)lstm_641/strided_slice_2/stack_1:output:0)lstm_641/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_641/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_641_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_641/lstm_cell_611/MatMulMatMul!lstm_641/strided_slice_2:output:04lstm_641/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_641/lstm_cell_611/MatMul_1MatMullstm_641/zeros:output:06lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_641/lstm_cell_611/addAddV2'lstm_641/lstm_cell_611/MatMul:product:0)lstm_641/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_641/lstm_cell_611/BiasAddBiasAddlstm_641/lstm_cell_611/add:z:05lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_641/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_641/lstm_cell_611/splitSplit/lstm_641/lstm_cell_611/split/split_dim:output:0'lstm_641/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_641/lstm_cell_611/SigmoidSigmoid%lstm_641/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_641/lstm_cell_611/Sigmoid_1Sigmoid%lstm_641/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mulMul$lstm_641/lstm_cell_611/Sigmoid_1:y:0lstm_641/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_641/lstm_cell_611/ReluRelu%lstm_641/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mul_1Mul"lstm_641/lstm_cell_611/Sigmoid:y:0)lstm_641/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/add_1AddV2lstm_641/lstm_cell_611/mul:z:0 lstm_641/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_641/lstm_cell_611/Sigmoid_2Sigmoid%lstm_641/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_641/lstm_cell_611/Relu_1Relu lstm_641/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mul_2Mul$lstm_641/lstm_cell_611/Sigmoid_2:y:0+lstm_641/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_641/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_641/TensorArrayV2_1TensorListReserve/lstm_641/TensorArrayV2_1/element_shape:output:0!lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_641/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_641/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_641/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_641/whileWhile$lstm_641/while/loop_counter:output:0*lstm_641/while/maximum_iterations:output:0lstm_641/time:output:0!lstm_641/TensorArrayV2_1:handle:0lstm_641/zeros:output:0lstm_641/zeros_1:output:0!lstm_641/strided_slice_1:output:0@lstm_641/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_641_lstm_cell_611_matmul_readvariableop_resource7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource6lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_641_while_body_3701062*'
condR
lstm_641_while_cond_3701061*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_641/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_641/TensorArrayV2Stack/TensorListStackTensorListStacklstm_641/while:output:3Blstm_641/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_641/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_641/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_3StridedSlice4lstm_641/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_641/strided_slice_3/stack:output:0)lstm_641/strided_slice_3/stack_1:output:0)lstm_641/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_641/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_641/transpose_1	Transpose4lstm_641/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_641/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_641/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_213/MatMul/ReadVariableOpReadVariableOp(dense_213_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_213/MatMulMatMul!lstm_641/strided_slice_3:output:0'dense_213/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_213/BiasAdd/ReadVariableOpReadVariableOp)dense_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_213/BiasAddBiasAdddense_213/MatMul:product:0(dense_213/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_213/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_213/BiasAdd/ReadVariableOp ^dense_213/MatMul/ReadVariableOp.^lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_639/lstm_cell_609/MatMul/ReadVariableOp/^lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_639/while.^lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_640/lstm_cell_610/MatMul/ReadVariableOp/^lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_640/while.^lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_641/lstm_cell_611/MatMul/ReadVariableOp/^lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_641/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_213/BiasAdd/ReadVariableOp dense_213/BiasAdd/ReadVariableOp2B
dense_213/MatMul/ReadVariableOpdense_213/MatMul/ReadVariableOp2^
-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_639/lstm_cell_609/MatMul/ReadVariableOp,lstm_639/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_639/whilelstm_639/while2^
-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_640/lstm_cell_610/MatMul/ReadVariableOp,lstm_640/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_640/whilelstm_640/while2^
-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_641/lstm_cell_611/MatMul/ReadVariableOp,lstm_641/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_641/whilelstm_641/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_639_while_body_3700357.
*lstm_639_while_lstm_639_while_loop_counter4
0lstm_639_while_lstm_639_while_maximum_iterations
lstm_639_while_placeholder 
lstm_639_while_placeholder_1 
lstm_639_while_placeholder_2 
lstm_639_while_placeholder_3-
)lstm_639_while_lstm_639_strided_slice_1_0i
elstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0:	?R
?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?M
>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
lstm_639_while_identity
lstm_639_while_identity_1
lstm_639_while_identity_2
lstm_639_while_identity_3
lstm_639_while_identity_4
lstm_639_while_identity_5+
'lstm_639_while_lstm_639_strided_slice_1g
clstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensorN
;lstm_639_while_lstm_cell_609_matmul_readvariableop_resource:	?P
=lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?K
<lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource:	???3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp?2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp?4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp?
@lstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_639/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0lstm_639_while_placeholderIlstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_639/while/lstm_cell_609/MatMulMatMul9lstm_639/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_639/while/lstm_cell_609/MatMul_1MatMullstm_639_while_placeholder_2<lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_639/while/lstm_cell_609/addAddV2-lstm_639/while/lstm_cell_609/MatMul:product:0/lstm_639/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_639/while/lstm_cell_609/BiasAddBiasAdd$lstm_639/while/lstm_cell_609/add:z:0;lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_639/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_639/while/lstm_cell_609/splitSplit5lstm_639/while/lstm_cell_609/split/split_dim:output:0-lstm_639/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_639/while/lstm_cell_609/SigmoidSigmoid+lstm_639/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_639/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_639/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_639/while/lstm_cell_609/mulMul*lstm_639/while/lstm_cell_609/Sigmoid_1:y:0lstm_639_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_639/while/lstm_cell_609/ReluRelu+lstm_639/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/mul_1Mul(lstm_639/while/lstm_cell_609/Sigmoid:y:0/lstm_639/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/add_1AddV2$lstm_639/while/lstm_cell_609/mul:z:0&lstm_639/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_639/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_639/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_639/while/lstm_cell_609/Relu_1Relu&lstm_639/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/mul_2Mul*lstm_639/while/lstm_cell_609/Sigmoid_2:y:01lstm_639/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_639/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_639_while_placeholder_1lstm_639_while_placeholder&lstm_639/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_639/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_639/while/addAddV2lstm_639_while_placeholderlstm_639/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_639/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_639/while/add_1AddV2*lstm_639_while_lstm_639_while_loop_counterlstm_639/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_639/while/IdentityIdentitylstm_639/while/add_1:z:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_1Identity0lstm_639_while_lstm_639_while_maximum_iterations^lstm_639/while/NoOp*
T0*
_output_shapes
: t
lstm_639/while/Identity_2Identitylstm_639/while/add:z:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_3IdentityClstm_639/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_4Identity&lstm_639/while/lstm_cell_609/mul_2:z:0^lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_639/while/Identity_5Identity&lstm_639/while/lstm_cell_609/add_1:z:0^lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_639/while/NoOpNoOp4^lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_639_while_identity lstm_639/while/Identity:output:0"?
lstm_639_while_identity_1"lstm_639/while/Identity_1:output:0"?
lstm_639_while_identity_2"lstm_639/while/Identity_2:output:0"?
lstm_639_while_identity_3"lstm_639/while/Identity_3:output:0"?
lstm_639_while_identity_4"lstm_639/while/Identity_4:output:0"?
lstm_639_while_identity_5"lstm_639/while/Identity_5:output:0"T
'lstm_639_while_lstm_639_strided_slice_1)lstm_639_while_lstm_639_strided_slice_1_0"~
<lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
=lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_639_while_lstm_cell_609_matmul_readvariableop_resource=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0"?
clstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensorelstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3703000

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3702916*
condR
while_cond_3702915*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_609_layer_call_fn_3703053

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698197o
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
/__inference_lstm_cell_610_layer_call_fn_3703134

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698401o
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
*__inference_lstm_641_layer_call_fn_3702406
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699025o
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703281

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
while_body_3699399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698197

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
while_cond_3701870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3701870___redundant_placeholder05
1while_while_cond_3701870___redundant_placeholder15
1while_while_cond_3701870___redundant_placeholder25
1while_while_cond_3701870___redundant_placeholder3
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
while_body_3699615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3703019

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
while_cond_3698955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698955___redundant_placeholder05
1while_while_cond_3698955___redundant_placeholder15
1while_while_cond_3698955___redundant_placeholder25
1while_while_cond_3698955___redundant_placeholder3
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
while_body_3699249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698547

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703215

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
*sequential_213_lstm_640_while_cond_3697754L
Hsequential_213_lstm_640_while_sequential_213_lstm_640_while_loop_counterR
Nsequential_213_lstm_640_while_sequential_213_lstm_640_while_maximum_iterations-
)sequential_213_lstm_640_while_placeholder/
+sequential_213_lstm_640_while_placeholder_1/
+sequential_213_lstm_640_while_placeholder_2/
+sequential_213_lstm_640_while_placeholder_3N
Jsequential_213_lstm_640_while_less_sequential_213_lstm_640_strided_slice_1e
asequential_213_lstm_640_while_sequential_213_lstm_640_while_cond_3697754___redundant_placeholder0e
asequential_213_lstm_640_while_sequential_213_lstm_640_while_cond_3697754___redundant_placeholder1e
asequential_213_lstm_640_while_sequential_213_lstm_640_while_cond_3697754___redundant_placeholder2e
asequential_213_lstm_640_while_sequential_213_lstm_640_while_cond_3697754___redundant_placeholder3*
&sequential_213_lstm_640_while_identity
?
"sequential_213/lstm_640/while/LessLess)sequential_213_lstm_640_while_placeholderJsequential_213_lstm_640_while_less_sequential_213_lstm_640_strided_slice_1*
T0*
_output_shapes
: {
&sequential_213/lstm_640/while/IdentityIdentity&sequential_213/lstm_640/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_213_lstm_640_while_identity/sequential_213/lstm_640/while/Identity:output:0*(
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
while_cond_3701540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3701540___redundant_placeholder05
1while_while_cond_3701540___redundant_placeholder15
1while_while_cond_3701540___redundant_placeholder25
1while_while_cond_3701540___redundant_placeholder3
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3698325

inputs(
lstm_cell_609_3698243:	?(
lstm_cell_609_3698245:	d?$
lstm_cell_609_3698247:	?
identity??%lstm_cell_609/StatefulPartitionedCall?while;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3698243lstm_cell_609_3698245lstm_cell_609_3698247*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698197n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3698243lstm_cell_609_3698245lstm_cell_609_3698247*
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
while_body_3698256*
condR
while_cond_3698255*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699333

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3699249*
condR
while_cond_3699248*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701768

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3701684*
condR
while_cond_3701683*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3698256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3698280_0:	?0
while_lstm_cell_609_3698282_0:	d?,
while_lstm_cell_609_3698284_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3698280:	?.
while_lstm_cell_609_3698282:	d?*
while_lstm_cell_609_3698284:	???+while/lstm_cell_609/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3698280_0while_lstm_cell_609_3698282_0while_lstm_cell_609_3698284_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698197?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3698280while_lstm_cell_609_3698280_0"<
while_lstm_cell_609_3698282while_lstm_cell_609_3698282_0"<
while_lstm_cell_609_3698284while_lstm_cell_609_3698284_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_639_layer_call_fn_3701174
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3698325|
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
?T
?
*sequential_213_lstm_640_while_body_3697755L
Hsequential_213_lstm_640_while_sequential_213_lstm_640_while_loop_counterR
Nsequential_213_lstm_640_while_sequential_213_lstm_640_while_maximum_iterations-
)sequential_213_lstm_640_while_placeholder/
+sequential_213_lstm_640_while_placeholder_1/
+sequential_213_lstm_640_while_placeholder_2/
+sequential_213_lstm_640_while_placeholder_3K
Gsequential_213_lstm_640_while_sequential_213_lstm_640_strided_slice_1_0?
?sequential_213_lstm_640_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_640_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_213_lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?a
Nsequential_213_lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?\
Msequential_213_lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?*
&sequential_213_lstm_640_while_identity,
(sequential_213_lstm_640_while_identity_1,
(sequential_213_lstm_640_while_identity_2,
(sequential_213_lstm_640_while_identity_3,
(sequential_213_lstm_640_while_identity_4,
(sequential_213_lstm_640_while_identity_5I
Esequential_213_lstm_640_while_sequential_213_lstm_640_strided_slice_1?
?sequential_213_lstm_640_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_640_tensorarrayunstack_tensorlistfromtensor]
Jsequential_213_lstm_640_while_lstm_cell_610_matmul_readvariableop_resource:	d?_
Lsequential_213_lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?Z
Ksequential_213_lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource:	???Bsequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp?Asequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp?Csequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp?
Osequential_213/lstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_213/lstm_640/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_213_lstm_640_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_640_tensorarrayunstack_tensorlistfromtensor_0)sequential_213_lstm_640_while_placeholderXsequential_213/lstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpLsequential_213_lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_213/lstm_640/while/lstm_cell_610/MatMulMatMulHsequential_213/lstm_640/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpNsequential_213_lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_213/lstm_640/while/lstm_cell_610/MatMul_1MatMul+sequential_213_lstm_640_while_placeholder_2Ksequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_213/lstm_640/while/lstm_cell_610/addAddV2<sequential_213/lstm_640/while/lstm_cell_610/MatMul:product:0>sequential_213/lstm_640/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpMsequential_213_lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_213/lstm_640/while/lstm_cell_610/BiasAddBiasAdd3sequential_213/lstm_640/while/lstm_cell_610/add:z:0Jsequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_213/lstm_640/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_213/lstm_640/while/lstm_cell_610/splitSplitDsequential_213/lstm_640/while/lstm_cell_610/split/split_dim:output:0<sequential_213/lstm_640/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_213/lstm_640/while/lstm_cell_610/SigmoidSigmoid:sequential_213/lstm_640/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_213/lstm_640/while/lstm_cell_610/Sigmoid_1Sigmoid:sequential_213/lstm_640/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_213/lstm_640/while/lstm_cell_610/mulMul9sequential_213/lstm_640/while/lstm_cell_610/Sigmoid_1:y:0+sequential_213_lstm_640_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_213/lstm_640/while/lstm_cell_610/ReluRelu:sequential_213/lstm_640/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_213/lstm_640/while/lstm_cell_610/mul_1Mul7sequential_213/lstm_640/while/lstm_cell_610/Sigmoid:y:0>sequential_213/lstm_640/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_213/lstm_640/while/lstm_cell_610/add_1AddV23sequential_213/lstm_640/while/lstm_cell_610/mul:z:05sequential_213/lstm_640/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_213/lstm_640/while/lstm_cell_610/Sigmoid_2Sigmoid:sequential_213/lstm_640/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_213/lstm_640/while/lstm_cell_610/Relu_1Relu5sequential_213/lstm_640/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_213/lstm_640/while/lstm_cell_610/mul_2Mul9sequential_213/lstm_640/while/lstm_cell_610/Sigmoid_2:y:0@sequential_213/lstm_640/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_213/lstm_640/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_213_lstm_640_while_placeholder_1)sequential_213_lstm_640_while_placeholder5sequential_213/lstm_640/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_213/lstm_640/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_213/lstm_640/while/addAddV2)sequential_213_lstm_640_while_placeholder,sequential_213/lstm_640/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_213/lstm_640/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_213/lstm_640/while/add_1AddV2Hsequential_213_lstm_640_while_sequential_213_lstm_640_while_loop_counter.sequential_213/lstm_640/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_213/lstm_640/while/IdentityIdentity'sequential_213/lstm_640/while/add_1:z:0#^sequential_213/lstm_640/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_640/while/Identity_1IdentityNsequential_213_lstm_640_while_sequential_213_lstm_640_while_maximum_iterations#^sequential_213/lstm_640/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_640/while/Identity_2Identity%sequential_213/lstm_640/while/add:z:0#^sequential_213/lstm_640/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_640/while/Identity_3IdentityRsequential_213/lstm_640/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_213/lstm_640/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_640/while/Identity_4Identity5sequential_213/lstm_640/while/lstm_cell_610/mul_2:z:0#^sequential_213/lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_213/lstm_640/while/Identity_5Identity5sequential_213/lstm_640/while/lstm_cell_610/add_1:z:0#^sequential_213/lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_213/lstm_640/while/NoOpNoOpC^sequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOpB^sequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOpD^sequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_213_lstm_640_while_identity/sequential_213/lstm_640/while/Identity:output:0"]
(sequential_213_lstm_640_while_identity_11sequential_213/lstm_640/while/Identity_1:output:0"]
(sequential_213_lstm_640_while_identity_21sequential_213/lstm_640/while/Identity_2:output:0"]
(sequential_213_lstm_640_while_identity_31sequential_213/lstm_640/while/Identity_3:output:0"]
(sequential_213_lstm_640_while_identity_41sequential_213/lstm_640/while/Identity_4:output:0"]
(sequential_213_lstm_640_while_identity_51sequential_213/lstm_640/while/Identity_5:output:0"?
Ksequential_213_lstm_640_while_lstm_cell_610_biasadd_readvariableop_resourceMsequential_213_lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
Lsequential_213_lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resourceNsequential_213_lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0"?
Jsequential_213_lstm_640_while_lstm_cell_610_matmul_readvariableop_resourceLsequential_213_lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0"?
Esequential_213_lstm_640_while_sequential_213_lstm_640_strided_slice_1Gsequential_213_lstm_640_while_sequential_213_lstm_640_strided_slice_1_0"?
?sequential_213_lstm_640_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_640_tensorarrayunstack_tensorlistfromtensor?sequential_213_lstm_640_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_640_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOpBsequential_213/lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp2?
Asequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOpAsequential_213/lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp2?
Csequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOpCsequential_213/lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3701683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3701683___redundant_placeholder05
1while_while_cond_3701683___redundant_placeholder15
1while_while_cond_3701683___redundant_placeholder25
1while_while_cond_3701683___redundant_placeholder3
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
*__inference_lstm_639_layer_call_fn_3701163
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3698134|
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
while_cond_3698605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698605___redundant_placeholder05
1while_while_cond_3698605___redundant_placeholder15
1while_while_cond_3698605___redundant_placeholder25
1while_while_cond_3698605___redundant_placeholder3
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698401

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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699025

inputs'
lstm_cell_611_3698943:2('
lstm_cell_611_3698945:
(#
lstm_cell_611_3698947:(
identity??%lstm_cell_611/StatefulPartitionedCall?while;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3698943lstm_cell_611_3698945lstm_cell_611_3698947*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698897n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3698943lstm_cell_611_3698945lstm_cell_611_3698947*
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
while_body_3698956*
condR
while_cond_3698955*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_3698415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3698439_0:	d?0
while_lstm_cell_610_3698441_0:	2?,
while_lstm_cell_610_3698443_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3698439:	d?.
while_lstm_cell_610_3698441:	2?*
while_lstm_cell_610_3698443:	???+while/lstm_cell_610/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3698439_0while_lstm_cell_610_3698441_0while_lstm_cell_610_3698443_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698401?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3698439while_lstm_cell_610_3698439_0"<
while_lstm_cell_610_3698441while_lstm_cell_610_3698441_0"<
while_lstm_cell_610_3698443while_lstm_cell_610_3698443_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703183

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
while_body_3701398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3698606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3698630_0:	d?0
while_lstm_cell_610_3698632_0:	2?,
while_lstm_cell_610_3698634_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3698630:	d?.
while_lstm_cell_610_3698632:	2?*
while_lstm_cell_610_3698634:	???+while/lstm_cell_610/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3698630_0while_lstm_cell_610_3698632_0while_lstm_cell_610_3698634_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698547?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3698630while_lstm_cell_610_3698630_0"<
while_lstm_cell_610_3698632while_lstm_cell_610_3698632_0"<
while_lstm_cell_610_3698634while_lstm_cell_610_3698634_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701339
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3701255*
condR
while_cond_3701254*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702241

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3702157*
condR
while_cond_3702156*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3701254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3701254___redundant_placeholder05
1while_while_cond_3701254___redundant_placeholder15
1while_while_cond_3701254___redundant_placeholder25
1while_while_cond_3701254___redundant_placeholder3
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501

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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699483

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3699399*
condR
while_cond_3699398*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_640_layer_call_fn_3701801

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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699333s
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
while_body_3702630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3698134

inputs(
lstm_cell_609_3698052:	?(
lstm_cell_609_3698054:	d?$
lstm_cell_609_3698056:	?
identity??%lstm_cell_609/StatefulPartitionedCall?while;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3698052lstm_cell_609_3698054lstm_cell_609_3698056*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698051n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3698052lstm_cell_609_3698054lstm_cell_609_3698056*
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
while_body_3698065*
condR
while_cond_3698064*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_640_layer_call_fn_3701779
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3698484|
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
?K
?
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702571
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3702487*
condR
while_cond_3702486*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3702300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3701397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3701397___redundant_placeholder05
1while_while_cond_3701397___redundant_placeholder15
1while_while_cond_3701397___redundant_placeholder25
1while_while_cond_3701397___redundant_placeholder3
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
while_body_3702157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3702156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702156___redundant_placeholder05
1while_while_cond_3702156___redundant_placeholder15
1while_while_cond_3702156___redundant_placeholder25
1while_while_cond_3702156___redundant_placeholder3
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
while_cond_3699398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699398___redundant_placeholder05
1while_while_cond_3699398___redundant_placeholder15
1while_while_cond_3699398___redundant_placeholder25
1while_while_cond_3699398___redundant_placeholder3
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
lstm_639_while_cond_3700356.
*lstm_639_while_lstm_639_while_loop_counter4
0lstm_639_while_lstm_639_while_maximum_iterations
lstm_639_while_placeholder 
lstm_639_while_placeholder_1 
lstm_639_while_placeholder_2 
lstm_639_while_placeholder_30
,lstm_639_while_less_lstm_639_strided_slice_1G
Clstm_639_while_lstm_639_while_cond_3700356___redundant_placeholder0G
Clstm_639_while_lstm_639_while_cond_3700356___redundant_placeholder1G
Clstm_639_while_lstm_639_while_cond_3700356___redundant_placeholder2G
Clstm_639_while_lstm_639_while_cond_3700356___redundant_placeholder3
lstm_639_while_identity
?
lstm_639/while/LessLesslstm_639_while_placeholder,lstm_639_while_less_lstm_639_strided_slice_1*
T0*
_output_shapes
: ]
lstm_639/while/IdentityIdentitylstm_639/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_639_while_identity lstm_639/while/Identity:output:0*(
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
while_cond_3702299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702299___redundant_placeholder05
1while_while_cond_3702299___redundant_placeholder15
1while_while_cond_3702299___redundant_placeholder25
1while_while_cond_3702299___redundant_placeholder3
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
?C
?

lstm_640_while_body_3700496.
*lstm_640_while_lstm_640_while_loop_counter4
0lstm_640_while_lstm_640_while_maximum_iterations
lstm_640_while_placeholder 
lstm_640_while_placeholder_1 
lstm_640_while_placeholder_2 
lstm_640_while_placeholder_3-
)lstm_640_while_lstm_640_strided_slice_1_0i
elstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?R
?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?M
>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
lstm_640_while_identity
lstm_640_while_identity_1
lstm_640_while_identity_2
lstm_640_while_identity_3
lstm_640_while_identity_4
lstm_640_while_identity_5+
'lstm_640_while_lstm_640_strided_slice_1g
clstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensorN
;lstm_640_while_lstm_cell_610_matmul_readvariableop_resource:	d?P
=lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?K
<lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource:	???3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp?2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp?4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp?
@lstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_640/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0lstm_640_while_placeholderIlstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_640/while/lstm_cell_610/MatMulMatMul9lstm_640/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_640/while/lstm_cell_610/MatMul_1MatMullstm_640_while_placeholder_2<lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_640/while/lstm_cell_610/addAddV2-lstm_640/while/lstm_cell_610/MatMul:product:0/lstm_640/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_640/while/lstm_cell_610/BiasAddBiasAdd$lstm_640/while/lstm_cell_610/add:z:0;lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_640/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_640/while/lstm_cell_610/splitSplit5lstm_640/while/lstm_cell_610/split/split_dim:output:0-lstm_640/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_640/while/lstm_cell_610/SigmoidSigmoid+lstm_640/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_640/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_640/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_640/while/lstm_cell_610/mulMul*lstm_640/while/lstm_cell_610/Sigmoid_1:y:0lstm_640_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_640/while/lstm_cell_610/ReluRelu+lstm_640/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/mul_1Mul(lstm_640/while/lstm_cell_610/Sigmoid:y:0/lstm_640/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/add_1AddV2$lstm_640/while/lstm_cell_610/mul:z:0&lstm_640/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_640/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_640/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_640/while/lstm_cell_610/Relu_1Relu&lstm_640/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/mul_2Mul*lstm_640/while/lstm_cell_610/Sigmoid_2:y:01lstm_640/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_640/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_640_while_placeholder_1lstm_640_while_placeholder&lstm_640/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_640/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_640/while/addAddV2lstm_640_while_placeholderlstm_640/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_640/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_640/while/add_1AddV2*lstm_640_while_lstm_640_while_loop_counterlstm_640/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_640/while/IdentityIdentitylstm_640/while/add_1:z:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_1Identity0lstm_640_while_lstm_640_while_maximum_iterations^lstm_640/while/NoOp*
T0*
_output_shapes
: t
lstm_640/while/Identity_2Identitylstm_640/while/add:z:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_3IdentityClstm_640/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_4Identity&lstm_640/while/lstm_cell_610/mul_2:z:0^lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_640/while/Identity_5Identity&lstm_640/while/lstm_cell_610/add_1:z:0^lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_640/while/NoOpNoOp4^lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_640_while_identity lstm_640/while/Identity:output:0"?
lstm_640_while_identity_1"lstm_640/while/Identity_1:output:0"?
lstm_640_while_identity_2"lstm_640/while/Identity_2:output:0"?
lstm_640_while_identity_3"lstm_640/while/Identity_3:output:0"?
lstm_640_while_identity_4"lstm_640/while/Identity_4:output:0"?
lstm_640_while_identity_5"lstm_640/while/Identity_5:output:0"T
'lstm_640_while_lstm_640_strided_slice_1)lstm_640_while_lstm_640_strided_slice_1_0"~
<lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
=lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_640_while_lstm_cell_610_matmul_readvariableop_resource=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0"?
clstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensorelstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3701684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3702487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3702772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702772___redundant_placeholder05
1while_while_cond_3702772___redundant_placeholder15
1while_while_cond_3702772___redundant_placeholder25
1while_while_cond_3702772___redundant_placeholder3
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
while_body_3701255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_611_layer_call_fn_3703232

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698751o
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
*__inference_lstm_641_layer_call_fn_3702395
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3698834o
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
while_body_3701871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3702013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702013___redundant_placeholder05
1while_while_cond_3702013___redundant_placeholder15
1while_while_cond_3702013___redundant_placeholder25
1while_while_cond_3702013___redundant_placeholder3
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703313

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
?#
?
while_body_3698956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3698980_0:2(/
while_lstm_cell_611_3698982_0:
(+
while_lstm_cell_611_3698984_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3698980:2(-
while_lstm_cell_611_3698982:
()
while_lstm_cell_611_3698984:(??+while/lstm_cell_611/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3698980_0while_lstm_cell_611_3698982_0while_lstm_cell_611_3698984_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698897?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3698980while_lstm_cell_611_3698980_0"<
while_lstm_cell_611_3698982while_lstm_cell_611_3698982_0"<
while_lstm_cell_611_3698984while_lstm_cell_611_3698984_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_641_while_body_3700635.
*lstm_641_while_lstm_641_while_loop_counter4
0lstm_641_while_lstm_641_while_maximum_iterations
lstm_641_while_placeholder 
lstm_641_while_placeholder_1 
lstm_641_while_placeholder_2 
lstm_641_while_placeholder_3-
)lstm_641_while_lstm_641_strided_slice_1_0i
elstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_641_while_identity
lstm_641_while_identity_1
lstm_641_while_identity_2
lstm_641_while_identity_3
lstm_641_while_identity_4
lstm_641_while_identity_5+
'lstm_641_while_lstm_641_strided_slice_1g
clstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensorM
;lstm_641_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource:(??3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp?2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp?4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp?
@lstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_641/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0lstm_641_while_placeholderIlstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_641/while/lstm_cell_611/MatMulMatMul9lstm_641/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_641/while/lstm_cell_611/MatMul_1MatMullstm_641_while_placeholder_2<lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_641/while/lstm_cell_611/addAddV2-lstm_641/while/lstm_cell_611/MatMul:product:0/lstm_641/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_641/while/lstm_cell_611/BiasAddBiasAdd$lstm_641/while/lstm_cell_611/add:z:0;lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_641/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_641/while/lstm_cell_611/splitSplit5lstm_641/while/lstm_cell_611/split/split_dim:output:0-lstm_641/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_641/while/lstm_cell_611/SigmoidSigmoid+lstm_641/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_641/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_641/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_641/while/lstm_cell_611/mulMul*lstm_641/while/lstm_cell_611/Sigmoid_1:y:0lstm_641_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_641/while/lstm_cell_611/ReluRelu+lstm_641/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/mul_1Mul(lstm_641/while/lstm_cell_611/Sigmoid:y:0/lstm_641/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/add_1AddV2$lstm_641/while/lstm_cell_611/mul:z:0&lstm_641/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_641/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_641/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_641/while/lstm_cell_611/Relu_1Relu&lstm_641/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/mul_2Mul*lstm_641/while/lstm_cell_611/Sigmoid_2:y:01lstm_641/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_641/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_641_while_placeholder_1lstm_641_while_placeholder&lstm_641/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_641/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_641/while/addAddV2lstm_641_while_placeholderlstm_641/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_641/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_641/while/add_1AddV2*lstm_641_while_lstm_641_while_loop_counterlstm_641/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_641/while/IdentityIdentitylstm_641/while/add_1:z:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_1Identity0lstm_641_while_lstm_641_while_maximum_iterations^lstm_641/while/NoOp*
T0*
_output_shapes
: t
lstm_641/while/Identity_2Identitylstm_641/while/add:z:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_3IdentityClstm_641/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_4Identity&lstm_641/while/lstm_cell_611/mul_2:z:0^lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_641/while/Identity_5Identity&lstm_641/while/lstm_cell_611/add_1:z:0^lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_641/while/NoOpNoOp4^lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_641_while_identity lstm_641/while/Identity:output:0"?
lstm_641_while_identity_1"lstm_641/while/Identity_1:output:0"?
lstm_641_while_identity_2"lstm_641/while/Identity_2:output:0"?
lstm_641_while_identity_3"lstm_641/while/Identity_3:output:0"?
lstm_641_while_identity_4"lstm_641/while/Identity_4:output:0"?
lstm_641_while_identity_5"lstm_641/while/Identity_5:output:0"T
'lstm_641_while_lstm_641_strided_slice_1)lstm_641_while_lstm_641_strided_slice_1_0"~
<lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
=lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_641_while_lstm_cell_611_matmul_readvariableop_resource=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0"?
clstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensorelstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700179
lstm_639_input#
lstm_639_3700152:	?#
lstm_639_3700154:	d?
lstm_639_3700156:	?#
lstm_640_3700159:	d?#
lstm_640_3700161:	2?
lstm_640_3700163:	?"
lstm_641_3700166:2("
lstm_641_3700168:
(
lstm_641_3700170:(#
dense_213_3700173:

dense_213_3700175:
identity??!dense_213/StatefulPartitionedCall? lstm_639/StatefulPartitionedCall? lstm_640/StatefulPartitionedCall? lstm_641/StatefulPartitionedCall?
 lstm_639/StatefulPartitionedCallStatefulPartitionedCalllstm_639_inputlstm_639_3700152lstm_639_3700154lstm_639_3700156*
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3699183?
 lstm_640/StatefulPartitionedCallStatefulPartitionedCall)lstm_639/StatefulPartitionedCall:output:0lstm_640_3700159lstm_640_3700161lstm_640_3700163*
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699333?
 lstm_641/StatefulPartitionedCallStatefulPartitionedCall)lstm_640/StatefulPartitionedCall:output:0lstm_641_3700166lstm_641_3700168lstm_641_3700170*
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699483?
!dense_213/StatefulPartitionedCallStatefulPartitionedCall)lstm_641/StatefulPartitionedCall:output:0dense_213_3700173dense_213_3700175*
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501y
IdentityIdentity*dense_213/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_213/StatefulPartitionedCall!^lstm_639/StatefulPartitionedCall!^lstm_640/StatefulPartitionedCall!^lstm_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_213/StatefulPartitionedCall!dense_213/StatefulPartitionedCall2D
 lstm_639/StatefulPartitionedCall lstm_639/StatefulPartitionedCall2D
 lstm_640/StatefulPartitionedCall lstm_640/StatefulPartitionedCall2D
 lstm_641/StatefulPartitionedCall lstm_641/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_639_input
?
?
while_cond_3698414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698414___redundant_placeholder05
1while_while_cond_3698414___redundant_placeholder15
1while_while_cond_3698414___redundant_placeholder25
1while_while_cond_3698414___redundant_placeholder3
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702384

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3702300*
condR
while_cond_3702299*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_641_layer_call_and_return_conditional_losses_3698834

inputs'
lstm_cell_611_3698752:2('
lstm_cell_611_3698754:
(#
lstm_cell_611_3698756:(
identity??%lstm_cell_611/StatefulPartitionedCall?while;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3698752lstm_cell_611_3698754lstm_cell_611_3698756*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698751n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3698752lstm_cell_611_3698754lstm_cell_611_3698756*
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
while_body_3698765*
condR
while_cond_3698764*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3699944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699944___redundant_placeholder05
1while_while_cond_3699944___redundant_placeholder15
1while_while_cond_3699944___redundant_placeholder25
1while_while_cond_3699944___redundant_placeholder3
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
"__inference__wrapped_model_3697984
lstm_639_inputW
Dsequential_213_lstm_639_lstm_cell_609_matmul_readvariableop_resource:	?Y
Fsequential_213_lstm_639_lstm_cell_609_matmul_1_readvariableop_resource:	d?T
Esequential_213_lstm_639_lstm_cell_609_biasadd_readvariableop_resource:	?W
Dsequential_213_lstm_640_lstm_cell_610_matmul_readvariableop_resource:	d?Y
Fsequential_213_lstm_640_lstm_cell_610_matmul_1_readvariableop_resource:	2?T
Esequential_213_lstm_640_lstm_cell_610_biasadd_readvariableop_resource:	?V
Dsequential_213_lstm_641_lstm_cell_611_matmul_readvariableop_resource:2(X
Fsequential_213_lstm_641_lstm_cell_611_matmul_1_readvariableop_resource:
(S
Esequential_213_lstm_641_lstm_cell_611_biasadd_readvariableop_resource:(I
7sequential_213_dense_213_matmul_readvariableop_resource:
F
8sequential_213_dense_213_biasadd_readvariableop_resource:
identity??/sequential_213/dense_213/BiasAdd/ReadVariableOp?.sequential_213/dense_213/MatMul/ReadVariableOp?<sequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp?;sequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOp?=sequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp?sequential_213/lstm_639/while?<sequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp?;sequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOp?=sequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp?sequential_213/lstm_640/while?<sequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp?;sequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOp?=sequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp?sequential_213/lstm_641/while[
sequential_213/lstm_639/ShapeShapelstm_639_input*
T0*
_output_shapes
:u
+sequential_213/lstm_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_213/lstm_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_213/lstm_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_213/lstm_639/strided_sliceStridedSlice&sequential_213/lstm_639/Shape:output:04sequential_213/lstm_639/strided_slice/stack:output:06sequential_213/lstm_639/strided_slice/stack_1:output:06sequential_213/lstm_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_213/lstm_639/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_213/lstm_639/zeros/packedPack.sequential_213/lstm_639/strided_slice:output:0/sequential_213/lstm_639/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_213/lstm_639/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_639/zerosFill-sequential_213/lstm_639/zeros/packed:output:0,sequential_213/lstm_639/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_213/lstm_639/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_213/lstm_639/zeros_1/packedPack.sequential_213/lstm_639/strided_slice:output:01sequential_213/lstm_639/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_213/lstm_639/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_639/zeros_1Fill/sequential_213/lstm_639/zeros_1/packed:output:0.sequential_213/lstm_639/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_213/lstm_639/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_213/lstm_639/transpose	Transposelstm_639_input/sequential_213/lstm_639/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_213/lstm_639/Shape_1Shape%sequential_213/lstm_639/transpose:y:0*
T0*
_output_shapes
:w
-sequential_213/lstm_639/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_639/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_639/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_639/strided_slice_1StridedSlice(sequential_213/lstm_639/Shape_1:output:06sequential_213/lstm_639/strided_slice_1/stack:output:08sequential_213/lstm_639/strided_slice_1/stack_1:output:08sequential_213/lstm_639/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_213/lstm_639/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_213/lstm_639/TensorArrayV2TensorListReserve<sequential_213/lstm_639/TensorArrayV2/element_shape:output:00sequential_213/lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_213/lstm_639/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_213/lstm_639/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_213/lstm_639/transpose:y:0Vsequential_213/lstm_639/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_213/lstm_639/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_639/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_639/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_639/strided_slice_2StridedSlice%sequential_213/lstm_639/transpose:y:06sequential_213/lstm_639/strided_slice_2/stack:output:08sequential_213/lstm_639/strided_slice_2/stack_1:output:08sequential_213/lstm_639/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpDsequential_213_lstm_639_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_213/lstm_639/lstm_cell_609/MatMulMatMul0sequential_213/lstm_639/strided_slice_2:output:0Csequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpFsequential_213_lstm_639_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_213/lstm_639/lstm_cell_609/MatMul_1MatMul&sequential_213/lstm_639/zeros:output:0Esequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_213/lstm_639/lstm_cell_609/addAddV26sequential_213/lstm_639/lstm_cell_609/MatMul:product:08sequential_213/lstm_639/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpEsequential_213_lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_213/lstm_639/lstm_cell_609/BiasAddBiasAdd-sequential_213/lstm_639/lstm_cell_609/add:z:0Dsequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_213/lstm_639/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_213/lstm_639/lstm_cell_609/splitSplit>sequential_213/lstm_639/lstm_cell_609/split/split_dim:output:06sequential_213/lstm_639/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_213/lstm_639/lstm_cell_609/SigmoidSigmoid4sequential_213/lstm_639/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_213/lstm_639/lstm_cell_609/Sigmoid_1Sigmoid4sequential_213/lstm_639/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_213/lstm_639/lstm_cell_609/mulMul3sequential_213/lstm_639/lstm_cell_609/Sigmoid_1:y:0(sequential_213/lstm_639/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_213/lstm_639/lstm_cell_609/ReluRelu4sequential_213/lstm_639/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_213/lstm_639/lstm_cell_609/mul_1Mul1sequential_213/lstm_639/lstm_cell_609/Sigmoid:y:08sequential_213/lstm_639/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_213/lstm_639/lstm_cell_609/add_1AddV2-sequential_213/lstm_639/lstm_cell_609/mul:z:0/sequential_213/lstm_639/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_213/lstm_639/lstm_cell_609/Sigmoid_2Sigmoid4sequential_213/lstm_639/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_213/lstm_639/lstm_cell_609/Relu_1Relu/sequential_213/lstm_639/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_213/lstm_639/lstm_cell_609/mul_2Mul3sequential_213/lstm_639/lstm_cell_609/Sigmoid_2:y:0:sequential_213/lstm_639/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_213/lstm_639/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_213/lstm_639/TensorArrayV2_1TensorListReserve>sequential_213/lstm_639/TensorArrayV2_1/element_shape:output:00sequential_213/lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_213/lstm_639/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_213/lstm_639/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_213/lstm_639/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_213/lstm_639/whileWhile3sequential_213/lstm_639/while/loop_counter:output:09sequential_213/lstm_639/while/maximum_iterations:output:0%sequential_213/lstm_639/time:output:00sequential_213/lstm_639/TensorArrayV2_1:handle:0&sequential_213/lstm_639/zeros:output:0(sequential_213/lstm_639/zeros_1:output:00sequential_213/lstm_639/strided_slice_1:output:0Osequential_213/lstm_639/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_213_lstm_639_lstm_cell_609_matmul_readvariableop_resourceFsequential_213_lstm_639_lstm_cell_609_matmul_1_readvariableop_resourceEsequential_213_lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
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
*sequential_213_lstm_639_while_body_3697616*6
cond.R,
*sequential_213_lstm_639_while_cond_3697615*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_213/lstm_639/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_213/lstm_639/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_213/lstm_639/while:output:3Qsequential_213/lstm_639/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_213/lstm_639/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_213/lstm_639/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_639/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_639/strided_slice_3StridedSliceCsequential_213/lstm_639/TensorArrayV2Stack/TensorListStack:tensor:06sequential_213/lstm_639/strided_slice_3/stack:output:08sequential_213/lstm_639/strided_slice_3/stack_1:output:08sequential_213/lstm_639/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_213/lstm_639/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_213/lstm_639/transpose_1	TransposeCsequential_213/lstm_639/TensorArrayV2Stack/TensorListStack:tensor:01sequential_213/lstm_639/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_213/lstm_639/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_213/lstm_640/ShapeShape'sequential_213/lstm_639/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_213/lstm_640/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_213/lstm_640/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_213/lstm_640/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_213/lstm_640/strided_sliceStridedSlice&sequential_213/lstm_640/Shape:output:04sequential_213/lstm_640/strided_slice/stack:output:06sequential_213/lstm_640/strided_slice/stack_1:output:06sequential_213/lstm_640/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_213/lstm_640/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_213/lstm_640/zeros/packedPack.sequential_213/lstm_640/strided_slice:output:0/sequential_213/lstm_640/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_213/lstm_640/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_640/zerosFill-sequential_213/lstm_640/zeros/packed:output:0,sequential_213/lstm_640/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_213/lstm_640/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_213/lstm_640/zeros_1/packedPack.sequential_213/lstm_640/strided_slice:output:01sequential_213/lstm_640/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_213/lstm_640/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_640/zeros_1Fill/sequential_213/lstm_640/zeros_1/packed:output:0.sequential_213/lstm_640/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_213/lstm_640/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_213/lstm_640/transpose	Transpose'sequential_213/lstm_639/transpose_1:y:0/sequential_213/lstm_640/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_213/lstm_640/Shape_1Shape%sequential_213/lstm_640/transpose:y:0*
T0*
_output_shapes
:w
-sequential_213/lstm_640/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_640/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_640/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_640/strided_slice_1StridedSlice(sequential_213/lstm_640/Shape_1:output:06sequential_213/lstm_640/strided_slice_1/stack:output:08sequential_213/lstm_640/strided_slice_1/stack_1:output:08sequential_213/lstm_640/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_213/lstm_640/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_213/lstm_640/TensorArrayV2TensorListReserve<sequential_213/lstm_640/TensorArrayV2/element_shape:output:00sequential_213/lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_213/lstm_640/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_213/lstm_640/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_213/lstm_640/transpose:y:0Vsequential_213/lstm_640/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_213/lstm_640/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_640/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_640/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_640/strided_slice_2StridedSlice%sequential_213/lstm_640/transpose:y:06sequential_213/lstm_640/strided_slice_2/stack:output:08sequential_213/lstm_640/strided_slice_2/stack_1:output:08sequential_213/lstm_640/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpDsequential_213_lstm_640_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_213/lstm_640/lstm_cell_610/MatMulMatMul0sequential_213/lstm_640/strided_slice_2:output:0Csequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpFsequential_213_lstm_640_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_213/lstm_640/lstm_cell_610/MatMul_1MatMul&sequential_213/lstm_640/zeros:output:0Esequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_213/lstm_640/lstm_cell_610/addAddV26sequential_213/lstm_640/lstm_cell_610/MatMul:product:08sequential_213/lstm_640/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpEsequential_213_lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_213/lstm_640/lstm_cell_610/BiasAddBiasAdd-sequential_213/lstm_640/lstm_cell_610/add:z:0Dsequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_213/lstm_640/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_213/lstm_640/lstm_cell_610/splitSplit>sequential_213/lstm_640/lstm_cell_610/split/split_dim:output:06sequential_213/lstm_640/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_213/lstm_640/lstm_cell_610/SigmoidSigmoid4sequential_213/lstm_640/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_213/lstm_640/lstm_cell_610/Sigmoid_1Sigmoid4sequential_213/lstm_640/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_213/lstm_640/lstm_cell_610/mulMul3sequential_213/lstm_640/lstm_cell_610/Sigmoid_1:y:0(sequential_213/lstm_640/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_213/lstm_640/lstm_cell_610/ReluRelu4sequential_213/lstm_640/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_213/lstm_640/lstm_cell_610/mul_1Mul1sequential_213/lstm_640/lstm_cell_610/Sigmoid:y:08sequential_213/lstm_640/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_213/lstm_640/lstm_cell_610/add_1AddV2-sequential_213/lstm_640/lstm_cell_610/mul:z:0/sequential_213/lstm_640/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_213/lstm_640/lstm_cell_610/Sigmoid_2Sigmoid4sequential_213/lstm_640/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_213/lstm_640/lstm_cell_610/Relu_1Relu/sequential_213/lstm_640/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_213/lstm_640/lstm_cell_610/mul_2Mul3sequential_213/lstm_640/lstm_cell_610/Sigmoid_2:y:0:sequential_213/lstm_640/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_213/lstm_640/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_213/lstm_640/TensorArrayV2_1TensorListReserve>sequential_213/lstm_640/TensorArrayV2_1/element_shape:output:00sequential_213/lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_213/lstm_640/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_213/lstm_640/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_213/lstm_640/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_213/lstm_640/whileWhile3sequential_213/lstm_640/while/loop_counter:output:09sequential_213/lstm_640/while/maximum_iterations:output:0%sequential_213/lstm_640/time:output:00sequential_213/lstm_640/TensorArrayV2_1:handle:0&sequential_213/lstm_640/zeros:output:0(sequential_213/lstm_640/zeros_1:output:00sequential_213/lstm_640/strided_slice_1:output:0Osequential_213/lstm_640/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_213_lstm_640_lstm_cell_610_matmul_readvariableop_resourceFsequential_213_lstm_640_lstm_cell_610_matmul_1_readvariableop_resourceEsequential_213_lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
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
*sequential_213_lstm_640_while_body_3697755*6
cond.R,
*sequential_213_lstm_640_while_cond_3697754*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_213/lstm_640/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_213/lstm_640/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_213/lstm_640/while:output:3Qsequential_213/lstm_640/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_213/lstm_640/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_213/lstm_640/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_640/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_640/strided_slice_3StridedSliceCsequential_213/lstm_640/TensorArrayV2Stack/TensorListStack:tensor:06sequential_213/lstm_640/strided_slice_3/stack:output:08sequential_213/lstm_640/strided_slice_3/stack_1:output:08sequential_213/lstm_640/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_213/lstm_640/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_213/lstm_640/transpose_1	TransposeCsequential_213/lstm_640/TensorArrayV2Stack/TensorListStack:tensor:01sequential_213/lstm_640/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_213/lstm_640/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_213/lstm_641/ShapeShape'sequential_213/lstm_640/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_213/lstm_641/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_213/lstm_641/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_213/lstm_641/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_213/lstm_641/strided_sliceStridedSlice&sequential_213/lstm_641/Shape:output:04sequential_213/lstm_641/strided_slice/stack:output:06sequential_213/lstm_641/strided_slice/stack_1:output:06sequential_213/lstm_641/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_213/lstm_641/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_213/lstm_641/zeros/packedPack.sequential_213/lstm_641/strided_slice:output:0/sequential_213/lstm_641/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_213/lstm_641/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_641/zerosFill-sequential_213/lstm_641/zeros/packed:output:0,sequential_213/lstm_641/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_213/lstm_641/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_213/lstm_641/zeros_1/packedPack.sequential_213/lstm_641/strided_slice:output:01sequential_213/lstm_641/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_213/lstm_641/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_213/lstm_641/zeros_1Fill/sequential_213/lstm_641/zeros_1/packed:output:0.sequential_213/lstm_641/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_213/lstm_641/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_213/lstm_641/transpose	Transpose'sequential_213/lstm_640/transpose_1:y:0/sequential_213/lstm_641/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_213/lstm_641/Shape_1Shape%sequential_213/lstm_641/transpose:y:0*
T0*
_output_shapes
:w
-sequential_213/lstm_641/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_641/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_641/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_641/strided_slice_1StridedSlice(sequential_213/lstm_641/Shape_1:output:06sequential_213/lstm_641/strided_slice_1/stack:output:08sequential_213/lstm_641/strided_slice_1/stack_1:output:08sequential_213/lstm_641/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_213/lstm_641/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_213/lstm_641/TensorArrayV2TensorListReserve<sequential_213/lstm_641/TensorArrayV2/element_shape:output:00sequential_213/lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_213/lstm_641/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_213/lstm_641/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_213/lstm_641/transpose:y:0Vsequential_213/lstm_641/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_213/lstm_641/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_641/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_213/lstm_641/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_641/strided_slice_2StridedSlice%sequential_213/lstm_641/transpose:y:06sequential_213/lstm_641/strided_slice_2/stack:output:08sequential_213/lstm_641/strided_slice_2/stack_1:output:08sequential_213/lstm_641/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpDsequential_213_lstm_641_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_213/lstm_641/lstm_cell_611/MatMulMatMul0sequential_213/lstm_641/strided_slice_2:output:0Csequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpFsequential_213_lstm_641_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_213/lstm_641/lstm_cell_611/MatMul_1MatMul&sequential_213/lstm_641/zeros:output:0Esequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_213/lstm_641/lstm_cell_611/addAddV26sequential_213/lstm_641/lstm_cell_611/MatMul:product:08sequential_213/lstm_641/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpEsequential_213_lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_213/lstm_641/lstm_cell_611/BiasAddBiasAdd-sequential_213/lstm_641/lstm_cell_611/add:z:0Dsequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_213/lstm_641/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_213/lstm_641/lstm_cell_611/splitSplit>sequential_213/lstm_641/lstm_cell_611/split/split_dim:output:06sequential_213/lstm_641/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_213/lstm_641/lstm_cell_611/SigmoidSigmoid4sequential_213/lstm_641/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_213/lstm_641/lstm_cell_611/Sigmoid_1Sigmoid4sequential_213/lstm_641/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_213/lstm_641/lstm_cell_611/mulMul3sequential_213/lstm_641/lstm_cell_611/Sigmoid_1:y:0(sequential_213/lstm_641/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_213/lstm_641/lstm_cell_611/ReluRelu4sequential_213/lstm_641/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_213/lstm_641/lstm_cell_611/mul_1Mul1sequential_213/lstm_641/lstm_cell_611/Sigmoid:y:08sequential_213/lstm_641/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_213/lstm_641/lstm_cell_611/add_1AddV2-sequential_213/lstm_641/lstm_cell_611/mul:z:0/sequential_213/lstm_641/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_213/lstm_641/lstm_cell_611/Sigmoid_2Sigmoid4sequential_213/lstm_641/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_213/lstm_641/lstm_cell_611/Relu_1Relu/sequential_213/lstm_641/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_213/lstm_641/lstm_cell_611/mul_2Mul3sequential_213/lstm_641/lstm_cell_611/Sigmoid_2:y:0:sequential_213/lstm_641/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_213/lstm_641/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_213/lstm_641/TensorArrayV2_1TensorListReserve>sequential_213/lstm_641/TensorArrayV2_1/element_shape:output:00sequential_213/lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_213/lstm_641/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_213/lstm_641/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_213/lstm_641/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_213/lstm_641/whileWhile3sequential_213/lstm_641/while/loop_counter:output:09sequential_213/lstm_641/while/maximum_iterations:output:0%sequential_213/lstm_641/time:output:00sequential_213/lstm_641/TensorArrayV2_1:handle:0&sequential_213/lstm_641/zeros:output:0(sequential_213/lstm_641/zeros_1:output:00sequential_213/lstm_641/strided_slice_1:output:0Osequential_213/lstm_641/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_213_lstm_641_lstm_cell_611_matmul_readvariableop_resourceFsequential_213_lstm_641_lstm_cell_611_matmul_1_readvariableop_resourceEsequential_213_lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
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
*sequential_213_lstm_641_while_body_3697894*6
cond.R,
*sequential_213_lstm_641_while_cond_3697893*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_213/lstm_641/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_213/lstm_641/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_213/lstm_641/while:output:3Qsequential_213/lstm_641/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_213/lstm_641/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_213/lstm_641/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_213/lstm_641/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_213/lstm_641/strided_slice_3StridedSliceCsequential_213/lstm_641/TensorArrayV2Stack/TensorListStack:tensor:06sequential_213/lstm_641/strided_slice_3/stack:output:08sequential_213/lstm_641/strided_slice_3/stack_1:output:08sequential_213/lstm_641/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_213/lstm_641/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_213/lstm_641/transpose_1	TransposeCsequential_213/lstm_641/TensorArrayV2Stack/TensorListStack:tensor:01sequential_213/lstm_641/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_213/lstm_641/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_213/dense_213/MatMul/ReadVariableOpReadVariableOp7sequential_213_dense_213_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_213/dense_213/MatMulMatMul0sequential_213/lstm_641/strided_slice_3:output:06sequential_213/dense_213/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_213/dense_213/BiasAdd/ReadVariableOpReadVariableOp8sequential_213_dense_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_213/dense_213/BiasAddBiasAdd)sequential_213/dense_213/MatMul:product:07sequential_213/dense_213/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_213/dense_213/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_213/dense_213/BiasAdd/ReadVariableOp/^sequential_213/dense_213/MatMul/ReadVariableOp=^sequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp<^sequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOp>^sequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp^sequential_213/lstm_639/while=^sequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp<^sequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOp>^sequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp^sequential_213/lstm_640/while=^sequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp<^sequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOp>^sequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp^sequential_213/lstm_641/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_213/dense_213/BiasAdd/ReadVariableOp/sequential_213/dense_213/BiasAdd/ReadVariableOp2`
.sequential_213/dense_213/MatMul/ReadVariableOp.sequential_213/dense_213/MatMul/ReadVariableOp2|
<sequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp<sequential_213/lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp2z
;sequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOp;sequential_213/lstm_639/lstm_cell_609/MatMul/ReadVariableOp2~
=sequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp=sequential_213/lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp2>
sequential_213/lstm_639/whilesequential_213/lstm_639/while2|
<sequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp<sequential_213/lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp2z
;sequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOp;sequential_213/lstm_640/lstm_cell_610/MatMul/ReadVariableOp2~
=sequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp=sequential_213/lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp2>
sequential_213/lstm_640/whilesequential_213/lstm_640/while2|
<sequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp<sequential_213/lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp2z
;sequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOp;sequential_213/lstm_641/lstm_cell_611/MatMul/ReadVariableOp2~
=sequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp=sequential_213/lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp2>
sequential_213/lstm_641/whilesequential_213/lstm_641/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_639_input
?C
?

lstm_640_while_body_3700923.
*lstm_640_while_lstm_640_while_loop_counter4
0lstm_640_while_lstm_640_while_maximum_iterations
lstm_640_while_placeholder 
lstm_640_while_placeholder_1 
lstm_640_while_placeholder_2 
lstm_640_while_placeholder_3-
)lstm_640_while_lstm_640_strided_slice_1_0i
elstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?R
?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?M
>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
lstm_640_while_identity
lstm_640_while_identity_1
lstm_640_while_identity_2
lstm_640_while_identity_3
lstm_640_while_identity_4
lstm_640_while_identity_5+
'lstm_640_while_lstm_640_strided_slice_1g
clstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensorN
;lstm_640_while_lstm_cell_610_matmul_readvariableop_resource:	d?P
=lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?K
<lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource:	???3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp?2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp?4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp?
@lstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_640/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0lstm_640_while_placeholderIlstm_640/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_640/while/lstm_cell_610/MatMulMatMul9lstm_640/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_640/while/lstm_cell_610/MatMul_1MatMullstm_640_while_placeholder_2<lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_640/while/lstm_cell_610/addAddV2-lstm_640/while/lstm_cell_610/MatMul:product:0/lstm_640/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_640/while/lstm_cell_610/BiasAddBiasAdd$lstm_640/while/lstm_cell_610/add:z:0;lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_640/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_640/while/lstm_cell_610/splitSplit5lstm_640/while/lstm_cell_610/split/split_dim:output:0-lstm_640/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_640/while/lstm_cell_610/SigmoidSigmoid+lstm_640/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_640/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_640/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_640/while/lstm_cell_610/mulMul*lstm_640/while/lstm_cell_610/Sigmoid_1:y:0lstm_640_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_640/while/lstm_cell_610/ReluRelu+lstm_640/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/mul_1Mul(lstm_640/while/lstm_cell_610/Sigmoid:y:0/lstm_640/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/add_1AddV2$lstm_640/while/lstm_cell_610/mul:z:0&lstm_640/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_640/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_640/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_640/while/lstm_cell_610/Relu_1Relu&lstm_640/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_640/while/lstm_cell_610/mul_2Mul*lstm_640/while/lstm_cell_610/Sigmoid_2:y:01lstm_640/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_640/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_640_while_placeholder_1lstm_640_while_placeholder&lstm_640/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_640/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_640/while/addAddV2lstm_640_while_placeholderlstm_640/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_640/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_640/while/add_1AddV2*lstm_640_while_lstm_640_while_loop_counterlstm_640/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_640/while/IdentityIdentitylstm_640/while/add_1:z:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_1Identity0lstm_640_while_lstm_640_while_maximum_iterations^lstm_640/while/NoOp*
T0*
_output_shapes
: t
lstm_640/while/Identity_2Identitylstm_640/while/add:z:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_3IdentityClstm_640/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_640/while/NoOp*
T0*
_output_shapes
: ?
lstm_640/while/Identity_4Identity&lstm_640/while/lstm_cell_610/mul_2:z:0^lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_640/while/Identity_5Identity&lstm_640/while/lstm_cell_610/add_1:z:0^lstm_640/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_640/while/NoOpNoOp4^lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_640_while_identity lstm_640/while/Identity:output:0"?
lstm_640_while_identity_1"lstm_640/while/Identity_1:output:0"?
lstm_640_while_identity_2"lstm_640/while/Identity_2:output:0"?
lstm_640_while_identity_3"lstm_640/while/Identity_3:output:0"?
lstm_640_while_identity_4"lstm_640/while/Identity_4:output:0"?
lstm_640_while_identity_5"lstm_640/while/Identity_5:output:0"T
'lstm_640_while_lstm_640_strided_slice_1)lstm_640_while_lstm_640_strided_slice_1_0"~
<lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_640_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
=lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_640_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_640_while_lstm_cell_610_matmul_readvariableop_resource=lstm_640_while_lstm_cell_610_matmul_readvariableop_resource_0"?
clstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensorelstm_640_while_tensorarrayv2read_tensorlistgetitem_lstm_640_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_640/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_640/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_640/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700725

inputsH
5lstm_639_lstm_cell_609_matmul_readvariableop_resource:	?J
7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource:	d?E
6lstm_639_lstm_cell_609_biasadd_readvariableop_resource:	?H
5lstm_640_lstm_cell_610_matmul_readvariableop_resource:	d?J
7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource:	2?E
6lstm_640_lstm_cell_610_biasadd_readvariableop_resource:	?G
5lstm_641_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_641_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_213_matmul_readvariableop_resource:
7
)dense_213_biasadd_readvariableop_resource:
identity?? dense_213/BiasAdd/ReadVariableOp?dense_213/MatMul/ReadVariableOp?-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp?,lstm_639/lstm_cell_609/MatMul/ReadVariableOp?.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp?lstm_639/while?-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp?,lstm_640/lstm_cell_610/MatMul/ReadVariableOp?.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp?lstm_640/while?-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp?,lstm_641/lstm_cell_611/MatMul/ReadVariableOp?.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp?lstm_641/whileD
lstm_639/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_sliceStridedSlicelstm_639/Shape:output:0%lstm_639/strided_slice/stack:output:0'lstm_639/strided_slice/stack_1:output:0'lstm_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_639/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_639/zeros/packedPacklstm_639/strided_slice:output:0 lstm_639/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_639/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_639/zerosFilllstm_639/zeros/packed:output:0lstm_639/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_639/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_639/zeros_1/packedPacklstm_639/strided_slice:output:0"lstm_639/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_639/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_639/zeros_1Fill lstm_639/zeros_1/packed:output:0lstm_639/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_639/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_639/transpose	Transposeinputs lstm_639/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_639/Shape_1Shapelstm_639/transpose:y:0*
T0*
_output_shapes
:h
lstm_639/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_639/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_1StridedSlicelstm_639/Shape_1:output:0'lstm_639/strided_slice_1/stack:output:0)lstm_639/strided_slice_1/stack_1:output:0)lstm_639/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_639/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_639/TensorArrayV2TensorListReserve-lstm_639/TensorArrayV2/element_shape:output:0!lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_639/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_639/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_639/transpose:y:0Glstm_639/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_639/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_639/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_2StridedSlicelstm_639/transpose:y:0'lstm_639/strided_slice_2/stack:output:0)lstm_639/strided_slice_2/stack_1:output:0)lstm_639/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_639/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_639_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_639/lstm_cell_609/MatMulMatMul!lstm_639/strided_slice_2:output:04lstm_639/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_639/lstm_cell_609/MatMul_1MatMullstm_639/zeros:output:06lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_639/lstm_cell_609/addAddV2'lstm_639/lstm_cell_609/MatMul:product:0)lstm_639/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_639/lstm_cell_609/BiasAddBiasAddlstm_639/lstm_cell_609/add:z:05lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_639/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_639/lstm_cell_609/splitSplit/lstm_639/lstm_cell_609/split/split_dim:output:0'lstm_639/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_639/lstm_cell_609/SigmoidSigmoid%lstm_639/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_639/lstm_cell_609/Sigmoid_1Sigmoid%lstm_639/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mulMul$lstm_639/lstm_cell_609/Sigmoid_1:y:0lstm_639/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_639/lstm_cell_609/ReluRelu%lstm_639/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mul_1Mul"lstm_639/lstm_cell_609/Sigmoid:y:0)lstm_639/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/add_1AddV2lstm_639/lstm_cell_609/mul:z:0 lstm_639/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_639/lstm_cell_609/Sigmoid_2Sigmoid%lstm_639/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_639/lstm_cell_609/Relu_1Relu lstm_639/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_639/lstm_cell_609/mul_2Mul$lstm_639/lstm_cell_609/Sigmoid_2:y:0+lstm_639/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_639/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_639/TensorArrayV2_1TensorListReserve/lstm_639/TensorArrayV2_1/element_shape:output:0!lstm_639/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_639/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_639/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_639/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_639/whileWhile$lstm_639/while/loop_counter:output:0*lstm_639/while/maximum_iterations:output:0lstm_639/time:output:0!lstm_639/TensorArrayV2_1:handle:0lstm_639/zeros:output:0lstm_639/zeros_1:output:0!lstm_639/strided_slice_1:output:0@lstm_639/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_639_lstm_cell_609_matmul_readvariableop_resource7lstm_639_lstm_cell_609_matmul_1_readvariableop_resource6lstm_639_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_639_while_body_3700357*'
condR
lstm_639_while_cond_3700356*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_639/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_639/TensorArrayV2Stack/TensorListStackTensorListStacklstm_639/while:output:3Blstm_639/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_639/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_639/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_639/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_639/strided_slice_3StridedSlice4lstm_639/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_639/strided_slice_3/stack:output:0)lstm_639/strided_slice_3/stack_1:output:0)lstm_639/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_639/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_639/transpose_1	Transpose4lstm_639/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_639/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_639/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_640/ShapeShapelstm_639/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_640/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_640/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_640/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_sliceStridedSlicelstm_640/Shape:output:0%lstm_640/strided_slice/stack:output:0'lstm_640/strided_slice/stack_1:output:0'lstm_640/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_640/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_640/zeros/packedPacklstm_640/strided_slice:output:0 lstm_640/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_640/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_640/zerosFilllstm_640/zeros/packed:output:0lstm_640/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_640/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_640/zeros_1/packedPacklstm_640/strided_slice:output:0"lstm_640/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_640/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_640/zeros_1Fill lstm_640/zeros_1/packed:output:0lstm_640/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_640/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_640/transpose	Transposelstm_639/transpose_1:y:0 lstm_640/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_640/Shape_1Shapelstm_640/transpose:y:0*
T0*
_output_shapes
:h
lstm_640/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_640/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_1StridedSlicelstm_640/Shape_1:output:0'lstm_640/strided_slice_1/stack:output:0)lstm_640/strided_slice_1/stack_1:output:0)lstm_640/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_640/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_640/TensorArrayV2TensorListReserve-lstm_640/TensorArrayV2/element_shape:output:0!lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_640/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_640/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_640/transpose:y:0Glstm_640/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_640/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_640/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_2StridedSlicelstm_640/transpose:y:0'lstm_640/strided_slice_2/stack:output:0)lstm_640/strided_slice_2/stack_1:output:0)lstm_640/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_640/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_640_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_640/lstm_cell_610/MatMulMatMul!lstm_640/strided_slice_2:output:04lstm_640/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_640/lstm_cell_610/MatMul_1MatMullstm_640/zeros:output:06lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_640/lstm_cell_610/addAddV2'lstm_640/lstm_cell_610/MatMul:product:0)lstm_640/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_640/lstm_cell_610/BiasAddBiasAddlstm_640/lstm_cell_610/add:z:05lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_640/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_640/lstm_cell_610/splitSplit/lstm_640/lstm_cell_610/split/split_dim:output:0'lstm_640/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_640/lstm_cell_610/SigmoidSigmoid%lstm_640/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_640/lstm_cell_610/Sigmoid_1Sigmoid%lstm_640/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mulMul$lstm_640/lstm_cell_610/Sigmoid_1:y:0lstm_640/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_640/lstm_cell_610/ReluRelu%lstm_640/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mul_1Mul"lstm_640/lstm_cell_610/Sigmoid:y:0)lstm_640/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/add_1AddV2lstm_640/lstm_cell_610/mul:z:0 lstm_640/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_640/lstm_cell_610/Sigmoid_2Sigmoid%lstm_640/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_640/lstm_cell_610/Relu_1Relu lstm_640/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_640/lstm_cell_610/mul_2Mul$lstm_640/lstm_cell_610/Sigmoid_2:y:0+lstm_640/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_640/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_640/TensorArrayV2_1TensorListReserve/lstm_640/TensorArrayV2_1/element_shape:output:0!lstm_640/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_640/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_640/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_640/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_640/whileWhile$lstm_640/while/loop_counter:output:0*lstm_640/while/maximum_iterations:output:0lstm_640/time:output:0!lstm_640/TensorArrayV2_1:handle:0lstm_640/zeros:output:0lstm_640/zeros_1:output:0!lstm_640/strided_slice_1:output:0@lstm_640/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_640_lstm_cell_610_matmul_readvariableop_resource7lstm_640_lstm_cell_610_matmul_1_readvariableop_resource6lstm_640_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_640_while_body_3700496*'
condR
lstm_640_while_cond_3700495*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_640/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_640/TensorArrayV2Stack/TensorListStackTensorListStacklstm_640/while:output:3Blstm_640/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_640/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_640/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_640/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_640/strided_slice_3StridedSlice4lstm_640/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_640/strided_slice_3/stack:output:0)lstm_640/strided_slice_3/stack_1:output:0)lstm_640/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_640/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_640/transpose_1	Transpose4lstm_640/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_640/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_640/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_641/ShapeShapelstm_640/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_641/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_641/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_641/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_sliceStridedSlicelstm_641/Shape:output:0%lstm_641/strided_slice/stack:output:0'lstm_641/strided_slice/stack_1:output:0'lstm_641/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_641/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_641/zeros/packedPacklstm_641/strided_slice:output:0 lstm_641/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_641/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_641/zerosFilllstm_641/zeros/packed:output:0lstm_641/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_641/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_641/zeros_1/packedPacklstm_641/strided_slice:output:0"lstm_641/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_641/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_641/zeros_1Fill lstm_641/zeros_1/packed:output:0lstm_641/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_641/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_641/transpose	Transposelstm_640/transpose_1:y:0 lstm_641/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_641/Shape_1Shapelstm_641/transpose:y:0*
T0*
_output_shapes
:h
lstm_641/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_641/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_1StridedSlicelstm_641/Shape_1:output:0'lstm_641/strided_slice_1/stack:output:0)lstm_641/strided_slice_1/stack_1:output:0)lstm_641/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_641/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_641/TensorArrayV2TensorListReserve-lstm_641/TensorArrayV2/element_shape:output:0!lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_641/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_641/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_641/transpose:y:0Glstm_641/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_641/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_641/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_2StridedSlicelstm_641/transpose:y:0'lstm_641/strided_slice_2/stack:output:0)lstm_641/strided_slice_2/stack_1:output:0)lstm_641/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_641/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_641_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_641/lstm_cell_611/MatMulMatMul!lstm_641/strided_slice_2:output:04lstm_641/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_641/lstm_cell_611/MatMul_1MatMullstm_641/zeros:output:06lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_641/lstm_cell_611/addAddV2'lstm_641/lstm_cell_611/MatMul:product:0)lstm_641/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_641/lstm_cell_611/BiasAddBiasAddlstm_641/lstm_cell_611/add:z:05lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_641/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_641/lstm_cell_611/splitSplit/lstm_641/lstm_cell_611/split/split_dim:output:0'lstm_641/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_641/lstm_cell_611/SigmoidSigmoid%lstm_641/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_641/lstm_cell_611/Sigmoid_1Sigmoid%lstm_641/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mulMul$lstm_641/lstm_cell_611/Sigmoid_1:y:0lstm_641/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_641/lstm_cell_611/ReluRelu%lstm_641/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mul_1Mul"lstm_641/lstm_cell_611/Sigmoid:y:0)lstm_641/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/add_1AddV2lstm_641/lstm_cell_611/mul:z:0 lstm_641/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_641/lstm_cell_611/Sigmoid_2Sigmoid%lstm_641/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_641/lstm_cell_611/Relu_1Relu lstm_641/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_641/lstm_cell_611/mul_2Mul$lstm_641/lstm_cell_611/Sigmoid_2:y:0+lstm_641/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_641/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_641/TensorArrayV2_1TensorListReserve/lstm_641/TensorArrayV2_1/element_shape:output:0!lstm_641/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_641/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_641/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_641/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_641/whileWhile$lstm_641/while/loop_counter:output:0*lstm_641/while/maximum_iterations:output:0lstm_641/time:output:0!lstm_641/TensorArrayV2_1:handle:0lstm_641/zeros:output:0lstm_641/zeros_1:output:0!lstm_641/strided_slice_1:output:0@lstm_641/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_641_lstm_cell_611_matmul_readvariableop_resource7lstm_641_lstm_cell_611_matmul_1_readvariableop_resource6lstm_641_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_641_while_body_3700635*'
condR
lstm_641_while_cond_3700634*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_641/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_641/TensorArrayV2Stack/TensorListStackTensorListStacklstm_641/while:output:3Blstm_641/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_641/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_641/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_641/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_641/strided_slice_3StridedSlice4lstm_641/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_641/strided_slice_3/stack:output:0)lstm_641/strided_slice_3/stack_1:output:0)lstm_641/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_641/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_641/transpose_1	Transpose4lstm_641/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_641/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_641/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_213/MatMul/ReadVariableOpReadVariableOp(dense_213_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_213/MatMulMatMul!lstm_641/strided_slice_3:output:0'dense_213/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_213/BiasAdd/ReadVariableOpReadVariableOp)dense_213_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_213/BiasAddBiasAdddense_213/MatMul:product:0(dense_213/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_213/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_213/BiasAdd/ReadVariableOp ^dense_213/MatMul/ReadVariableOp.^lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_639/lstm_cell_609/MatMul/ReadVariableOp/^lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_639/while.^lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_640/lstm_cell_610/MatMul/ReadVariableOp/^lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_640/while.^lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_641/lstm_cell_611/MatMul/ReadVariableOp/^lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_641/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_213/BiasAdd/ReadVariableOp dense_213/BiasAdd/ReadVariableOp2B
dense_213/MatMul/ReadVariableOpdense_213/MatMul/ReadVariableOp2^
-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_639/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_639/lstm_cell_609/MatMul/ReadVariableOp,lstm_639/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_639/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_639/whilelstm_639/while2^
-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_640/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_640/lstm_cell_610/MatMul/ReadVariableOp,lstm_640/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_640/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_640/whilelstm_640/while2^
-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_641/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_641/lstm_cell_611/MatMul/ReadVariableOp,lstm_641/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_641/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_641/whilelstm_641/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_213_lstm_641_while_cond_3697893L
Hsequential_213_lstm_641_while_sequential_213_lstm_641_while_loop_counterR
Nsequential_213_lstm_641_while_sequential_213_lstm_641_while_maximum_iterations-
)sequential_213_lstm_641_while_placeholder/
+sequential_213_lstm_641_while_placeholder_1/
+sequential_213_lstm_641_while_placeholder_2/
+sequential_213_lstm_641_while_placeholder_3N
Jsequential_213_lstm_641_while_less_sequential_213_lstm_641_strided_slice_1e
asequential_213_lstm_641_while_sequential_213_lstm_641_while_cond_3697893___redundant_placeholder0e
asequential_213_lstm_641_while_sequential_213_lstm_641_while_cond_3697893___redundant_placeholder1e
asequential_213_lstm_641_while_sequential_213_lstm_641_while_cond_3697893___redundant_placeholder2e
asequential_213_lstm_641_while_sequential_213_lstm_641_while_cond_3697893___redundant_placeholder3*
&sequential_213_lstm_641_while_identity
?
"sequential_213/lstm_641/while/LessLess)sequential_213_lstm_641_while_placeholderJsequential_213_lstm_641_while_less_sequential_213_lstm_641_strided_slice_1*
T0*
_output_shapes
: {
&sequential_213/lstm_641/while/IdentityIdentity&sequential_213/lstm_641/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_213_lstm_641_while_identity/sequential_213/lstm_641/while/Identity:output:0*(
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

lstm_639_while_body_3700784.
*lstm_639_while_lstm_639_while_loop_counter4
0lstm_639_while_lstm_639_while_maximum_iterations
lstm_639_while_placeholder 
lstm_639_while_placeholder_1 
lstm_639_while_placeholder_2 
lstm_639_while_placeholder_3-
)lstm_639_while_lstm_639_strided_slice_1_0i
elstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0:	?R
?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?M
>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
lstm_639_while_identity
lstm_639_while_identity_1
lstm_639_while_identity_2
lstm_639_while_identity_3
lstm_639_while_identity_4
lstm_639_while_identity_5+
'lstm_639_while_lstm_639_strided_slice_1g
clstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensorN
;lstm_639_while_lstm_cell_609_matmul_readvariableop_resource:	?P
=lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?K
<lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource:	???3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp?2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp?4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp?
@lstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_639/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0lstm_639_while_placeholderIlstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_639/while/lstm_cell_609/MatMulMatMul9lstm_639/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_639/while/lstm_cell_609/MatMul_1MatMullstm_639_while_placeholder_2<lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_639/while/lstm_cell_609/addAddV2-lstm_639/while/lstm_cell_609/MatMul:product:0/lstm_639/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_639/while/lstm_cell_609/BiasAddBiasAdd$lstm_639/while/lstm_cell_609/add:z:0;lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_639/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_639/while/lstm_cell_609/splitSplit5lstm_639/while/lstm_cell_609/split/split_dim:output:0-lstm_639/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_639/while/lstm_cell_609/SigmoidSigmoid+lstm_639/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_639/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_639/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_639/while/lstm_cell_609/mulMul*lstm_639/while/lstm_cell_609/Sigmoid_1:y:0lstm_639_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_639/while/lstm_cell_609/ReluRelu+lstm_639/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/mul_1Mul(lstm_639/while/lstm_cell_609/Sigmoid:y:0/lstm_639/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/add_1AddV2$lstm_639/while/lstm_cell_609/mul:z:0&lstm_639/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_639/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_639/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_639/while/lstm_cell_609/Relu_1Relu&lstm_639/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_639/while/lstm_cell_609/mul_2Mul*lstm_639/while/lstm_cell_609/Sigmoid_2:y:01lstm_639/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_639/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_639_while_placeholder_1lstm_639_while_placeholder&lstm_639/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_639/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_639/while/addAddV2lstm_639_while_placeholderlstm_639/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_639/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_639/while/add_1AddV2*lstm_639_while_lstm_639_while_loop_counterlstm_639/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_639/while/IdentityIdentitylstm_639/while/add_1:z:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_1Identity0lstm_639_while_lstm_639_while_maximum_iterations^lstm_639/while/NoOp*
T0*
_output_shapes
: t
lstm_639/while/Identity_2Identitylstm_639/while/add:z:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_3IdentityClstm_639/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_639/while/NoOp*
T0*
_output_shapes
: ?
lstm_639/while/Identity_4Identity&lstm_639/while/lstm_cell_609/mul_2:z:0^lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_639/while/Identity_5Identity&lstm_639/while/lstm_cell_609/add_1:z:0^lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_639/while/NoOpNoOp4^lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_639_while_identity lstm_639/while/Identity:output:0"?
lstm_639_while_identity_1"lstm_639/while/Identity_1:output:0"?
lstm_639_while_identity_2"lstm_639/while/Identity_2:output:0"?
lstm_639_while_identity_3"lstm_639/while/Identity_3:output:0"?
lstm_639_while_identity_4"lstm_639/while/Identity_4:output:0"?
lstm_639_while_identity_5"lstm_639/while/Identity_5:output:0"T
'lstm_639_while_lstm_639_strided_slice_1)lstm_639_while_lstm_639_strided_slice_1_0"~
<lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
=lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_639_while_lstm_cell_609_matmul_readvariableop_resource=lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0"?
clstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensorelstm_639_while_tensorarrayv2read_tensorlistgetitem_lstm_639_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_213_layer_call_fn_3700271

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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3699508o
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
while_cond_3699779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699779___redundant_placeholder05
1while_while_cond_3699779___redundant_placeholder15
1while_while_cond_3699779___redundant_placeholder25
1while_while_cond_3699779___redundant_placeholder3
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
while_body_3701541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3700244
lstm_639_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_639_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3697984o
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
_user_specified_namelstm_639_input
?J
?
E__inference_lstm_639_layer_call_and_return_conditional_losses_3700029

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3699945*
condR
while_cond_3699944*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3698255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698255___redundant_placeholder05
1while_while_cond_3698255___redundant_placeholder15
1while_while_cond_3698255___redundant_placeholder25
1while_while_cond_3698255___redundant_placeholder3
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
while_body_3698765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3698789_0:2(/
while_lstm_cell_611_3698791_0:
(+
while_lstm_cell_611_3698793_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3698789:2(-
while_lstm_cell_611_3698791:
()
while_lstm_cell_611_3698793:(??+while/lstm_cell_611/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3698789_0while_lstm_cell_611_3698791_0while_lstm_cell_611_3698793_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698751?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3698789while_lstm_cell_611_3698789_0"<
while_lstm_cell_611_3698791while_lstm_cell_611_3698791_0"<
while_lstm_cell_611_3698793while_lstm_cell_611_3698793_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_639_layer_call_fn_3701196

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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3700029s
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
*__inference_lstm_641_layer_call_fn_3702417

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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699483o
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
while_cond_3702629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702629___redundant_placeholder05
1while_while_cond_3702629___redundant_placeholder15
1while_while_cond_3702629___redundant_placeholder25
1while_while_cond_3702629___redundant_placeholder3
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
#__inference__traced_restore_3703586
file_prefix3
!assignvariableop_dense_213_kernel:
/
!assignvariableop_1_dense_213_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_639_lstm_cell_639_kernel:	?M
:assignvariableop_8_lstm_639_lstm_cell_639_recurrent_kernel:	d?=
.assignvariableop_9_lstm_639_lstm_cell_639_bias:	?D
1assignvariableop_10_lstm_640_lstm_cell_640_kernel:	d?N
;assignvariableop_11_lstm_640_lstm_cell_640_recurrent_kernel:	2?>
/assignvariableop_12_lstm_640_lstm_cell_640_bias:	?C
1assignvariableop_13_lstm_641_lstm_cell_641_kernel:2(M
;assignvariableop_14_lstm_641_lstm_cell_641_recurrent_kernel:
(=
/assignvariableop_15_lstm_641_lstm_cell_641_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_213_kernel_m:
7
)assignvariableop_19_adam_dense_213_bias_m:K
8assignvariableop_20_adam_lstm_639_lstm_cell_639_kernel_m:	?U
Bassignvariableop_21_adam_lstm_639_lstm_cell_639_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_639_lstm_cell_639_bias_m:	?K
8assignvariableop_23_adam_lstm_640_lstm_cell_640_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_640_lstm_cell_640_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_640_lstm_cell_640_bias_m:	?J
8assignvariableop_26_adam_lstm_641_lstm_cell_641_kernel_m:2(T
Bassignvariableop_27_adam_lstm_641_lstm_cell_641_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_641_lstm_cell_641_bias_m:(=
+assignvariableop_29_adam_dense_213_kernel_v:
7
)assignvariableop_30_adam_dense_213_bias_v:K
8assignvariableop_31_adam_lstm_639_lstm_cell_639_kernel_v:	?U
Bassignvariableop_32_adam_lstm_639_lstm_cell_639_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_639_lstm_cell_639_bias_v:	?K
8assignvariableop_34_adam_lstm_640_lstm_cell_640_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_640_lstm_cell_640_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_640_lstm_cell_640_bias_v:	?J
8assignvariableop_37_adam_lstm_641_lstm_cell_641_kernel_v:2(T
Bassignvariableop_38_adam_lstm_641_lstm_cell_641_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_641_lstm_cell_641_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_213_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_213_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_639_lstm_cell_639_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_639_lstm_cell_639_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_639_lstm_cell_639_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_640_lstm_cell_640_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_640_lstm_cell_640_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_640_lstm_cell_640_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_641_lstm_cell_641_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_641_lstm_cell_641_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_641_lstm_cell_641_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_213_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_213_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_639_lstm_cell_639_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_639_lstm_cell_639_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_639_lstm_cell_639_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_640_lstm_cell_640_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_640_lstm_cell_640_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_640_lstm_cell_640_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_641_lstm_cell_641_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_641_lstm_cell_641_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_641_lstm_cell_641_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_213_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_213_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_639_lstm_cell_639_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_639_lstm_cell_639_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_639_lstm_cell_639_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_640_lstm_cell_640_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_640_lstm_cell_640_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_640_lstm_cell_640_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_641_lstm_cell_641_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_641_lstm_cell_641_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_641_lstm_cell_641_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
/__inference_lstm_cell_610_layer_call_fn_3703151

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698547o
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700097

inputs#
lstm_639_3700070:	?#
lstm_639_3700072:	d?
lstm_639_3700074:	?#
lstm_640_3700077:	d?#
lstm_640_3700079:	2?
lstm_640_3700081:	?"
lstm_641_3700084:2("
lstm_641_3700086:
(
lstm_641_3700088:(#
dense_213_3700091:

dense_213_3700093:
identity??!dense_213/StatefulPartitionedCall? lstm_639/StatefulPartitionedCall? lstm_640/StatefulPartitionedCall? lstm_641/StatefulPartitionedCall?
 lstm_639/StatefulPartitionedCallStatefulPartitionedCallinputslstm_639_3700070lstm_639_3700072lstm_639_3700074*
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3700029?
 lstm_640/StatefulPartitionedCallStatefulPartitionedCall)lstm_639/StatefulPartitionedCall:output:0lstm_640_3700077lstm_640_3700079lstm_640_3700081*
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699864?
 lstm_641/StatefulPartitionedCallStatefulPartitionedCall)lstm_640/StatefulPartitionedCall:output:0lstm_641_3700084lstm_641_3700086lstm_641_3700088*
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699699?
!dense_213/StatefulPartitionedCallStatefulPartitionedCall)lstm_641/StatefulPartitionedCall:output:0dense_213_3700091dense_213_3700093*
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501y
IdentityIdentity*dense_213/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_213/StatefulPartitionedCall!^lstm_639/StatefulPartitionedCall!^lstm_640/StatefulPartitionedCall!^lstm_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_213/StatefulPartitionedCall!dense_213/StatefulPartitionedCall2D
 lstm_639/StatefulPartitionedCall lstm_639/StatefulPartitionedCall2D
 lstm_640/StatefulPartitionedCall lstm_640/StatefulPartitionedCall2D
 lstm_641/StatefulPartitionedCall lstm_641/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_639_layer_call_and_return_conditional_losses_3699183

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3699099*
condR
while_cond_3699098*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_641_while_body_3701062.
*lstm_641_while_lstm_641_while_loop_counter4
0lstm_641_while_lstm_641_while_maximum_iterations
lstm_641_while_placeholder 
lstm_641_while_placeholder_1 
lstm_641_while_placeholder_2 
lstm_641_while_placeholder_3-
)lstm_641_while_lstm_641_strided_slice_1_0i
elstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_641_while_identity
lstm_641_while_identity_1
lstm_641_while_identity_2
lstm_641_while_identity_3
lstm_641_while_identity_4
lstm_641_while_identity_5+
'lstm_641_while_lstm_641_strided_slice_1g
clstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensorM
;lstm_641_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource:(??3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp?2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp?4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp?
@lstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_641/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0lstm_641_while_placeholderIlstm_641/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_641/while/lstm_cell_611/MatMulMatMul9lstm_641/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_641/while/lstm_cell_611/MatMul_1MatMullstm_641_while_placeholder_2<lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_641/while/lstm_cell_611/addAddV2-lstm_641/while/lstm_cell_611/MatMul:product:0/lstm_641/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_641/while/lstm_cell_611/BiasAddBiasAdd$lstm_641/while/lstm_cell_611/add:z:0;lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_641/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_641/while/lstm_cell_611/splitSplit5lstm_641/while/lstm_cell_611/split/split_dim:output:0-lstm_641/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_641/while/lstm_cell_611/SigmoidSigmoid+lstm_641/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_641/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_641/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_641/while/lstm_cell_611/mulMul*lstm_641/while/lstm_cell_611/Sigmoid_1:y:0lstm_641_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_641/while/lstm_cell_611/ReluRelu+lstm_641/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/mul_1Mul(lstm_641/while/lstm_cell_611/Sigmoid:y:0/lstm_641/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/add_1AddV2$lstm_641/while/lstm_cell_611/mul:z:0&lstm_641/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_641/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_641/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_641/while/lstm_cell_611/Relu_1Relu&lstm_641/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_641/while/lstm_cell_611/mul_2Mul*lstm_641/while/lstm_cell_611/Sigmoid_2:y:01lstm_641/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_641/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_641_while_placeholder_1lstm_641_while_placeholder&lstm_641/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_641/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_641/while/addAddV2lstm_641_while_placeholderlstm_641/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_641/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_641/while/add_1AddV2*lstm_641_while_lstm_641_while_loop_counterlstm_641/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_641/while/IdentityIdentitylstm_641/while/add_1:z:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_1Identity0lstm_641_while_lstm_641_while_maximum_iterations^lstm_641/while/NoOp*
T0*
_output_shapes
: t
lstm_641/while/Identity_2Identitylstm_641/while/add:z:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_3IdentityClstm_641/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_641/while/NoOp*
T0*
_output_shapes
: ?
lstm_641/while/Identity_4Identity&lstm_641/while/lstm_cell_611/mul_2:z:0^lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_641/while/Identity_5Identity&lstm_641/while/lstm_cell_611/add_1:z:0^lstm_641/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_641/while/NoOpNoOp4^lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_641_while_identity lstm_641/while/Identity:output:0"?
lstm_641_while_identity_1"lstm_641/while/Identity_1:output:0"?
lstm_641_while_identity_2"lstm_641/while/Identity_2:output:0"?
lstm_641_while_identity_3"lstm_641/while/Identity_3:output:0"?
lstm_641_while_identity_4"lstm_641/while/Identity_4:output:0"?
lstm_641_while_identity_5"lstm_641/while/Identity_5:output:0"T
'lstm_641_while_lstm_641_strided_slice_1)lstm_641_while_lstm_641_strided_slice_1_0"~
<lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_641_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
=lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_641_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_641_while_lstm_cell_611_matmul_readvariableop_resource=lstm_641_while_lstm_cell_611_matmul_readvariableop_resource_0"?
clstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensorelstm_641_while_tensorarrayv2read_tensorlistgetitem_lstm_641_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_641/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_641/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_641/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702098
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3702014*
condR
while_cond_3702013*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3699614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699614___redundant_placeholder05
1while_while_cond_3699614___redundant_placeholder15
1while_while_cond_3699614___redundant_placeholder25
1while_while_cond_3699614___redundant_placeholder3
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
while_body_3699945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3702486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3702486___redundant_placeholder05
1while_while_cond_3702486___redundant_placeholder15
1while_while_cond_3702486___redundant_placeholder25
1while_while_cond_3702486___redundant_placeholder3
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
while_body_3698065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3698089_0:	?0
while_lstm_cell_609_3698091_0:	d?,
while_lstm_cell_609_3698093_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3698089:	?.
while_lstm_cell_609_3698091:	d?*
while_lstm_cell_609_3698093:	???+while/lstm_cell_609/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3698089_0while_lstm_cell_609_3698091_0while_lstm_cell_609_3698093_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698051?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3698089while_lstm_cell_609_3698089_0"<
while_lstm_cell_609_3698091while_lstm_cell_609_3698091_0"<
while_lstm_cell_609_3698093while_lstm_cell_609_3698093_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3699099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698751

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
*__inference_lstm_639_layer_call_fn_3701185

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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3699183s
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
?K
?
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701482
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3701398*
condR
while_cond_3701397*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3699248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699248___redundant_placeholder05
1while_while_cond_3699248___redundant_placeholder15
1while_while_cond_3699248___redundant_placeholder25
1while_while_cond_3699248___redundant_placeholder3
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699864

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3699780*
condR
while_cond_3699779*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_640_while_cond_3700495.
*lstm_640_while_lstm_640_while_loop_counter4
0lstm_640_while_lstm_640_while_maximum_iterations
lstm_640_while_placeholder 
lstm_640_while_placeholder_1 
lstm_640_while_placeholder_2 
lstm_640_while_placeholder_30
,lstm_640_while_less_lstm_640_strided_slice_1G
Clstm_640_while_lstm_640_while_cond_3700495___redundant_placeholder0G
Clstm_640_while_lstm_640_while_cond_3700495___redundant_placeholder1G
Clstm_640_while_lstm_640_while_cond_3700495___redundant_placeholder2G
Clstm_640_while_lstm_640_while_cond_3700495___redundant_placeholder3
lstm_640_while_identity
?
lstm_640/while/LessLesslstm_640_while_placeholder,lstm_640_while_less_lstm_640_strided_slice_1*
T0*
_output_shapes
: ]
lstm_640/while/IdentityIdentitylstm_640/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_640_while_identity lstm_640/while/Identity:output:0*(
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
while_body_3702916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700209
lstm_639_input#
lstm_639_3700182:	?#
lstm_639_3700184:	d?
lstm_639_3700186:	?#
lstm_640_3700189:	d?#
lstm_640_3700191:	2?
lstm_640_3700193:	?"
lstm_641_3700196:2("
lstm_641_3700198:
(
lstm_641_3700200:(#
dense_213_3700203:

dense_213_3700205:
identity??!dense_213/StatefulPartitionedCall? lstm_639/StatefulPartitionedCall? lstm_640/StatefulPartitionedCall? lstm_641/StatefulPartitionedCall?
 lstm_639/StatefulPartitionedCallStatefulPartitionedCalllstm_639_inputlstm_639_3700182lstm_639_3700184lstm_639_3700186*
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3700029?
 lstm_640/StatefulPartitionedCallStatefulPartitionedCall)lstm_639/StatefulPartitionedCall:output:0lstm_640_3700189lstm_640_3700191lstm_640_3700193*
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699864?
 lstm_641/StatefulPartitionedCallStatefulPartitionedCall)lstm_640/StatefulPartitionedCall:output:0lstm_641_3700196lstm_641_3700198lstm_641_3700200*
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699699?
!dense_213/StatefulPartitionedCallStatefulPartitionedCall)lstm_641/StatefulPartitionedCall:output:0dense_213_3700203dense_213_3700205*
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501y
IdentityIdentity*dense_213/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_213/StatefulPartitionedCall!^lstm_639/StatefulPartitionedCall!^lstm_640/StatefulPartitionedCall!^lstm_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_213/StatefulPartitionedCall!dense_213/StatefulPartitionedCall2D
 lstm_639/StatefulPartitionedCall lstm_639/StatefulPartitionedCall2D
 lstm_640/StatefulPartitionedCall lstm_640/StatefulPartitionedCall2D
 lstm_641/StatefulPartitionedCall lstm_641/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_639_input
?T
?
*sequential_213_lstm_639_while_body_3697616L
Hsequential_213_lstm_639_while_sequential_213_lstm_639_while_loop_counterR
Nsequential_213_lstm_639_while_sequential_213_lstm_639_while_maximum_iterations-
)sequential_213_lstm_639_while_placeholder/
+sequential_213_lstm_639_while_placeholder_1/
+sequential_213_lstm_639_while_placeholder_2/
+sequential_213_lstm_639_while_placeholder_3K
Gsequential_213_lstm_639_while_sequential_213_lstm_639_strided_slice_1_0?
?sequential_213_lstm_639_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_639_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_213_lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0:	?a
Nsequential_213_lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?\
Msequential_213_lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?*
&sequential_213_lstm_639_while_identity,
(sequential_213_lstm_639_while_identity_1,
(sequential_213_lstm_639_while_identity_2,
(sequential_213_lstm_639_while_identity_3,
(sequential_213_lstm_639_while_identity_4,
(sequential_213_lstm_639_while_identity_5I
Esequential_213_lstm_639_while_sequential_213_lstm_639_strided_slice_1?
?sequential_213_lstm_639_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_639_tensorarrayunstack_tensorlistfromtensor]
Jsequential_213_lstm_639_while_lstm_cell_609_matmul_readvariableop_resource:	?_
Lsequential_213_lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?Z
Ksequential_213_lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource:	???Bsequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp?Asequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp?Csequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp?
Osequential_213/lstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_213/lstm_639/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_213_lstm_639_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_639_tensorarrayunstack_tensorlistfromtensor_0)sequential_213_lstm_639_while_placeholderXsequential_213/lstm_639/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpLsequential_213_lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_213/lstm_639/while/lstm_cell_609/MatMulMatMulHsequential_213/lstm_639/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpNsequential_213_lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_213/lstm_639/while/lstm_cell_609/MatMul_1MatMul+sequential_213_lstm_639_while_placeholder_2Ksequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_213/lstm_639/while/lstm_cell_609/addAddV2<sequential_213/lstm_639/while/lstm_cell_609/MatMul:product:0>sequential_213/lstm_639/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpMsequential_213_lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_213/lstm_639/while/lstm_cell_609/BiasAddBiasAdd3sequential_213/lstm_639/while/lstm_cell_609/add:z:0Jsequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_213/lstm_639/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_213/lstm_639/while/lstm_cell_609/splitSplitDsequential_213/lstm_639/while/lstm_cell_609/split/split_dim:output:0<sequential_213/lstm_639/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_213/lstm_639/while/lstm_cell_609/SigmoidSigmoid:sequential_213/lstm_639/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_213/lstm_639/while/lstm_cell_609/Sigmoid_1Sigmoid:sequential_213/lstm_639/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_213/lstm_639/while/lstm_cell_609/mulMul9sequential_213/lstm_639/while/lstm_cell_609/Sigmoid_1:y:0+sequential_213_lstm_639_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_213/lstm_639/while/lstm_cell_609/ReluRelu:sequential_213/lstm_639/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_213/lstm_639/while/lstm_cell_609/mul_1Mul7sequential_213/lstm_639/while/lstm_cell_609/Sigmoid:y:0>sequential_213/lstm_639/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_213/lstm_639/while/lstm_cell_609/add_1AddV23sequential_213/lstm_639/while/lstm_cell_609/mul:z:05sequential_213/lstm_639/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_213/lstm_639/while/lstm_cell_609/Sigmoid_2Sigmoid:sequential_213/lstm_639/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_213/lstm_639/while/lstm_cell_609/Relu_1Relu5sequential_213/lstm_639/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_213/lstm_639/while/lstm_cell_609/mul_2Mul9sequential_213/lstm_639/while/lstm_cell_609/Sigmoid_2:y:0@sequential_213/lstm_639/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_213/lstm_639/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_213_lstm_639_while_placeholder_1)sequential_213_lstm_639_while_placeholder5sequential_213/lstm_639/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_213/lstm_639/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_213/lstm_639/while/addAddV2)sequential_213_lstm_639_while_placeholder,sequential_213/lstm_639/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_213/lstm_639/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_213/lstm_639/while/add_1AddV2Hsequential_213_lstm_639_while_sequential_213_lstm_639_while_loop_counter.sequential_213/lstm_639/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_213/lstm_639/while/IdentityIdentity'sequential_213/lstm_639/while/add_1:z:0#^sequential_213/lstm_639/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_639/while/Identity_1IdentityNsequential_213_lstm_639_while_sequential_213_lstm_639_while_maximum_iterations#^sequential_213/lstm_639/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_639/while/Identity_2Identity%sequential_213/lstm_639/while/add:z:0#^sequential_213/lstm_639/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_639/while/Identity_3IdentityRsequential_213/lstm_639/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_213/lstm_639/while/NoOp*
T0*
_output_shapes
: ?
(sequential_213/lstm_639/while/Identity_4Identity5sequential_213/lstm_639/while/lstm_cell_609/mul_2:z:0#^sequential_213/lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_213/lstm_639/while/Identity_5Identity5sequential_213/lstm_639/while/lstm_cell_609/add_1:z:0#^sequential_213/lstm_639/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_213/lstm_639/while/NoOpNoOpC^sequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOpB^sequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOpD^sequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_213_lstm_639_while_identity/sequential_213/lstm_639/while/Identity:output:0"]
(sequential_213_lstm_639_while_identity_11sequential_213/lstm_639/while/Identity_1:output:0"]
(sequential_213_lstm_639_while_identity_21sequential_213/lstm_639/while/Identity_2:output:0"]
(sequential_213_lstm_639_while_identity_31sequential_213/lstm_639/while/Identity_3:output:0"]
(sequential_213_lstm_639_while_identity_41sequential_213/lstm_639/while/Identity_4:output:0"]
(sequential_213_lstm_639_while_identity_51sequential_213/lstm_639/while/Identity_5:output:0"?
Ksequential_213_lstm_639_while_lstm_cell_609_biasadd_readvariableop_resourceMsequential_213_lstm_639_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
Lsequential_213_lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resourceNsequential_213_lstm_639_while_lstm_cell_609_matmul_1_readvariableop_resource_0"?
Jsequential_213_lstm_639_while_lstm_cell_609_matmul_readvariableop_resourceLsequential_213_lstm_639_while_lstm_cell_609_matmul_readvariableop_resource_0"?
Esequential_213_lstm_639_while_sequential_213_lstm_639_strided_slice_1Gsequential_213_lstm_639_while_sequential_213_lstm_639_strided_slice_1_0"?
?sequential_213_lstm_639_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_639_tensorarrayunstack_tensorlistfromtensor?sequential_213_lstm_639_while_tensorarrayv2read_tensorlistgetitem_sequential_213_lstm_639_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOpBsequential_213/lstm_639/while/lstm_cell_609/BiasAdd/ReadVariableOp2?
Asequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOpAsequential_213/lstm_639/while/lstm_cell_609/MatMul/ReadVariableOp2?
Csequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOpCsequential_213/lstm_639/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_640_while_cond_3700922.
*lstm_640_while_lstm_640_while_loop_counter4
0lstm_640_while_lstm_640_while_maximum_iterations
lstm_640_while_placeholder 
lstm_640_while_placeholder_1 
lstm_640_while_placeholder_2 
lstm_640_while_placeholder_30
,lstm_640_while_less_lstm_640_strided_slice_1G
Clstm_640_while_lstm_640_while_cond_3700922___redundant_placeholder0G
Clstm_640_while_lstm_640_while_cond_3700922___redundant_placeholder1G
Clstm_640_while_lstm_640_while_cond_3700922___redundant_placeholder2G
Clstm_640_while_lstm_640_while_cond_3700922___redundant_placeholder3
lstm_640_while_identity
?
lstm_640/while/LessLesslstm_640_while_placeholder,lstm_640_while_less_lstm_640_strided_slice_1*
T0*
_output_shapes
: ]
lstm_640/while/IdentityIdentitylstm_640/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_640_while_identity lstm_640/while/Identity:output:0*(
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702857

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3702773*
condR
while_cond_3702772*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_213_layer_call_fn_3703009

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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501o
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703117

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
lstm_641_while_cond_3700634.
*lstm_641_while_lstm_641_while_loop_counter4
0lstm_641_while_lstm_641_while_maximum_iterations
lstm_641_while_placeholder 
lstm_641_while_placeholder_1 
lstm_641_while_placeholder_2 
lstm_641_while_placeholder_30
,lstm_641_while_less_lstm_641_strided_slice_1G
Clstm_641_while_lstm_641_while_cond_3700634___redundant_placeholder0G
Clstm_641_while_lstm_641_while_cond_3700634___redundant_placeholder1G
Clstm_641_while_lstm_641_while_cond_3700634___redundant_placeholder2G
Clstm_641_while_lstm_641_while_cond_3700634___redundant_placeholder3
lstm_641_while_identity
?
lstm_641/while/LessLesslstm_641_while_placeholder,lstm_641_while_less_lstm_641_strided_slice_1*
T0*
_output_shapes
: ]
lstm_641/while/IdentityIdentitylstm_641/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_641_while_identity lstm_641/while/Identity:output:0*(
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
while_cond_3698764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698764___redundant_placeholder05
1while_while_cond_3698764___redundant_placeholder15
1while_while_cond_3698764___redundant_placeholder25
1while_while_cond_3698764___redundant_placeholder3
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
lstm_641_while_cond_3701061.
*lstm_641_while_lstm_641_while_loop_counter4
0lstm_641_while_lstm_641_while_maximum_iterations
lstm_641_while_placeholder 
lstm_641_while_placeholder_1 
lstm_641_while_placeholder_2 
lstm_641_while_placeholder_30
,lstm_641_while_less_lstm_641_strided_slice_1G
Clstm_641_while_lstm_641_while_cond_3701061___redundant_placeholder0G
Clstm_641_while_lstm_641_while_cond_3701061___redundant_placeholder1G
Clstm_641_while_lstm_641_while_cond_3701061___redundant_placeholder2G
Clstm_641_while_lstm_641_while_cond_3701061___redundant_placeholder3
lstm_641_while_identity
?
lstm_641/while/LessLesslstm_641_while_placeholder,lstm_641_while_less_lstm_641_strided_slice_1*
T0*
_output_shapes
: ]
lstm_641/while/IdentityIdentitylstm_641/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_641_while_identity lstm_641/while/Identity:output:0*(
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
while_cond_3699098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3699098___redundant_placeholder05
1while_while_cond_3699098___redundant_placeholder15
1while_while_cond_3699098___redundant_placeholder25
1while_while_cond_3699098___redundant_placeholder3
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
0__inference_sequential_213_layer_call_fn_3700298

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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700097o
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701625

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3701541*
condR
while_cond_3701540*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_639_while_cond_3700783.
*lstm_639_while_lstm_639_while_loop_counter4
0lstm_639_while_lstm_639_while_maximum_iterations
lstm_639_while_placeholder 
lstm_639_while_placeholder_1 
lstm_639_while_placeholder_2 
lstm_639_while_placeholder_30
,lstm_639_while_less_lstm_639_strided_slice_1G
Clstm_639_while_lstm_639_while_cond_3700783___redundant_placeholder0G
Clstm_639_while_lstm_639_while_cond_3700783___redundant_placeholder1G
Clstm_639_while_lstm_639_while_cond_3700783___redundant_placeholder2G
Clstm_639_while_lstm_639_while_cond_3700783___redundant_placeholder3
lstm_639_while_identity
?
lstm_639/while/LessLesslstm_639_while_placeholder,lstm_639_while_less_lstm_639_strided_slice_1*
T0*
_output_shapes
: ]
lstm_639/while/IdentityIdentitylstm_639/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_639_while_identity lstm_639/while/Identity:output:0*(
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
*sequential_213_lstm_639_while_cond_3697615L
Hsequential_213_lstm_639_while_sequential_213_lstm_639_while_loop_counterR
Nsequential_213_lstm_639_while_sequential_213_lstm_639_while_maximum_iterations-
)sequential_213_lstm_639_while_placeholder/
+sequential_213_lstm_639_while_placeholder_1/
+sequential_213_lstm_639_while_placeholder_2/
+sequential_213_lstm_639_while_placeholder_3N
Jsequential_213_lstm_639_while_less_sequential_213_lstm_639_strided_slice_1e
asequential_213_lstm_639_while_sequential_213_lstm_639_while_cond_3697615___redundant_placeholder0e
asequential_213_lstm_639_while_sequential_213_lstm_639_while_cond_3697615___redundant_placeholder1e
asequential_213_lstm_639_while_sequential_213_lstm_639_while_cond_3697615___redundant_placeholder2e
asequential_213_lstm_639_while_sequential_213_lstm_639_while_cond_3697615___redundant_placeholder3*
&sequential_213_lstm_639_while_identity
?
"sequential_213/lstm_639/while/LessLess)sequential_213_lstm_639_while_placeholderJsequential_213_lstm_639_while_less_sequential_213_lstm_639_strided_slice_1*
T0*
_output_shapes
: {
&sequential_213/lstm_639/while/IdentityIdentity&sequential_213/lstm_639/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_213_lstm_639_while_identity/sequential_213/lstm_639/while/Identity:output:0*(
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3698484

inputs(
lstm_cell_610_3698402:	d?(
lstm_cell_610_3698404:	2?$
lstm_cell_610_3698406:	?
identity??%lstm_cell_610/StatefulPartitionedCall?while;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3698402lstm_cell_610_3698404lstm_cell_610_3698406*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698401n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3698402lstm_cell_610_3698404lstm_cell_610_3698406*
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
while_body_3698415*
condR
while_cond_3698414*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3698051

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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702714
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3702630*
condR
while_cond_3702629*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_640_layer_call_fn_3701790
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3698675|
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
?
E__inference_lstm_640_layer_call_and_return_conditional_losses_3698675

inputs(
lstm_cell_610_3698593:	d?(
lstm_cell_610_3698595:	2?$
lstm_cell_610_3698597:	?
identity??%lstm_cell_610/StatefulPartitionedCall?while;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3698593lstm_cell_610_3698595lstm_cell_610_3698597*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3698547n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3698593lstm_cell_610_3698595lstm_cell_610_3698597*
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
while_body_3698606*
condR
while_cond_3698605*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_213_layer_call_fn_3699533
lstm_639_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_639_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3699508o
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
_user_specified_namelstm_639_input
?
?
*__inference_lstm_640_layer_call_fn_3701812

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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699864s
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

?
0__inference_sequential_213_layer_call_fn_3700149
lstm_639_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_639_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700097o
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
_user_specified_namelstm_639_input
?
?
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698897

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
*__inference_lstm_641_layer_call_fn_3702428

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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699699o
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
?
?
K__inference_sequential_213_layer_call_and_return_conditional_losses_3699508

inputs#
lstm_639_3699184:	?#
lstm_639_3699186:	d?
lstm_639_3699188:	?#
lstm_640_3699334:	d?#
lstm_640_3699336:	2?
lstm_640_3699338:	?"
lstm_641_3699484:2("
lstm_641_3699486:
(
lstm_641_3699488:(#
dense_213_3699502:

dense_213_3699504:
identity??!dense_213/StatefulPartitionedCall? lstm_639/StatefulPartitionedCall? lstm_640/StatefulPartitionedCall? lstm_641/StatefulPartitionedCall?
 lstm_639/StatefulPartitionedCallStatefulPartitionedCallinputslstm_639_3699184lstm_639_3699186lstm_639_3699188*
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3699183?
 lstm_640/StatefulPartitionedCallStatefulPartitionedCall)lstm_639/StatefulPartitionedCall:output:0lstm_640_3699334lstm_640_3699336lstm_640_3699338*
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3699333?
 lstm_641/StatefulPartitionedCallStatefulPartitionedCall)lstm_640/StatefulPartitionedCall:output:0lstm_641_3699484lstm_641_3699486lstm_641_3699488*
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3699483?
!dense_213/StatefulPartitionedCallStatefulPartitionedCall)lstm_641/StatefulPartitionedCall:output:0dense_213_3699502dense_213_3699504*
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3699501y
IdentityIdentity*dense_213/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_213/StatefulPartitionedCall!^lstm_639/StatefulPartitionedCall!^lstm_640/StatefulPartitionedCall!^lstm_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_213/StatefulPartitionedCall!dense_213/StatefulPartitionedCall2D
 lstm_639/StatefulPartitionedCall lstm_639/StatefulPartitionedCall2D
 lstm_640/StatefulPartitionedCall lstm_640/StatefulPartitionedCall2D
 lstm_641/StatefulPartitionedCall lstm_641/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_640_layer_call_and_return_conditional_losses_3701955
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3701871*
condR
while_cond_3701870*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_3703456
file_prefix/
+savev2_dense_213_kernel_read_readvariableop-
)savev2_dense_213_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_639_lstm_cell_639_kernel_read_readvariableopF
Bsavev2_lstm_639_lstm_cell_639_recurrent_kernel_read_readvariableop:
6savev2_lstm_639_lstm_cell_639_bias_read_readvariableop<
8savev2_lstm_640_lstm_cell_640_kernel_read_readvariableopF
Bsavev2_lstm_640_lstm_cell_640_recurrent_kernel_read_readvariableop:
6savev2_lstm_640_lstm_cell_640_bias_read_readvariableop<
8savev2_lstm_641_lstm_cell_641_kernel_read_readvariableopF
Bsavev2_lstm_641_lstm_cell_641_recurrent_kernel_read_readvariableop:
6savev2_lstm_641_lstm_cell_641_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_213_kernel_m_read_readvariableop4
0savev2_adam_dense_213_bias_m_read_readvariableopC
?savev2_adam_lstm_639_lstm_cell_639_kernel_m_read_readvariableopM
Isavev2_adam_lstm_639_lstm_cell_639_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_639_lstm_cell_639_bias_m_read_readvariableopC
?savev2_adam_lstm_640_lstm_cell_640_kernel_m_read_readvariableopM
Isavev2_adam_lstm_640_lstm_cell_640_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_640_lstm_cell_640_bias_m_read_readvariableopC
?savev2_adam_lstm_641_lstm_cell_641_kernel_m_read_readvariableopM
Isavev2_adam_lstm_641_lstm_cell_641_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_641_lstm_cell_641_bias_m_read_readvariableop6
2savev2_adam_dense_213_kernel_v_read_readvariableop4
0savev2_adam_dense_213_bias_v_read_readvariableopC
?savev2_adam_lstm_639_lstm_cell_639_kernel_v_read_readvariableopM
Isavev2_adam_lstm_639_lstm_cell_639_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_639_lstm_cell_639_bias_v_read_readvariableopC
?savev2_adam_lstm_640_lstm_cell_640_kernel_v_read_readvariableopM
Isavev2_adam_lstm_640_lstm_cell_640_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_640_lstm_cell_640_bias_v_read_readvariableopC
?savev2_adam_lstm_641_lstm_cell_641_kernel_v_read_readvariableopM
Isavev2_adam_lstm_641_lstm_cell_641_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_641_lstm_cell_641_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_213_kernel_read_readvariableop)savev2_dense_213_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_639_lstm_cell_639_kernel_read_readvariableopBsavev2_lstm_639_lstm_cell_639_recurrent_kernel_read_readvariableop6savev2_lstm_639_lstm_cell_639_bias_read_readvariableop8savev2_lstm_640_lstm_cell_640_kernel_read_readvariableopBsavev2_lstm_640_lstm_cell_640_recurrent_kernel_read_readvariableop6savev2_lstm_640_lstm_cell_640_bias_read_readvariableop8savev2_lstm_641_lstm_cell_641_kernel_read_readvariableopBsavev2_lstm_641_lstm_cell_641_recurrent_kernel_read_readvariableop6savev2_lstm_641_lstm_cell_641_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_213_kernel_m_read_readvariableop0savev2_adam_dense_213_bias_m_read_readvariableop?savev2_adam_lstm_639_lstm_cell_639_kernel_m_read_readvariableopIsavev2_adam_lstm_639_lstm_cell_639_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_639_lstm_cell_639_bias_m_read_readvariableop?savev2_adam_lstm_640_lstm_cell_640_kernel_m_read_readvariableopIsavev2_adam_lstm_640_lstm_cell_640_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_640_lstm_cell_640_bias_m_read_readvariableop?savev2_adam_lstm_641_lstm_cell_641_kernel_m_read_readvariableopIsavev2_adam_lstm_641_lstm_cell_641_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_641_lstm_cell_641_bias_m_read_readvariableop2savev2_adam_dense_213_kernel_v_read_readvariableop0savev2_adam_dense_213_bias_v_read_readvariableop?savev2_adam_lstm_639_lstm_cell_639_kernel_v_read_readvariableopIsavev2_adam_lstm_639_lstm_cell_639_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_639_lstm_cell_639_bias_v_read_readvariableop?savev2_adam_lstm_640_lstm_cell_640_kernel_v_read_readvariableopIsavev2_adam_lstm_640_lstm_cell_640_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_640_lstm_cell_640_bias_v_read_readvariableop?savev2_adam_lstm_641_lstm_cell_641_kernel_v_read_readvariableopIsavev2_adam_lstm_641_lstm_cell_641_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_641_lstm_cell_641_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3699780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3698064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3698064___redundant_placeholder05
1while_while_cond_3698064___redundant_placeholder15
1while_while_cond_3698064___redundant_placeholder25
1while_while_cond_3698064___redundant_placeholder3
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703085

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
/__inference_lstm_cell_611_layer_call_fn_3703249

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3698897o
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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_639_input;
 serving_default_lstm_639_input:0?????????=
	dense_2130
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
2dense_213/kernel
:2dense_213/bias
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
0:.	?2lstm_639/lstm_cell_639/kernel
::8	d?2'lstm_639/lstm_cell_639/recurrent_kernel
*:(?2lstm_639/lstm_cell_639/bias
0:.	d?2lstm_640/lstm_cell_640/kernel
::8	2?2'lstm_640/lstm_cell_640/recurrent_kernel
*:(?2lstm_640/lstm_cell_640/bias
/:-2(2lstm_641/lstm_cell_641/kernel
9:7
(2'lstm_641/lstm_cell_641/recurrent_kernel
):'(2lstm_641/lstm_cell_641/bias
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
2Adam/dense_213/kernel/m
!:2Adam/dense_213/bias/m
5:3	?2$Adam/lstm_639/lstm_cell_639/kernel/m
?:=	d?2.Adam/lstm_639/lstm_cell_639/recurrent_kernel/m
/:-?2"Adam/lstm_639/lstm_cell_639/bias/m
5:3	d?2$Adam/lstm_640/lstm_cell_640/kernel/m
?:=	2?2.Adam/lstm_640/lstm_cell_640/recurrent_kernel/m
/:-?2"Adam/lstm_640/lstm_cell_640/bias/m
4:22(2$Adam/lstm_641/lstm_cell_641/kernel/m
>:<
(2.Adam/lstm_641/lstm_cell_641/recurrent_kernel/m
.:,(2"Adam/lstm_641/lstm_cell_641/bias/m
':%
2Adam/dense_213/kernel/v
!:2Adam/dense_213/bias/v
5:3	?2$Adam/lstm_639/lstm_cell_639/kernel/v
?:=	d?2.Adam/lstm_639/lstm_cell_639/recurrent_kernel/v
/:-?2"Adam/lstm_639/lstm_cell_639/bias/v
5:3	d?2$Adam/lstm_640/lstm_cell_640/kernel/v
?:=	2?2.Adam/lstm_640/lstm_cell_640/recurrent_kernel/v
/:-?2"Adam/lstm_640/lstm_cell_640/bias/v
4:22(2$Adam/lstm_641/lstm_cell_641/kernel/v
>:<
(2.Adam/lstm_641/lstm_cell_641/recurrent_kernel/v
.:,(2"Adam/lstm_641/lstm_cell_641/bias/v
?2?
0__inference_sequential_213_layer_call_fn_3699533
0__inference_sequential_213_layer_call_fn_3700271
0__inference_sequential_213_layer_call_fn_3700298
0__inference_sequential_213_layer_call_fn_3700149?
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700725
K__inference_sequential_213_layer_call_and_return_conditional_losses_3701152
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700179
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700209?
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
"__inference__wrapped_model_3697984lstm_639_input"?
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
*__inference_lstm_639_layer_call_fn_3701163
*__inference_lstm_639_layer_call_fn_3701174
*__inference_lstm_639_layer_call_fn_3701185
*__inference_lstm_639_layer_call_fn_3701196?
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701339
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701482
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701625
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701768?
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
*__inference_lstm_640_layer_call_fn_3701779
*__inference_lstm_640_layer_call_fn_3701790
*__inference_lstm_640_layer_call_fn_3701801
*__inference_lstm_640_layer_call_fn_3701812?
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3701955
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702098
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702241
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702384?
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
*__inference_lstm_641_layer_call_fn_3702395
*__inference_lstm_641_layer_call_fn_3702406
*__inference_lstm_641_layer_call_fn_3702417
*__inference_lstm_641_layer_call_fn_3702428?
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702571
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702714
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702857
E__inference_lstm_641_layer_call_and_return_conditional_losses_3703000?
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
+__inference_dense_213_layer_call_fn_3703009?
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
F__inference_dense_213_layer_call_and_return_conditional_losses_3703019?
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
%__inference_signature_wrapper_3700244lstm_639_input"?
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
/__inference_lstm_cell_609_layer_call_fn_3703036
/__inference_lstm_cell_609_layer_call_fn_3703053?
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703085
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703117?
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
/__inference_lstm_cell_610_layer_call_fn_3703134
/__inference_lstm_cell_610_layer_call_fn_3703151?
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703183
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703215?
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
/__inference_lstm_cell_611_layer_call_fn_3703232
/__inference_lstm_cell_611_layer_call_fn_3703249?
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703281
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703313?
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
"__inference__wrapped_model_3697984?-./012345!";?8
1?.
,?)
lstm_639_input?????????
? "5?2
0
	dense_213#? 
	dense_213??????????
F__inference_dense_213_layer_call_and_return_conditional_losses_3703019\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_213_layer_call_fn_3703009O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701339?-./O?L
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701482?-./O?L
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701625q-./??<
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
E__inference_lstm_639_layer_call_and_return_conditional_losses_3701768q-./??<
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
*__inference_lstm_639_layer_call_fn_3701163}-./O?L
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
*__inference_lstm_639_layer_call_fn_3701174}-./O?L
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
*__inference_lstm_639_layer_call_fn_3701185d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_639_layer_call_fn_3701196d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_640_layer_call_and_return_conditional_losses_3701955?012O?L
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702098?012O?L
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702241q012??<
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
E__inference_lstm_640_layer_call_and_return_conditional_losses_3702384q012??<
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
*__inference_lstm_640_layer_call_fn_3701779}012O?L
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
*__inference_lstm_640_layer_call_fn_3701790}012O?L
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
*__inference_lstm_640_layer_call_fn_3701801d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_640_layer_call_fn_3701812d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702571}345O?L
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702714}345O?L
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3702857m345??<
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
E__inference_lstm_641_layer_call_and_return_conditional_losses_3703000m345??<
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
*__inference_lstm_641_layer_call_fn_3702395p345O?L
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
*__inference_lstm_641_layer_call_fn_3702406p345O?L
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
*__inference_lstm_641_layer_call_fn_3702417`345??<
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
*__inference_lstm_641_layer_call_fn_3702428`345??<
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703085?-./??}
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3703117?-./??}
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
/__inference_lstm_cell_609_layer_call_fn_3703036?-./??}
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
/__inference_lstm_cell_609_layer_call_fn_3703053?-./??}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703183?012??}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3703215?012??}
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
/__inference_lstm_cell_610_layer_call_fn_3703134?012??}
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
/__inference_lstm_cell_610_layer_call_fn_3703151?012??}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703281?345??}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3703313?345??}
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
/__inference_lstm_cell_611_layer_call_fn_3703232?345??}
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
/__inference_lstm_cell_611_layer_call_fn_3703249?345??}
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700179y-./012345!"C?@
9?6
,?)
lstm_639_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700209y-./012345!"C?@
9?6
,?)
lstm_639_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_213_layer_call_and_return_conditional_losses_3700725q-./012345!";?8
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
K__inference_sequential_213_layer_call_and_return_conditional_losses_3701152q-./012345!";?8
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
0__inference_sequential_213_layer_call_fn_3699533l-./012345!"C?@
9?6
,?)
lstm_639_input?????????
p 

 
? "???????????
0__inference_sequential_213_layer_call_fn_3700149l-./012345!"C?@
9?6
,?)
lstm_639_input?????????
p

 
? "???????????
0__inference_sequential_213_layer_call_fn_3700271d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_213_layer_call_fn_3700298d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3700244?-./012345!"M?J
? 
C?@
>
lstm_639_input,?)
lstm_639_input?????????"5?2
0
	dense_213#? 
	dense_213?????????