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
dense_226/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_226/kernel
u
$dense_226/kernel/Read/ReadVariableOpReadVariableOpdense_226/kernel*
_output_shapes

:
*
dtype0
t
dense_226/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_226/bias
m
"dense_226/bias/Read/ReadVariableOpReadVariableOpdense_226/bias*
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
lstm_678/lstm_cell_678/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_678/lstm_cell_678/kernel
?
1lstm_678/lstm_cell_678/kernel/Read/ReadVariableOpReadVariableOplstm_678/lstm_cell_678/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_678/lstm_cell_678/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_678/lstm_cell_678/recurrent_kernel
?
;lstm_678/lstm_cell_678/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_678/lstm_cell_678/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_678/lstm_cell_678/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_678/lstm_cell_678/bias
?
/lstm_678/lstm_cell_678/bias/Read/ReadVariableOpReadVariableOplstm_678/lstm_cell_678/bias*
_output_shapes	
:?*
dtype0
?
lstm_679/lstm_cell_679/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_679/lstm_cell_679/kernel
?
1lstm_679/lstm_cell_679/kernel/Read/ReadVariableOpReadVariableOplstm_679/lstm_cell_679/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_679/lstm_cell_679/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_679/lstm_cell_679/recurrent_kernel
?
;lstm_679/lstm_cell_679/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_679/lstm_cell_679/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_679/lstm_cell_679/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_679/lstm_cell_679/bias
?
/lstm_679/lstm_cell_679/bias/Read/ReadVariableOpReadVariableOplstm_679/lstm_cell_679/bias*
_output_shapes	
:?*
dtype0
?
lstm_680/lstm_cell_680/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_680/lstm_cell_680/kernel
?
1lstm_680/lstm_cell_680/kernel/Read/ReadVariableOpReadVariableOplstm_680/lstm_cell_680/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_680/lstm_cell_680/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_680/lstm_cell_680/recurrent_kernel
?
;lstm_680/lstm_cell_680/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_680/lstm_cell_680/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_680/lstm_cell_680/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_680/lstm_cell_680/bias
?
/lstm_680/lstm_cell_680/bias/Read/ReadVariableOpReadVariableOplstm_680/lstm_cell_680/bias*
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
Adam/dense_226/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_226/kernel/m
?
+Adam/dense_226/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_226/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_226/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_226/bias/m
{
)Adam/dense_226/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_226/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_678/lstm_cell_678/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_678/lstm_cell_678/kernel/m
?
8Adam/lstm_678/lstm_cell_678/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_678/lstm_cell_678/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_678/lstm_cell_678/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_678/lstm_cell_678/recurrent_kernel/m
?
BAdam/lstm_678/lstm_cell_678/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_678/lstm_cell_678/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_678/lstm_cell_678/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_678/lstm_cell_678/bias/m
?
6Adam/lstm_678/lstm_cell_678/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_678/lstm_cell_678/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_679/lstm_cell_679/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_679/lstm_cell_679/kernel/m
?
8Adam/lstm_679/lstm_cell_679/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_679/lstm_cell_679/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_679/lstm_cell_679/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_679/lstm_cell_679/recurrent_kernel/m
?
BAdam/lstm_679/lstm_cell_679/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_679/lstm_cell_679/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_679/lstm_cell_679/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_679/lstm_cell_679/bias/m
?
6Adam/lstm_679/lstm_cell_679/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_679/lstm_cell_679/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_680/lstm_cell_680/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_680/lstm_cell_680/kernel/m
?
8Adam/lstm_680/lstm_cell_680/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_680/lstm_cell_680/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_680/lstm_cell_680/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_680/lstm_cell_680/recurrent_kernel/m
?
BAdam/lstm_680/lstm_cell_680/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_680/lstm_cell_680/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_680/lstm_cell_680/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_680/lstm_cell_680/bias/m
?
6Adam/lstm_680/lstm_cell_680/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_680/lstm_cell_680/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_226/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_226/kernel/v
?
+Adam/dense_226/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_226/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_226/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_226/bias/v
{
)Adam/dense_226/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_226/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_678/lstm_cell_678/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_678/lstm_cell_678/kernel/v
?
8Adam/lstm_678/lstm_cell_678/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_678/lstm_cell_678/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_678/lstm_cell_678/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_678/lstm_cell_678/recurrent_kernel/v
?
BAdam/lstm_678/lstm_cell_678/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_678/lstm_cell_678/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_678/lstm_cell_678/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_678/lstm_cell_678/bias/v
?
6Adam/lstm_678/lstm_cell_678/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_678/lstm_cell_678/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_679/lstm_cell_679/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_679/lstm_cell_679/kernel/v
?
8Adam/lstm_679/lstm_cell_679/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_679/lstm_cell_679/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_679/lstm_cell_679/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_679/lstm_cell_679/recurrent_kernel/v
?
BAdam/lstm_679/lstm_cell_679/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_679/lstm_cell_679/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_679/lstm_cell_679/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_679/lstm_cell_679/bias/v
?
6Adam/lstm_679/lstm_cell_679/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_679/lstm_cell_679/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_680/lstm_cell_680/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_680/lstm_cell_680/kernel/v
?
8Adam/lstm_680/lstm_cell_680/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_680/lstm_cell_680/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_680/lstm_cell_680/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_680/lstm_cell_680/recurrent_kernel/v
?
BAdam/lstm_680/lstm_cell_680/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_680/lstm_cell_680/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_680/lstm_cell_680/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_680/lstm_cell_680/bias/v
?
6Adam/lstm_680/lstm_cell_680/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_680/lstm_cell_680/bias/v*
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
VARIABLE_VALUEdense_226/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_226/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_678/lstm_cell_678/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_678/lstm_cell_678/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_678/lstm_cell_678/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_679/lstm_cell_679/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_679/lstm_cell_679/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_679/lstm_cell_679/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_680/lstm_cell_680/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_680/lstm_cell_680/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_680/lstm_cell_680/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_226/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_226/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_678/lstm_cell_678/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_678/lstm_cell_678/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_678/lstm_cell_678/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_679/lstm_cell_679/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_679/lstm_cell_679/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_679/lstm_cell_679/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_680/lstm_cell_680/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_680/lstm_cell_680/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_680/lstm_cell_680/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_226/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_226/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_678/lstm_cell_678/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_678/lstm_cell_678/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_678/lstm_cell_678/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_679/lstm_cell_679/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_679/lstm_cell_679/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_679/lstm_cell_679/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_680/lstm_cell_680/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_680/lstm_cell_680/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_680/lstm_cell_680/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_678_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_678_inputlstm_678/lstm_cell_678/kernel'lstm_678/lstm_cell_678/recurrent_kernellstm_678/lstm_cell_678/biaslstm_679/lstm_cell_679/kernel'lstm_679/lstm_cell_679/recurrent_kernellstm_679/lstm_cell_679/biaslstm_680/lstm_cell_680/kernel'lstm_680/lstm_cell_680/recurrent_kernellstm_680/lstm_cell_680/biasdense_226/kerneldense_226/bias*
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
%__inference_signature_wrapper_4279735
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_226/kernel/Read/ReadVariableOp"dense_226/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_678/lstm_cell_678/kernel/Read/ReadVariableOp;lstm_678/lstm_cell_678/recurrent_kernel/Read/ReadVariableOp/lstm_678/lstm_cell_678/bias/Read/ReadVariableOp1lstm_679/lstm_cell_679/kernel/Read/ReadVariableOp;lstm_679/lstm_cell_679/recurrent_kernel/Read/ReadVariableOp/lstm_679/lstm_cell_679/bias/Read/ReadVariableOp1lstm_680/lstm_cell_680/kernel/Read/ReadVariableOp;lstm_680/lstm_cell_680/recurrent_kernel/Read/ReadVariableOp/lstm_680/lstm_cell_680/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_226/kernel/m/Read/ReadVariableOp)Adam/dense_226/bias/m/Read/ReadVariableOp8Adam/lstm_678/lstm_cell_678/kernel/m/Read/ReadVariableOpBAdam/lstm_678/lstm_cell_678/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_678/lstm_cell_678/bias/m/Read/ReadVariableOp8Adam/lstm_679/lstm_cell_679/kernel/m/Read/ReadVariableOpBAdam/lstm_679/lstm_cell_679/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_679/lstm_cell_679/bias/m/Read/ReadVariableOp8Adam/lstm_680/lstm_cell_680/kernel/m/Read/ReadVariableOpBAdam/lstm_680/lstm_cell_680/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_680/lstm_cell_680/bias/m/Read/ReadVariableOp+Adam/dense_226/kernel/v/Read/ReadVariableOp)Adam/dense_226/bias/v/Read/ReadVariableOp8Adam/lstm_678/lstm_cell_678/kernel/v/Read/ReadVariableOpBAdam/lstm_678/lstm_cell_678/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_678/lstm_cell_678/bias/v/Read/ReadVariableOp8Adam/lstm_679/lstm_cell_679/kernel/v/Read/ReadVariableOpBAdam/lstm_679/lstm_cell_679/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_679/lstm_cell_679/bias/v/Read/ReadVariableOp8Adam/lstm_680/lstm_cell_680/kernel/v/Read/ReadVariableOpBAdam/lstm_680/lstm_cell_680/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_680/lstm_cell_680/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4282947
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_226/kerneldense_226/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_678/lstm_cell_678/kernel'lstm_678/lstm_cell_678/recurrent_kernellstm_678/lstm_cell_678/biaslstm_679/lstm_cell_679/kernel'lstm_679/lstm_cell_679/recurrent_kernellstm_679/lstm_cell_679/biaslstm_680/lstm_cell_680/kernel'lstm_680/lstm_cell_680/recurrent_kernellstm_680/lstm_cell_680/biastotalcountAdam/dense_226/kernel/mAdam/dense_226/bias/m$Adam/lstm_678/lstm_cell_678/kernel/m.Adam/lstm_678/lstm_cell_678/recurrent_kernel/m"Adam/lstm_678/lstm_cell_678/bias/m$Adam/lstm_679/lstm_cell_679/kernel/m.Adam/lstm_679/lstm_cell_679/recurrent_kernel/m"Adam/lstm_679/lstm_cell_679/bias/m$Adam/lstm_680/lstm_cell_680/kernel/m.Adam/lstm_680/lstm_cell_680/recurrent_kernel/m"Adam/lstm_680/lstm_cell_680/bias/mAdam/dense_226/kernel/vAdam/dense_226/bias/v$Adam/lstm_678/lstm_cell_678/kernel/v.Adam/lstm_678/lstm_cell_678/recurrent_kernel/v"Adam/lstm_678/lstm_cell_678/bias/v$Adam/lstm_679/lstm_cell_679/kernel/v.Adam/lstm_679/lstm_cell_679/recurrent_kernel/v"Adam/lstm_679/lstm_cell_679/bias/v$Adam/lstm_680/lstm_cell_680/kernel/v.Adam/lstm_680/lstm_cell_680/recurrent_kernel/v"Adam/lstm_680/lstm_cell_680/bias/v*4
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
#__inference__traced_restore_4283077??+
?

?
lstm_679_while_cond_4280413.
*lstm_679_while_lstm_679_while_loop_counter4
0lstm_679_while_lstm_679_while_maximum_iterations
lstm_679_while_placeholder 
lstm_679_while_placeholder_1 
lstm_679_while_placeholder_2 
lstm_679_while_placeholder_30
,lstm_679_while_less_lstm_679_strided_slice_1G
Clstm_679_while_lstm_679_while_cond_4280413___redundant_placeholder0G
Clstm_679_while_lstm_679_while_cond_4280413___redundant_placeholder1G
Clstm_679_while_lstm_679_while_cond_4280413___redundant_placeholder2G
Clstm_679_while_lstm_679_while_cond_4280413___redundant_placeholder3
lstm_679_while_identity
?
lstm_679/while/LessLesslstm_679_while_placeholder,lstm_679_while_less_lstm_679_strided_slice_1*
T0*
_output_shapes
: ]
lstm_679/while/IdentityIdentitylstm_679/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_679_while_identity lstm_679/while/Identity:output:0*(
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4278999

inputs#
lstm_678_4278675:	?#
lstm_678_4278677:	d?
lstm_678_4278679:	?#
lstm_679_4278825:	d?#
lstm_679_4278827:	2?
lstm_679_4278829:	?"
lstm_680_4278975:2("
lstm_680_4278977:
(
lstm_680_4278979:(#
dense_226_4278993:

dense_226_4278995:
identity??!dense_226/StatefulPartitionedCall? lstm_678/StatefulPartitionedCall? lstm_679/StatefulPartitionedCall? lstm_680/StatefulPartitionedCall?
 lstm_678/StatefulPartitionedCallStatefulPartitionedCallinputslstm_678_4278675lstm_678_4278677lstm_678_4278679*
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4278674?
 lstm_679/StatefulPartitionedCallStatefulPartitionedCall)lstm_678/StatefulPartitionedCall:output:0lstm_679_4278825lstm_679_4278827lstm_679_4278829*
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278824?
 lstm_680/StatefulPartitionedCallStatefulPartitionedCall)lstm_679/StatefulPartitionedCall:output:0lstm_680_4278975lstm_680_4278977lstm_680_4278979*
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278974?
!dense_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_680/StatefulPartitionedCall:output:0dense_226_4278993dense_226_4278995*
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992y
IdentityIdentity*dense_226/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_226/StatefulPartitionedCall!^lstm_678/StatefulPartitionedCall!^lstm_679/StatefulPartitionedCall!^lstm_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_226/StatefulPartitionedCall!dense_226/StatefulPartitionedCall2D
 lstm_678/StatefulPartitionedCall lstm_678/StatefulPartitionedCall2D
 lstm_679/StatefulPartitionedCall lstm_679/StatefulPartitionedCall2D
 lstm_680/StatefulPartitionedCall lstm_680/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4283077
file_prefix3
!assignvariableop_dense_226_kernel:
/
!assignvariableop_1_dense_226_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_678_lstm_cell_678_kernel:	?M
:assignvariableop_8_lstm_678_lstm_cell_678_recurrent_kernel:	d?=
.assignvariableop_9_lstm_678_lstm_cell_678_bias:	?D
1assignvariableop_10_lstm_679_lstm_cell_679_kernel:	d?N
;assignvariableop_11_lstm_679_lstm_cell_679_recurrent_kernel:	2?>
/assignvariableop_12_lstm_679_lstm_cell_679_bias:	?C
1assignvariableop_13_lstm_680_lstm_cell_680_kernel:2(M
;assignvariableop_14_lstm_680_lstm_cell_680_recurrent_kernel:
(=
/assignvariableop_15_lstm_680_lstm_cell_680_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_226_kernel_m:
7
)assignvariableop_19_adam_dense_226_bias_m:K
8assignvariableop_20_adam_lstm_678_lstm_cell_678_kernel_m:	?U
Bassignvariableop_21_adam_lstm_678_lstm_cell_678_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_678_lstm_cell_678_bias_m:	?K
8assignvariableop_23_adam_lstm_679_lstm_cell_679_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_679_lstm_cell_679_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_679_lstm_cell_679_bias_m:	?J
8assignvariableop_26_adam_lstm_680_lstm_cell_680_kernel_m:2(T
Bassignvariableop_27_adam_lstm_680_lstm_cell_680_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_680_lstm_cell_680_bias_m:(=
+assignvariableop_29_adam_dense_226_kernel_v:
7
)assignvariableop_30_adam_dense_226_bias_v:K
8assignvariableop_31_adam_lstm_678_lstm_cell_678_kernel_v:	?U
Bassignvariableop_32_adam_lstm_678_lstm_cell_678_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_678_lstm_cell_678_bias_v:	?K
8assignvariableop_34_adam_lstm_679_lstm_cell_679_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_679_lstm_cell_679_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_679_lstm_cell_679_bias_v:	?J
8assignvariableop_37_adam_lstm_680_lstm_cell_680_kernel_v:2(T
Bassignvariableop_38_adam_lstm_680_lstm_cell_680_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_680_lstm_cell_680_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_226_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_226_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_678_lstm_cell_678_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_678_lstm_cell_678_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_678_lstm_cell_678_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_679_lstm_cell_679_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_679_lstm_cell_679_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_679_lstm_cell_679_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_680_lstm_cell_680_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_680_lstm_cell_680_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_680_lstm_cell_680_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_226_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_226_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_678_lstm_cell_678_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_678_lstm_cell_678_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_678_lstm_cell_678_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_679_lstm_cell_679_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_679_lstm_cell_679_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_679_lstm_cell_679_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_680_lstm_cell_680_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_680_lstm_cell_680_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_680_lstm_cell_680_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_226_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_226_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_678_lstm_cell_678_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_678_lstm_cell_678_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_678_lstm_cell_678_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_679_lstm_cell_679_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_679_lstm_cell_679_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_679_lstm_cell_679_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_680_lstm_cell_680_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_680_lstm_cell_680_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_680_lstm_cell_680_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4279270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279270___redundant_placeholder05
1while_while_cond_4279270___redundant_placeholder15
1while_while_cond_4279270___redundant_placeholder25
1while_while_cond_4279270___redundant_placeholder3
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282674

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
while_body_4278590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282772

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
?
*__inference_lstm_679_layer_call_fn_4281292

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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278824s
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280830
inputs_0?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4280746*
condR
while_cond_4280745*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4281647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281647___redundant_placeholder05
1while_while_cond_4281647___redundant_placeholder15
1while_while_cond_4281647___redundant_placeholder25
1while_while_cond_4281647___redundant_placeholder3
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
*__inference_lstm_679_layer_call_fn_4281303

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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4279355s
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282491

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4282407*
condR
while_cond_4282406*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278388

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
while_cond_4278739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278739___redundant_placeholder05
1while_while_cond_4278739___redundant_placeholder15
1while_while_cond_4278739___redundant_placeholder25
1while_while_cond_4278739___redundant_placeholder3
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
while_body_4281362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281732

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4281648*
condR
while_cond_4281647*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4281505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4279735
lstm_678_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4277475o
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
_user_specified_namelstm_678_input
?8
?
while_body_4279106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4282264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4278255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278255___redundant_placeholder05
1while_while_cond_4278255___redundant_placeholder15
1while_while_cond_4278255___redundant_placeholder25
1while_while_cond_4278255___redundant_placeholder3
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282804

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

?
lstm_679_while_cond_4279986.
*lstm_679_while_lstm_679_while_loop_counter4
0lstm_679_while_lstm_679_while_maximum_iterations
lstm_679_while_placeholder 
lstm_679_while_placeholder_1 
lstm_679_while_placeholder_2 
lstm_679_while_placeholder_30
,lstm_679_while_less_lstm_679_strided_slice_1G
Clstm_679_while_lstm_679_while_cond_4279986___redundant_placeholder0G
Clstm_679_while_lstm_679_while_cond_4279986___redundant_placeholder1G
Clstm_679_while_lstm_679_while_cond_4279986___redundant_placeholder2G
Clstm_679_while_lstm_679_while_cond_4279986___redundant_placeholder3
lstm_679_while_identity
?
lstm_679/while/LessLesslstm_679_while_placeholder,lstm_679_while_less_lstm_679_strided_slice_1*
T0*
_output_shapes
: ]
lstm_679/while/IdentityIdentitylstm_679/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_679_while_identity lstm_679/while/Identity:output:0*(
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
while_body_4279436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282576

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
?#
?
while_body_4277906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_706_4277930_0:	d?0
while_lstm_cell_706_4277932_0:	2?,
while_lstm_cell_706_4277934_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_706_4277930:	d?.
while_lstm_cell_706_4277932:	2?*
while_lstm_cell_706_4277934:	???+while/lstm_cell_706/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_706_4277930_0while_lstm_cell_706_4277932_0while_lstm_cell_706_4277934_0*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4277892?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_706/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_706/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_706/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_706_4277930while_lstm_cell_706_4277930_0"<
while_lstm_cell_706_4277932while_lstm_cell_706_4277932_0"<
while_lstm_cell_706_4277934while_lstm_cell_706_4277934_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_706/StatefulPartitionedCall+while/lstm_cell_706/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_680_layer_call_fn_4281919

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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4279190o
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
?
E__inference_lstm_679_layer_call_and_return_conditional_losses_4277975

inputs(
lstm_cell_706_4277893:	d?(
lstm_cell_706_4277895:	2?$
lstm_cell_706_4277897:	?
identity??%lstm_cell_706/StatefulPartitionedCall?while;
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
%lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_706_4277893lstm_cell_706_4277895lstm_cell_706_4277897*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4277892n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_706_4277893lstm_cell_706_4277895lstm_cell_706_4277897*
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
while_body_4277906*
condR
while_cond_4277905*K
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
NoOpNoOp&^lstm_cell_706/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_706/StatefulPartitionedCall%lstm_cell_706/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4281790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281790___redundant_placeholder05
1while_while_cond_4281790___redundant_placeholder15
1while_while_cond_4281790___redundant_placeholder25
1while_while_cond_4281790___redundant_placeholder3
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
/__inference_lstm_cell_707_layer_call_fn_4282723

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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278242o
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
0__inference_sequential_226_layer_call_fn_4279024
lstm_678_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4278999o
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
_user_specified_namelstm_678_input
?
?
while_cond_4278096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278096___redundant_placeholder05
1while_while_cond_4278096___redundant_placeholder15
1while_while_cond_4278096___redundant_placeholder25
1while_while_cond_4278096___redundant_placeholder3
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
*sequential_226_lstm_679_while_body_4277246L
Hsequential_226_lstm_679_while_sequential_226_lstm_679_while_loop_counterR
Nsequential_226_lstm_679_while_sequential_226_lstm_679_while_maximum_iterations-
)sequential_226_lstm_679_while_placeholder/
+sequential_226_lstm_679_while_placeholder_1/
+sequential_226_lstm_679_while_placeholder_2/
+sequential_226_lstm_679_while_placeholder_3K
Gsequential_226_lstm_679_while_sequential_226_lstm_679_strided_slice_1_0?
?sequential_226_lstm_679_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_679_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_226_lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?a
Nsequential_226_lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?\
Msequential_226_lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?*
&sequential_226_lstm_679_while_identity,
(sequential_226_lstm_679_while_identity_1,
(sequential_226_lstm_679_while_identity_2,
(sequential_226_lstm_679_while_identity_3,
(sequential_226_lstm_679_while_identity_4,
(sequential_226_lstm_679_while_identity_5I
Esequential_226_lstm_679_while_sequential_226_lstm_679_strided_slice_1?
?sequential_226_lstm_679_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_679_tensorarrayunstack_tensorlistfromtensor]
Jsequential_226_lstm_679_while_lstm_cell_706_matmul_readvariableop_resource:	d?_
Lsequential_226_lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?Z
Ksequential_226_lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource:	???Bsequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp?Asequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp?Csequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp?
Osequential_226/lstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_226/lstm_679/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_226_lstm_679_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_679_tensorarrayunstack_tensorlistfromtensor_0)sequential_226_lstm_679_while_placeholderXsequential_226/lstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOpLsequential_226_lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_226/lstm_679/while/lstm_cell_706/MatMulMatMulHsequential_226/lstm_679/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOpNsequential_226_lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_226/lstm_679/while/lstm_cell_706/MatMul_1MatMul+sequential_226_lstm_679_while_placeholder_2Ksequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_226/lstm_679/while/lstm_cell_706/addAddV2<sequential_226/lstm_679/while/lstm_cell_706/MatMul:product:0>sequential_226/lstm_679/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOpMsequential_226_lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_226/lstm_679/while/lstm_cell_706/BiasAddBiasAdd3sequential_226/lstm_679/while/lstm_cell_706/add:z:0Jsequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_226/lstm_679/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_226/lstm_679/while/lstm_cell_706/splitSplitDsequential_226/lstm_679/while/lstm_cell_706/split/split_dim:output:0<sequential_226/lstm_679/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_226/lstm_679/while/lstm_cell_706/SigmoidSigmoid:sequential_226/lstm_679/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_226/lstm_679/while/lstm_cell_706/Sigmoid_1Sigmoid:sequential_226/lstm_679/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_226/lstm_679/while/lstm_cell_706/mulMul9sequential_226/lstm_679/while/lstm_cell_706/Sigmoid_1:y:0+sequential_226_lstm_679_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_226/lstm_679/while/lstm_cell_706/ReluRelu:sequential_226/lstm_679/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_226/lstm_679/while/lstm_cell_706/mul_1Mul7sequential_226/lstm_679/while/lstm_cell_706/Sigmoid:y:0>sequential_226/lstm_679/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_226/lstm_679/while/lstm_cell_706/add_1AddV23sequential_226/lstm_679/while/lstm_cell_706/mul:z:05sequential_226/lstm_679/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_226/lstm_679/while/lstm_cell_706/Sigmoid_2Sigmoid:sequential_226/lstm_679/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_226/lstm_679/while/lstm_cell_706/Relu_1Relu5sequential_226/lstm_679/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_226/lstm_679/while/lstm_cell_706/mul_2Mul9sequential_226/lstm_679/while/lstm_cell_706/Sigmoid_2:y:0@sequential_226/lstm_679/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_226/lstm_679/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_226_lstm_679_while_placeholder_1)sequential_226_lstm_679_while_placeholder5sequential_226/lstm_679/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_226/lstm_679/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_226/lstm_679/while/addAddV2)sequential_226_lstm_679_while_placeholder,sequential_226/lstm_679/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_226/lstm_679/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_226/lstm_679/while/add_1AddV2Hsequential_226_lstm_679_while_sequential_226_lstm_679_while_loop_counter.sequential_226/lstm_679/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_226/lstm_679/while/IdentityIdentity'sequential_226/lstm_679/while/add_1:z:0#^sequential_226/lstm_679/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_679/while/Identity_1IdentityNsequential_226_lstm_679_while_sequential_226_lstm_679_while_maximum_iterations#^sequential_226/lstm_679/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_679/while/Identity_2Identity%sequential_226/lstm_679/while/add:z:0#^sequential_226/lstm_679/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_679/while/Identity_3IdentityRsequential_226/lstm_679/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_226/lstm_679/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_679/while/Identity_4Identity5sequential_226/lstm_679/while/lstm_cell_706/mul_2:z:0#^sequential_226/lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_226/lstm_679/while/Identity_5Identity5sequential_226/lstm_679/while/lstm_cell_706/add_1:z:0#^sequential_226/lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_226/lstm_679/while/NoOpNoOpC^sequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOpB^sequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOpD^sequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_226_lstm_679_while_identity/sequential_226/lstm_679/while/Identity:output:0"]
(sequential_226_lstm_679_while_identity_11sequential_226/lstm_679/while/Identity_1:output:0"]
(sequential_226_lstm_679_while_identity_21sequential_226/lstm_679/while/Identity_2:output:0"]
(sequential_226_lstm_679_while_identity_31sequential_226/lstm_679/while/Identity_3:output:0"]
(sequential_226_lstm_679_while_identity_41sequential_226/lstm_679/while/Identity_4:output:0"]
(sequential_226_lstm_679_while_identity_51sequential_226/lstm_679/while/Identity_5:output:0"?
Ksequential_226_lstm_679_while_lstm_cell_706_biasadd_readvariableop_resourceMsequential_226_lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
Lsequential_226_lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resourceNsequential_226_lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0"?
Jsequential_226_lstm_679_while_lstm_cell_706_matmul_readvariableop_resourceLsequential_226_lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0"?
Esequential_226_lstm_679_while_sequential_226_lstm_679_strided_slice_1Gsequential_226_lstm_679_while_sequential_226_lstm_679_strided_slice_1_0"?
?sequential_226_lstm_679_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_679_tensorarrayunstack_tensorlistfromtensor?sequential_226_lstm_679_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_679_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOpBsequential_226/lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp2?
Asequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOpAsequential_226/lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp2?
Csequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOpCsequential_226/lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_226_lstm_678_while_body_4277107L
Hsequential_226_lstm_678_while_sequential_226_lstm_678_while_loop_counterR
Nsequential_226_lstm_678_while_sequential_226_lstm_678_while_maximum_iterations-
)sequential_226_lstm_678_while_placeholder/
+sequential_226_lstm_678_while_placeholder_1/
+sequential_226_lstm_678_while_placeholder_2/
+sequential_226_lstm_678_while_placeholder_3K
Gsequential_226_lstm_678_while_sequential_226_lstm_678_strided_slice_1_0?
?sequential_226_lstm_678_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_678_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_226_lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0:	?a
Nsequential_226_lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?\
Msequential_226_lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?*
&sequential_226_lstm_678_while_identity,
(sequential_226_lstm_678_while_identity_1,
(sequential_226_lstm_678_while_identity_2,
(sequential_226_lstm_678_while_identity_3,
(sequential_226_lstm_678_while_identity_4,
(sequential_226_lstm_678_while_identity_5I
Esequential_226_lstm_678_while_sequential_226_lstm_678_strided_slice_1?
?sequential_226_lstm_678_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_678_tensorarrayunstack_tensorlistfromtensor]
Jsequential_226_lstm_678_while_lstm_cell_705_matmul_readvariableop_resource:	?_
Lsequential_226_lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?Z
Ksequential_226_lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource:	???Bsequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp?Asequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp?Csequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp?
Osequential_226/lstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_226/lstm_678/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_226_lstm_678_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_678_tensorarrayunstack_tensorlistfromtensor_0)sequential_226_lstm_678_while_placeholderXsequential_226/lstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOpLsequential_226_lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_226/lstm_678/while/lstm_cell_705/MatMulMatMulHsequential_226/lstm_678/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOpNsequential_226_lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_226/lstm_678/while/lstm_cell_705/MatMul_1MatMul+sequential_226_lstm_678_while_placeholder_2Ksequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_226/lstm_678/while/lstm_cell_705/addAddV2<sequential_226/lstm_678/while/lstm_cell_705/MatMul:product:0>sequential_226/lstm_678/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOpMsequential_226_lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_226/lstm_678/while/lstm_cell_705/BiasAddBiasAdd3sequential_226/lstm_678/while/lstm_cell_705/add:z:0Jsequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_226/lstm_678/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_226/lstm_678/while/lstm_cell_705/splitSplitDsequential_226/lstm_678/while/lstm_cell_705/split/split_dim:output:0<sequential_226/lstm_678/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_226/lstm_678/while/lstm_cell_705/SigmoidSigmoid:sequential_226/lstm_678/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_226/lstm_678/while/lstm_cell_705/Sigmoid_1Sigmoid:sequential_226/lstm_678/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_226/lstm_678/while/lstm_cell_705/mulMul9sequential_226/lstm_678/while/lstm_cell_705/Sigmoid_1:y:0+sequential_226_lstm_678_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_226/lstm_678/while/lstm_cell_705/ReluRelu:sequential_226/lstm_678/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_226/lstm_678/while/lstm_cell_705/mul_1Mul7sequential_226/lstm_678/while/lstm_cell_705/Sigmoid:y:0>sequential_226/lstm_678/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_226/lstm_678/while/lstm_cell_705/add_1AddV23sequential_226/lstm_678/while/lstm_cell_705/mul:z:05sequential_226/lstm_678/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_226/lstm_678/while/lstm_cell_705/Sigmoid_2Sigmoid:sequential_226/lstm_678/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_226/lstm_678/while/lstm_cell_705/Relu_1Relu5sequential_226/lstm_678/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_226/lstm_678/while/lstm_cell_705/mul_2Mul9sequential_226/lstm_678/while/lstm_cell_705/Sigmoid_2:y:0@sequential_226/lstm_678/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_226/lstm_678/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_226_lstm_678_while_placeholder_1)sequential_226_lstm_678_while_placeholder5sequential_226/lstm_678/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_226/lstm_678/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_226/lstm_678/while/addAddV2)sequential_226_lstm_678_while_placeholder,sequential_226/lstm_678/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_226/lstm_678/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_226/lstm_678/while/add_1AddV2Hsequential_226_lstm_678_while_sequential_226_lstm_678_while_loop_counter.sequential_226/lstm_678/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_226/lstm_678/while/IdentityIdentity'sequential_226/lstm_678/while/add_1:z:0#^sequential_226/lstm_678/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_678/while/Identity_1IdentityNsequential_226_lstm_678_while_sequential_226_lstm_678_while_maximum_iterations#^sequential_226/lstm_678/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_678/while/Identity_2Identity%sequential_226/lstm_678/while/add:z:0#^sequential_226/lstm_678/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_678/while/Identity_3IdentityRsequential_226/lstm_678/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_226/lstm_678/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_678/while/Identity_4Identity5sequential_226/lstm_678/while/lstm_cell_705/mul_2:z:0#^sequential_226/lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_226/lstm_678/while/Identity_5Identity5sequential_226/lstm_678/while/lstm_cell_705/add_1:z:0#^sequential_226/lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_226/lstm_678/while/NoOpNoOpC^sequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOpB^sequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOpD^sequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_226_lstm_678_while_identity/sequential_226/lstm_678/while/Identity:output:0"]
(sequential_226_lstm_678_while_identity_11sequential_226/lstm_678/while/Identity_1:output:0"]
(sequential_226_lstm_678_while_identity_21sequential_226/lstm_678/while/Identity_2:output:0"]
(sequential_226_lstm_678_while_identity_31sequential_226/lstm_678/while/Identity_3:output:0"]
(sequential_226_lstm_678_while_identity_41sequential_226/lstm_678/while/Identity_4:output:0"]
(sequential_226_lstm_678_while_identity_51sequential_226/lstm_678/while/Identity_5:output:0"?
Ksequential_226_lstm_678_while_lstm_cell_705_biasadd_readvariableop_resourceMsequential_226_lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
Lsequential_226_lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resourceNsequential_226_lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0"?
Jsequential_226_lstm_678_while_lstm_cell_705_matmul_readvariableop_resourceLsequential_226_lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0"?
Esequential_226_lstm_678_while_sequential_226_lstm_678_strided_slice_1Gsequential_226_lstm_678_while_sequential_226_lstm_678_strided_slice_1_0"?
?sequential_226_lstm_678_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_678_tensorarrayunstack_tensorlistfromtensor?sequential_226_lstm_678_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_678_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOpBsequential_226/lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp2?
Asequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOpAsequential_226/lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp2?
Csequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOpCsequential_226/lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4279435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279435___redundant_placeholder05
1while_while_cond_4279435___redundant_placeholder15
1while_while_cond_4279435___redundant_placeholder25
1while_while_cond_4279435___redundant_placeholder3
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278824

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4278740*
condR
while_cond_4278739*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_680_layer_call_fn_4281897
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278516o
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
/__inference_lstm_cell_706_layer_call_fn_4282625

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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4277892o
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

?
lstm_678_while_cond_4280274.
*lstm_678_while_lstm_678_while_loop_counter4
0lstm_678_while_lstm_678_while_maximum_iterations
lstm_678_while_placeholder 
lstm_678_while_placeholder_1 
lstm_678_while_placeholder_2 
lstm_678_while_placeholder_30
,lstm_678_while_less_lstm_678_strided_slice_1G
Clstm_678_while_lstm_678_while_cond_4280274___redundant_placeholder0G
Clstm_678_while_lstm_678_while_cond_4280274___redundant_placeholder1G
Clstm_678_while_lstm_678_while_cond_4280274___redundant_placeholder2G
Clstm_678_while_lstm_678_while_cond_4280274___redundant_placeholder3
lstm_678_while_identity
?
lstm_678/while/LessLesslstm_678_while_placeholder,lstm_678_while_less_lstm_678_strided_slice_1*
T0*
_output_shapes
: ]
lstm_678/while/IdentityIdentitylstm_678/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_678_while_identity lstm_678/while/Identity:output:0*(
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278325

inputs'
lstm_cell_707_4278243:2('
lstm_cell_707_4278245:
(#
lstm_cell_707_4278247:(
identity??%lstm_cell_707/StatefulPartitionedCall?while;
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
%lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_707_4278243lstm_cell_707_4278245lstm_cell_707_4278247*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278242n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_707_4278243lstm_cell_707_4278245lstm_cell_707_4278247*
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
while_body_4278256*
condR
while_cond_4278255*K
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
NoOpNoOp&^lstm_cell_707/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_707/StatefulPartitionedCall%lstm_cell_707/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278242

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
while_body_4278890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_680_layer_call_fn_4281908

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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278974o
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282348

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4282264*
condR
while_cond_4282263*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282706

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

?
0__inference_sequential_226_layer_call_fn_4279789

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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279588o
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
?K
?
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281589
inputs_0?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4281505*
condR
while_cond_4281504*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280973
inputs_0?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4280889*
condR
while_cond_4280888*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4278038

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
?K
?
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282205
inputs_0>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4282121*
condR
while_cond_4282120*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4278889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278889___redundant_placeholder05
1while_while_cond_4278889___redundant_placeholder15
1while_while_cond_4278889___redundant_placeholder25
1while_while_cond_4278889___redundant_placeholder3
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
while_body_4281791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4282121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280643

inputsH
5lstm_678_lstm_cell_705_matmul_readvariableop_resource:	?J
7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource:	d?E
6lstm_678_lstm_cell_705_biasadd_readvariableop_resource:	?H
5lstm_679_lstm_cell_706_matmul_readvariableop_resource:	d?J
7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource:	2?E
6lstm_679_lstm_cell_706_biasadd_readvariableop_resource:	?G
5lstm_680_lstm_cell_707_matmul_readvariableop_resource:2(I
7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource:
(D
6lstm_680_lstm_cell_707_biasadd_readvariableop_resource:(:
(dense_226_matmul_readvariableop_resource:
7
)dense_226_biasadd_readvariableop_resource:
identity?? dense_226/BiasAdd/ReadVariableOp?dense_226/MatMul/ReadVariableOp?-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp?,lstm_678/lstm_cell_705/MatMul/ReadVariableOp?.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp?lstm_678/while?-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp?,lstm_679/lstm_cell_706/MatMul/ReadVariableOp?.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp?lstm_679/while?-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp?,lstm_680/lstm_cell_707/MatMul/ReadVariableOp?.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp?lstm_680/whileD
lstm_678/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_678/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_678/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_678/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_sliceStridedSlicelstm_678/Shape:output:0%lstm_678/strided_slice/stack:output:0'lstm_678/strided_slice/stack_1:output:0'lstm_678/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_678/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_678/zeros/packedPacklstm_678/strided_slice:output:0 lstm_678/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_678/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_678/zerosFilllstm_678/zeros/packed:output:0lstm_678/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_678/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_678/zeros_1/packedPacklstm_678/strided_slice:output:0"lstm_678/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_678/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_678/zeros_1Fill lstm_678/zeros_1/packed:output:0lstm_678/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_678/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_678/transpose	Transposeinputs lstm_678/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_678/Shape_1Shapelstm_678/transpose:y:0*
T0*
_output_shapes
:h
lstm_678/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_678/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_1StridedSlicelstm_678/Shape_1:output:0'lstm_678/strided_slice_1/stack:output:0)lstm_678/strided_slice_1/stack_1:output:0)lstm_678/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_678/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_678/TensorArrayV2TensorListReserve-lstm_678/TensorArrayV2/element_shape:output:0!lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_678/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_678/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_678/transpose:y:0Glstm_678/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_678/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_678/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_2StridedSlicelstm_678/transpose:y:0'lstm_678/strided_slice_2/stack:output:0)lstm_678/strided_slice_2/stack_1:output:0)lstm_678/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_678/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp5lstm_678_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_678/lstm_cell_705/MatMulMatMul!lstm_678/strided_slice_2:output:04lstm_678/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_678/lstm_cell_705/MatMul_1MatMullstm_678/zeros:output:06lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_678/lstm_cell_705/addAddV2'lstm_678/lstm_cell_705/MatMul:product:0)lstm_678/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp6lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_678/lstm_cell_705/BiasAddBiasAddlstm_678/lstm_cell_705/add:z:05lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_678/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_678/lstm_cell_705/splitSplit/lstm_678/lstm_cell_705/split/split_dim:output:0'lstm_678/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_678/lstm_cell_705/SigmoidSigmoid%lstm_678/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_678/lstm_cell_705/Sigmoid_1Sigmoid%lstm_678/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mulMul$lstm_678/lstm_cell_705/Sigmoid_1:y:0lstm_678/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_678/lstm_cell_705/ReluRelu%lstm_678/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mul_1Mul"lstm_678/lstm_cell_705/Sigmoid:y:0)lstm_678/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/add_1AddV2lstm_678/lstm_cell_705/mul:z:0 lstm_678/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_678/lstm_cell_705/Sigmoid_2Sigmoid%lstm_678/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_678/lstm_cell_705/Relu_1Relu lstm_678/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mul_2Mul$lstm_678/lstm_cell_705/Sigmoid_2:y:0+lstm_678/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_678/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_678/TensorArrayV2_1TensorListReserve/lstm_678/TensorArrayV2_1/element_shape:output:0!lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_678/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_678/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_678/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_678/whileWhile$lstm_678/while/loop_counter:output:0*lstm_678/while/maximum_iterations:output:0lstm_678/time:output:0!lstm_678/TensorArrayV2_1:handle:0lstm_678/zeros:output:0lstm_678/zeros_1:output:0!lstm_678/strided_slice_1:output:0@lstm_678/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_678_lstm_cell_705_matmul_readvariableop_resource7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource6lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
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
lstm_678_while_body_4280275*'
condR
lstm_678_while_cond_4280274*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_678/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_678/TensorArrayV2Stack/TensorListStackTensorListStacklstm_678/while:output:3Blstm_678/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_678/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_678/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_3StridedSlice4lstm_678/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_678/strided_slice_3/stack:output:0)lstm_678/strided_slice_3/stack_1:output:0)lstm_678/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_678/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_678/transpose_1	Transpose4lstm_678/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_678/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_678/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_679/ShapeShapelstm_678/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_679/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_679/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_679/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_sliceStridedSlicelstm_679/Shape:output:0%lstm_679/strided_slice/stack:output:0'lstm_679/strided_slice/stack_1:output:0'lstm_679/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_679/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_679/zeros/packedPacklstm_679/strided_slice:output:0 lstm_679/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_679/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_679/zerosFilllstm_679/zeros/packed:output:0lstm_679/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_679/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_679/zeros_1/packedPacklstm_679/strided_slice:output:0"lstm_679/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_679/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_679/zeros_1Fill lstm_679/zeros_1/packed:output:0lstm_679/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_679/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_679/transpose	Transposelstm_678/transpose_1:y:0 lstm_679/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_679/Shape_1Shapelstm_679/transpose:y:0*
T0*
_output_shapes
:h
lstm_679/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_679/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_1StridedSlicelstm_679/Shape_1:output:0'lstm_679/strided_slice_1/stack:output:0)lstm_679/strided_slice_1/stack_1:output:0)lstm_679/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_679/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_679/TensorArrayV2TensorListReserve-lstm_679/TensorArrayV2/element_shape:output:0!lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_679/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_679/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_679/transpose:y:0Glstm_679/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_679/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_679/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_2StridedSlicelstm_679/transpose:y:0'lstm_679/strided_slice_2/stack:output:0)lstm_679/strided_slice_2/stack_1:output:0)lstm_679/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_679/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp5lstm_679_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_679/lstm_cell_706/MatMulMatMul!lstm_679/strided_slice_2:output:04lstm_679/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_679/lstm_cell_706/MatMul_1MatMullstm_679/zeros:output:06lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_679/lstm_cell_706/addAddV2'lstm_679/lstm_cell_706/MatMul:product:0)lstm_679/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp6lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_679/lstm_cell_706/BiasAddBiasAddlstm_679/lstm_cell_706/add:z:05lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_679/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_679/lstm_cell_706/splitSplit/lstm_679/lstm_cell_706/split/split_dim:output:0'lstm_679/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_679/lstm_cell_706/SigmoidSigmoid%lstm_679/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_679/lstm_cell_706/Sigmoid_1Sigmoid%lstm_679/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mulMul$lstm_679/lstm_cell_706/Sigmoid_1:y:0lstm_679/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_679/lstm_cell_706/ReluRelu%lstm_679/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mul_1Mul"lstm_679/lstm_cell_706/Sigmoid:y:0)lstm_679/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/add_1AddV2lstm_679/lstm_cell_706/mul:z:0 lstm_679/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_679/lstm_cell_706/Sigmoid_2Sigmoid%lstm_679/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_679/lstm_cell_706/Relu_1Relu lstm_679/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mul_2Mul$lstm_679/lstm_cell_706/Sigmoid_2:y:0+lstm_679/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_679/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_679/TensorArrayV2_1TensorListReserve/lstm_679/TensorArrayV2_1/element_shape:output:0!lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_679/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_679/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_679/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_679/whileWhile$lstm_679/while/loop_counter:output:0*lstm_679/while/maximum_iterations:output:0lstm_679/time:output:0!lstm_679/TensorArrayV2_1:handle:0lstm_679/zeros:output:0lstm_679/zeros_1:output:0!lstm_679/strided_slice_1:output:0@lstm_679/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_679_lstm_cell_706_matmul_readvariableop_resource7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource6lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
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
lstm_679_while_body_4280414*'
condR
lstm_679_while_cond_4280413*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_679/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_679/TensorArrayV2Stack/TensorListStackTensorListStacklstm_679/while:output:3Blstm_679/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_679/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_679/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_3StridedSlice4lstm_679/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_679/strided_slice_3/stack:output:0)lstm_679/strided_slice_3/stack_1:output:0)lstm_679/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_679/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_679/transpose_1	Transpose4lstm_679/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_679/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_679/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_680/ShapeShapelstm_679/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_680/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_680/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_680/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_sliceStridedSlicelstm_680/Shape:output:0%lstm_680/strided_slice/stack:output:0'lstm_680/strided_slice/stack_1:output:0'lstm_680/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_680/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_680/zeros/packedPacklstm_680/strided_slice:output:0 lstm_680/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_680/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_680/zerosFilllstm_680/zeros/packed:output:0lstm_680/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_680/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_680/zeros_1/packedPacklstm_680/strided_slice:output:0"lstm_680/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_680/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_680/zeros_1Fill lstm_680/zeros_1/packed:output:0lstm_680/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_680/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_680/transpose	Transposelstm_679/transpose_1:y:0 lstm_680/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_680/Shape_1Shapelstm_680/transpose:y:0*
T0*
_output_shapes
:h
lstm_680/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_680/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_1StridedSlicelstm_680/Shape_1:output:0'lstm_680/strided_slice_1/stack:output:0)lstm_680/strided_slice_1/stack_1:output:0)lstm_680/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_680/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_680/TensorArrayV2TensorListReserve-lstm_680/TensorArrayV2/element_shape:output:0!lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_680/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_680/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_680/transpose:y:0Glstm_680/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_680/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_680/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_2StridedSlicelstm_680/transpose:y:0'lstm_680/strided_slice_2/stack:output:0)lstm_680/strided_slice_2/stack_1:output:0)lstm_680/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_680/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp5lstm_680_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_680/lstm_cell_707/MatMulMatMul!lstm_680/strided_slice_2:output:04lstm_680/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_680/lstm_cell_707/MatMul_1MatMullstm_680/zeros:output:06lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_680/lstm_cell_707/addAddV2'lstm_680/lstm_cell_707/MatMul:product:0)lstm_680/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp6lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_680/lstm_cell_707/BiasAddBiasAddlstm_680/lstm_cell_707/add:z:05lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_680/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_680/lstm_cell_707/splitSplit/lstm_680/lstm_cell_707/split/split_dim:output:0'lstm_680/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_680/lstm_cell_707/SigmoidSigmoid%lstm_680/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_680/lstm_cell_707/Sigmoid_1Sigmoid%lstm_680/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mulMul$lstm_680/lstm_cell_707/Sigmoid_1:y:0lstm_680/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_680/lstm_cell_707/ReluRelu%lstm_680/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mul_1Mul"lstm_680/lstm_cell_707/Sigmoid:y:0)lstm_680/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/add_1AddV2lstm_680/lstm_cell_707/mul:z:0 lstm_680/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_680/lstm_cell_707/Sigmoid_2Sigmoid%lstm_680/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_680/lstm_cell_707/Relu_1Relu lstm_680/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mul_2Mul$lstm_680/lstm_cell_707/Sigmoid_2:y:0+lstm_680/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_680/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_680/TensorArrayV2_1TensorListReserve/lstm_680/TensorArrayV2_1/element_shape:output:0!lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_680/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_680/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_680/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_680/whileWhile$lstm_680/while/loop_counter:output:0*lstm_680/while/maximum_iterations:output:0lstm_680/time:output:0!lstm_680/TensorArrayV2_1:handle:0lstm_680/zeros:output:0lstm_680/zeros_1:output:0!lstm_680/strided_slice_1:output:0@lstm_680/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_680_lstm_cell_707_matmul_readvariableop_resource7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource6lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
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
lstm_680_while_body_4280553*'
condR
lstm_680_while_cond_4280552*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_680/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_680/TensorArrayV2Stack/TensorListStackTensorListStacklstm_680/while:output:3Blstm_680/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_680/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_680/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_3StridedSlice4lstm_680/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_680/strided_slice_3/stack:output:0)lstm_680/strided_slice_3/stack_1:output:0)lstm_680/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_680/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_680/transpose_1	Transpose4lstm_680/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_680/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_680/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_226/MatMul/ReadVariableOpReadVariableOp(dense_226_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_226/MatMulMatMul!lstm_680/strided_slice_3:output:0'dense_226/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_226/BiasAdd/ReadVariableOpReadVariableOp)dense_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_226/BiasAddBiasAdddense_226/MatMul:product:0(dense_226/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_226/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_226/BiasAdd/ReadVariableOp ^dense_226/MatMul/ReadVariableOp.^lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp-^lstm_678/lstm_cell_705/MatMul/ReadVariableOp/^lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp^lstm_678/while.^lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp-^lstm_679/lstm_cell_706/MatMul/ReadVariableOp/^lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp^lstm_679/while.^lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp-^lstm_680/lstm_cell_707/MatMul/ReadVariableOp/^lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp^lstm_680/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_226/BiasAdd/ReadVariableOp dense_226/BiasAdd/ReadVariableOp2B
dense_226/MatMul/ReadVariableOpdense_226/MatMul/ReadVariableOp2^
-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp2\
,lstm_678/lstm_cell_705/MatMul/ReadVariableOp,lstm_678/lstm_cell_705/MatMul/ReadVariableOp2`
.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp2 
lstm_678/whilelstm_678/while2^
-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp2\
,lstm_679/lstm_cell_706/MatMul/ReadVariableOp,lstm_679/lstm_cell_706/MatMul/ReadVariableOp2`
.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp2 
lstm_679/whilelstm_679/while2^
-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp2\
,lstm_680/lstm_cell_707/MatMul/ReadVariableOp,lstm_680/lstm_cell_707/MatMul/ReadVariableOp2`
.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp2 
lstm_680/whilelstm_680/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4278446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278446___redundant_placeholder05
1while_while_cond_4278446___redundant_placeholder15
1while_while_cond_4278446___redundant_placeholder25
1while_while_cond_4278446___redundant_placeholder3
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
lstm_678_while_cond_4279847.
*lstm_678_while_lstm_678_while_loop_counter4
0lstm_678_while_lstm_678_while_maximum_iterations
lstm_678_while_placeholder 
lstm_678_while_placeholder_1 
lstm_678_while_placeholder_2 
lstm_678_while_placeholder_30
,lstm_678_while_less_lstm_678_strided_slice_1G
Clstm_678_while_lstm_678_while_cond_4279847___redundant_placeholder0G
Clstm_678_while_lstm_678_while_cond_4279847___redundant_placeholder1G
Clstm_678_while_lstm_678_while_cond_4279847___redundant_placeholder2G
Clstm_678_while_lstm_678_while_cond_4279847___redundant_placeholder3
lstm_678_while_identity
?
lstm_678/while/LessLesslstm_678_while_placeholder,lstm_678_while_less_lstm_678_strided_slice_1*
T0*
_output_shapes
: ]
lstm_678/while/IdentityIdentitylstm_678/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_678_while_identity lstm_678/while/Identity:output:0*(
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
0__inference_sequential_226_layer_call_fn_4279640
lstm_678_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279588o
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
_user_specified_namelstm_678_input
?
?
*sequential_226_lstm_678_while_cond_4277106L
Hsequential_226_lstm_678_while_sequential_226_lstm_678_while_loop_counterR
Nsequential_226_lstm_678_while_sequential_226_lstm_678_while_maximum_iterations-
)sequential_226_lstm_678_while_placeholder/
+sequential_226_lstm_678_while_placeholder_1/
+sequential_226_lstm_678_while_placeholder_2/
+sequential_226_lstm_678_while_placeholder_3N
Jsequential_226_lstm_678_while_less_sequential_226_lstm_678_strided_slice_1e
asequential_226_lstm_678_while_sequential_226_lstm_678_while_cond_4277106___redundant_placeholder0e
asequential_226_lstm_678_while_sequential_226_lstm_678_while_cond_4277106___redundant_placeholder1e
asequential_226_lstm_678_while_sequential_226_lstm_678_while_cond_4277106___redundant_placeholder2e
asequential_226_lstm_678_while_sequential_226_lstm_678_while_cond_4277106___redundant_placeholder3*
&sequential_226_lstm_678_while_identity
?
"sequential_226/lstm_678/while/LessLess)sequential_226_lstm_678_while_placeholderJsequential_226_lstm_678_while_less_sequential_226_lstm_678_strided_slice_1*
T0*
_output_shapes
: {
&sequential_226/lstm_678/while/IdentityIdentity&sequential_226/lstm_678/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_226_lstm_678_while_identity/sequential_226/lstm_678/while/Identity:output:0*(
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
/__inference_lstm_cell_707_layer_call_fn_4282740

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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278388o
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
?#
?
while_body_4277747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_705_4277771_0:	?0
while_lstm_cell_705_4277773_0:	d?,
while_lstm_cell_705_4277775_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_705_4277771:	?.
while_lstm_cell_705_4277773:	d?*
while_lstm_cell_705_4277775:	???+while/lstm_cell_705/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_705_4277771_0while_lstm_cell_705_4277773_0while_lstm_cell_705_4277775_0*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277688?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_705/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_705/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_705/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_705/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_705_4277771while_lstm_cell_705_4277771_0"<
while_lstm_cell_705_4277773while_lstm_cell_705_4277773_0"<
while_lstm_cell_705_4277775while_lstm_cell_705_4277775_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_705/StatefulPartitionedCall+while/lstm_cell_705/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_680_while_cond_4280552.
*lstm_680_while_lstm_680_while_loop_counter4
0lstm_680_while_lstm_680_while_maximum_iterations
lstm_680_while_placeholder 
lstm_680_while_placeholder_1 
lstm_680_while_placeholder_2 
lstm_680_while_placeholder_30
,lstm_680_while_less_lstm_680_strided_slice_1G
Clstm_680_while_lstm_680_while_cond_4280552___redundant_placeholder0G
Clstm_680_while_lstm_680_while_cond_4280552___redundant_placeholder1G
Clstm_680_while_lstm_680_while_cond_4280552___redundant_placeholder2G
Clstm_680_while_lstm_680_while_cond_4280552___redundant_placeholder3
lstm_680_while_identity
?
lstm_680/while/LessLesslstm_680_while_placeholder,lstm_680_while_less_lstm_680_strided_slice_1*
T0*
_output_shapes
: ]
lstm_680/while/IdentityIdentitylstm_680/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_680_while_identity lstm_680/while/Identity:output:0*(
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
*__inference_lstm_678_layer_call_fn_4280654
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4277625|
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4279520

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4279436*
condR
while_cond_4279435*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4277892

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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4277625

inputs(
lstm_cell_705_4277543:	?(
lstm_cell_705_4277545:	d?$
lstm_cell_705_4277547:	?
identity??%lstm_cell_705/StatefulPartitionedCall?while;
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
%lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_705_4277543lstm_cell_705_4277545lstm_cell_705_4277547*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277542n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_705_4277543lstm_cell_705_4277545lstm_cell_705_4277547*
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
while_body_4277556*
condR
while_cond_4277555*K
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
NoOpNoOp&^lstm_cell_705/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_705/StatefulPartitionedCall%lstm_cell_705/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_679_while_body_4280414.
*lstm_679_while_lstm_679_while_loop_counter4
0lstm_679_while_lstm_679_while_maximum_iterations
lstm_679_while_placeholder 
lstm_679_while_placeholder_1 
lstm_679_while_placeholder_2 
lstm_679_while_placeholder_3-
)lstm_679_while_lstm_679_strided_slice_1_0i
elstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?R
?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?M
>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
lstm_679_while_identity
lstm_679_while_identity_1
lstm_679_while_identity_2
lstm_679_while_identity_3
lstm_679_while_identity_4
lstm_679_while_identity_5+
'lstm_679_while_lstm_679_strided_slice_1g
clstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensorN
;lstm_679_while_lstm_cell_706_matmul_readvariableop_resource:	d?P
=lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?K
<lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource:	???3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp?2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp?4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp?
@lstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_679/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0lstm_679_while_placeholderIlstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_679/while/lstm_cell_706/MatMulMatMul9lstm_679/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_679/while/lstm_cell_706/MatMul_1MatMullstm_679_while_placeholder_2<lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_679/while/lstm_cell_706/addAddV2-lstm_679/while/lstm_cell_706/MatMul:product:0/lstm_679/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_679/while/lstm_cell_706/BiasAddBiasAdd$lstm_679/while/lstm_cell_706/add:z:0;lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_679/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_679/while/lstm_cell_706/splitSplit5lstm_679/while/lstm_cell_706/split/split_dim:output:0-lstm_679/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_679/while/lstm_cell_706/SigmoidSigmoid+lstm_679/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_679/while/lstm_cell_706/Sigmoid_1Sigmoid+lstm_679/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_679/while/lstm_cell_706/mulMul*lstm_679/while/lstm_cell_706/Sigmoid_1:y:0lstm_679_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_679/while/lstm_cell_706/ReluRelu+lstm_679/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/mul_1Mul(lstm_679/while/lstm_cell_706/Sigmoid:y:0/lstm_679/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/add_1AddV2$lstm_679/while/lstm_cell_706/mul:z:0&lstm_679/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_679/while/lstm_cell_706/Sigmoid_2Sigmoid+lstm_679/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_679/while/lstm_cell_706/Relu_1Relu&lstm_679/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/mul_2Mul*lstm_679/while/lstm_cell_706/Sigmoid_2:y:01lstm_679/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_679/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_679_while_placeholder_1lstm_679_while_placeholder&lstm_679/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_679/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_679/while/addAddV2lstm_679_while_placeholderlstm_679/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_679/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_679/while/add_1AddV2*lstm_679_while_lstm_679_while_loop_counterlstm_679/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_679/while/IdentityIdentitylstm_679/while/add_1:z:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_1Identity0lstm_679_while_lstm_679_while_maximum_iterations^lstm_679/while/NoOp*
T0*
_output_shapes
: t
lstm_679/while/Identity_2Identitylstm_679/while/add:z:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_3IdentityClstm_679/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_4Identity&lstm_679/while/lstm_cell_706/mul_2:z:0^lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_679/while/Identity_5Identity&lstm_679/while/lstm_cell_706/add_1:z:0^lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_679/while/NoOpNoOp4^lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp3^lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp5^lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_679_while_identity lstm_679/while/Identity:output:0"?
lstm_679_while_identity_1"lstm_679/while/Identity_1:output:0"?
lstm_679_while_identity_2"lstm_679/while/Identity_2:output:0"?
lstm_679_while_identity_3"lstm_679/while/Identity_3:output:0"?
lstm_679_while_identity_4"lstm_679/while/Identity_4:output:0"?
lstm_679_while_identity_5"lstm_679/while/Identity_5:output:0"T
'lstm_679_while_lstm_679_strided_slice_1)lstm_679_while_lstm_679_strided_slice_1_0"~
<lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
=lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0"|
;lstm_679_while_lstm_cell_706_matmul_readvariableop_resource=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0"?
clstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensorelstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp2h
2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp2l
4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4280888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4280888___redundant_placeholder05
1while_while_cond_4280888___redundant_placeholder15
1while_while_cond_4280888___redundant_placeholder25
1while_while_cond_4280888___redundant_placeholder3
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281116

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4281032*
condR
while_cond_4281031*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4281978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_705_layer_call_fn_4282544

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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277688o
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
while_cond_4281504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281504___redundant_placeholder05
1while_while_cond_4281504___redundant_placeholder15
1while_while_cond_4281504___redundant_placeholder25
1while_while_cond_4281504___redundant_placeholder3
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278166

inputs(
lstm_cell_706_4278084:	d?(
lstm_cell_706_4278086:	2?$
lstm_cell_706_4278088:	?
identity??%lstm_cell_706/StatefulPartitionedCall?while;
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
%lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_706_4278084lstm_cell_706_4278086lstm_cell_706_4278088*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4278038n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_706_4278084lstm_cell_706_4278086lstm_cell_706_4278088*
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
while_body_4278097*
condR
while_cond_4278096*K
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
NoOpNoOp&^lstm_cell_706/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_706/StatefulPartitionedCall%lstm_cell_706/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4277905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277905___redundant_placeholder05
1while_while_cond_4277905___redundant_placeholder15
1while_while_cond_4277905___redundant_placeholder25
1while_while_cond_4277905___redundant_placeholder3
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
while_body_4277556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_705_4277580_0:	?0
while_lstm_cell_705_4277582_0:	d?,
while_lstm_cell_705_4277584_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_705_4277580:	?.
while_lstm_cell_705_4277582:	d?*
while_lstm_cell_705_4277584:	???+while/lstm_cell_705/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_705_4277580_0while_lstm_cell_705_4277582_0while_lstm_cell_705_4277584_0*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277542?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_705/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_705/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_705/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_705/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_705_4277580while_lstm_cell_705_4277580_0"<
while_lstm_cell_705_4277582while_lstm_cell_705_4277582_0"<
while_lstm_cell_705_4277584while_lstm_cell_705_4277584_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_705/StatefulPartitionedCall+while/lstm_cell_705/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281259

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4281175*
condR
while_cond_4281174*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_226_lstm_680_while_cond_4277384L
Hsequential_226_lstm_680_while_sequential_226_lstm_680_while_loop_counterR
Nsequential_226_lstm_680_while_sequential_226_lstm_680_while_maximum_iterations-
)sequential_226_lstm_680_while_placeholder/
+sequential_226_lstm_680_while_placeholder_1/
+sequential_226_lstm_680_while_placeholder_2/
+sequential_226_lstm_680_while_placeholder_3N
Jsequential_226_lstm_680_while_less_sequential_226_lstm_680_strided_slice_1e
asequential_226_lstm_680_while_sequential_226_lstm_680_while_cond_4277384___redundant_placeholder0e
asequential_226_lstm_680_while_sequential_226_lstm_680_while_cond_4277384___redundant_placeholder1e
asequential_226_lstm_680_while_sequential_226_lstm_680_while_cond_4277384___redundant_placeholder2e
asequential_226_lstm_680_while_sequential_226_lstm_680_while_cond_4277384___redundant_placeholder3*
&sequential_226_lstm_680_while_identity
?
"sequential_226/lstm_680/while/LessLess)sequential_226_lstm_680_while_placeholderJsequential_226_lstm_680_while_less_sequential_226_lstm_680_strided_slice_1*
T0*
_output_shapes
: {
&sequential_226/lstm_680/while/IdentityIdentity&sequential_226/lstm_680/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_226_lstm_680_while_identity/sequential_226/lstm_680/while/Identity:output:0*(
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278974

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4278890*
condR
while_cond_4278889*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279700
lstm_678_input#
lstm_678_4279673:	?#
lstm_678_4279675:	d?
lstm_678_4279677:	?#
lstm_679_4279680:	d?#
lstm_679_4279682:	2?
lstm_679_4279684:	?"
lstm_680_4279687:2("
lstm_680_4279689:
(
lstm_680_4279691:(#
dense_226_4279694:

dense_226_4279696:
identity??!dense_226/StatefulPartitionedCall? lstm_678/StatefulPartitionedCall? lstm_679/StatefulPartitionedCall? lstm_680/StatefulPartitionedCall?
 lstm_678/StatefulPartitionedCallStatefulPartitionedCalllstm_678_inputlstm_678_4279673lstm_678_4279675lstm_678_4279677*
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4279520?
 lstm_679/StatefulPartitionedCallStatefulPartitionedCall)lstm_678/StatefulPartitionedCall:output:0lstm_679_4279680lstm_679_4279682lstm_679_4279684*
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4279355?
 lstm_680/StatefulPartitionedCallStatefulPartitionedCall)lstm_679/StatefulPartitionedCall:output:0lstm_680_4279687lstm_680_4279689lstm_680_4279691*
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4279190?
!dense_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_680/StatefulPartitionedCall:output:0dense_226_4279694dense_226_4279696*
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992y
IdentityIdentity*dense_226/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_226/StatefulPartitionedCall!^lstm_678/StatefulPartitionedCall!^lstm_679/StatefulPartitionedCall!^lstm_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_226/StatefulPartitionedCall!dense_226/StatefulPartitionedCall2D
 lstm_678/StatefulPartitionedCall lstm_678/StatefulPartitionedCall2D
 lstm_679/StatefulPartitionedCall lstm_679/StatefulPartitionedCall2D
 lstm_680/StatefulPartitionedCall lstm_680/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_678_input
?J
?
E__inference_lstm_679_layer_call_and_return_conditional_losses_4279355

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4279271*
condR
while_cond_4279270*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_680_layer_call_fn_4281886
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278325o
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
*__inference_lstm_678_layer_call_fn_4280687

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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4279520s
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
?
/__inference_lstm_cell_706_layer_call_fn_4282642

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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4278038o
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
*__inference_lstm_679_layer_call_fn_4281270
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4277975|
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
while_cond_4281977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281977___redundant_placeholder05
1while_while_cond_4281977___redundant_placeholder15
1while_while_cond_4281977___redundant_placeholder25
1while_while_cond_4281977___redundant_placeholder3
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
while_body_4282407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277542

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

lstm_680_while_body_4280553.
*lstm_680_while_lstm_680_while_loop_counter4
0lstm_680_while_lstm_680_while_maximum_iterations
lstm_680_while_placeholder 
lstm_680_while_placeholder_1 
lstm_680_while_placeholder_2 
lstm_680_while_placeholder_3-
)lstm_680_while_lstm_680_strided_slice_1_0i
elstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0:2(Q
?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(L
>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0:(
lstm_680_while_identity
lstm_680_while_identity_1
lstm_680_while_identity_2
lstm_680_while_identity_3
lstm_680_while_identity_4
lstm_680_while_identity_5+
'lstm_680_while_lstm_680_strided_slice_1g
clstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensorM
;lstm_680_while_lstm_cell_707_matmul_readvariableop_resource:2(O
=lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource:
(J
<lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource:(??3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp?2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp?4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp?
@lstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_680/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0lstm_680_while_placeholderIlstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_680/while/lstm_cell_707/MatMulMatMul9lstm_680/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_680/while/lstm_cell_707/MatMul_1MatMullstm_680_while_placeholder_2<lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_680/while/lstm_cell_707/addAddV2-lstm_680/while/lstm_cell_707/MatMul:product:0/lstm_680/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_680/while/lstm_cell_707/BiasAddBiasAdd$lstm_680/while/lstm_cell_707/add:z:0;lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_680/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_680/while/lstm_cell_707/splitSplit5lstm_680/while/lstm_cell_707/split/split_dim:output:0-lstm_680/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_680/while/lstm_cell_707/SigmoidSigmoid+lstm_680/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_680/while/lstm_cell_707/Sigmoid_1Sigmoid+lstm_680/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_680/while/lstm_cell_707/mulMul*lstm_680/while/lstm_cell_707/Sigmoid_1:y:0lstm_680_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_680/while/lstm_cell_707/ReluRelu+lstm_680/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/mul_1Mul(lstm_680/while/lstm_cell_707/Sigmoid:y:0/lstm_680/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/add_1AddV2$lstm_680/while/lstm_cell_707/mul:z:0&lstm_680/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_680/while/lstm_cell_707/Sigmoid_2Sigmoid+lstm_680/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_680/while/lstm_cell_707/Relu_1Relu&lstm_680/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/mul_2Mul*lstm_680/while/lstm_cell_707/Sigmoid_2:y:01lstm_680/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_680/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_680_while_placeholder_1lstm_680_while_placeholder&lstm_680/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_680/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_680/while/addAddV2lstm_680_while_placeholderlstm_680/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_680/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_680/while/add_1AddV2*lstm_680_while_lstm_680_while_loop_counterlstm_680/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_680/while/IdentityIdentitylstm_680/while/add_1:z:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_1Identity0lstm_680_while_lstm_680_while_maximum_iterations^lstm_680/while/NoOp*
T0*
_output_shapes
: t
lstm_680/while/Identity_2Identitylstm_680/while/add:z:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_3IdentityClstm_680/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_4Identity&lstm_680/while/lstm_cell_707/mul_2:z:0^lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_680/while/Identity_5Identity&lstm_680/while/lstm_cell_707/add_1:z:0^lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_680/while/NoOpNoOp4^lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp3^lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp5^lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_680_while_identity lstm_680/while/Identity:output:0"?
lstm_680_while_identity_1"lstm_680/while/Identity_1:output:0"?
lstm_680_while_identity_2"lstm_680/while/Identity_2:output:0"?
lstm_680_while_identity_3"lstm_680/while/Identity_3:output:0"?
lstm_680_while_identity_4"lstm_680/while/Identity_4:output:0"?
lstm_680_while_identity_5"lstm_680/while/Identity_5:output:0"T
'lstm_680_while_lstm_680_strided_slice_1)lstm_680_while_lstm_680_strided_slice_1_0"~
<lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
=lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0"|
;lstm_680_while_lstm_cell_707_matmul_readvariableop_resource=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0"?
clstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensorelstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp2h
2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp2l
4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281875

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4281791*
condR
while_cond_4281790*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_678_layer_call_fn_4280665
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4277816|
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
while_cond_4282263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4282263___redundant_placeholder05
1while_while_cond_4282263___redundant_placeholder15
1while_while_cond_4282263___redundant_placeholder25
1while_while_cond_4282263___redundant_placeholder3
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
*sequential_226_lstm_680_while_body_4277385L
Hsequential_226_lstm_680_while_sequential_226_lstm_680_while_loop_counterR
Nsequential_226_lstm_680_while_sequential_226_lstm_680_while_maximum_iterations-
)sequential_226_lstm_680_while_placeholder/
+sequential_226_lstm_680_while_placeholder_1/
+sequential_226_lstm_680_while_placeholder_2/
+sequential_226_lstm_680_while_placeholder_3K
Gsequential_226_lstm_680_while_sequential_226_lstm_680_strided_slice_1_0?
?sequential_226_lstm_680_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_680_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_226_lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0:2(`
Nsequential_226_lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
([
Msequential_226_lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0:(*
&sequential_226_lstm_680_while_identity,
(sequential_226_lstm_680_while_identity_1,
(sequential_226_lstm_680_while_identity_2,
(sequential_226_lstm_680_while_identity_3,
(sequential_226_lstm_680_while_identity_4,
(sequential_226_lstm_680_while_identity_5I
Esequential_226_lstm_680_while_sequential_226_lstm_680_strided_slice_1?
?sequential_226_lstm_680_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_680_tensorarrayunstack_tensorlistfromtensor\
Jsequential_226_lstm_680_while_lstm_cell_707_matmul_readvariableop_resource:2(^
Lsequential_226_lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource:
(Y
Ksequential_226_lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource:(??Bsequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp?Asequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp?Csequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp?
Osequential_226/lstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_226/lstm_680/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_226_lstm_680_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_680_tensorarrayunstack_tensorlistfromtensor_0)sequential_226_lstm_680_while_placeholderXsequential_226/lstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOpLsequential_226_lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_226/lstm_680/while/lstm_cell_707/MatMulMatMulHsequential_226/lstm_680/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOpNsequential_226_lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_226/lstm_680/while/lstm_cell_707/MatMul_1MatMul+sequential_226_lstm_680_while_placeholder_2Ksequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_226/lstm_680/while/lstm_cell_707/addAddV2<sequential_226/lstm_680/while/lstm_cell_707/MatMul:product:0>sequential_226/lstm_680/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOpMsequential_226_lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_226/lstm_680/while/lstm_cell_707/BiasAddBiasAdd3sequential_226/lstm_680/while/lstm_cell_707/add:z:0Jsequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_226/lstm_680/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_226/lstm_680/while/lstm_cell_707/splitSplitDsequential_226/lstm_680/while/lstm_cell_707/split/split_dim:output:0<sequential_226/lstm_680/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_226/lstm_680/while/lstm_cell_707/SigmoidSigmoid:sequential_226/lstm_680/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_226/lstm_680/while/lstm_cell_707/Sigmoid_1Sigmoid:sequential_226/lstm_680/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_226/lstm_680/while/lstm_cell_707/mulMul9sequential_226/lstm_680/while/lstm_cell_707/Sigmoid_1:y:0+sequential_226_lstm_680_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_226/lstm_680/while/lstm_cell_707/ReluRelu:sequential_226/lstm_680/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_226/lstm_680/while/lstm_cell_707/mul_1Mul7sequential_226/lstm_680/while/lstm_cell_707/Sigmoid:y:0>sequential_226/lstm_680/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_226/lstm_680/while/lstm_cell_707/add_1AddV23sequential_226/lstm_680/while/lstm_cell_707/mul:z:05sequential_226/lstm_680/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_226/lstm_680/while/lstm_cell_707/Sigmoid_2Sigmoid:sequential_226/lstm_680/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_226/lstm_680/while/lstm_cell_707/Relu_1Relu5sequential_226/lstm_680/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_226/lstm_680/while/lstm_cell_707/mul_2Mul9sequential_226/lstm_680/while/lstm_cell_707/Sigmoid_2:y:0@sequential_226/lstm_680/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_226/lstm_680/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_226_lstm_680_while_placeholder_1)sequential_226_lstm_680_while_placeholder5sequential_226/lstm_680/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_226/lstm_680/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_226/lstm_680/while/addAddV2)sequential_226_lstm_680_while_placeholder,sequential_226/lstm_680/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_226/lstm_680/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_226/lstm_680/while/add_1AddV2Hsequential_226_lstm_680_while_sequential_226_lstm_680_while_loop_counter.sequential_226/lstm_680/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_226/lstm_680/while/IdentityIdentity'sequential_226/lstm_680/while/add_1:z:0#^sequential_226/lstm_680/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_680/while/Identity_1IdentityNsequential_226_lstm_680_while_sequential_226_lstm_680_while_maximum_iterations#^sequential_226/lstm_680/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_680/while/Identity_2Identity%sequential_226/lstm_680/while/add:z:0#^sequential_226/lstm_680/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_680/while/Identity_3IdentityRsequential_226/lstm_680/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_226/lstm_680/while/NoOp*
T0*
_output_shapes
: ?
(sequential_226/lstm_680/while/Identity_4Identity5sequential_226/lstm_680/while/lstm_cell_707/mul_2:z:0#^sequential_226/lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_226/lstm_680/while/Identity_5Identity5sequential_226/lstm_680/while/lstm_cell_707/add_1:z:0#^sequential_226/lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_226/lstm_680/while/NoOpNoOpC^sequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOpB^sequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOpD^sequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_226_lstm_680_while_identity/sequential_226/lstm_680/while/Identity:output:0"]
(sequential_226_lstm_680_while_identity_11sequential_226/lstm_680/while/Identity_1:output:0"]
(sequential_226_lstm_680_while_identity_21sequential_226/lstm_680/while/Identity_2:output:0"]
(sequential_226_lstm_680_while_identity_31sequential_226/lstm_680/while/Identity_3:output:0"]
(sequential_226_lstm_680_while_identity_41sequential_226/lstm_680/while/Identity_4:output:0"]
(sequential_226_lstm_680_while_identity_51sequential_226/lstm_680/while/Identity_5:output:0"?
Ksequential_226_lstm_680_while_lstm_cell_707_biasadd_readvariableop_resourceMsequential_226_lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
Lsequential_226_lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resourceNsequential_226_lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0"?
Jsequential_226_lstm_680_while_lstm_cell_707_matmul_readvariableop_resourceLsequential_226_lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0"?
Esequential_226_lstm_680_while_sequential_226_lstm_680_strided_slice_1Gsequential_226_lstm_680_while_sequential_226_lstm_680_strided_slice_1_0"?
?sequential_226_lstm_680_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_680_tensorarrayunstack_tensorlistfromtensor?sequential_226_lstm_680_while_tensorarrayv2read_tensorlistgetitem_sequential_226_lstm_680_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOpBsequential_226/lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp2?
Asequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOpAsequential_226/lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp2?
Csequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOpCsequential_226/lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4277816

inputs(
lstm_cell_705_4277734:	?(
lstm_cell_705_4277736:	d?$
lstm_cell_705_4277738:	?
identity??%lstm_cell_705/StatefulPartitionedCall?while;
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
%lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_705_4277734lstm_cell_705_4277736lstm_cell_705_4277738*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277688n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_705_4277734lstm_cell_705_4277736lstm_cell_705_4277738*
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
while_body_4277747*
condR
while_cond_4277746*K
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
NoOpNoOp&^lstm_cell_705/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_705/StatefulPartitionedCall%lstm_cell_705/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279670
lstm_678_input#
lstm_678_4279643:	?#
lstm_678_4279645:	d?
lstm_678_4279647:	?#
lstm_679_4279650:	d?#
lstm_679_4279652:	2?
lstm_679_4279654:	?"
lstm_680_4279657:2("
lstm_680_4279659:
(
lstm_680_4279661:(#
dense_226_4279664:

dense_226_4279666:
identity??!dense_226/StatefulPartitionedCall? lstm_678/StatefulPartitionedCall? lstm_679/StatefulPartitionedCall? lstm_680/StatefulPartitionedCall?
 lstm_678/StatefulPartitionedCallStatefulPartitionedCalllstm_678_inputlstm_678_4279643lstm_678_4279645lstm_678_4279647*
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4278674?
 lstm_679/StatefulPartitionedCallStatefulPartitionedCall)lstm_678/StatefulPartitionedCall:output:0lstm_679_4279650lstm_679_4279652lstm_679_4279654*
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278824?
 lstm_680/StatefulPartitionedCallStatefulPartitionedCall)lstm_679/StatefulPartitionedCall:output:0lstm_680_4279657lstm_680_4279659lstm_680_4279661*
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278974?
!dense_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_680/StatefulPartitionedCall:output:0dense_226_4279664dense_226_4279666*
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992y
IdentityIdentity*dense_226/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_226/StatefulPartitionedCall!^lstm_678/StatefulPartitionedCall!^lstm_679/StatefulPartitionedCall!^lstm_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_226/StatefulPartitionedCall!dense_226/StatefulPartitionedCall2D
 lstm_678/StatefulPartitionedCall lstm_678/StatefulPartitionedCall2D
 lstm_679/StatefulPartitionedCall lstm_679/StatefulPartitionedCall2D
 lstm_680/StatefulPartitionedCall lstm_680/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_678_input
?
?
while_cond_4282120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4282120___redundant_placeholder05
1while_while_cond_4282120___redundant_placeholder15
1while_while_cond_4282120___redundant_placeholder25
1while_while_cond_4282120___redundant_placeholder3
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4278674

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4278590*
condR
while_cond_4278589*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_680_while_body_4280126.
*lstm_680_while_lstm_680_while_loop_counter4
0lstm_680_while_lstm_680_while_maximum_iterations
lstm_680_while_placeholder 
lstm_680_while_placeholder_1 
lstm_680_while_placeholder_2 
lstm_680_while_placeholder_3-
)lstm_680_while_lstm_680_strided_slice_1_0i
elstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0:2(Q
?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(L
>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0:(
lstm_680_while_identity
lstm_680_while_identity_1
lstm_680_while_identity_2
lstm_680_while_identity_3
lstm_680_while_identity_4
lstm_680_while_identity_5+
'lstm_680_while_lstm_680_strided_slice_1g
clstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensorM
;lstm_680_while_lstm_cell_707_matmul_readvariableop_resource:2(O
=lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource:
(J
<lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource:(??3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp?2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp?4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp?
@lstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_680/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0lstm_680_while_placeholderIlstm_680/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_680/while/lstm_cell_707/MatMulMatMul9lstm_680/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_680/while/lstm_cell_707/MatMul_1MatMullstm_680_while_placeholder_2<lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_680/while/lstm_cell_707/addAddV2-lstm_680/while/lstm_cell_707/MatMul:product:0/lstm_680/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_680/while/lstm_cell_707/BiasAddBiasAdd$lstm_680/while/lstm_cell_707/add:z:0;lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_680/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_680/while/lstm_cell_707/splitSplit5lstm_680/while/lstm_cell_707/split/split_dim:output:0-lstm_680/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_680/while/lstm_cell_707/SigmoidSigmoid+lstm_680/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_680/while/lstm_cell_707/Sigmoid_1Sigmoid+lstm_680/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_680/while/lstm_cell_707/mulMul*lstm_680/while/lstm_cell_707/Sigmoid_1:y:0lstm_680_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_680/while/lstm_cell_707/ReluRelu+lstm_680/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/mul_1Mul(lstm_680/while/lstm_cell_707/Sigmoid:y:0/lstm_680/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/add_1AddV2$lstm_680/while/lstm_cell_707/mul:z:0&lstm_680/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_680/while/lstm_cell_707/Sigmoid_2Sigmoid+lstm_680/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_680/while/lstm_cell_707/Relu_1Relu&lstm_680/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_680/while/lstm_cell_707/mul_2Mul*lstm_680/while/lstm_cell_707/Sigmoid_2:y:01lstm_680/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_680/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_680_while_placeholder_1lstm_680_while_placeholder&lstm_680/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_680/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_680/while/addAddV2lstm_680_while_placeholderlstm_680/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_680/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_680/while/add_1AddV2*lstm_680_while_lstm_680_while_loop_counterlstm_680/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_680/while/IdentityIdentitylstm_680/while/add_1:z:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_1Identity0lstm_680_while_lstm_680_while_maximum_iterations^lstm_680/while/NoOp*
T0*
_output_shapes
: t
lstm_680/while/Identity_2Identitylstm_680/while/add:z:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_3IdentityClstm_680/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_680/while/NoOp*
T0*
_output_shapes
: ?
lstm_680/while/Identity_4Identity&lstm_680/while/lstm_cell_707/mul_2:z:0^lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_680/while/Identity_5Identity&lstm_680/while/lstm_cell_707/add_1:z:0^lstm_680/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_680/while/NoOpNoOp4^lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp3^lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp5^lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_680_while_identity lstm_680/while/Identity:output:0"?
lstm_680_while_identity_1"lstm_680/while/Identity_1:output:0"?
lstm_680_while_identity_2"lstm_680/while/Identity_2:output:0"?
lstm_680_while_identity_3"lstm_680/while/Identity_3:output:0"?
lstm_680_while_identity_4"lstm_680/while/Identity_4:output:0"?
lstm_680_while_identity_5"lstm_680/while/Identity_5:output:0"T
'lstm_680_while_lstm_680_strided_slice_1)lstm_680_while_lstm_680_strided_slice_1_0"~
<lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource>lstm_680_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
=lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource?lstm_680_while_lstm_cell_707_matmul_1_readvariableop_resource_0"|
;lstm_680_while_lstm_cell_707_matmul_readvariableop_resource=lstm_680_while_lstm_cell_707_matmul_readvariableop_resource_0"?
clstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensorelstm_680_while_tensorarrayv2read_tensorlistgetitem_lstm_680_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp3lstm_680/while/lstm_cell_707/BiasAdd/ReadVariableOp2h
2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp2lstm_680/while/lstm_cell_707/MatMul/ReadVariableOp2l
4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp4lstm_680/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_678_layer_call_fn_4280676

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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4278674s
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

lstm_678_while_body_4279848.
*lstm_678_while_lstm_678_while_loop_counter4
0lstm_678_while_lstm_678_while_maximum_iterations
lstm_678_while_placeholder 
lstm_678_while_placeholder_1 
lstm_678_while_placeholder_2 
lstm_678_while_placeholder_3-
)lstm_678_while_lstm_678_strided_slice_1_0i
elstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0:	?R
?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?M
>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
lstm_678_while_identity
lstm_678_while_identity_1
lstm_678_while_identity_2
lstm_678_while_identity_3
lstm_678_while_identity_4
lstm_678_while_identity_5+
'lstm_678_while_lstm_678_strided_slice_1g
clstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensorN
;lstm_678_while_lstm_cell_705_matmul_readvariableop_resource:	?P
=lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?K
<lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource:	???3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp?2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp?4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp?
@lstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_678/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0lstm_678_while_placeholderIlstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_678/while/lstm_cell_705/MatMulMatMul9lstm_678/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_678/while/lstm_cell_705/MatMul_1MatMullstm_678_while_placeholder_2<lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_678/while/lstm_cell_705/addAddV2-lstm_678/while/lstm_cell_705/MatMul:product:0/lstm_678/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_678/while/lstm_cell_705/BiasAddBiasAdd$lstm_678/while/lstm_cell_705/add:z:0;lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_678/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_678/while/lstm_cell_705/splitSplit5lstm_678/while/lstm_cell_705/split/split_dim:output:0-lstm_678/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_678/while/lstm_cell_705/SigmoidSigmoid+lstm_678/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_678/while/lstm_cell_705/Sigmoid_1Sigmoid+lstm_678/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_678/while/lstm_cell_705/mulMul*lstm_678/while/lstm_cell_705/Sigmoid_1:y:0lstm_678_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_678/while/lstm_cell_705/ReluRelu+lstm_678/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/mul_1Mul(lstm_678/while/lstm_cell_705/Sigmoid:y:0/lstm_678/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/add_1AddV2$lstm_678/while/lstm_cell_705/mul:z:0&lstm_678/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_678/while/lstm_cell_705/Sigmoid_2Sigmoid+lstm_678/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_678/while/lstm_cell_705/Relu_1Relu&lstm_678/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/mul_2Mul*lstm_678/while/lstm_cell_705/Sigmoid_2:y:01lstm_678/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_678/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_678_while_placeholder_1lstm_678_while_placeholder&lstm_678/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_678/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_678/while/addAddV2lstm_678_while_placeholderlstm_678/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_678/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_678/while/add_1AddV2*lstm_678_while_lstm_678_while_loop_counterlstm_678/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_678/while/IdentityIdentitylstm_678/while/add_1:z:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_1Identity0lstm_678_while_lstm_678_while_maximum_iterations^lstm_678/while/NoOp*
T0*
_output_shapes
: t
lstm_678/while/Identity_2Identitylstm_678/while/add:z:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_3IdentityClstm_678/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_4Identity&lstm_678/while/lstm_cell_705/mul_2:z:0^lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_678/while/Identity_5Identity&lstm_678/while/lstm_cell_705/add_1:z:0^lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_678/while/NoOpNoOp4^lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp3^lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp5^lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_678_while_identity lstm_678/while/Identity:output:0"?
lstm_678_while_identity_1"lstm_678/while/Identity_1:output:0"?
lstm_678_while_identity_2"lstm_678/while/Identity_2:output:0"?
lstm_678_while_identity_3"lstm_678/while/Identity_3:output:0"?
lstm_678_while_identity_4"lstm_678/while/Identity_4:output:0"?
lstm_678_while_identity_5"lstm_678/while/Identity_5:output:0"T
'lstm_678_while_lstm_678_strided_slice_1)lstm_678_while_lstm_678_strided_slice_1_0"~
<lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
=lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0"|
;lstm_678_while_lstm_cell_705_matmul_readvariableop_resource=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0"?
clstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensorelstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp2h
2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp2l
4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_226_layer_call_fn_4279762

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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4278999o
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

?
lstm_680_while_cond_4280125.
*lstm_680_while_lstm_680_while_loop_counter4
0lstm_680_while_lstm_680_while_maximum_iterations
lstm_680_while_placeholder 
lstm_680_while_placeholder_1 
lstm_680_while_placeholder_2 
lstm_680_while_placeholder_30
,lstm_680_while_less_lstm_680_strided_slice_1G
Clstm_680_while_lstm_680_while_cond_4280125___redundant_placeholder0G
Clstm_680_while_lstm_680_while_cond_4280125___redundant_placeholder1G
Clstm_680_while_lstm_680_while_cond_4280125___redundant_placeholder2G
Clstm_680_while_lstm_680_while_cond_4280125___redundant_placeholder3
lstm_680_while_identity
?
lstm_680/while/LessLesslstm_680_while_placeholder,lstm_680_while_less_lstm_680_strided_slice_1*
T0*
_output_shapes
: ]
lstm_680/while/IdentityIdentitylstm_680/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_680_while_identity lstm_680/while/Identity:output:0*(
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
*sequential_226_lstm_679_while_cond_4277245L
Hsequential_226_lstm_679_while_sequential_226_lstm_679_while_loop_counterR
Nsequential_226_lstm_679_while_sequential_226_lstm_679_while_maximum_iterations-
)sequential_226_lstm_679_while_placeholder/
+sequential_226_lstm_679_while_placeholder_1/
+sequential_226_lstm_679_while_placeholder_2/
+sequential_226_lstm_679_while_placeholder_3N
Jsequential_226_lstm_679_while_less_sequential_226_lstm_679_strided_slice_1e
asequential_226_lstm_679_while_sequential_226_lstm_679_while_cond_4277245___redundant_placeholder0e
asequential_226_lstm_679_while_sequential_226_lstm_679_while_cond_4277245___redundant_placeholder1e
asequential_226_lstm_679_while_sequential_226_lstm_679_while_cond_4277245___redundant_placeholder2e
asequential_226_lstm_679_while_sequential_226_lstm_679_while_cond_4277245___redundant_placeholder3*
&sequential_226_lstm_679_while_identity
?
"sequential_226/lstm_679/while/LessLess)sequential_226_lstm_679_while_placeholderJsequential_226_lstm_679_while_less_sequential_226_lstm_679_strided_slice_1*
T0*
_output_shapes
: {
&sequential_226/lstm_679/while/IdentityIdentity&sequential_226/lstm_679/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_226_lstm_679_while_identity/sequential_226/lstm_679/while/Identity:output:0*(
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4282510

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
?
?
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282608

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
while_body_4278740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4281174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281174___redundant_placeholder05
1while_while_cond_4281174___redundant_placeholder15
1while_while_cond_4281174___redundant_placeholder25
1while_while_cond_4281174___redundant_placeholder3
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
"__inference__wrapped_model_4277475
lstm_678_inputW
Dsequential_226_lstm_678_lstm_cell_705_matmul_readvariableop_resource:	?Y
Fsequential_226_lstm_678_lstm_cell_705_matmul_1_readvariableop_resource:	d?T
Esequential_226_lstm_678_lstm_cell_705_biasadd_readvariableop_resource:	?W
Dsequential_226_lstm_679_lstm_cell_706_matmul_readvariableop_resource:	d?Y
Fsequential_226_lstm_679_lstm_cell_706_matmul_1_readvariableop_resource:	2?T
Esequential_226_lstm_679_lstm_cell_706_biasadd_readvariableop_resource:	?V
Dsequential_226_lstm_680_lstm_cell_707_matmul_readvariableop_resource:2(X
Fsequential_226_lstm_680_lstm_cell_707_matmul_1_readvariableop_resource:
(S
Esequential_226_lstm_680_lstm_cell_707_biasadd_readvariableop_resource:(I
7sequential_226_dense_226_matmul_readvariableop_resource:
F
8sequential_226_dense_226_biasadd_readvariableop_resource:
identity??/sequential_226/dense_226/BiasAdd/ReadVariableOp?.sequential_226/dense_226/MatMul/ReadVariableOp?<sequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp?;sequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOp?=sequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp?sequential_226/lstm_678/while?<sequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp?;sequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOp?=sequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp?sequential_226/lstm_679/while?<sequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp?;sequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOp?=sequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp?sequential_226/lstm_680/while[
sequential_226/lstm_678/ShapeShapelstm_678_input*
T0*
_output_shapes
:u
+sequential_226/lstm_678/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_226/lstm_678/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_226/lstm_678/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_226/lstm_678/strided_sliceStridedSlice&sequential_226/lstm_678/Shape:output:04sequential_226/lstm_678/strided_slice/stack:output:06sequential_226/lstm_678/strided_slice/stack_1:output:06sequential_226/lstm_678/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_226/lstm_678/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_226/lstm_678/zeros/packedPack.sequential_226/lstm_678/strided_slice:output:0/sequential_226/lstm_678/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_226/lstm_678/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_678/zerosFill-sequential_226/lstm_678/zeros/packed:output:0,sequential_226/lstm_678/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_226/lstm_678/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_226/lstm_678/zeros_1/packedPack.sequential_226/lstm_678/strided_slice:output:01sequential_226/lstm_678/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_226/lstm_678/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_678/zeros_1Fill/sequential_226/lstm_678/zeros_1/packed:output:0.sequential_226/lstm_678/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_226/lstm_678/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_226/lstm_678/transpose	Transposelstm_678_input/sequential_226/lstm_678/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_226/lstm_678/Shape_1Shape%sequential_226/lstm_678/transpose:y:0*
T0*
_output_shapes
:w
-sequential_226/lstm_678/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_678/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_678/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_678/strided_slice_1StridedSlice(sequential_226/lstm_678/Shape_1:output:06sequential_226/lstm_678/strided_slice_1/stack:output:08sequential_226/lstm_678/strided_slice_1/stack_1:output:08sequential_226/lstm_678/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_226/lstm_678/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_226/lstm_678/TensorArrayV2TensorListReserve<sequential_226/lstm_678/TensorArrayV2/element_shape:output:00sequential_226/lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_226/lstm_678/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_226/lstm_678/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_226/lstm_678/transpose:y:0Vsequential_226/lstm_678/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_226/lstm_678/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_678/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_678/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_678/strided_slice_2StridedSlice%sequential_226/lstm_678/transpose:y:06sequential_226/lstm_678/strided_slice_2/stack:output:08sequential_226/lstm_678/strided_slice_2/stack_1:output:08sequential_226/lstm_678/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOpReadVariableOpDsequential_226_lstm_678_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_226/lstm_678/lstm_cell_705/MatMulMatMul0sequential_226/lstm_678/strided_slice_2:output:0Csequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOpFsequential_226_lstm_678_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_226/lstm_678/lstm_cell_705/MatMul_1MatMul&sequential_226/lstm_678/zeros:output:0Esequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_226/lstm_678/lstm_cell_705/addAddV26sequential_226/lstm_678/lstm_cell_705/MatMul:product:08sequential_226/lstm_678/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOpEsequential_226_lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_226/lstm_678/lstm_cell_705/BiasAddBiasAdd-sequential_226/lstm_678/lstm_cell_705/add:z:0Dsequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_226/lstm_678/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_226/lstm_678/lstm_cell_705/splitSplit>sequential_226/lstm_678/lstm_cell_705/split/split_dim:output:06sequential_226/lstm_678/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_226/lstm_678/lstm_cell_705/SigmoidSigmoid4sequential_226/lstm_678/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_226/lstm_678/lstm_cell_705/Sigmoid_1Sigmoid4sequential_226/lstm_678/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_226/lstm_678/lstm_cell_705/mulMul3sequential_226/lstm_678/lstm_cell_705/Sigmoid_1:y:0(sequential_226/lstm_678/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_226/lstm_678/lstm_cell_705/ReluRelu4sequential_226/lstm_678/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_226/lstm_678/lstm_cell_705/mul_1Mul1sequential_226/lstm_678/lstm_cell_705/Sigmoid:y:08sequential_226/lstm_678/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_226/lstm_678/lstm_cell_705/add_1AddV2-sequential_226/lstm_678/lstm_cell_705/mul:z:0/sequential_226/lstm_678/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_226/lstm_678/lstm_cell_705/Sigmoid_2Sigmoid4sequential_226/lstm_678/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_226/lstm_678/lstm_cell_705/Relu_1Relu/sequential_226/lstm_678/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_226/lstm_678/lstm_cell_705/mul_2Mul3sequential_226/lstm_678/lstm_cell_705/Sigmoid_2:y:0:sequential_226/lstm_678/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_226/lstm_678/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_226/lstm_678/TensorArrayV2_1TensorListReserve>sequential_226/lstm_678/TensorArrayV2_1/element_shape:output:00sequential_226/lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_226/lstm_678/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_226/lstm_678/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_226/lstm_678/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_226/lstm_678/whileWhile3sequential_226/lstm_678/while/loop_counter:output:09sequential_226/lstm_678/while/maximum_iterations:output:0%sequential_226/lstm_678/time:output:00sequential_226/lstm_678/TensorArrayV2_1:handle:0&sequential_226/lstm_678/zeros:output:0(sequential_226/lstm_678/zeros_1:output:00sequential_226/lstm_678/strided_slice_1:output:0Osequential_226/lstm_678/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_226_lstm_678_lstm_cell_705_matmul_readvariableop_resourceFsequential_226_lstm_678_lstm_cell_705_matmul_1_readvariableop_resourceEsequential_226_lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
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
*sequential_226_lstm_678_while_body_4277107*6
cond.R,
*sequential_226_lstm_678_while_cond_4277106*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_226/lstm_678/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_226/lstm_678/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_226/lstm_678/while:output:3Qsequential_226/lstm_678/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_226/lstm_678/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_226/lstm_678/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_678/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_678/strided_slice_3StridedSliceCsequential_226/lstm_678/TensorArrayV2Stack/TensorListStack:tensor:06sequential_226/lstm_678/strided_slice_3/stack:output:08sequential_226/lstm_678/strided_slice_3/stack_1:output:08sequential_226/lstm_678/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_226/lstm_678/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_226/lstm_678/transpose_1	TransposeCsequential_226/lstm_678/TensorArrayV2Stack/TensorListStack:tensor:01sequential_226/lstm_678/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_226/lstm_678/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_226/lstm_679/ShapeShape'sequential_226/lstm_678/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_226/lstm_679/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_226/lstm_679/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_226/lstm_679/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_226/lstm_679/strided_sliceStridedSlice&sequential_226/lstm_679/Shape:output:04sequential_226/lstm_679/strided_slice/stack:output:06sequential_226/lstm_679/strided_slice/stack_1:output:06sequential_226/lstm_679/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_226/lstm_679/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_226/lstm_679/zeros/packedPack.sequential_226/lstm_679/strided_slice:output:0/sequential_226/lstm_679/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_226/lstm_679/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_679/zerosFill-sequential_226/lstm_679/zeros/packed:output:0,sequential_226/lstm_679/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_226/lstm_679/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_226/lstm_679/zeros_1/packedPack.sequential_226/lstm_679/strided_slice:output:01sequential_226/lstm_679/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_226/lstm_679/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_679/zeros_1Fill/sequential_226/lstm_679/zeros_1/packed:output:0.sequential_226/lstm_679/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_226/lstm_679/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_226/lstm_679/transpose	Transpose'sequential_226/lstm_678/transpose_1:y:0/sequential_226/lstm_679/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_226/lstm_679/Shape_1Shape%sequential_226/lstm_679/transpose:y:0*
T0*
_output_shapes
:w
-sequential_226/lstm_679/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_679/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_679/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_679/strided_slice_1StridedSlice(sequential_226/lstm_679/Shape_1:output:06sequential_226/lstm_679/strided_slice_1/stack:output:08sequential_226/lstm_679/strided_slice_1/stack_1:output:08sequential_226/lstm_679/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_226/lstm_679/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_226/lstm_679/TensorArrayV2TensorListReserve<sequential_226/lstm_679/TensorArrayV2/element_shape:output:00sequential_226/lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_226/lstm_679/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_226/lstm_679/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_226/lstm_679/transpose:y:0Vsequential_226/lstm_679/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_226/lstm_679/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_679/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_679/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_679/strided_slice_2StridedSlice%sequential_226/lstm_679/transpose:y:06sequential_226/lstm_679/strided_slice_2/stack:output:08sequential_226/lstm_679/strided_slice_2/stack_1:output:08sequential_226/lstm_679/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOpReadVariableOpDsequential_226_lstm_679_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_226/lstm_679/lstm_cell_706/MatMulMatMul0sequential_226/lstm_679/strided_slice_2:output:0Csequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOpFsequential_226_lstm_679_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_226/lstm_679/lstm_cell_706/MatMul_1MatMul&sequential_226/lstm_679/zeros:output:0Esequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_226/lstm_679/lstm_cell_706/addAddV26sequential_226/lstm_679/lstm_cell_706/MatMul:product:08sequential_226/lstm_679/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOpEsequential_226_lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_226/lstm_679/lstm_cell_706/BiasAddBiasAdd-sequential_226/lstm_679/lstm_cell_706/add:z:0Dsequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_226/lstm_679/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_226/lstm_679/lstm_cell_706/splitSplit>sequential_226/lstm_679/lstm_cell_706/split/split_dim:output:06sequential_226/lstm_679/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_226/lstm_679/lstm_cell_706/SigmoidSigmoid4sequential_226/lstm_679/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_226/lstm_679/lstm_cell_706/Sigmoid_1Sigmoid4sequential_226/lstm_679/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_226/lstm_679/lstm_cell_706/mulMul3sequential_226/lstm_679/lstm_cell_706/Sigmoid_1:y:0(sequential_226/lstm_679/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_226/lstm_679/lstm_cell_706/ReluRelu4sequential_226/lstm_679/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_226/lstm_679/lstm_cell_706/mul_1Mul1sequential_226/lstm_679/lstm_cell_706/Sigmoid:y:08sequential_226/lstm_679/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_226/lstm_679/lstm_cell_706/add_1AddV2-sequential_226/lstm_679/lstm_cell_706/mul:z:0/sequential_226/lstm_679/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_226/lstm_679/lstm_cell_706/Sigmoid_2Sigmoid4sequential_226/lstm_679/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_226/lstm_679/lstm_cell_706/Relu_1Relu/sequential_226/lstm_679/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_226/lstm_679/lstm_cell_706/mul_2Mul3sequential_226/lstm_679/lstm_cell_706/Sigmoid_2:y:0:sequential_226/lstm_679/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_226/lstm_679/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_226/lstm_679/TensorArrayV2_1TensorListReserve>sequential_226/lstm_679/TensorArrayV2_1/element_shape:output:00sequential_226/lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_226/lstm_679/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_226/lstm_679/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_226/lstm_679/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_226/lstm_679/whileWhile3sequential_226/lstm_679/while/loop_counter:output:09sequential_226/lstm_679/while/maximum_iterations:output:0%sequential_226/lstm_679/time:output:00sequential_226/lstm_679/TensorArrayV2_1:handle:0&sequential_226/lstm_679/zeros:output:0(sequential_226/lstm_679/zeros_1:output:00sequential_226/lstm_679/strided_slice_1:output:0Osequential_226/lstm_679/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_226_lstm_679_lstm_cell_706_matmul_readvariableop_resourceFsequential_226_lstm_679_lstm_cell_706_matmul_1_readvariableop_resourceEsequential_226_lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
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
*sequential_226_lstm_679_while_body_4277246*6
cond.R,
*sequential_226_lstm_679_while_cond_4277245*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_226/lstm_679/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_226/lstm_679/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_226/lstm_679/while:output:3Qsequential_226/lstm_679/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_226/lstm_679/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_226/lstm_679/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_679/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_679/strided_slice_3StridedSliceCsequential_226/lstm_679/TensorArrayV2Stack/TensorListStack:tensor:06sequential_226/lstm_679/strided_slice_3/stack:output:08sequential_226/lstm_679/strided_slice_3/stack_1:output:08sequential_226/lstm_679/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_226/lstm_679/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_226/lstm_679/transpose_1	TransposeCsequential_226/lstm_679/TensorArrayV2Stack/TensorListStack:tensor:01sequential_226/lstm_679/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_226/lstm_679/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_226/lstm_680/ShapeShape'sequential_226/lstm_679/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_226/lstm_680/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_226/lstm_680/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_226/lstm_680/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_226/lstm_680/strided_sliceStridedSlice&sequential_226/lstm_680/Shape:output:04sequential_226/lstm_680/strided_slice/stack:output:06sequential_226/lstm_680/strided_slice/stack_1:output:06sequential_226/lstm_680/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_226/lstm_680/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_226/lstm_680/zeros/packedPack.sequential_226/lstm_680/strided_slice:output:0/sequential_226/lstm_680/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_226/lstm_680/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_680/zerosFill-sequential_226/lstm_680/zeros/packed:output:0,sequential_226/lstm_680/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_226/lstm_680/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_226/lstm_680/zeros_1/packedPack.sequential_226/lstm_680/strided_slice:output:01sequential_226/lstm_680/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_226/lstm_680/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_226/lstm_680/zeros_1Fill/sequential_226/lstm_680/zeros_1/packed:output:0.sequential_226/lstm_680/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_226/lstm_680/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_226/lstm_680/transpose	Transpose'sequential_226/lstm_679/transpose_1:y:0/sequential_226/lstm_680/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_226/lstm_680/Shape_1Shape%sequential_226/lstm_680/transpose:y:0*
T0*
_output_shapes
:w
-sequential_226/lstm_680/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_680/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_680/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_680/strided_slice_1StridedSlice(sequential_226/lstm_680/Shape_1:output:06sequential_226/lstm_680/strided_slice_1/stack:output:08sequential_226/lstm_680/strided_slice_1/stack_1:output:08sequential_226/lstm_680/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_226/lstm_680/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_226/lstm_680/TensorArrayV2TensorListReserve<sequential_226/lstm_680/TensorArrayV2/element_shape:output:00sequential_226/lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_226/lstm_680/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_226/lstm_680/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_226/lstm_680/transpose:y:0Vsequential_226/lstm_680/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_226/lstm_680/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_680/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_226/lstm_680/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_680/strided_slice_2StridedSlice%sequential_226/lstm_680/transpose:y:06sequential_226/lstm_680/strided_slice_2/stack:output:08sequential_226/lstm_680/strided_slice_2/stack_1:output:08sequential_226/lstm_680/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOpReadVariableOpDsequential_226_lstm_680_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_226/lstm_680/lstm_cell_707/MatMulMatMul0sequential_226/lstm_680/strided_slice_2:output:0Csequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOpFsequential_226_lstm_680_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_226/lstm_680/lstm_cell_707/MatMul_1MatMul&sequential_226/lstm_680/zeros:output:0Esequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_226/lstm_680/lstm_cell_707/addAddV26sequential_226/lstm_680/lstm_cell_707/MatMul:product:08sequential_226/lstm_680/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOpEsequential_226_lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_226/lstm_680/lstm_cell_707/BiasAddBiasAdd-sequential_226/lstm_680/lstm_cell_707/add:z:0Dsequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_226/lstm_680/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_226/lstm_680/lstm_cell_707/splitSplit>sequential_226/lstm_680/lstm_cell_707/split/split_dim:output:06sequential_226/lstm_680/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_226/lstm_680/lstm_cell_707/SigmoidSigmoid4sequential_226/lstm_680/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_226/lstm_680/lstm_cell_707/Sigmoid_1Sigmoid4sequential_226/lstm_680/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_226/lstm_680/lstm_cell_707/mulMul3sequential_226/lstm_680/lstm_cell_707/Sigmoid_1:y:0(sequential_226/lstm_680/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_226/lstm_680/lstm_cell_707/ReluRelu4sequential_226/lstm_680/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_226/lstm_680/lstm_cell_707/mul_1Mul1sequential_226/lstm_680/lstm_cell_707/Sigmoid:y:08sequential_226/lstm_680/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_226/lstm_680/lstm_cell_707/add_1AddV2-sequential_226/lstm_680/lstm_cell_707/mul:z:0/sequential_226/lstm_680/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_226/lstm_680/lstm_cell_707/Sigmoid_2Sigmoid4sequential_226/lstm_680/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_226/lstm_680/lstm_cell_707/Relu_1Relu/sequential_226/lstm_680/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_226/lstm_680/lstm_cell_707/mul_2Mul3sequential_226/lstm_680/lstm_cell_707/Sigmoid_2:y:0:sequential_226/lstm_680/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_226/lstm_680/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_226/lstm_680/TensorArrayV2_1TensorListReserve>sequential_226/lstm_680/TensorArrayV2_1/element_shape:output:00sequential_226/lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_226/lstm_680/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_226/lstm_680/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_226/lstm_680/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_226/lstm_680/whileWhile3sequential_226/lstm_680/while/loop_counter:output:09sequential_226/lstm_680/while/maximum_iterations:output:0%sequential_226/lstm_680/time:output:00sequential_226/lstm_680/TensorArrayV2_1:handle:0&sequential_226/lstm_680/zeros:output:0(sequential_226/lstm_680/zeros_1:output:00sequential_226/lstm_680/strided_slice_1:output:0Osequential_226/lstm_680/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_226_lstm_680_lstm_cell_707_matmul_readvariableop_resourceFsequential_226_lstm_680_lstm_cell_707_matmul_1_readvariableop_resourceEsequential_226_lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
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
*sequential_226_lstm_680_while_body_4277385*6
cond.R,
*sequential_226_lstm_680_while_cond_4277384*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_226/lstm_680/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_226/lstm_680/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_226/lstm_680/while:output:3Qsequential_226/lstm_680/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_226/lstm_680/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_226/lstm_680/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_226/lstm_680/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_226/lstm_680/strided_slice_3StridedSliceCsequential_226/lstm_680/TensorArrayV2Stack/TensorListStack:tensor:06sequential_226/lstm_680/strided_slice_3/stack:output:08sequential_226/lstm_680/strided_slice_3/stack_1:output:08sequential_226/lstm_680/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_226/lstm_680/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_226/lstm_680/transpose_1	TransposeCsequential_226/lstm_680/TensorArrayV2Stack/TensorListStack:tensor:01sequential_226/lstm_680/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_226/lstm_680/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_226/dense_226/MatMul/ReadVariableOpReadVariableOp7sequential_226_dense_226_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_226/dense_226/MatMulMatMul0sequential_226/lstm_680/strided_slice_3:output:06sequential_226/dense_226/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_226/dense_226/BiasAdd/ReadVariableOpReadVariableOp8sequential_226_dense_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_226/dense_226/BiasAddBiasAdd)sequential_226/dense_226/MatMul:product:07sequential_226/dense_226/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_226/dense_226/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_226/dense_226/BiasAdd/ReadVariableOp/^sequential_226/dense_226/MatMul/ReadVariableOp=^sequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp<^sequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOp>^sequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp^sequential_226/lstm_678/while=^sequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp<^sequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOp>^sequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp^sequential_226/lstm_679/while=^sequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp<^sequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOp>^sequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp^sequential_226/lstm_680/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_226/dense_226/BiasAdd/ReadVariableOp/sequential_226/dense_226/BiasAdd/ReadVariableOp2`
.sequential_226/dense_226/MatMul/ReadVariableOp.sequential_226/dense_226/MatMul/ReadVariableOp2|
<sequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp<sequential_226/lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp2z
;sequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOp;sequential_226/lstm_678/lstm_cell_705/MatMul/ReadVariableOp2~
=sequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp=sequential_226/lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp2>
sequential_226/lstm_678/whilesequential_226/lstm_678/while2|
<sequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp<sequential_226/lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp2z
;sequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOp;sequential_226/lstm_679/lstm_cell_706/MatMul/ReadVariableOp2~
=sequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp=sequential_226/lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp2>
sequential_226/lstm_679/whilesequential_226/lstm_679/while2|
<sequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp<sequential_226/lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp2z
;sequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOp;sequential_226/lstm_680/lstm_cell_707/MatMul/ReadVariableOp2~
=sequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp=sequential_226/lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp2>
sequential_226/lstm_680/whilesequential_226/lstm_680/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_678_input
?W
?
 __inference__traced_save_4282947
file_prefix/
+savev2_dense_226_kernel_read_readvariableop-
)savev2_dense_226_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_678_lstm_cell_678_kernel_read_readvariableopF
Bsavev2_lstm_678_lstm_cell_678_recurrent_kernel_read_readvariableop:
6savev2_lstm_678_lstm_cell_678_bias_read_readvariableop<
8savev2_lstm_679_lstm_cell_679_kernel_read_readvariableopF
Bsavev2_lstm_679_lstm_cell_679_recurrent_kernel_read_readvariableop:
6savev2_lstm_679_lstm_cell_679_bias_read_readvariableop<
8savev2_lstm_680_lstm_cell_680_kernel_read_readvariableopF
Bsavev2_lstm_680_lstm_cell_680_recurrent_kernel_read_readvariableop:
6savev2_lstm_680_lstm_cell_680_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_226_kernel_m_read_readvariableop4
0savev2_adam_dense_226_bias_m_read_readvariableopC
?savev2_adam_lstm_678_lstm_cell_678_kernel_m_read_readvariableopM
Isavev2_adam_lstm_678_lstm_cell_678_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_678_lstm_cell_678_bias_m_read_readvariableopC
?savev2_adam_lstm_679_lstm_cell_679_kernel_m_read_readvariableopM
Isavev2_adam_lstm_679_lstm_cell_679_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_679_lstm_cell_679_bias_m_read_readvariableopC
?savev2_adam_lstm_680_lstm_cell_680_kernel_m_read_readvariableopM
Isavev2_adam_lstm_680_lstm_cell_680_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_680_lstm_cell_680_bias_m_read_readvariableop6
2savev2_adam_dense_226_kernel_v_read_readvariableop4
0savev2_adam_dense_226_bias_v_read_readvariableopC
?savev2_adam_lstm_678_lstm_cell_678_kernel_v_read_readvariableopM
Isavev2_adam_lstm_678_lstm_cell_678_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_678_lstm_cell_678_bias_v_read_readvariableopC
?savev2_adam_lstm_679_lstm_cell_679_kernel_v_read_readvariableopM
Isavev2_adam_lstm_679_lstm_cell_679_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_679_lstm_cell_679_bias_v_read_readvariableopC
?savev2_adam_lstm_680_lstm_cell_680_kernel_v_read_readvariableopM
Isavev2_adam_lstm_680_lstm_cell_680_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_680_lstm_cell_680_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_226_kernel_read_readvariableop)savev2_dense_226_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_678_lstm_cell_678_kernel_read_readvariableopBsavev2_lstm_678_lstm_cell_678_recurrent_kernel_read_readvariableop6savev2_lstm_678_lstm_cell_678_bias_read_readvariableop8savev2_lstm_679_lstm_cell_679_kernel_read_readvariableopBsavev2_lstm_679_lstm_cell_679_recurrent_kernel_read_readvariableop6savev2_lstm_679_lstm_cell_679_bias_read_readvariableop8savev2_lstm_680_lstm_cell_680_kernel_read_readvariableopBsavev2_lstm_680_lstm_cell_680_recurrent_kernel_read_readvariableop6savev2_lstm_680_lstm_cell_680_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_226_kernel_m_read_readvariableop0savev2_adam_dense_226_bias_m_read_readvariableop?savev2_adam_lstm_678_lstm_cell_678_kernel_m_read_readvariableopIsavev2_adam_lstm_678_lstm_cell_678_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_678_lstm_cell_678_bias_m_read_readvariableop?savev2_adam_lstm_679_lstm_cell_679_kernel_m_read_readvariableopIsavev2_adam_lstm_679_lstm_cell_679_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_679_lstm_cell_679_bias_m_read_readvariableop?savev2_adam_lstm_680_lstm_cell_680_kernel_m_read_readvariableopIsavev2_adam_lstm_680_lstm_cell_680_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_680_lstm_cell_680_bias_m_read_readvariableop2savev2_adam_dense_226_kernel_v_read_readvariableop0savev2_adam_dense_226_bias_v_read_readvariableop?savev2_adam_lstm_678_lstm_cell_678_kernel_v_read_readvariableopIsavev2_adam_lstm_678_lstm_cell_678_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_678_lstm_cell_678_bias_v_read_readvariableop?savev2_adam_lstm_679_lstm_cell_679_kernel_v_read_readvariableopIsavev2_adam_lstm_679_lstm_cell_679_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_679_lstm_cell_679_bias_v_read_readvariableop?savev2_adam_lstm_680_lstm_cell_680_kernel_v_read_readvariableopIsavev2_adam_lstm_680_lstm_cell_680_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_680_lstm_cell_680_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4279105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279105___redundant_placeholder05
1while_while_cond_4279105___redundant_placeholder15
1while_while_cond_4279105___redundant_placeholder25
1while_while_cond_4279105___redundant_placeholder3
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
while_cond_4280745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4280745___redundant_placeholder05
1while_while_cond_4280745___redundant_placeholder15
1while_while_cond_4280745___redundant_placeholder25
1while_while_cond_4280745___redundant_placeholder3
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
while_cond_4282406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4282406___redundant_placeholder05
1while_while_cond_4282406___redundant_placeholder15
1while_while_cond_4282406___redundant_placeholder25
1while_while_cond_4282406___redundant_placeholder3
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
while_body_4281175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277688

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
while_cond_4277555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277555___redundant_placeholder05
1while_while_cond_4277555___redundant_placeholder15
1while_while_cond_4277555___redundant_placeholder25
1while_while_cond_4277555___redundant_placeholder3
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992

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
while_cond_4281361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281361___redundant_placeholder05
1while_while_cond_4281361___redundant_placeholder15
1while_while_cond_4281361___redundant_placeholder25
1while_while_cond_4281361___redundant_placeholder3
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

lstm_679_while_body_4279987.
*lstm_679_while_lstm_679_while_loop_counter4
0lstm_679_while_lstm_679_while_maximum_iterations
lstm_679_while_placeholder 
lstm_679_while_placeholder_1 
lstm_679_while_placeholder_2 
lstm_679_while_placeholder_3-
)lstm_679_while_lstm_679_strided_slice_1_0i
elstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?R
?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?M
>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
lstm_679_while_identity
lstm_679_while_identity_1
lstm_679_while_identity_2
lstm_679_while_identity_3
lstm_679_while_identity_4
lstm_679_while_identity_5+
'lstm_679_while_lstm_679_strided_slice_1g
clstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensorN
;lstm_679_while_lstm_cell_706_matmul_readvariableop_resource:	d?P
=lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?K
<lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource:	???3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp?2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp?4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp?
@lstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_679/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0lstm_679_while_placeholderIlstm_679/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_679/while/lstm_cell_706/MatMulMatMul9lstm_679/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_679/while/lstm_cell_706/MatMul_1MatMullstm_679_while_placeholder_2<lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_679/while/lstm_cell_706/addAddV2-lstm_679/while/lstm_cell_706/MatMul:product:0/lstm_679/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_679/while/lstm_cell_706/BiasAddBiasAdd$lstm_679/while/lstm_cell_706/add:z:0;lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_679/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_679/while/lstm_cell_706/splitSplit5lstm_679/while/lstm_cell_706/split/split_dim:output:0-lstm_679/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_679/while/lstm_cell_706/SigmoidSigmoid+lstm_679/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_679/while/lstm_cell_706/Sigmoid_1Sigmoid+lstm_679/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_679/while/lstm_cell_706/mulMul*lstm_679/while/lstm_cell_706/Sigmoid_1:y:0lstm_679_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_679/while/lstm_cell_706/ReluRelu+lstm_679/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/mul_1Mul(lstm_679/while/lstm_cell_706/Sigmoid:y:0/lstm_679/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/add_1AddV2$lstm_679/while/lstm_cell_706/mul:z:0&lstm_679/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_679/while/lstm_cell_706/Sigmoid_2Sigmoid+lstm_679/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_679/while/lstm_cell_706/Relu_1Relu&lstm_679/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_679/while/lstm_cell_706/mul_2Mul*lstm_679/while/lstm_cell_706/Sigmoid_2:y:01lstm_679/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_679/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_679_while_placeholder_1lstm_679_while_placeholder&lstm_679/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_679/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_679/while/addAddV2lstm_679_while_placeholderlstm_679/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_679/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_679/while/add_1AddV2*lstm_679_while_lstm_679_while_loop_counterlstm_679/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_679/while/IdentityIdentitylstm_679/while/add_1:z:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_1Identity0lstm_679_while_lstm_679_while_maximum_iterations^lstm_679/while/NoOp*
T0*
_output_shapes
: t
lstm_679/while/Identity_2Identitylstm_679/while/add:z:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_3IdentityClstm_679/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_679/while/NoOp*
T0*
_output_shapes
: ?
lstm_679/while/Identity_4Identity&lstm_679/while/lstm_cell_706/mul_2:z:0^lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_679/while/Identity_5Identity&lstm_679/while/lstm_cell_706/add_1:z:0^lstm_679/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_679/while/NoOpNoOp4^lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp3^lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp5^lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_679_while_identity lstm_679/while/Identity:output:0"?
lstm_679_while_identity_1"lstm_679/while/Identity_1:output:0"?
lstm_679_while_identity_2"lstm_679/while/Identity_2:output:0"?
lstm_679_while_identity_3"lstm_679/while/Identity_3:output:0"?
lstm_679_while_identity_4"lstm_679/while/Identity_4:output:0"?
lstm_679_while_identity_5"lstm_679/while/Identity_5:output:0"T
'lstm_679_while_lstm_679_strided_slice_1)lstm_679_while_lstm_679_strided_slice_1_0"~
<lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource>lstm_679_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
=lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource?lstm_679_while_lstm_cell_706_matmul_1_readvariableop_resource_0"|
;lstm_679_while_lstm_cell_706_matmul_readvariableop_resource=lstm_679_while_lstm_cell_706_matmul_readvariableop_resource_0"?
clstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensorelstm_679_while_tensorarrayv2read_tensorlistgetitem_lstm_679_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp3lstm_679/while/lstm_cell_706/BiasAdd/ReadVariableOp2h
2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp2lstm_679/while/lstm_cell_706/MatMul/ReadVariableOp2l
4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp4lstm_679/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4280889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4278447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_707_4278471_0:2(/
while_lstm_cell_707_4278473_0:
(+
while_lstm_cell_707_4278475_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_707_4278471:2(-
while_lstm_cell_707_4278473:
()
while_lstm_cell_707_4278475:(??+while/lstm_cell_707/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_707_4278471_0while_lstm_cell_707_4278473_0while_lstm_cell_707_4278475_0*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278388?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_707/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_707/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_707/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_707_4278471while_lstm_cell_707_4278471_0"<
while_lstm_cell_707_4278473while_lstm_cell_707_4278473_0"<
while_lstm_cell_707_4278475while_lstm_cell_707_4278475_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_707/StatefulPartitionedCall+while/lstm_cell_707/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4281031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4281031___redundant_placeholder05
1while_while_cond_4281031___redundant_placeholder15
1while_while_cond_4281031___redundant_placeholder25
1while_while_cond_4281031___redundant_placeholder3
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
while_cond_4278589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278589___redundant_placeholder05
1while_while_cond_4278589___redundant_placeholder15
1while_while_cond_4278589___redundant_placeholder25
1while_while_cond_4278589___redundant_placeholder3
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
*__inference_lstm_679_layer_call_fn_4281281
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4278166|
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
while_body_4281648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280216

inputsH
5lstm_678_lstm_cell_705_matmul_readvariableop_resource:	?J
7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource:	d?E
6lstm_678_lstm_cell_705_biasadd_readvariableop_resource:	?H
5lstm_679_lstm_cell_706_matmul_readvariableop_resource:	d?J
7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource:	2?E
6lstm_679_lstm_cell_706_biasadd_readvariableop_resource:	?G
5lstm_680_lstm_cell_707_matmul_readvariableop_resource:2(I
7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource:
(D
6lstm_680_lstm_cell_707_biasadd_readvariableop_resource:(:
(dense_226_matmul_readvariableop_resource:
7
)dense_226_biasadd_readvariableop_resource:
identity?? dense_226/BiasAdd/ReadVariableOp?dense_226/MatMul/ReadVariableOp?-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp?,lstm_678/lstm_cell_705/MatMul/ReadVariableOp?.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp?lstm_678/while?-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp?,lstm_679/lstm_cell_706/MatMul/ReadVariableOp?.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp?lstm_679/while?-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp?,lstm_680/lstm_cell_707/MatMul/ReadVariableOp?.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp?lstm_680/whileD
lstm_678/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_678/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_678/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_678/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_sliceStridedSlicelstm_678/Shape:output:0%lstm_678/strided_slice/stack:output:0'lstm_678/strided_slice/stack_1:output:0'lstm_678/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_678/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_678/zeros/packedPacklstm_678/strided_slice:output:0 lstm_678/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_678/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_678/zerosFilllstm_678/zeros/packed:output:0lstm_678/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_678/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_678/zeros_1/packedPacklstm_678/strided_slice:output:0"lstm_678/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_678/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_678/zeros_1Fill lstm_678/zeros_1/packed:output:0lstm_678/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_678/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_678/transpose	Transposeinputs lstm_678/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_678/Shape_1Shapelstm_678/transpose:y:0*
T0*
_output_shapes
:h
lstm_678/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_678/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_1StridedSlicelstm_678/Shape_1:output:0'lstm_678/strided_slice_1/stack:output:0)lstm_678/strided_slice_1/stack_1:output:0)lstm_678/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_678/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_678/TensorArrayV2TensorListReserve-lstm_678/TensorArrayV2/element_shape:output:0!lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_678/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_678/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_678/transpose:y:0Glstm_678/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_678/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_678/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_2StridedSlicelstm_678/transpose:y:0'lstm_678/strided_slice_2/stack:output:0)lstm_678/strided_slice_2/stack_1:output:0)lstm_678/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_678/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp5lstm_678_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_678/lstm_cell_705/MatMulMatMul!lstm_678/strided_slice_2:output:04lstm_678/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_678/lstm_cell_705/MatMul_1MatMullstm_678/zeros:output:06lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_678/lstm_cell_705/addAddV2'lstm_678/lstm_cell_705/MatMul:product:0)lstm_678/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp6lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_678/lstm_cell_705/BiasAddBiasAddlstm_678/lstm_cell_705/add:z:05lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_678/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_678/lstm_cell_705/splitSplit/lstm_678/lstm_cell_705/split/split_dim:output:0'lstm_678/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_678/lstm_cell_705/SigmoidSigmoid%lstm_678/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_678/lstm_cell_705/Sigmoid_1Sigmoid%lstm_678/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mulMul$lstm_678/lstm_cell_705/Sigmoid_1:y:0lstm_678/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_678/lstm_cell_705/ReluRelu%lstm_678/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mul_1Mul"lstm_678/lstm_cell_705/Sigmoid:y:0)lstm_678/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/add_1AddV2lstm_678/lstm_cell_705/mul:z:0 lstm_678/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_678/lstm_cell_705/Sigmoid_2Sigmoid%lstm_678/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_678/lstm_cell_705/Relu_1Relu lstm_678/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_678/lstm_cell_705/mul_2Mul$lstm_678/lstm_cell_705/Sigmoid_2:y:0+lstm_678/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_678/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_678/TensorArrayV2_1TensorListReserve/lstm_678/TensorArrayV2_1/element_shape:output:0!lstm_678/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_678/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_678/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_678/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_678/whileWhile$lstm_678/while/loop_counter:output:0*lstm_678/while/maximum_iterations:output:0lstm_678/time:output:0!lstm_678/TensorArrayV2_1:handle:0lstm_678/zeros:output:0lstm_678/zeros_1:output:0!lstm_678/strided_slice_1:output:0@lstm_678/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_678_lstm_cell_705_matmul_readvariableop_resource7lstm_678_lstm_cell_705_matmul_1_readvariableop_resource6lstm_678_lstm_cell_705_biasadd_readvariableop_resource*
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
lstm_678_while_body_4279848*'
condR
lstm_678_while_cond_4279847*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_678/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_678/TensorArrayV2Stack/TensorListStackTensorListStacklstm_678/while:output:3Blstm_678/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_678/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_678/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_678/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_678/strided_slice_3StridedSlice4lstm_678/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_678/strided_slice_3/stack:output:0)lstm_678/strided_slice_3/stack_1:output:0)lstm_678/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_678/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_678/transpose_1	Transpose4lstm_678/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_678/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_678/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_679/ShapeShapelstm_678/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_679/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_679/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_679/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_sliceStridedSlicelstm_679/Shape:output:0%lstm_679/strided_slice/stack:output:0'lstm_679/strided_slice/stack_1:output:0'lstm_679/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_679/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_679/zeros/packedPacklstm_679/strided_slice:output:0 lstm_679/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_679/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_679/zerosFilllstm_679/zeros/packed:output:0lstm_679/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_679/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_679/zeros_1/packedPacklstm_679/strided_slice:output:0"lstm_679/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_679/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_679/zeros_1Fill lstm_679/zeros_1/packed:output:0lstm_679/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_679/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_679/transpose	Transposelstm_678/transpose_1:y:0 lstm_679/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_679/Shape_1Shapelstm_679/transpose:y:0*
T0*
_output_shapes
:h
lstm_679/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_679/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_1StridedSlicelstm_679/Shape_1:output:0'lstm_679/strided_slice_1/stack:output:0)lstm_679/strided_slice_1/stack_1:output:0)lstm_679/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_679/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_679/TensorArrayV2TensorListReserve-lstm_679/TensorArrayV2/element_shape:output:0!lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_679/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_679/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_679/transpose:y:0Glstm_679/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_679/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_679/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_2StridedSlicelstm_679/transpose:y:0'lstm_679/strided_slice_2/stack:output:0)lstm_679/strided_slice_2/stack_1:output:0)lstm_679/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_679/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp5lstm_679_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_679/lstm_cell_706/MatMulMatMul!lstm_679/strided_slice_2:output:04lstm_679/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_679/lstm_cell_706/MatMul_1MatMullstm_679/zeros:output:06lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_679/lstm_cell_706/addAddV2'lstm_679/lstm_cell_706/MatMul:product:0)lstm_679/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp6lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_679/lstm_cell_706/BiasAddBiasAddlstm_679/lstm_cell_706/add:z:05lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_679/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_679/lstm_cell_706/splitSplit/lstm_679/lstm_cell_706/split/split_dim:output:0'lstm_679/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_679/lstm_cell_706/SigmoidSigmoid%lstm_679/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_679/lstm_cell_706/Sigmoid_1Sigmoid%lstm_679/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mulMul$lstm_679/lstm_cell_706/Sigmoid_1:y:0lstm_679/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_679/lstm_cell_706/ReluRelu%lstm_679/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mul_1Mul"lstm_679/lstm_cell_706/Sigmoid:y:0)lstm_679/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/add_1AddV2lstm_679/lstm_cell_706/mul:z:0 lstm_679/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_679/lstm_cell_706/Sigmoid_2Sigmoid%lstm_679/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_679/lstm_cell_706/Relu_1Relu lstm_679/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_679/lstm_cell_706/mul_2Mul$lstm_679/lstm_cell_706/Sigmoid_2:y:0+lstm_679/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_679/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_679/TensorArrayV2_1TensorListReserve/lstm_679/TensorArrayV2_1/element_shape:output:0!lstm_679/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_679/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_679/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_679/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_679/whileWhile$lstm_679/while/loop_counter:output:0*lstm_679/while/maximum_iterations:output:0lstm_679/time:output:0!lstm_679/TensorArrayV2_1:handle:0lstm_679/zeros:output:0lstm_679/zeros_1:output:0!lstm_679/strided_slice_1:output:0@lstm_679/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_679_lstm_cell_706_matmul_readvariableop_resource7lstm_679_lstm_cell_706_matmul_1_readvariableop_resource6lstm_679_lstm_cell_706_biasadd_readvariableop_resource*
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
lstm_679_while_body_4279987*'
condR
lstm_679_while_cond_4279986*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_679/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_679/TensorArrayV2Stack/TensorListStackTensorListStacklstm_679/while:output:3Blstm_679/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_679/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_679/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_679/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_679/strided_slice_3StridedSlice4lstm_679/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_679/strided_slice_3/stack:output:0)lstm_679/strided_slice_3/stack_1:output:0)lstm_679/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_679/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_679/transpose_1	Transpose4lstm_679/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_679/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_679/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_680/ShapeShapelstm_679/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_680/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_680/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_680/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_sliceStridedSlicelstm_680/Shape:output:0%lstm_680/strided_slice/stack:output:0'lstm_680/strided_slice/stack_1:output:0'lstm_680/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_680/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_680/zeros/packedPacklstm_680/strided_slice:output:0 lstm_680/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_680/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_680/zerosFilllstm_680/zeros/packed:output:0lstm_680/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_680/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_680/zeros_1/packedPacklstm_680/strided_slice:output:0"lstm_680/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_680/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_680/zeros_1Fill lstm_680/zeros_1/packed:output:0lstm_680/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_680/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_680/transpose	Transposelstm_679/transpose_1:y:0 lstm_680/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_680/Shape_1Shapelstm_680/transpose:y:0*
T0*
_output_shapes
:h
lstm_680/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_680/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_1StridedSlicelstm_680/Shape_1:output:0'lstm_680/strided_slice_1/stack:output:0)lstm_680/strided_slice_1/stack_1:output:0)lstm_680/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_680/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_680/TensorArrayV2TensorListReserve-lstm_680/TensorArrayV2/element_shape:output:0!lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_680/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_680/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_680/transpose:y:0Glstm_680/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_680/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_680/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_2StridedSlicelstm_680/transpose:y:0'lstm_680/strided_slice_2/stack:output:0)lstm_680/strided_slice_2/stack_1:output:0)lstm_680/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_680/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp5lstm_680_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_680/lstm_cell_707/MatMulMatMul!lstm_680/strided_slice_2:output:04lstm_680/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_680/lstm_cell_707/MatMul_1MatMullstm_680/zeros:output:06lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_680/lstm_cell_707/addAddV2'lstm_680/lstm_cell_707/MatMul:product:0)lstm_680/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp6lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_680/lstm_cell_707/BiasAddBiasAddlstm_680/lstm_cell_707/add:z:05lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_680/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_680/lstm_cell_707/splitSplit/lstm_680/lstm_cell_707/split/split_dim:output:0'lstm_680/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_680/lstm_cell_707/SigmoidSigmoid%lstm_680/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_680/lstm_cell_707/Sigmoid_1Sigmoid%lstm_680/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mulMul$lstm_680/lstm_cell_707/Sigmoid_1:y:0lstm_680/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_680/lstm_cell_707/ReluRelu%lstm_680/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mul_1Mul"lstm_680/lstm_cell_707/Sigmoid:y:0)lstm_680/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/add_1AddV2lstm_680/lstm_cell_707/mul:z:0 lstm_680/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_680/lstm_cell_707/Sigmoid_2Sigmoid%lstm_680/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_680/lstm_cell_707/Relu_1Relu lstm_680/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_680/lstm_cell_707/mul_2Mul$lstm_680/lstm_cell_707/Sigmoid_2:y:0+lstm_680/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_680/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_680/TensorArrayV2_1TensorListReserve/lstm_680/TensorArrayV2_1/element_shape:output:0!lstm_680/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_680/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_680/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_680/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_680/whileWhile$lstm_680/while/loop_counter:output:0*lstm_680/while/maximum_iterations:output:0lstm_680/time:output:0!lstm_680/TensorArrayV2_1:handle:0lstm_680/zeros:output:0lstm_680/zeros_1:output:0!lstm_680/strided_slice_1:output:0@lstm_680/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_680_lstm_cell_707_matmul_readvariableop_resource7lstm_680_lstm_cell_707_matmul_1_readvariableop_resource6lstm_680_lstm_cell_707_biasadd_readvariableop_resource*
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
lstm_680_while_body_4280126*'
condR
lstm_680_while_cond_4280125*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_680/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_680/TensorArrayV2Stack/TensorListStackTensorListStacklstm_680/while:output:3Blstm_680/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_680/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_680/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_680/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_680/strided_slice_3StridedSlice4lstm_680/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_680/strided_slice_3/stack:output:0)lstm_680/strided_slice_3/stack_1:output:0)lstm_680/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_680/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_680/transpose_1	Transpose4lstm_680/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_680/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_680/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_226/MatMul/ReadVariableOpReadVariableOp(dense_226_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_226/MatMulMatMul!lstm_680/strided_slice_3:output:0'dense_226/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_226/BiasAdd/ReadVariableOpReadVariableOp)dense_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_226/BiasAddBiasAdddense_226/MatMul:product:0(dense_226/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_226/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_226/BiasAdd/ReadVariableOp ^dense_226/MatMul/ReadVariableOp.^lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp-^lstm_678/lstm_cell_705/MatMul/ReadVariableOp/^lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp^lstm_678/while.^lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp-^lstm_679/lstm_cell_706/MatMul/ReadVariableOp/^lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp^lstm_679/while.^lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp-^lstm_680/lstm_cell_707/MatMul/ReadVariableOp/^lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp^lstm_680/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_226/BiasAdd/ReadVariableOp dense_226/BiasAdd/ReadVariableOp2B
dense_226/MatMul/ReadVariableOpdense_226/MatMul/ReadVariableOp2^
-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp-lstm_678/lstm_cell_705/BiasAdd/ReadVariableOp2\
,lstm_678/lstm_cell_705/MatMul/ReadVariableOp,lstm_678/lstm_cell_705/MatMul/ReadVariableOp2`
.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp.lstm_678/lstm_cell_705/MatMul_1/ReadVariableOp2 
lstm_678/whilelstm_678/while2^
-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp-lstm_679/lstm_cell_706/BiasAdd/ReadVariableOp2\
,lstm_679/lstm_cell_706/MatMul/ReadVariableOp,lstm_679/lstm_cell_706/MatMul/ReadVariableOp2`
.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp.lstm_679/lstm_cell_706/MatMul_1/ReadVariableOp2 
lstm_679/whilelstm_679/while2^
-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp-lstm_680/lstm_cell_707/BiasAdd/ReadVariableOp2\
,lstm_680/lstm_cell_707/MatMul/ReadVariableOp,lstm_680/lstm_cell_707/MatMul/ReadVariableOp2`
.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp.lstm_680/lstm_cell_707/MatMul_1/ReadVariableOp2 
lstm_680/whilelstm_680/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_680_layer_call_and_return_conditional_losses_4279190

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4279106*
condR
while_cond_4279105*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4277746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277746___redundant_placeholder05
1while_while_cond_4277746___redundant_placeholder15
1while_while_cond_4277746___redundant_placeholder25
1while_while_cond_4277746___redundant_placeholder3
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
while_body_4281032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4278097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_706_4278121_0:	d?0
while_lstm_cell_706_4278123_0:	2?,
while_lstm_cell_706_4278125_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_706_4278121:	d?.
while_lstm_cell_706_4278123:	2?*
while_lstm_cell_706_4278125:	???+while/lstm_cell_706/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_706_4278121_0while_lstm_cell_706_4278123_0while_lstm_cell_706_4278125_0*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4278038?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_706/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_706/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_706/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_706_4278121while_lstm_cell_706_4278121_0"<
while_lstm_cell_706_4278123while_lstm_cell_706_4278123_0"<
while_lstm_cell_706_4278125while_lstm_cell_706_4278125_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_706/StatefulPartitionedCall+while/lstm_cell_706/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4278256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_707_4278280_0:2(/
while_lstm_cell_707_4278282_0:
(+
while_lstm_cell_707_4278284_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_707_4278280:2(-
while_lstm_cell_707_4278282:
()
while_lstm_cell_707_4278284:(??+while/lstm_cell_707/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_707_4278280_0while_lstm_cell_707_4278282_0while_lstm_cell_707_4278284_0*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278242?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_707/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_707/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_707/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_707_4278280while_lstm_cell_707_4278280_0"<
while_lstm_cell_707_4278282while_lstm_cell_707_4278282_0"<
while_lstm_cell_707_4278284while_lstm_cell_707_4278284_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_707/StatefulPartitionedCall+while/lstm_cell_707/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_705_layer_call_fn_4282527

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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4277542o
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

lstm_678_while_body_4280275.
*lstm_678_while_lstm_678_while_loop_counter4
0lstm_678_while_lstm_678_while_maximum_iterations
lstm_678_while_placeholder 
lstm_678_while_placeholder_1 
lstm_678_while_placeholder_2 
lstm_678_while_placeholder_3-
)lstm_678_while_lstm_678_strided_slice_1_0i
elstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0:	?R
?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?M
>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
lstm_678_while_identity
lstm_678_while_identity_1
lstm_678_while_identity_2
lstm_678_while_identity_3
lstm_678_while_identity_4
lstm_678_while_identity_5+
'lstm_678_while_lstm_678_strided_slice_1g
clstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensorN
;lstm_678_while_lstm_cell_705_matmul_readvariableop_resource:	?P
=lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?K
<lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource:	???3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp?2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp?4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp?
@lstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_678/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0lstm_678_while_placeholderIlstm_678/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_678/while/lstm_cell_705/MatMulMatMul9lstm_678/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_678/while/lstm_cell_705/MatMul_1MatMullstm_678_while_placeholder_2<lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_678/while/lstm_cell_705/addAddV2-lstm_678/while/lstm_cell_705/MatMul:product:0/lstm_678/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_678/while/lstm_cell_705/BiasAddBiasAdd$lstm_678/while/lstm_cell_705/add:z:0;lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_678/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_678/while/lstm_cell_705/splitSplit5lstm_678/while/lstm_cell_705/split/split_dim:output:0-lstm_678/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_678/while/lstm_cell_705/SigmoidSigmoid+lstm_678/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_678/while/lstm_cell_705/Sigmoid_1Sigmoid+lstm_678/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_678/while/lstm_cell_705/mulMul*lstm_678/while/lstm_cell_705/Sigmoid_1:y:0lstm_678_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_678/while/lstm_cell_705/ReluRelu+lstm_678/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/mul_1Mul(lstm_678/while/lstm_cell_705/Sigmoid:y:0/lstm_678/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/add_1AddV2$lstm_678/while/lstm_cell_705/mul:z:0&lstm_678/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_678/while/lstm_cell_705/Sigmoid_2Sigmoid+lstm_678/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_678/while/lstm_cell_705/Relu_1Relu&lstm_678/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_678/while/lstm_cell_705/mul_2Mul*lstm_678/while/lstm_cell_705/Sigmoid_2:y:01lstm_678/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_678/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_678_while_placeholder_1lstm_678_while_placeholder&lstm_678/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_678/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_678/while/addAddV2lstm_678_while_placeholderlstm_678/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_678/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_678/while/add_1AddV2*lstm_678_while_lstm_678_while_loop_counterlstm_678/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_678/while/IdentityIdentitylstm_678/while/add_1:z:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_1Identity0lstm_678_while_lstm_678_while_maximum_iterations^lstm_678/while/NoOp*
T0*
_output_shapes
: t
lstm_678/while/Identity_2Identitylstm_678/while/add:z:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_3IdentityClstm_678/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_678/while/NoOp*
T0*
_output_shapes
: ?
lstm_678/while/Identity_4Identity&lstm_678/while/lstm_cell_705/mul_2:z:0^lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_678/while/Identity_5Identity&lstm_678/while/lstm_cell_705/add_1:z:0^lstm_678/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_678/while/NoOpNoOp4^lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp3^lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp5^lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_678_while_identity lstm_678/while/Identity:output:0"?
lstm_678_while_identity_1"lstm_678/while/Identity_1:output:0"?
lstm_678_while_identity_2"lstm_678/while/Identity_2:output:0"?
lstm_678_while_identity_3"lstm_678/while/Identity_3:output:0"?
lstm_678_while_identity_4"lstm_678/while/Identity_4:output:0"?
lstm_678_while_identity_5"lstm_678/while/Identity_5:output:0"T
'lstm_678_while_lstm_678_strided_slice_1)lstm_678_while_lstm_678_strided_slice_1_0"~
<lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource>lstm_678_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
=lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource?lstm_678_while_lstm_cell_705_matmul_1_readvariableop_resource_0"|
;lstm_678_while_lstm_cell_705_matmul_readvariableop_resource=lstm_678_while_lstm_cell_705_matmul_readvariableop_resource_0"?
clstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensorelstm_678_while_tensorarrayv2read_tensorlistgetitem_lstm_678_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp3lstm_678/while/lstm_cell_705/BiasAdd/ReadVariableOp2h
2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp2lstm_678/while/lstm_cell_705/MatMul/ReadVariableOp2l
4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp4lstm_678/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282062
inputs_0>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4281978*
condR
while_cond_4281977*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281446
inputs_0?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4281362*
condR
while_cond_4281361*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279588

inputs#
lstm_678_4279561:	?#
lstm_678_4279563:	d?
lstm_678_4279565:	?#
lstm_679_4279568:	d?#
lstm_679_4279570:	2?
lstm_679_4279572:	?"
lstm_680_4279575:2("
lstm_680_4279577:
(
lstm_680_4279579:(#
dense_226_4279582:

dense_226_4279584:
identity??!dense_226/StatefulPartitionedCall? lstm_678/StatefulPartitionedCall? lstm_679/StatefulPartitionedCall? lstm_680/StatefulPartitionedCall?
 lstm_678/StatefulPartitionedCallStatefulPartitionedCallinputslstm_678_4279561lstm_678_4279563lstm_678_4279565*
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4279520?
 lstm_679/StatefulPartitionedCallStatefulPartitionedCall)lstm_678/StatefulPartitionedCall:output:0lstm_679_4279568lstm_679_4279570lstm_679_4279572*
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4279355?
 lstm_680/StatefulPartitionedCallStatefulPartitionedCall)lstm_679/StatefulPartitionedCall:output:0lstm_680_4279575lstm_680_4279577lstm_680_4279579*
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4279190?
!dense_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_680/StatefulPartitionedCall:output:0dense_226_4279582dense_226_4279584*
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992y
IdentityIdentity*dense_226/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_226/StatefulPartitionedCall!^lstm_678/StatefulPartitionedCall!^lstm_679/StatefulPartitionedCall!^lstm_680/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_226/StatefulPartitionedCall!dense_226/StatefulPartitionedCall2D
 lstm_678/StatefulPartitionedCall lstm_678/StatefulPartitionedCall2D
 lstm_679/StatefulPartitionedCall lstm_679/StatefulPartitionedCall2D
 lstm_680/StatefulPartitionedCall lstm_680/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_226_layer_call_fn_4282500

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
F__inference_dense_226_layer_call_and_return_conditional_losses_4278992o
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
while_body_4279271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4278516

inputs'
lstm_cell_707_4278434:2('
lstm_cell_707_4278436:
(#
lstm_cell_707_4278438:(
identity??%lstm_cell_707/StatefulPartitionedCall?while;
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
%lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_707_4278434lstm_cell_707_4278436lstm_cell_707_4278438*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4278388n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_707_4278434lstm_cell_707_4278436lstm_cell_707_4278438*
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
while_body_4278447*
condR
while_cond_4278446*K
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
NoOpNoOp&^lstm_cell_707/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_707/StatefulPartitionedCall%lstm_cell_707/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4280746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_678_input;
 serving_default_lstm_678_input:0?????????=
	dense_2260
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
2dense_226/kernel
:2dense_226/bias
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
0:.	?2lstm_678/lstm_cell_678/kernel
::8	d?2'lstm_678/lstm_cell_678/recurrent_kernel
*:(?2lstm_678/lstm_cell_678/bias
0:.	d?2lstm_679/lstm_cell_679/kernel
::8	2?2'lstm_679/lstm_cell_679/recurrent_kernel
*:(?2lstm_679/lstm_cell_679/bias
/:-2(2lstm_680/lstm_cell_680/kernel
9:7
(2'lstm_680/lstm_cell_680/recurrent_kernel
):'(2lstm_680/lstm_cell_680/bias
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
2Adam/dense_226/kernel/m
!:2Adam/dense_226/bias/m
5:3	?2$Adam/lstm_678/lstm_cell_678/kernel/m
?:=	d?2.Adam/lstm_678/lstm_cell_678/recurrent_kernel/m
/:-?2"Adam/lstm_678/lstm_cell_678/bias/m
5:3	d?2$Adam/lstm_679/lstm_cell_679/kernel/m
?:=	2?2.Adam/lstm_679/lstm_cell_679/recurrent_kernel/m
/:-?2"Adam/lstm_679/lstm_cell_679/bias/m
4:22(2$Adam/lstm_680/lstm_cell_680/kernel/m
>:<
(2.Adam/lstm_680/lstm_cell_680/recurrent_kernel/m
.:,(2"Adam/lstm_680/lstm_cell_680/bias/m
':%
2Adam/dense_226/kernel/v
!:2Adam/dense_226/bias/v
5:3	?2$Adam/lstm_678/lstm_cell_678/kernel/v
?:=	d?2.Adam/lstm_678/lstm_cell_678/recurrent_kernel/v
/:-?2"Adam/lstm_678/lstm_cell_678/bias/v
5:3	d?2$Adam/lstm_679/lstm_cell_679/kernel/v
?:=	2?2.Adam/lstm_679/lstm_cell_679/recurrent_kernel/v
/:-?2"Adam/lstm_679/lstm_cell_679/bias/v
4:22(2$Adam/lstm_680/lstm_cell_680/kernel/v
>:<
(2.Adam/lstm_680/lstm_cell_680/recurrent_kernel/v
.:,(2"Adam/lstm_680/lstm_cell_680/bias/v
?2?
0__inference_sequential_226_layer_call_fn_4279024
0__inference_sequential_226_layer_call_fn_4279762
0__inference_sequential_226_layer_call_fn_4279789
0__inference_sequential_226_layer_call_fn_4279640?
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280216
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280643
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279670
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279700?
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
"__inference__wrapped_model_4277475lstm_678_input"?
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
*__inference_lstm_678_layer_call_fn_4280654
*__inference_lstm_678_layer_call_fn_4280665
*__inference_lstm_678_layer_call_fn_4280676
*__inference_lstm_678_layer_call_fn_4280687?
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280830
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280973
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281116
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281259?
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
*__inference_lstm_679_layer_call_fn_4281270
*__inference_lstm_679_layer_call_fn_4281281
*__inference_lstm_679_layer_call_fn_4281292
*__inference_lstm_679_layer_call_fn_4281303?
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281446
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281589
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281732
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281875?
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
*__inference_lstm_680_layer_call_fn_4281886
*__inference_lstm_680_layer_call_fn_4281897
*__inference_lstm_680_layer_call_fn_4281908
*__inference_lstm_680_layer_call_fn_4281919?
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282062
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282205
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282348
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282491?
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
+__inference_dense_226_layer_call_fn_4282500?
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
F__inference_dense_226_layer_call_and_return_conditional_losses_4282510?
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
%__inference_signature_wrapper_4279735lstm_678_input"?
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
/__inference_lstm_cell_705_layer_call_fn_4282527
/__inference_lstm_cell_705_layer_call_fn_4282544?
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282576
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282608?
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
/__inference_lstm_cell_706_layer_call_fn_4282625
/__inference_lstm_cell_706_layer_call_fn_4282642?
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282674
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282706?
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
/__inference_lstm_cell_707_layer_call_fn_4282723
/__inference_lstm_cell_707_layer_call_fn_4282740?
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282772
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282804?
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
"__inference__wrapped_model_4277475?-./012345!";?8
1?.
,?)
lstm_678_input?????????
? "5?2
0
	dense_226#? 
	dense_226??????????
F__inference_dense_226_layer_call_and_return_conditional_losses_4282510\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_226_layer_call_fn_4282500O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280830?-./O?L
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4280973?-./O?L
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281116q-./??<
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
E__inference_lstm_678_layer_call_and_return_conditional_losses_4281259q-./??<
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
*__inference_lstm_678_layer_call_fn_4280654}-./O?L
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
*__inference_lstm_678_layer_call_fn_4280665}-./O?L
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
*__inference_lstm_678_layer_call_fn_4280676d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_678_layer_call_fn_4280687d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281446?012O?L
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281589?012O?L
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281732q012??<
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
E__inference_lstm_679_layer_call_and_return_conditional_losses_4281875q012??<
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
*__inference_lstm_679_layer_call_fn_4281270}012O?L
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
*__inference_lstm_679_layer_call_fn_4281281}012O?L
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
*__inference_lstm_679_layer_call_fn_4281292d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_679_layer_call_fn_4281303d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282062}345O?L
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282205}345O?L
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282348m345??<
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
E__inference_lstm_680_layer_call_and_return_conditional_losses_4282491m345??<
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
*__inference_lstm_680_layer_call_fn_4281886p345O?L
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
*__inference_lstm_680_layer_call_fn_4281897p345O?L
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
*__inference_lstm_680_layer_call_fn_4281908`345??<
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
*__inference_lstm_680_layer_call_fn_4281919`345??<
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282576?-./??}
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4282608?-./??}
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
/__inference_lstm_cell_705_layer_call_fn_4282527?-./??}
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
/__inference_lstm_cell_705_layer_call_fn_4282544?-./??}
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282674?012??}
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4282706?012??}
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
/__inference_lstm_cell_706_layer_call_fn_4282625?012??}
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
/__inference_lstm_cell_706_layer_call_fn_4282642?012??}
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282772?345??}
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4282804?345??}
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
/__inference_lstm_cell_707_layer_call_fn_4282723?345??}
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
/__inference_lstm_cell_707_layer_call_fn_4282740?345??}
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279670y-./012345!"C?@
9?6
,?)
lstm_678_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_226_layer_call_and_return_conditional_losses_4279700y-./012345!"C?@
9?6
,?)
lstm_678_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280216q-./012345!";?8
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
K__inference_sequential_226_layer_call_and_return_conditional_losses_4280643q-./012345!";?8
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
0__inference_sequential_226_layer_call_fn_4279024l-./012345!"C?@
9?6
,?)
lstm_678_input?????????
p 

 
? "???????????
0__inference_sequential_226_layer_call_fn_4279640l-./012345!"C?@
9?6
,?)
lstm_678_input?????????
p

 
? "???????????
0__inference_sequential_226_layer_call_fn_4279762d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_226_layer_call_fn_4279789d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4279735?-./012345!"M?J
? 
C?@
>
lstm_678_input,?)
lstm_678_input?????????"5?2
0
	dense_226#? 
	dense_226?????????