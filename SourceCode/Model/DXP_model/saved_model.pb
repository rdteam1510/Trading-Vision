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
dense_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_122/kernel
u
$dense_122/kernel/Read/ReadVariableOpReadVariableOpdense_122/kernel*
_output_shapes

:
*
dtype0
t
dense_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_122/bias
m
"dense_122/bias/Read/ReadVariableOpReadVariableOpdense_122/bias*
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
lstm_366/lstm_cell_366/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_366/lstm_cell_366/kernel
?
1lstm_366/lstm_cell_366/kernel/Read/ReadVariableOpReadVariableOplstm_366/lstm_cell_366/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_366/lstm_cell_366/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_366/lstm_cell_366/recurrent_kernel
?
;lstm_366/lstm_cell_366/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_366/lstm_cell_366/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_366/lstm_cell_366/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_366/lstm_cell_366/bias
?
/lstm_366/lstm_cell_366/bias/Read/ReadVariableOpReadVariableOplstm_366/lstm_cell_366/bias*
_output_shapes	
:?*
dtype0
?
lstm_367/lstm_cell_367/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_367/lstm_cell_367/kernel
?
1lstm_367/lstm_cell_367/kernel/Read/ReadVariableOpReadVariableOplstm_367/lstm_cell_367/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_367/lstm_cell_367/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_367/lstm_cell_367/recurrent_kernel
?
;lstm_367/lstm_cell_367/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_367/lstm_cell_367/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_367/lstm_cell_367/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_367/lstm_cell_367/bias
?
/lstm_367/lstm_cell_367/bias/Read/ReadVariableOpReadVariableOplstm_367/lstm_cell_367/bias*
_output_shapes	
:?*
dtype0
?
lstm_368/lstm_cell_368/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_368/lstm_cell_368/kernel
?
1lstm_368/lstm_cell_368/kernel/Read/ReadVariableOpReadVariableOplstm_368/lstm_cell_368/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_368/lstm_cell_368/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_368/lstm_cell_368/recurrent_kernel
?
;lstm_368/lstm_cell_368/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_368/lstm_cell_368/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_368/lstm_cell_368/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_368/lstm_cell_368/bias
?
/lstm_368/lstm_cell_368/bias/Read/ReadVariableOpReadVariableOplstm_368/lstm_cell_368/bias*
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
Adam/dense_122/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_122/kernel/m
?
+Adam/dense_122/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_122/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_122/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_122/bias/m
{
)Adam/dense_122/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_122/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_366/lstm_cell_366/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_366/lstm_cell_366/kernel/m
?
8Adam/lstm_366/lstm_cell_366/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_366/lstm_cell_366/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_366/lstm_cell_366/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_366/lstm_cell_366/recurrent_kernel/m
?
BAdam/lstm_366/lstm_cell_366/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_366/lstm_cell_366/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_366/lstm_cell_366/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_366/lstm_cell_366/bias/m
?
6Adam/lstm_366/lstm_cell_366/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_366/lstm_cell_366/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_367/lstm_cell_367/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_367/lstm_cell_367/kernel/m
?
8Adam/lstm_367/lstm_cell_367/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_367/lstm_cell_367/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_367/lstm_cell_367/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_367/lstm_cell_367/recurrent_kernel/m
?
BAdam/lstm_367/lstm_cell_367/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_367/lstm_cell_367/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_367/lstm_cell_367/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_367/lstm_cell_367/bias/m
?
6Adam/lstm_367/lstm_cell_367/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_367/lstm_cell_367/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_368/lstm_cell_368/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_368/lstm_cell_368/kernel/m
?
8Adam/lstm_368/lstm_cell_368/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_368/lstm_cell_368/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_368/lstm_cell_368/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_368/lstm_cell_368/recurrent_kernel/m
?
BAdam/lstm_368/lstm_cell_368/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_368/lstm_cell_368/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_368/lstm_cell_368/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_368/lstm_cell_368/bias/m
?
6Adam/lstm_368/lstm_cell_368/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_368/lstm_cell_368/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_122/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_122/kernel/v
?
+Adam/dense_122/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_122/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_122/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_122/bias/v
{
)Adam/dense_122/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_122/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_366/lstm_cell_366/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_366/lstm_cell_366/kernel/v
?
8Adam/lstm_366/lstm_cell_366/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_366/lstm_cell_366/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_366/lstm_cell_366/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_366/lstm_cell_366/recurrent_kernel/v
?
BAdam/lstm_366/lstm_cell_366/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_366/lstm_cell_366/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_366/lstm_cell_366/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_366/lstm_cell_366/bias/v
?
6Adam/lstm_366/lstm_cell_366/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_366/lstm_cell_366/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_367/lstm_cell_367/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_367/lstm_cell_367/kernel/v
?
8Adam/lstm_367/lstm_cell_367/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_367/lstm_cell_367/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_367/lstm_cell_367/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_367/lstm_cell_367/recurrent_kernel/v
?
BAdam/lstm_367/lstm_cell_367/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_367/lstm_cell_367/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_367/lstm_cell_367/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_367/lstm_cell_367/bias/v
?
6Adam/lstm_367/lstm_cell_367/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_367/lstm_cell_367/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_368/lstm_cell_368/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_368/lstm_cell_368/kernel/v
?
8Adam/lstm_368/lstm_cell_368/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_368/lstm_cell_368/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_368/lstm_cell_368/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_368/lstm_cell_368/recurrent_kernel/v
?
BAdam/lstm_368/lstm_cell_368/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_368/lstm_cell_368/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_368/lstm_cell_368/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_368/lstm_cell_368/bias/v
?
6Adam/lstm_368/lstm_cell_368/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_368/lstm_cell_368/bias/v*
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
VARIABLE_VALUEdense_122/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_122/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_366/lstm_cell_366/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_366/lstm_cell_366/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_366/lstm_cell_366/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_367/lstm_cell_367/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_367/lstm_cell_367/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_367/lstm_cell_367/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_368/lstm_cell_368/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_368/lstm_cell_368/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_368/lstm_cell_368/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_122/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_122/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_366/lstm_cell_366/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_366/lstm_cell_366/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_366/lstm_cell_366/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_367/lstm_cell_367/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_367/lstm_cell_367/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_367/lstm_cell_367/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_368/lstm_cell_368/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_368/lstm_cell_368/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_368/lstm_cell_368/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_122/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_122/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_366/lstm_cell_366/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_366/lstm_cell_366/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_366/lstm_cell_366/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_367/lstm_cell_367/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_367/lstm_cell_367/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_367/lstm_cell_367/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_368/lstm_cell_368/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_368/lstm_cell_368/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_368/lstm_cell_368/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_366_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_366_inputlstm_366/lstm_cell_366/kernel'lstm_366/lstm_cell_366/recurrent_kernellstm_366/lstm_cell_366/biaslstm_367/lstm_cell_367/kernel'lstm_367/lstm_cell_367/recurrent_kernellstm_367/lstm_cell_367/biaslstm_368/lstm_cell_368/kernel'lstm_368/lstm_cell_368/recurrent_kernellstm_368/lstm_cell_368/biasdense_122/kerneldense_122/bias*
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
%__inference_signature_wrapper_3262538
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_122/kernel/Read/ReadVariableOp"dense_122/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_366/lstm_cell_366/kernel/Read/ReadVariableOp;lstm_366/lstm_cell_366/recurrent_kernel/Read/ReadVariableOp/lstm_366/lstm_cell_366/bias/Read/ReadVariableOp1lstm_367/lstm_cell_367/kernel/Read/ReadVariableOp;lstm_367/lstm_cell_367/recurrent_kernel/Read/ReadVariableOp/lstm_367/lstm_cell_367/bias/Read/ReadVariableOp1lstm_368/lstm_cell_368/kernel/Read/ReadVariableOp;lstm_368/lstm_cell_368/recurrent_kernel/Read/ReadVariableOp/lstm_368/lstm_cell_368/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_122/kernel/m/Read/ReadVariableOp)Adam/dense_122/bias/m/Read/ReadVariableOp8Adam/lstm_366/lstm_cell_366/kernel/m/Read/ReadVariableOpBAdam/lstm_366/lstm_cell_366/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_366/lstm_cell_366/bias/m/Read/ReadVariableOp8Adam/lstm_367/lstm_cell_367/kernel/m/Read/ReadVariableOpBAdam/lstm_367/lstm_cell_367/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_367/lstm_cell_367/bias/m/Read/ReadVariableOp8Adam/lstm_368/lstm_cell_368/kernel/m/Read/ReadVariableOpBAdam/lstm_368/lstm_cell_368/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_368/lstm_cell_368/bias/m/Read/ReadVariableOp+Adam/dense_122/kernel/v/Read/ReadVariableOp)Adam/dense_122/bias/v/Read/ReadVariableOp8Adam/lstm_366/lstm_cell_366/kernel/v/Read/ReadVariableOpBAdam/lstm_366/lstm_cell_366/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_366/lstm_cell_366/bias/v/Read/ReadVariableOp8Adam/lstm_367/lstm_cell_367/kernel/v/Read/ReadVariableOpBAdam/lstm_367/lstm_cell_367/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_367/lstm_cell_367/bias/v/Read/ReadVariableOp8Adam/lstm_368/lstm_cell_368/kernel/v/Read/ReadVariableOpBAdam/lstm_368/lstm_cell_368/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_368/lstm_cell_368/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3265750
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_122/kerneldense_122/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_366/lstm_cell_366/kernel'lstm_366/lstm_cell_366/recurrent_kernellstm_366/lstm_cell_366/biaslstm_367/lstm_cell_367/kernel'lstm_367/lstm_cell_367/recurrent_kernellstm_367/lstm_cell_367/biaslstm_368/lstm_cell_368/kernel'lstm_368/lstm_cell_368/recurrent_kernellstm_368/lstm_cell_368/biastotalcountAdam/dense_122/kernel/mAdam/dense_122/bias/m$Adam/lstm_366/lstm_cell_366/kernel/m.Adam/lstm_366/lstm_cell_366/recurrent_kernel/m"Adam/lstm_366/lstm_cell_366/bias/m$Adam/lstm_367/lstm_cell_367/kernel/m.Adam/lstm_367/lstm_cell_367/recurrent_kernel/m"Adam/lstm_367/lstm_cell_367/bias/m$Adam/lstm_368/lstm_cell_368/kernel/m.Adam/lstm_368/lstm_cell_368/recurrent_kernel/m"Adam/lstm_368/lstm_cell_368/bias/mAdam/dense_122/kernel/vAdam/dense_122/bias/v$Adam/lstm_366/lstm_cell_366/kernel/v.Adam/lstm_366/lstm_cell_366/recurrent_kernel/v"Adam/lstm_366/lstm_cell_366/bias/v$Adam/lstm_367/lstm_cell_367/kernel/v.Adam/lstm_367/lstm_cell_367/recurrent_kernel/v"Adam/lstm_367/lstm_cell_367/bias/v$Adam/lstm_368/lstm_cell_368/kernel/v.Adam/lstm_368/lstm_cell_368/recurrent_kernel/v"Adam/lstm_368/lstm_cell_368/bias/v*4
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
#__inference__traced_restore_3265880??+
?T
?
*sequential_122_lstm_368_while_body_3260188L
Hsequential_122_lstm_368_while_sequential_122_lstm_368_while_loop_counterR
Nsequential_122_lstm_368_while_sequential_122_lstm_368_while_maximum_iterations-
)sequential_122_lstm_368_while_placeholder/
+sequential_122_lstm_368_while_placeholder_1/
+sequential_122_lstm_368_while_placeholder_2/
+sequential_122_lstm_368_while_placeholder_3K
Gsequential_122_lstm_368_while_sequential_122_lstm_368_strided_slice_1_0?
?sequential_122_lstm_368_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_368_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_122_lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0:2(`
Nsequential_122_lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0:
([
Msequential_122_lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0:(*
&sequential_122_lstm_368_while_identity,
(sequential_122_lstm_368_while_identity_1,
(sequential_122_lstm_368_while_identity_2,
(sequential_122_lstm_368_while_identity_3,
(sequential_122_lstm_368_while_identity_4,
(sequential_122_lstm_368_while_identity_5I
Esequential_122_lstm_368_while_sequential_122_lstm_368_strided_slice_1?
?sequential_122_lstm_368_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_368_tensorarrayunstack_tensorlistfromtensor\
Jsequential_122_lstm_368_while_lstm_cell_539_matmul_readvariableop_resource:2(^
Lsequential_122_lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource:
(Y
Ksequential_122_lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource:(??Bsequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp?Asequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp?Csequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp?
Osequential_122/lstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_122/lstm_368/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_122_lstm_368_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_368_tensorarrayunstack_tensorlistfromtensor_0)sequential_122_lstm_368_while_placeholderXsequential_122/lstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOpLsequential_122_lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_122/lstm_368/while/lstm_cell_539/MatMulMatMulHsequential_122/lstm_368/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOpNsequential_122_lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_122/lstm_368/while/lstm_cell_539/MatMul_1MatMul+sequential_122_lstm_368_while_placeholder_2Ksequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_122/lstm_368/while/lstm_cell_539/addAddV2<sequential_122/lstm_368/while/lstm_cell_539/MatMul:product:0>sequential_122/lstm_368/while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOpMsequential_122_lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_122/lstm_368/while/lstm_cell_539/BiasAddBiasAdd3sequential_122/lstm_368/while/lstm_cell_539/add:z:0Jsequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_122/lstm_368/while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_122/lstm_368/while/lstm_cell_539/splitSplitDsequential_122/lstm_368/while/lstm_cell_539/split/split_dim:output:0<sequential_122/lstm_368/while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_122/lstm_368/while/lstm_cell_539/SigmoidSigmoid:sequential_122/lstm_368/while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_122/lstm_368/while/lstm_cell_539/Sigmoid_1Sigmoid:sequential_122/lstm_368/while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_122/lstm_368/while/lstm_cell_539/mulMul9sequential_122/lstm_368/while/lstm_cell_539/Sigmoid_1:y:0+sequential_122_lstm_368_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_122/lstm_368/while/lstm_cell_539/ReluRelu:sequential_122/lstm_368/while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_122/lstm_368/while/lstm_cell_539/mul_1Mul7sequential_122/lstm_368/while/lstm_cell_539/Sigmoid:y:0>sequential_122/lstm_368/while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_122/lstm_368/while/lstm_cell_539/add_1AddV23sequential_122/lstm_368/while/lstm_cell_539/mul:z:05sequential_122/lstm_368/while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_122/lstm_368/while/lstm_cell_539/Sigmoid_2Sigmoid:sequential_122/lstm_368/while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_122/lstm_368/while/lstm_cell_539/Relu_1Relu5sequential_122/lstm_368/while/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_122/lstm_368/while/lstm_cell_539/mul_2Mul9sequential_122/lstm_368/while/lstm_cell_539/Sigmoid_2:y:0@sequential_122/lstm_368/while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_122/lstm_368/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_122_lstm_368_while_placeholder_1)sequential_122_lstm_368_while_placeholder5sequential_122/lstm_368/while/lstm_cell_539/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_122/lstm_368/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_122/lstm_368/while/addAddV2)sequential_122_lstm_368_while_placeholder,sequential_122/lstm_368/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_122/lstm_368/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_122/lstm_368/while/add_1AddV2Hsequential_122_lstm_368_while_sequential_122_lstm_368_while_loop_counter.sequential_122/lstm_368/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_122/lstm_368/while/IdentityIdentity'sequential_122/lstm_368/while/add_1:z:0#^sequential_122/lstm_368/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_368/while/Identity_1IdentityNsequential_122_lstm_368_while_sequential_122_lstm_368_while_maximum_iterations#^sequential_122/lstm_368/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_368/while/Identity_2Identity%sequential_122/lstm_368/while/add:z:0#^sequential_122/lstm_368/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_368/while/Identity_3IdentityRsequential_122/lstm_368/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_122/lstm_368/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_368/while/Identity_4Identity5sequential_122/lstm_368/while/lstm_cell_539/mul_2:z:0#^sequential_122/lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_122/lstm_368/while/Identity_5Identity5sequential_122/lstm_368/while/lstm_cell_539/add_1:z:0#^sequential_122/lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_122/lstm_368/while/NoOpNoOpC^sequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOpB^sequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOpD^sequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_122_lstm_368_while_identity/sequential_122/lstm_368/while/Identity:output:0"]
(sequential_122_lstm_368_while_identity_11sequential_122/lstm_368/while/Identity_1:output:0"]
(sequential_122_lstm_368_while_identity_21sequential_122/lstm_368/while/Identity_2:output:0"]
(sequential_122_lstm_368_while_identity_31sequential_122/lstm_368/while/Identity_3:output:0"]
(sequential_122_lstm_368_while_identity_41sequential_122/lstm_368/while/Identity_4:output:0"]
(sequential_122_lstm_368_while_identity_51sequential_122/lstm_368/while/Identity_5:output:0"?
Ksequential_122_lstm_368_while_lstm_cell_539_biasadd_readvariableop_resourceMsequential_122_lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0"?
Lsequential_122_lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resourceNsequential_122_lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0"?
Jsequential_122_lstm_368_while_lstm_cell_539_matmul_readvariableop_resourceLsequential_122_lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0"?
Esequential_122_lstm_368_while_sequential_122_lstm_368_strided_slice_1Gsequential_122_lstm_368_while_sequential_122_lstm_368_strided_slice_1_0"?
?sequential_122_lstm_368_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_368_tensorarrayunstack_tensorlistfromtensor?sequential_122_lstm_368_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_368_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOpBsequential_122/lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp2?
Asequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOpAsequential_122/lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp2?
Csequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOpCsequential_122/lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3263834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3263834___redundant_placeholder05
1while_while_cond_3263834___redundant_placeholder15
1while_while_cond_3263834___redundant_placeholder25
1while_while_cond_3263834___redundant_placeholder3
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263919

inputs?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3263835*
condR
while_cond_3263834*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_367_layer_call_and_return_conditional_losses_3262158

inputs?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3262074*
condR
while_cond_3262073*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_367_layer_call_fn_3264084
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3260969|
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264249
inputs_0?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3264165*
condR
while_cond_3264164*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3264165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_122_lstm_367_while_cond_3260048L
Hsequential_122_lstm_367_while_sequential_122_lstm_367_while_loop_counterR
Nsequential_122_lstm_367_while_sequential_122_lstm_367_while_maximum_iterations-
)sequential_122_lstm_367_while_placeholder/
+sequential_122_lstm_367_while_placeholder_1/
+sequential_122_lstm_367_while_placeholder_2/
+sequential_122_lstm_367_while_placeholder_3N
Jsequential_122_lstm_367_while_less_sequential_122_lstm_367_strided_slice_1e
asequential_122_lstm_367_while_sequential_122_lstm_367_while_cond_3260048___redundant_placeholder0e
asequential_122_lstm_367_while_sequential_122_lstm_367_while_cond_3260048___redundant_placeholder1e
asequential_122_lstm_367_while_sequential_122_lstm_367_while_cond_3260048___redundant_placeholder2e
asequential_122_lstm_367_while_sequential_122_lstm_367_while_cond_3260048___redundant_placeholder3*
&sequential_122_lstm_367_while_identity
?
"sequential_122/lstm_367/while/LessLess)sequential_122_lstm_367_while_placeholderJsequential_122_lstm_367_while_less_sequential_122_lstm_367_strided_slice_1*
T0*
_output_shapes
: {
&sequential_122/lstm_367/while/IdentityIdentity&sequential_122/lstm_367/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_122_lstm_367_while_identity/sequential_122/lstm_367/while/Identity:output:0*(
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
while_body_3261393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3261477

inputs?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3261393*
condR
while_cond_3261392*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_366_layer_call_fn_3263457
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3260428|
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260695

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

?
lstm_367_while_cond_3262789.
*lstm_367_while_lstm_367_while_loop_counter4
0lstm_367_while_lstm_367_while_maximum_iterations
lstm_367_while_placeholder 
lstm_367_while_placeholder_1 
lstm_367_while_placeholder_2 
lstm_367_while_placeholder_30
,lstm_367_while_less_lstm_367_strided_slice_1G
Clstm_367_while_lstm_367_while_cond_3262789___redundant_placeholder0G
Clstm_367_while_lstm_367_while_cond_3262789___redundant_placeholder1G
Clstm_367_while_lstm_367_while_cond_3262789___redundant_placeholder2G
Clstm_367_while_lstm_367_while_cond_3262789___redundant_placeholder3
lstm_367_while_identity
?
lstm_367/while/LessLesslstm_367_while_placeholder,lstm_367_while_less_lstm_367_strided_slice_1*
T0*
_output_shapes
: ]
lstm_367/while/IdentityIdentitylstm_367/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_367_while_identity lstm_367/while/Identity:output:0*(
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263633
inputs_0?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3263549*
condR
while_cond_3263548*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3261909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_366_layer_call_fn_3263468
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3260619|
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
?K
?
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265008
inputs_0>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3264924*
condR
while_cond_3264923*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265575

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
while_body_3261059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_539_3261083_0:2(/
while_lstm_cell_539_3261085_0:
(+
while_lstm_cell_539_3261087_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_539_3261083:2(-
while_lstm_cell_539_3261085:
()
while_lstm_cell_539_3261087:(??+while/lstm_cell_539/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_539/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_539_3261083_0while_lstm_cell_539_3261085_0while_lstm_cell_539_3261087_0*
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261045?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_539/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_539/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_539/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_539_3261083while_lstm_cell_539_3261083_0"<
while_lstm_cell_539_3261085while_lstm_cell_539_3261085_0"<
while_lstm_cell_539_3261087while_lstm_cell_539_3261087_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_539/StatefulPartitionedCall+while/lstm_cell_539/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_368_layer_call_fn_3264711

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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261777o
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
??
?
"__inference__wrapped_model_3260278
lstm_366_inputW
Dsequential_122_lstm_366_lstm_cell_537_matmul_readvariableop_resource:	?Y
Fsequential_122_lstm_366_lstm_cell_537_matmul_1_readvariableop_resource:	d?T
Esequential_122_lstm_366_lstm_cell_537_biasadd_readvariableop_resource:	?W
Dsequential_122_lstm_367_lstm_cell_538_matmul_readvariableop_resource:	d?Y
Fsequential_122_lstm_367_lstm_cell_538_matmul_1_readvariableop_resource:	2?T
Esequential_122_lstm_367_lstm_cell_538_biasadd_readvariableop_resource:	?V
Dsequential_122_lstm_368_lstm_cell_539_matmul_readvariableop_resource:2(X
Fsequential_122_lstm_368_lstm_cell_539_matmul_1_readvariableop_resource:
(S
Esequential_122_lstm_368_lstm_cell_539_biasadd_readvariableop_resource:(I
7sequential_122_dense_122_matmul_readvariableop_resource:
F
8sequential_122_dense_122_biasadd_readvariableop_resource:
identity??/sequential_122/dense_122/BiasAdd/ReadVariableOp?.sequential_122/dense_122/MatMul/ReadVariableOp?<sequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp?;sequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOp?=sequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp?sequential_122/lstm_366/while?<sequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp?;sequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOp?=sequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp?sequential_122/lstm_367/while?<sequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp?;sequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOp?=sequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp?sequential_122/lstm_368/while[
sequential_122/lstm_366/ShapeShapelstm_366_input*
T0*
_output_shapes
:u
+sequential_122/lstm_366/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_122/lstm_366/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_122/lstm_366/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_122/lstm_366/strided_sliceStridedSlice&sequential_122/lstm_366/Shape:output:04sequential_122/lstm_366/strided_slice/stack:output:06sequential_122/lstm_366/strided_slice/stack_1:output:06sequential_122/lstm_366/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_122/lstm_366/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_122/lstm_366/zeros/packedPack.sequential_122/lstm_366/strided_slice:output:0/sequential_122/lstm_366/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_122/lstm_366/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_366/zerosFill-sequential_122/lstm_366/zeros/packed:output:0,sequential_122/lstm_366/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_122/lstm_366/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_122/lstm_366/zeros_1/packedPack.sequential_122/lstm_366/strided_slice:output:01sequential_122/lstm_366/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_122/lstm_366/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_366/zeros_1Fill/sequential_122/lstm_366/zeros_1/packed:output:0.sequential_122/lstm_366/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_122/lstm_366/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_122/lstm_366/transpose	Transposelstm_366_input/sequential_122/lstm_366/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_122/lstm_366/Shape_1Shape%sequential_122/lstm_366/transpose:y:0*
T0*
_output_shapes
:w
-sequential_122/lstm_366/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_366/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_366/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_366/strided_slice_1StridedSlice(sequential_122/lstm_366/Shape_1:output:06sequential_122/lstm_366/strided_slice_1/stack:output:08sequential_122/lstm_366/strided_slice_1/stack_1:output:08sequential_122/lstm_366/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_122/lstm_366/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_122/lstm_366/TensorArrayV2TensorListReserve<sequential_122/lstm_366/TensorArrayV2/element_shape:output:00sequential_122/lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_122/lstm_366/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_122/lstm_366/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_122/lstm_366/transpose:y:0Vsequential_122/lstm_366/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_122/lstm_366/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_366/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_366/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_366/strided_slice_2StridedSlice%sequential_122/lstm_366/transpose:y:06sequential_122/lstm_366/strided_slice_2/stack:output:08sequential_122/lstm_366/strided_slice_2/stack_1:output:08sequential_122/lstm_366/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOpReadVariableOpDsequential_122_lstm_366_lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_122/lstm_366/lstm_cell_537/MatMulMatMul0sequential_122/lstm_366/strided_slice_2:output:0Csequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOpFsequential_122_lstm_366_lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_122/lstm_366/lstm_cell_537/MatMul_1MatMul&sequential_122/lstm_366/zeros:output:0Esequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_122/lstm_366/lstm_cell_537/addAddV26sequential_122/lstm_366/lstm_cell_537/MatMul:product:08sequential_122/lstm_366/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOpEsequential_122_lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_122/lstm_366/lstm_cell_537/BiasAddBiasAdd-sequential_122/lstm_366/lstm_cell_537/add:z:0Dsequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_122/lstm_366/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_122/lstm_366/lstm_cell_537/splitSplit>sequential_122/lstm_366/lstm_cell_537/split/split_dim:output:06sequential_122/lstm_366/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_122/lstm_366/lstm_cell_537/SigmoidSigmoid4sequential_122/lstm_366/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_122/lstm_366/lstm_cell_537/Sigmoid_1Sigmoid4sequential_122/lstm_366/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_122/lstm_366/lstm_cell_537/mulMul3sequential_122/lstm_366/lstm_cell_537/Sigmoid_1:y:0(sequential_122/lstm_366/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_122/lstm_366/lstm_cell_537/ReluRelu4sequential_122/lstm_366/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_122/lstm_366/lstm_cell_537/mul_1Mul1sequential_122/lstm_366/lstm_cell_537/Sigmoid:y:08sequential_122/lstm_366/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_122/lstm_366/lstm_cell_537/add_1AddV2-sequential_122/lstm_366/lstm_cell_537/mul:z:0/sequential_122/lstm_366/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_122/lstm_366/lstm_cell_537/Sigmoid_2Sigmoid4sequential_122/lstm_366/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_122/lstm_366/lstm_cell_537/Relu_1Relu/sequential_122/lstm_366/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_122/lstm_366/lstm_cell_537/mul_2Mul3sequential_122/lstm_366/lstm_cell_537/Sigmoid_2:y:0:sequential_122/lstm_366/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_122/lstm_366/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_122/lstm_366/TensorArrayV2_1TensorListReserve>sequential_122/lstm_366/TensorArrayV2_1/element_shape:output:00sequential_122/lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_122/lstm_366/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_122/lstm_366/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_122/lstm_366/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_122/lstm_366/whileWhile3sequential_122/lstm_366/while/loop_counter:output:09sequential_122/lstm_366/while/maximum_iterations:output:0%sequential_122/lstm_366/time:output:00sequential_122/lstm_366/TensorArrayV2_1:handle:0&sequential_122/lstm_366/zeros:output:0(sequential_122/lstm_366/zeros_1:output:00sequential_122/lstm_366/strided_slice_1:output:0Osequential_122/lstm_366/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_122_lstm_366_lstm_cell_537_matmul_readvariableop_resourceFsequential_122_lstm_366_lstm_cell_537_matmul_1_readvariableop_resourceEsequential_122_lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
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
*sequential_122_lstm_366_while_body_3259910*6
cond.R,
*sequential_122_lstm_366_while_cond_3259909*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_122/lstm_366/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_122/lstm_366/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_122/lstm_366/while:output:3Qsequential_122/lstm_366/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_122/lstm_366/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_122/lstm_366/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_366/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_366/strided_slice_3StridedSliceCsequential_122/lstm_366/TensorArrayV2Stack/TensorListStack:tensor:06sequential_122/lstm_366/strided_slice_3/stack:output:08sequential_122/lstm_366/strided_slice_3/stack_1:output:08sequential_122/lstm_366/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_122/lstm_366/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_122/lstm_366/transpose_1	TransposeCsequential_122/lstm_366/TensorArrayV2Stack/TensorListStack:tensor:01sequential_122/lstm_366/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_122/lstm_366/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_122/lstm_367/ShapeShape'sequential_122/lstm_366/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_122/lstm_367/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_122/lstm_367/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_122/lstm_367/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_122/lstm_367/strided_sliceStridedSlice&sequential_122/lstm_367/Shape:output:04sequential_122/lstm_367/strided_slice/stack:output:06sequential_122/lstm_367/strided_slice/stack_1:output:06sequential_122/lstm_367/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_122/lstm_367/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_122/lstm_367/zeros/packedPack.sequential_122/lstm_367/strided_slice:output:0/sequential_122/lstm_367/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_122/lstm_367/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_367/zerosFill-sequential_122/lstm_367/zeros/packed:output:0,sequential_122/lstm_367/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_122/lstm_367/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_122/lstm_367/zeros_1/packedPack.sequential_122/lstm_367/strided_slice:output:01sequential_122/lstm_367/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_122/lstm_367/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_367/zeros_1Fill/sequential_122/lstm_367/zeros_1/packed:output:0.sequential_122/lstm_367/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_122/lstm_367/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_122/lstm_367/transpose	Transpose'sequential_122/lstm_366/transpose_1:y:0/sequential_122/lstm_367/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_122/lstm_367/Shape_1Shape%sequential_122/lstm_367/transpose:y:0*
T0*
_output_shapes
:w
-sequential_122/lstm_367/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_367/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_367/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_367/strided_slice_1StridedSlice(sequential_122/lstm_367/Shape_1:output:06sequential_122/lstm_367/strided_slice_1/stack:output:08sequential_122/lstm_367/strided_slice_1/stack_1:output:08sequential_122/lstm_367/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_122/lstm_367/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_122/lstm_367/TensorArrayV2TensorListReserve<sequential_122/lstm_367/TensorArrayV2/element_shape:output:00sequential_122/lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_122/lstm_367/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_122/lstm_367/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_122/lstm_367/transpose:y:0Vsequential_122/lstm_367/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_122/lstm_367/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_367/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_367/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_367/strided_slice_2StridedSlice%sequential_122/lstm_367/transpose:y:06sequential_122/lstm_367/strided_slice_2/stack:output:08sequential_122/lstm_367/strided_slice_2/stack_1:output:08sequential_122/lstm_367/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOpReadVariableOpDsequential_122_lstm_367_lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_122/lstm_367/lstm_cell_538/MatMulMatMul0sequential_122/lstm_367/strided_slice_2:output:0Csequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOpFsequential_122_lstm_367_lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_122/lstm_367/lstm_cell_538/MatMul_1MatMul&sequential_122/lstm_367/zeros:output:0Esequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_122/lstm_367/lstm_cell_538/addAddV26sequential_122/lstm_367/lstm_cell_538/MatMul:product:08sequential_122/lstm_367/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOpEsequential_122_lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_122/lstm_367/lstm_cell_538/BiasAddBiasAdd-sequential_122/lstm_367/lstm_cell_538/add:z:0Dsequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_122/lstm_367/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_122/lstm_367/lstm_cell_538/splitSplit>sequential_122/lstm_367/lstm_cell_538/split/split_dim:output:06sequential_122/lstm_367/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_122/lstm_367/lstm_cell_538/SigmoidSigmoid4sequential_122/lstm_367/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_122/lstm_367/lstm_cell_538/Sigmoid_1Sigmoid4sequential_122/lstm_367/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_122/lstm_367/lstm_cell_538/mulMul3sequential_122/lstm_367/lstm_cell_538/Sigmoid_1:y:0(sequential_122/lstm_367/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_122/lstm_367/lstm_cell_538/ReluRelu4sequential_122/lstm_367/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_122/lstm_367/lstm_cell_538/mul_1Mul1sequential_122/lstm_367/lstm_cell_538/Sigmoid:y:08sequential_122/lstm_367/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_122/lstm_367/lstm_cell_538/add_1AddV2-sequential_122/lstm_367/lstm_cell_538/mul:z:0/sequential_122/lstm_367/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_122/lstm_367/lstm_cell_538/Sigmoid_2Sigmoid4sequential_122/lstm_367/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_122/lstm_367/lstm_cell_538/Relu_1Relu/sequential_122/lstm_367/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_122/lstm_367/lstm_cell_538/mul_2Mul3sequential_122/lstm_367/lstm_cell_538/Sigmoid_2:y:0:sequential_122/lstm_367/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_122/lstm_367/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_122/lstm_367/TensorArrayV2_1TensorListReserve>sequential_122/lstm_367/TensorArrayV2_1/element_shape:output:00sequential_122/lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_122/lstm_367/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_122/lstm_367/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_122/lstm_367/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_122/lstm_367/whileWhile3sequential_122/lstm_367/while/loop_counter:output:09sequential_122/lstm_367/while/maximum_iterations:output:0%sequential_122/lstm_367/time:output:00sequential_122/lstm_367/TensorArrayV2_1:handle:0&sequential_122/lstm_367/zeros:output:0(sequential_122/lstm_367/zeros_1:output:00sequential_122/lstm_367/strided_slice_1:output:0Osequential_122/lstm_367/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_122_lstm_367_lstm_cell_538_matmul_readvariableop_resourceFsequential_122_lstm_367_lstm_cell_538_matmul_1_readvariableop_resourceEsequential_122_lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
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
*sequential_122_lstm_367_while_body_3260049*6
cond.R,
*sequential_122_lstm_367_while_cond_3260048*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_122/lstm_367/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_122/lstm_367/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_122/lstm_367/while:output:3Qsequential_122/lstm_367/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_122/lstm_367/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_122/lstm_367/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_367/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_367/strided_slice_3StridedSliceCsequential_122/lstm_367/TensorArrayV2Stack/TensorListStack:tensor:06sequential_122/lstm_367/strided_slice_3/stack:output:08sequential_122/lstm_367/strided_slice_3/stack_1:output:08sequential_122/lstm_367/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_122/lstm_367/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_122/lstm_367/transpose_1	TransposeCsequential_122/lstm_367/TensorArrayV2Stack/TensorListStack:tensor:01sequential_122/lstm_367/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_122/lstm_367/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_122/lstm_368/ShapeShape'sequential_122/lstm_367/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_122/lstm_368/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_122/lstm_368/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_122/lstm_368/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_122/lstm_368/strided_sliceStridedSlice&sequential_122/lstm_368/Shape:output:04sequential_122/lstm_368/strided_slice/stack:output:06sequential_122/lstm_368/strided_slice/stack_1:output:06sequential_122/lstm_368/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_122/lstm_368/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_122/lstm_368/zeros/packedPack.sequential_122/lstm_368/strided_slice:output:0/sequential_122/lstm_368/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_122/lstm_368/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_368/zerosFill-sequential_122/lstm_368/zeros/packed:output:0,sequential_122/lstm_368/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_122/lstm_368/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_122/lstm_368/zeros_1/packedPack.sequential_122/lstm_368/strided_slice:output:01sequential_122/lstm_368/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_122/lstm_368/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_122/lstm_368/zeros_1Fill/sequential_122/lstm_368/zeros_1/packed:output:0.sequential_122/lstm_368/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_122/lstm_368/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_122/lstm_368/transpose	Transpose'sequential_122/lstm_367/transpose_1:y:0/sequential_122/lstm_368/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_122/lstm_368/Shape_1Shape%sequential_122/lstm_368/transpose:y:0*
T0*
_output_shapes
:w
-sequential_122/lstm_368/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_368/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_368/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_368/strided_slice_1StridedSlice(sequential_122/lstm_368/Shape_1:output:06sequential_122/lstm_368/strided_slice_1/stack:output:08sequential_122/lstm_368/strided_slice_1/stack_1:output:08sequential_122/lstm_368/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_122/lstm_368/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_122/lstm_368/TensorArrayV2TensorListReserve<sequential_122/lstm_368/TensorArrayV2/element_shape:output:00sequential_122/lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_122/lstm_368/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_122/lstm_368/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_122/lstm_368/transpose:y:0Vsequential_122/lstm_368/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_122/lstm_368/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_368/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_122/lstm_368/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_368/strided_slice_2StridedSlice%sequential_122/lstm_368/transpose:y:06sequential_122/lstm_368/strided_slice_2/stack:output:08sequential_122/lstm_368/strided_slice_2/stack_1:output:08sequential_122/lstm_368/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOpReadVariableOpDsequential_122_lstm_368_lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_122/lstm_368/lstm_cell_539/MatMulMatMul0sequential_122/lstm_368/strided_slice_2:output:0Csequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOpFsequential_122_lstm_368_lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_122/lstm_368/lstm_cell_539/MatMul_1MatMul&sequential_122/lstm_368/zeros:output:0Esequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_122/lstm_368/lstm_cell_539/addAddV26sequential_122/lstm_368/lstm_cell_539/MatMul:product:08sequential_122/lstm_368/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOpEsequential_122_lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_122/lstm_368/lstm_cell_539/BiasAddBiasAdd-sequential_122/lstm_368/lstm_cell_539/add:z:0Dsequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_122/lstm_368/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_122/lstm_368/lstm_cell_539/splitSplit>sequential_122/lstm_368/lstm_cell_539/split/split_dim:output:06sequential_122/lstm_368/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_122/lstm_368/lstm_cell_539/SigmoidSigmoid4sequential_122/lstm_368/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_122/lstm_368/lstm_cell_539/Sigmoid_1Sigmoid4sequential_122/lstm_368/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_122/lstm_368/lstm_cell_539/mulMul3sequential_122/lstm_368/lstm_cell_539/Sigmoid_1:y:0(sequential_122/lstm_368/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_122/lstm_368/lstm_cell_539/ReluRelu4sequential_122/lstm_368/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_122/lstm_368/lstm_cell_539/mul_1Mul1sequential_122/lstm_368/lstm_cell_539/Sigmoid:y:08sequential_122/lstm_368/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_122/lstm_368/lstm_cell_539/add_1AddV2-sequential_122/lstm_368/lstm_cell_539/mul:z:0/sequential_122/lstm_368/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_122/lstm_368/lstm_cell_539/Sigmoid_2Sigmoid4sequential_122/lstm_368/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_122/lstm_368/lstm_cell_539/Relu_1Relu/sequential_122/lstm_368/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_122/lstm_368/lstm_cell_539/mul_2Mul3sequential_122/lstm_368/lstm_cell_539/Sigmoid_2:y:0:sequential_122/lstm_368/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_122/lstm_368/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_122/lstm_368/TensorArrayV2_1TensorListReserve>sequential_122/lstm_368/TensorArrayV2_1/element_shape:output:00sequential_122/lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_122/lstm_368/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_122/lstm_368/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_122/lstm_368/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_122/lstm_368/whileWhile3sequential_122/lstm_368/while/loop_counter:output:09sequential_122/lstm_368/while/maximum_iterations:output:0%sequential_122/lstm_368/time:output:00sequential_122/lstm_368/TensorArrayV2_1:handle:0&sequential_122/lstm_368/zeros:output:0(sequential_122/lstm_368/zeros_1:output:00sequential_122/lstm_368/strided_slice_1:output:0Osequential_122/lstm_368/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_122_lstm_368_lstm_cell_539_matmul_readvariableop_resourceFsequential_122_lstm_368_lstm_cell_539_matmul_1_readvariableop_resourceEsequential_122_lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
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
*sequential_122_lstm_368_while_body_3260188*6
cond.R,
*sequential_122_lstm_368_while_cond_3260187*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_122/lstm_368/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_122/lstm_368/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_122/lstm_368/while:output:3Qsequential_122/lstm_368/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_122/lstm_368/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_122/lstm_368/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_122/lstm_368/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_122/lstm_368/strided_slice_3StridedSliceCsequential_122/lstm_368/TensorArrayV2Stack/TensorListStack:tensor:06sequential_122/lstm_368/strided_slice_3/stack:output:08sequential_122/lstm_368/strided_slice_3/stack_1:output:08sequential_122/lstm_368/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_122/lstm_368/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_122/lstm_368/transpose_1	TransposeCsequential_122/lstm_368/TensorArrayV2Stack/TensorListStack:tensor:01sequential_122/lstm_368/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_122/lstm_368/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_122/dense_122/MatMul/ReadVariableOpReadVariableOp7sequential_122_dense_122_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_122/dense_122/MatMulMatMul0sequential_122/lstm_368/strided_slice_3:output:06sequential_122/dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_122/dense_122/BiasAdd/ReadVariableOpReadVariableOp8sequential_122_dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_122/dense_122/BiasAddBiasAdd)sequential_122/dense_122/MatMul:product:07sequential_122/dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_122/dense_122/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_122/dense_122/BiasAdd/ReadVariableOp/^sequential_122/dense_122/MatMul/ReadVariableOp=^sequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp<^sequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOp>^sequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp^sequential_122/lstm_366/while=^sequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp<^sequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOp>^sequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp^sequential_122/lstm_367/while=^sequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp<^sequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOp>^sequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp^sequential_122/lstm_368/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_122/dense_122/BiasAdd/ReadVariableOp/sequential_122/dense_122/BiasAdd/ReadVariableOp2`
.sequential_122/dense_122/MatMul/ReadVariableOp.sequential_122/dense_122/MatMul/ReadVariableOp2|
<sequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp<sequential_122/lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp2z
;sequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOp;sequential_122/lstm_366/lstm_cell_537/MatMul/ReadVariableOp2~
=sequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp=sequential_122/lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp2>
sequential_122/lstm_366/whilesequential_122/lstm_366/while2|
<sequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp<sequential_122/lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp2z
;sequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOp;sequential_122/lstm_367/lstm_cell_538/MatMul/ReadVariableOp2~
=sequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp=sequential_122/lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp2>
sequential_122/lstm_367/whilesequential_122/lstm_367/while2|
<sequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp<sequential_122/lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp2z
;sequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOp;sequential_122/lstm_368/lstm_cell_539/MatMul/ReadVariableOp2~
=sequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp=sequential_122/lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp2>
sequential_122/lstm_368/whilesequential_122/lstm_368/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_366_input
?
?
*__inference_lstm_367_layer_call_fn_3264095

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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3261627s
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
while_cond_3261692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261692___redundant_placeholder05
1while_while_cond_3261692___redundant_placeholder15
1while_while_cond_3261692___redundant_placeholder25
1while_while_cond_3261692___redundant_placeholder3
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
while_body_3261250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_539_3261274_0:2(/
while_lstm_cell_539_3261276_0:
(+
while_lstm_cell_539_3261278_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_539_3261274:2(-
while_lstm_cell_539_3261276:
()
while_lstm_cell_539_3261278:(??+while/lstm_cell_539/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_539/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_539_3261274_0while_lstm_cell_539_3261276_0while_lstm_cell_539_3261278_0*
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261191?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_539/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_539/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_539/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_539_3261274while_lstm_cell_539_3261274_0"<
while_lstm_cell_539_3261276while_lstm_cell_539_3261276_0"<
while_lstm_cell_539_3261278while_lstm_cell_539_3261278_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_539/StatefulPartitionedCall+while/lstm_cell_539/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3260709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_538_3260733_0:	d?0
while_lstm_cell_538_3260735_0:	2?,
while_lstm_cell_538_3260737_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_538_3260733:	d?.
while_lstm_cell_538_3260735:	2?*
while_lstm_cell_538_3260737:	???+while/lstm_cell_538/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_538/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_538_3260733_0while_lstm_cell_538_3260735_0while_lstm_cell_538_3260737_0*
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260695?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_538/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_538/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_538/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_538/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_538_3260733while_lstm_cell_538_3260733_0"<
while_lstm_cell_538_3260735while_lstm_cell_538_3260735_0"<
while_lstm_cell_538_3260737while_lstm_cell_538_3260737_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_538/StatefulPartitionedCall+while/lstm_cell_538/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_122_lstm_367_while_body_3260049L
Hsequential_122_lstm_367_while_sequential_122_lstm_367_while_loop_counterR
Nsequential_122_lstm_367_while_sequential_122_lstm_367_while_maximum_iterations-
)sequential_122_lstm_367_while_placeholder/
+sequential_122_lstm_367_while_placeholder_1/
+sequential_122_lstm_367_while_placeholder_2/
+sequential_122_lstm_367_while_placeholder_3K
Gsequential_122_lstm_367_while_sequential_122_lstm_367_strided_slice_1_0?
?sequential_122_lstm_367_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_367_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_122_lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0:	d?a
Nsequential_122_lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?\
Msequential_122_lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0:	?*
&sequential_122_lstm_367_while_identity,
(sequential_122_lstm_367_while_identity_1,
(sequential_122_lstm_367_while_identity_2,
(sequential_122_lstm_367_while_identity_3,
(sequential_122_lstm_367_while_identity_4,
(sequential_122_lstm_367_while_identity_5I
Esequential_122_lstm_367_while_sequential_122_lstm_367_strided_slice_1?
?sequential_122_lstm_367_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_367_tensorarrayunstack_tensorlistfromtensor]
Jsequential_122_lstm_367_while_lstm_cell_538_matmul_readvariableop_resource:	d?_
Lsequential_122_lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource:	2?Z
Ksequential_122_lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource:	???Bsequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp?Asequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp?Csequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp?
Osequential_122/lstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_122/lstm_367/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_122_lstm_367_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_367_tensorarrayunstack_tensorlistfromtensor_0)sequential_122_lstm_367_while_placeholderXsequential_122/lstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOpLsequential_122_lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_122/lstm_367/while/lstm_cell_538/MatMulMatMulHsequential_122/lstm_367/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOpNsequential_122_lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_122/lstm_367/while/lstm_cell_538/MatMul_1MatMul+sequential_122_lstm_367_while_placeholder_2Ksequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_122/lstm_367/while/lstm_cell_538/addAddV2<sequential_122/lstm_367/while/lstm_cell_538/MatMul:product:0>sequential_122/lstm_367/while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOpMsequential_122_lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_122/lstm_367/while/lstm_cell_538/BiasAddBiasAdd3sequential_122/lstm_367/while/lstm_cell_538/add:z:0Jsequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_122/lstm_367/while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_122/lstm_367/while/lstm_cell_538/splitSplitDsequential_122/lstm_367/while/lstm_cell_538/split/split_dim:output:0<sequential_122/lstm_367/while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_122/lstm_367/while/lstm_cell_538/SigmoidSigmoid:sequential_122/lstm_367/while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_122/lstm_367/while/lstm_cell_538/Sigmoid_1Sigmoid:sequential_122/lstm_367/while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_122/lstm_367/while/lstm_cell_538/mulMul9sequential_122/lstm_367/while/lstm_cell_538/Sigmoid_1:y:0+sequential_122_lstm_367_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_122/lstm_367/while/lstm_cell_538/ReluRelu:sequential_122/lstm_367/while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_122/lstm_367/while/lstm_cell_538/mul_1Mul7sequential_122/lstm_367/while/lstm_cell_538/Sigmoid:y:0>sequential_122/lstm_367/while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_122/lstm_367/while/lstm_cell_538/add_1AddV23sequential_122/lstm_367/while/lstm_cell_538/mul:z:05sequential_122/lstm_367/while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_122/lstm_367/while/lstm_cell_538/Sigmoid_2Sigmoid:sequential_122/lstm_367/while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_122/lstm_367/while/lstm_cell_538/Relu_1Relu5sequential_122/lstm_367/while/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_122/lstm_367/while/lstm_cell_538/mul_2Mul9sequential_122/lstm_367/while/lstm_cell_538/Sigmoid_2:y:0@sequential_122/lstm_367/while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_122/lstm_367/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_122_lstm_367_while_placeholder_1)sequential_122_lstm_367_while_placeholder5sequential_122/lstm_367/while/lstm_cell_538/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_122/lstm_367/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_122/lstm_367/while/addAddV2)sequential_122_lstm_367_while_placeholder,sequential_122/lstm_367/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_122/lstm_367/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_122/lstm_367/while/add_1AddV2Hsequential_122_lstm_367_while_sequential_122_lstm_367_while_loop_counter.sequential_122/lstm_367/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_122/lstm_367/while/IdentityIdentity'sequential_122/lstm_367/while/add_1:z:0#^sequential_122/lstm_367/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_367/while/Identity_1IdentityNsequential_122_lstm_367_while_sequential_122_lstm_367_while_maximum_iterations#^sequential_122/lstm_367/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_367/while/Identity_2Identity%sequential_122/lstm_367/while/add:z:0#^sequential_122/lstm_367/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_367/while/Identity_3IdentityRsequential_122/lstm_367/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_122/lstm_367/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_367/while/Identity_4Identity5sequential_122/lstm_367/while/lstm_cell_538/mul_2:z:0#^sequential_122/lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_122/lstm_367/while/Identity_5Identity5sequential_122/lstm_367/while/lstm_cell_538/add_1:z:0#^sequential_122/lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_122/lstm_367/while/NoOpNoOpC^sequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOpB^sequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOpD^sequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_122_lstm_367_while_identity/sequential_122/lstm_367/while/Identity:output:0"]
(sequential_122_lstm_367_while_identity_11sequential_122/lstm_367/while/Identity_1:output:0"]
(sequential_122_lstm_367_while_identity_21sequential_122/lstm_367/while/Identity_2:output:0"]
(sequential_122_lstm_367_while_identity_31sequential_122/lstm_367/while/Identity_3:output:0"]
(sequential_122_lstm_367_while_identity_41sequential_122/lstm_367/while/Identity_4:output:0"]
(sequential_122_lstm_367_while_identity_51sequential_122/lstm_367/while/Identity_5:output:0"?
Ksequential_122_lstm_367_while_lstm_cell_538_biasadd_readvariableop_resourceMsequential_122_lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0"?
Lsequential_122_lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resourceNsequential_122_lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0"?
Jsequential_122_lstm_367_while_lstm_cell_538_matmul_readvariableop_resourceLsequential_122_lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0"?
Esequential_122_lstm_367_while_sequential_122_lstm_367_strided_slice_1Gsequential_122_lstm_367_while_sequential_122_lstm_367_strided_slice_1_0"?
?sequential_122_lstm_367_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_367_tensorarrayunstack_tensorlistfromtensor?sequential_122_lstm_367_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_367_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOpBsequential_122/lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp2?
Asequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOpAsequential_122/lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp2?
Csequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOpCsequential_122/lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3261908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261908___redundant_placeholder05
1while_while_cond_3261908___redundant_placeholder15
1while_while_cond_3261908___redundant_placeholder25
1while_while_cond_3261908___redundant_placeholder3
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
while_body_3264308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265509

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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265477

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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263446

inputsH
5lstm_366_lstm_cell_537_matmul_readvariableop_resource:	?J
7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource:	d?E
6lstm_366_lstm_cell_537_biasadd_readvariableop_resource:	?H
5lstm_367_lstm_cell_538_matmul_readvariableop_resource:	d?J
7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource:	2?E
6lstm_367_lstm_cell_538_biasadd_readvariableop_resource:	?G
5lstm_368_lstm_cell_539_matmul_readvariableop_resource:2(I
7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource:
(D
6lstm_368_lstm_cell_539_biasadd_readvariableop_resource:(:
(dense_122_matmul_readvariableop_resource:
7
)dense_122_biasadd_readvariableop_resource:
identity?? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp?-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp?,lstm_366/lstm_cell_537/MatMul/ReadVariableOp?.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp?lstm_366/while?-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp?,lstm_367/lstm_cell_538/MatMul/ReadVariableOp?.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp?lstm_367/while?-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp?,lstm_368/lstm_cell_539/MatMul/ReadVariableOp?.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp?lstm_368/whileD
lstm_366/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_366/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_366/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_366/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_sliceStridedSlicelstm_366/Shape:output:0%lstm_366/strided_slice/stack:output:0'lstm_366/strided_slice/stack_1:output:0'lstm_366/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_366/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_366/zeros/packedPacklstm_366/strided_slice:output:0 lstm_366/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_366/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_366/zerosFilllstm_366/zeros/packed:output:0lstm_366/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_366/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_366/zeros_1/packedPacklstm_366/strided_slice:output:0"lstm_366/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_366/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_366/zeros_1Fill lstm_366/zeros_1/packed:output:0lstm_366/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_366/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_366/transpose	Transposeinputs lstm_366/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_366/Shape_1Shapelstm_366/transpose:y:0*
T0*
_output_shapes
:h
lstm_366/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_366/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_1StridedSlicelstm_366/Shape_1:output:0'lstm_366/strided_slice_1/stack:output:0)lstm_366/strided_slice_1/stack_1:output:0)lstm_366/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_366/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_366/TensorArrayV2TensorListReserve-lstm_366/TensorArrayV2/element_shape:output:0!lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_366/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_366/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_366/transpose:y:0Glstm_366/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_366/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_366/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_2StridedSlicelstm_366/transpose:y:0'lstm_366/strided_slice_2/stack:output:0)lstm_366/strided_slice_2/stack_1:output:0)lstm_366/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_366/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp5lstm_366_lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_366/lstm_cell_537/MatMulMatMul!lstm_366/strided_slice_2:output:04lstm_366/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_366/lstm_cell_537/MatMul_1MatMullstm_366/zeros:output:06lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_366/lstm_cell_537/addAddV2'lstm_366/lstm_cell_537/MatMul:product:0)lstm_366/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp6lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_366/lstm_cell_537/BiasAddBiasAddlstm_366/lstm_cell_537/add:z:05lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_366/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_366/lstm_cell_537/splitSplit/lstm_366/lstm_cell_537/split/split_dim:output:0'lstm_366/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_366/lstm_cell_537/SigmoidSigmoid%lstm_366/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_366/lstm_cell_537/Sigmoid_1Sigmoid%lstm_366/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mulMul$lstm_366/lstm_cell_537/Sigmoid_1:y:0lstm_366/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_366/lstm_cell_537/ReluRelu%lstm_366/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mul_1Mul"lstm_366/lstm_cell_537/Sigmoid:y:0)lstm_366/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/add_1AddV2lstm_366/lstm_cell_537/mul:z:0 lstm_366/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_366/lstm_cell_537/Sigmoid_2Sigmoid%lstm_366/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_366/lstm_cell_537/Relu_1Relu lstm_366/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mul_2Mul$lstm_366/lstm_cell_537/Sigmoid_2:y:0+lstm_366/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_366/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_366/TensorArrayV2_1TensorListReserve/lstm_366/TensorArrayV2_1/element_shape:output:0!lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_366/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_366/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_366/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_366/whileWhile$lstm_366/while/loop_counter:output:0*lstm_366/while/maximum_iterations:output:0lstm_366/time:output:0!lstm_366/TensorArrayV2_1:handle:0lstm_366/zeros:output:0lstm_366/zeros_1:output:0!lstm_366/strided_slice_1:output:0@lstm_366/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_366_lstm_cell_537_matmul_readvariableop_resource7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource6lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
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
lstm_366_while_body_3263078*'
condR
lstm_366_while_cond_3263077*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_366/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_366/TensorArrayV2Stack/TensorListStackTensorListStacklstm_366/while:output:3Blstm_366/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_366/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_366/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_3StridedSlice4lstm_366/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_366/strided_slice_3/stack:output:0)lstm_366/strided_slice_3/stack_1:output:0)lstm_366/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_366/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_366/transpose_1	Transpose4lstm_366/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_366/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_366/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_367/ShapeShapelstm_366/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_367/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_367/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_367/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_sliceStridedSlicelstm_367/Shape:output:0%lstm_367/strided_slice/stack:output:0'lstm_367/strided_slice/stack_1:output:0'lstm_367/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_367/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_367/zeros/packedPacklstm_367/strided_slice:output:0 lstm_367/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_367/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_367/zerosFilllstm_367/zeros/packed:output:0lstm_367/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_367/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_367/zeros_1/packedPacklstm_367/strided_slice:output:0"lstm_367/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_367/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_367/zeros_1Fill lstm_367/zeros_1/packed:output:0lstm_367/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_367/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_367/transpose	Transposelstm_366/transpose_1:y:0 lstm_367/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_367/Shape_1Shapelstm_367/transpose:y:0*
T0*
_output_shapes
:h
lstm_367/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_367/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_1StridedSlicelstm_367/Shape_1:output:0'lstm_367/strided_slice_1/stack:output:0)lstm_367/strided_slice_1/stack_1:output:0)lstm_367/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_367/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_367/TensorArrayV2TensorListReserve-lstm_367/TensorArrayV2/element_shape:output:0!lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_367/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_367/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_367/transpose:y:0Glstm_367/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_367/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_367/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_2StridedSlicelstm_367/transpose:y:0'lstm_367/strided_slice_2/stack:output:0)lstm_367/strided_slice_2/stack_1:output:0)lstm_367/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_367/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp5lstm_367_lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_367/lstm_cell_538/MatMulMatMul!lstm_367/strided_slice_2:output:04lstm_367/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_367/lstm_cell_538/MatMul_1MatMullstm_367/zeros:output:06lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_367/lstm_cell_538/addAddV2'lstm_367/lstm_cell_538/MatMul:product:0)lstm_367/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp6lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_367/lstm_cell_538/BiasAddBiasAddlstm_367/lstm_cell_538/add:z:05lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_367/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_367/lstm_cell_538/splitSplit/lstm_367/lstm_cell_538/split/split_dim:output:0'lstm_367/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_367/lstm_cell_538/SigmoidSigmoid%lstm_367/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_367/lstm_cell_538/Sigmoid_1Sigmoid%lstm_367/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mulMul$lstm_367/lstm_cell_538/Sigmoid_1:y:0lstm_367/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_367/lstm_cell_538/ReluRelu%lstm_367/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mul_1Mul"lstm_367/lstm_cell_538/Sigmoid:y:0)lstm_367/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/add_1AddV2lstm_367/lstm_cell_538/mul:z:0 lstm_367/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_367/lstm_cell_538/Sigmoid_2Sigmoid%lstm_367/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_367/lstm_cell_538/Relu_1Relu lstm_367/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mul_2Mul$lstm_367/lstm_cell_538/Sigmoid_2:y:0+lstm_367/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_367/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_367/TensorArrayV2_1TensorListReserve/lstm_367/TensorArrayV2_1/element_shape:output:0!lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_367/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_367/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_367/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_367/whileWhile$lstm_367/while/loop_counter:output:0*lstm_367/while/maximum_iterations:output:0lstm_367/time:output:0!lstm_367/TensorArrayV2_1:handle:0lstm_367/zeros:output:0lstm_367/zeros_1:output:0!lstm_367/strided_slice_1:output:0@lstm_367/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_367_lstm_cell_538_matmul_readvariableop_resource7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource6lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
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
lstm_367_while_body_3263217*'
condR
lstm_367_while_cond_3263216*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_367/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_367/TensorArrayV2Stack/TensorListStackTensorListStacklstm_367/while:output:3Blstm_367/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_367/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_367/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_3StridedSlice4lstm_367/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_367/strided_slice_3/stack:output:0)lstm_367/strided_slice_3/stack_1:output:0)lstm_367/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_367/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_367/transpose_1	Transpose4lstm_367/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_367/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_367/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_368/ShapeShapelstm_367/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_368/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_368/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_368/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_sliceStridedSlicelstm_368/Shape:output:0%lstm_368/strided_slice/stack:output:0'lstm_368/strided_slice/stack_1:output:0'lstm_368/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_368/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_368/zeros/packedPacklstm_368/strided_slice:output:0 lstm_368/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_368/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_368/zerosFilllstm_368/zeros/packed:output:0lstm_368/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_368/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_368/zeros_1/packedPacklstm_368/strided_slice:output:0"lstm_368/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_368/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_368/zeros_1Fill lstm_368/zeros_1/packed:output:0lstm_368/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_368/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_368/transpose	Transposelstm_367/transpose_1:y:0 lstm_368/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_368/Shape_1Shapelstm_368/transpose:y:0*
T0*
_output_shapes
:h
lstm_368/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_368/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_1StridedSlicelstm_368/Shape_1:output:0'lstm_368/strided_slice_1/stack:output:0)lstm_368/strided_slice_1/stack_1:output:0)lstm_368/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_368/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_368/TensorArrayV2TensorListReserve-lstm_368/TensorArrayV2/element_shape:output:0!lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_368/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_368/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_368/transpose:y:0Glstm_368/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_368/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_368/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_2StridedSlicelstm_368/transpose:y:0'lstm_368/strided_slice_2/stack:output:0)lstm_368/strided_slice_2/stack_1:output:0)lstm_368/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_368/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp5lstm_368_lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_368/lstm_cell_539/MatMulMatMul!lstm_368/strided_slice_2:output:04lstm_368/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_368/lstm_cell_539/MatMul_1MatMullstm_368/zeros:output:06lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_368/lstm_cell_539/addAddV2'lstm_368/lstm_cell_539/MatMul:product:0)lstm_368/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp6lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_368/lstm_cell_539/BiasAddBiasAddlstm_368/lstm_cell_539/add:z:05lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_368/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_368/lstm_cell_539/splitSplit/lstm_368/lstm_cell_539/split/split_dim:output:0'lstm_368/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_368/lstm_cell_539/SigmoidSigmoid%lstm_368/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_368/lstm_cell_539/Sigmoid_1Sigmoid%lstm_368/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mulMul$lstm_368/lstm_cell_539/Sigmoid_1:y:0lstm_368/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_368/lstm_cell_539/ReluRelu%lstm_368/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mul_1Mul"lstm_368/lstm_cell_539/Sigmoid:y:0)lstm_368/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/add_1AddV2lstm_368/lstm_cell_539/mul:z:0 lstm_368/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_368/lstm_cell_539/Sigmoid_2Sigmoid%lstm_368/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_368/lstm_cell_539/Relu_1Relu lstm_368/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mul_2Mul$lstm_368/lstm_cell_539/Sigmoid_2:y:0+lstm_368/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_368/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_368/TensorArrayV2_1TensorListReserve/lstm_368/TensorArrayV2_1/element_shape:output:0!lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_368/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_368/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_368/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_368/whileWhile$lstm_368/while/loop_counter:output:0*lstm_368/while/maximum_iterations:output:0lstm_368/time:output:0!lstm_368/TensorArrayV2_1:handle:0lstm_368/zeros:output:0lstm_368/zeros_1:output:0!lstm_368/strided_slice_1:output:0@lstm_368/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_368_lstm_cell_539_matmul_readvariableop_resource7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource6lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
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
lstm_368_while_body_3263356*'
condR
lstm_368_while_cond_3263355*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_368/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_368/TensorArrayV2Stack/TensorListStackTensorListStacklstm_368/while:output:3Blstm_368/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_368/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_368/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_3StridedSlice4lstm_368/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_368/strided_slice_3/stack:output:0)lstm_368/strided_slice_3/stack_1:output:0)lstm_368/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_368/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_368/transpose_1	Transpose4lstm_368/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_368/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_368/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_122/MatMulMatMul!lstm_368/strided_slice_3:output:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_122/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp.^lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp-^lstm_366/lstm_cell_537/MatMul/ReadVariableOp/^lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp^lstm_366/while.^lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp-^lstm_367/lstm_cell_538/MatMul/ReadVariableOp/^lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp^lstm_367/while.^lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp-^lstm_368/lstm_cell_539/MatMul/ReadVariableOp/^lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp^lstm_368/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp2^
-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp2\
,lstm_366/lstm_cell_537/MatMul/ReadVariableOp,lstm_366/lstm_cell_537/MatMul/ReadVariableOp2`
.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp2 
lstm_366/whilelstm_366/while2^
-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp2\
,lstm_367/lstm_cell_538/MatMul/ReadVariableOp,lstm_367/lstm_cell_538/MatMul/ReadVariableOp2`
.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp2 
lstm_367/whilelstm_367/while2^
-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp2\
,lstm_368/lstm_cell_539/MatMul/ReadVariableOp,lstm_368/lstm_cell_539/MatMul/ReadVariableOp2`
.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp2 
lstm_368/whilelstm_368/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_367_while_cond_3263216.
*lstm_367_while_lstm_367_while_loop_counter4
0lstm_367_while_lstm_367_while_maximum_iterations
lstm_367_while_placeholder 
lstm_367_while_placeholder_1 
lstm_367_while_placeholder_2 
lstm_367_while_placeholder_30
,lstm_367_while_less_lstm_367_strided_slice_1G
Clstm_367_while_lstm_367_while_cond_3263216___redundant_placeholder0G
Clstm_367_while_lstm_367_while_cond_3263216___redundant_placeholder1G
Clstm_367_while_lstm_367_while_cond_3263216___redundant_placeholder2G
Clstm_367_while_lstm_367_while_cond_3263216___redundant_placeholder3
lstm_367_while_identity
?
lstm_367/while/LessLesslstm_367_while_placeholder,lstm_367_while_less_lstm_367_strided_slice_1*
T0*
_output_shapes
: ]
lstm_367/while/IdentityIdentitylstm_367/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_367_while_identity lstm_367/while/Identity:output:0*(
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
/__inference_lstm_cell_537_layer_call_fn_3265347

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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260491o
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264535

inputs?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3264451*
condR
while_cond_3264450*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261993

inputs>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3261909*
condR
while_cond_3261908*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3264164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264164___redundant_placeholder05
1while_while_cond_3264164___redundant_placeholder15
1while_while_cond_3264164___redundant_placeholder25
1while_while_cond_3264164___redundant_placeholder3
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
while_cond_3260708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3260708___redundant_placeholder05
1while_while_cond_3260708___redundant_placeholder15
1while_while_cond_3260708___redundant_placeholder25
1while_while_cond_3260708___redundant_placeholder3
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
while_body_3260900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_538_3260924_0:	d?0
while_lstm_cell_538_3260926_0:	2?,
while_lstm_cell_538_3260928_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_538_3260924:	d?.
while_lstm_cell_538_3260926:	2?*
while_lstm_cell_538_3260928:	???+while/lstm_cell_538/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_538/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_538_3260924_0while_lstm_cell_538_3260926_0while_lstm_cell_538_3260928_0*
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260841?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_538/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_538/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_538/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_538/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_538_3260924while_lstm_cell_538_3260924_0"<
while_lstm_cell_538_3260926while_lstm_cell_538_3260926_0"<
while_lstm_cell_538_3260928while_lstm_cell_538_3260928_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_538/StatefulPartitionedCall+while/lstm_cell_538/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261777

inputs>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3261693*
condR
while_cond_3261692*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_366_while_body_3263078.
*lstm_366_while_lstm_366_while_loop_counter4
0lstm_366_while_lstm_366_while_maximum_iterations
lstm_366_while_placeholder 
lstm_366_while_placeholder_1 
lstm_366_while_placeholder_2 
lstm_366_while_placeholder_3-
)lstm_366_while_lstm_366_strided_slice_1_0i
elstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0:	?R
?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?M
>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
lstm_366_while_identity
lstm_366_while_identity_1
lstm_366_while_identity_2
lstm_366_while_identity_3
lstm_366_while_identity_4
lstm_366_while_identity_5+
'lstm_366_while_lstm_366_strided_slice_1g
clstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensorN
;lstm_366_while_lstm_cell_537_matmul_readvariableop_resource:	?P
=lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource:	d?K
<lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource:	???3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp?2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp?4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp?
@lstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_366/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0lstm_366_while_placeholderIlstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_366/while/lstm_cell_537/MatMulMatMul9lstm_366/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_366/while/lstm_cell_537/MatMul_1MatMullstm_366_while_placeholder_2<lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_366/while/lstm_cell_537/addAddV2-lstm_366/while/lstm_cell_537/MatMul:product:0/lstm_366/while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_366/while/lstm_cell_537/BiasAddBiasAdd$lstm_366/while/lstm_cell_537/add:z:0;lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_366/while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_366/while/lstm_cell_537/splitSplit5lstm_366/while/lstm_cell_537/split/split_dim:output:0-lstm_366/while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_366/while/lstm_cell_537/SigmoidSigmoid+lstm_366/while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_366/while/lstm_cell_537/Sigmoid_1Sigmoid+lstm_366/while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_366/while/lstm_cell_537/mulMul*lstm_366/while/lstm_cell_537/Sigmoid_1:y:0lstm_366_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_366/while/lstm_cell_537/ReluRelu+lstm_366/while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/mul_1Mul(lstm_366/while/lstm_cell_537/Sigmoid:y:0/lstm_366/while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/add_1AddV2$lstm_366/while/lstm_cell_537/mul:z:0&lstm_366/while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_366/while/lstm_cell_537/Sigmoid_2Sigmoid+lstm_366/while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_366/while/lstm_cell_537/Relu_1Relu&lstm_366/while/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/mul_2Mul*lstm_366/while/lstm_cell_537/Sigmoid_2:y:01lstm_366/while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_366/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_366_while_placeholder_1lstm_366_while_placeholder&lstm_366/while/lstm_cell_537/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_366/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_366/while/addAddV2lstm_366_while_placeholderlstm_366/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_366/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_366/while/add_1AddV2*lstm_366_while_lstm_366_while_loop_counterlstm_366/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_366/while/IdentityIdentitylstm_366/while/add_1:z:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_1Identity0lstm_366_while_lstm_366_while_maximum_iterations^lstm_366/while/NoOp*
T0*
_output_shapes
: t
lstm_366/while/Identity_2Identitylstm_366/while/add:z:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_3IdentityClstm_366/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_4Identity&lstm_366/while/lstm_cell_537/mul_2:z:0^lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_366/while/Identity_5Identity&lstm_366/while/lstm_cell_537/add_1:z:0^lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_366/while/NoOpNoOp4^lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp3^lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp5^lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_366_while_identity lstm_366/while/Identity:output:0"?
lstm_366_while_identity_1"lstm_366/while/Identity_1:output:0"?
lstm_366_while_identity_2"lstm_366/while/Identity_2:output:0"?
lstm_366_while_identity_3"lstm_366/while/Identity_3:output:0"?
lstm_366_while_identity_4"lstm_366/while/Identity_4:output:0"?
lstm_366_while_identity_5"lstm_366/while/Identity_5:output:0"T
'lstm_366_while_lstm_366_strided_slice_1)lstm_366_while_lstm_366_strided_slice_1_0"~
<lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0"?
=lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0"|
;lstm_366_while_lstm_cell_537_matmul_readvariableop_resource=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0"?
clstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensorelstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp2h
2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp2l
4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_539_layer_call_fn_3265543

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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261191o
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
?
/__inference_lstm_cell_537_layer_call_fn_3265330

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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260345o
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
while_cond_3261058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261058___redundant_placeholder05
1while_while_cond_3261058___redundant_placeholder15
1while_while_cond_3261058___redundant_placeholder25
1while_while_cond_3261058___redundant_placeholder3
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
while_cond_3262238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3262238___redundant_placeholder05
1while_while_cond_3262238___redundant_placeholder15
1while_while_cond_3262238___redundant_placeholder25
1while_while_cond_3262238___redundant_placeholder3
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
while_body_3264781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_122_lstm_368_while_cond_3260187L
Hsequential_122_lstm_368_while_sequential_122_lstm_368_while_loop_counterR
Nsequential_122_lstm_368_while_sequential_122_lstm_368_while_maximum_iterations-
)sequential_122_lstm_368_while_placeholder/
+sequential_122_lstm_368_while_placeholder_1/
+sequential_122_lstm_368_while_placeholder_2/
+sequential_122_lstm_368_while_placeholder_3N
Jsequential_122_lstm_368_while_less_sequential_122_lstm_368_strided_slice_1e
asequential_122_lstm_368_while_sequential_122_lstm_368_while_cond_3260187___redundant_placeholder0e
asequential_122_lstm_368_while_sequential_122_lstm_368_while_cond_3260187___redundant_placeholder1e
asequential_122_lstm_368_while_sequential_122_lstm_368_while_cond_3260187___redundant_placeholder2e
asequential_122_lstm_368_while_sequential_122_lstm_368_while_cond_3260187___redundant_placeholder3*
&sequential_122_lstm_368_while_identity
?
"sequential_122/lstm_368/while/LessLess)sequential_122_lstm_368_while_placeholderJsequential_122_lstm_368_while_less_sequential_122_lstm_368_strided_slice_1*
T0*
_output_shapes
: {
&sequential_122/lstm_368/while/IdentityIdentity&sequential_122/lstm_368/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_122_lstm_368_while_identity/sequential_122/lstm_368/while/Identity:output:0*(
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
while_body_3261543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3263691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3263691___redundant_placeholder05
1while_while_cond_3263691___redundant_placeholder15
1while_while_cond_3263691___redundant_placeholder25
1while_while_cond_3263691___redundant_placeholder3
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
while_body_3264594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_539_layer_call_fn_3265526

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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261045o
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
while_cond_3264307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264307___redundant_placeholder05
1while_while_cond_3264307___redundant_placeholder15
1while_while_cond_3264307___redundant_placeholder25
1while_while_cond_3264307___redundant_placeholder3
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
lstm_368_while_cond_3263355.
*lstm_368_while_lstm_368_while_loop_counter4
0lstm_368_while_lstm_368_while_maximum_iterations
lstm_368_while_placeholder 
lstm_368_while_placeholder_1 
lstm_368_while_placeholder_2 
lstm_368_while_placeholder_30
,lstm_368_while_less_lstm_368_strided_slice_1G
Clstm_368_while_lstm_368_while_cond_3263355___redundant_placeholder0G
Clstm_368_while_lstm_368_while_cond_3263355___redundant_placeholder1G
Clstm_368_while_lstm_368_while_cond_3263355___redundant_placeholder2G
Clstm_368_while_lstm_368_while_cond_3263355___redundant_placeholder3
lstm_368_while_identity
?
lstm_368/while/LessLesslstm_368_while_placeholder,lstm_368_while_less_lstm_368_strided_slice_1*
T0*
_output_shapes
: ]
lstm_368/while/IdentityIdentitylstm_368/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_368_while_identity lstm_368/while/Identity:output:0*(
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
while_body_3263549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_538_layer_call_fn_3265445

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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260841o
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
*__inference_lstm_368_layer_call_fn_3264700
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261319o
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260841

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
while_cond_3261542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261542___redundant_placeholder05
1while_while_cond_3261542___redundant_placeholder15
1while_while_cond_3261542___redundant_placeholder25
1while_while_cond_3261542___redundant_placeholder3
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260491

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
?
?
K__inference_sequential_122_layer_call_and_return_conditional_losses_3261802

inputs#
lstm_366_3261478:	?#
lstm_366_3261480:	d?
lstm_366_3261482:	?#
lstm_367_3261628:	d?#
lstm_367_3261630:	2?
lstm_367_3261632:	?"
lstm_368_3261778:2("
lstm_368_3261780:
(
lstm_368_3261782:(#
dense_122_3261796:

dense_122_3261798:
identity??!dense_122/StatefulPartitionedCall? lstm_366/StatefulPartitionedCall? lstm_367/StatefulPartitionedCall? lstm_368/StatefulPartitionedCall?
 lstm_366/StatefulPartitionedCallStatefulPartitionedCallinputslstm_366_3261478lstm_366_3261480lstm_366_3261482*
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3261477?
 lstm_367/StatefulPartitionedCallStatefulPartitionedCall)lstm_366/StatefulPartitionedCall:output:0lstm_367_3261628lstm_367_3261630lstm_367_3261632*
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3261627?
 lstm_368/StatefulPartitionedCallStatefulPartitionedCall)lstm_367/StatefulPartitionedCall:output:0lstm_368_3261778lstm_368_3261780lstm_368_3261782*
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261777?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_368/StatefulPartitionedCall:output:0dense_122_3261796dense_122_3261798*
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
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795y
IdentityIdentity*dense_122/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_122/StatefulPartitionedCall!^lstm_366/StatefulPartitionedCall!^lstm_367/StatefulPartitionedCall!^lstm_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2D
 lstm_366/StatefulPartitionedCall lstm_366/StatefulPartitionedCall2D
 lstm_367/StatefulPartitionedCall lstm_367/StatefulPartitionedCall2D
 lstm_368/StatefulPartitionedCall lstm_368/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3265067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261191

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

?
0__inference_sequential_122_layer_call_fn_3261827
lstm_366_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3261802o
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
_user_specified_namelstm_366_input
?
?
/__inference_lstm_cell_538_layer_call_fn_3265428

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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260695o
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
*__inference_lstm_368_layer_call_fn_3264689
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261128o
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
while_body_3261693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_367_layer_call_fn_3264106

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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3262158s
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265379

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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261128

inputs'
lstm_cell_539_3261046:2('
lstm_cell_539_3261048:
(#
lstm_cell_539_3261050:(
identity??%lstm_cell_539/StatefulPartitionedCall?while;
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
%lstm_cell_539/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_539_3261046lstm_cell_539_3261048lstm_cell_539_3261050*
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_539_3261046lstm_cell_539_3261048lstm_cell_539_3261050*
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
while_body_3261059*
condR
while_cond_3261058*K
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
NoOpNoOp&^lstm_cell_539/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_539/StatefulPartitionedCall%lstm_cell_539/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_368_while_body_3262929.
*lstm_368_while_lstm_368_while_loop_counter4
0lstm_368_while_lstm_368_while_maximum_iterations
lstm_368_while_placeholder 
lstm_368_while_placeholder_1 
lstm_368_while_placeholder_2 
lstm_368_while_placeholder_3-
)lstm_368_while_lstm_368_strided_slice_1_0i
elstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0:2(Q
?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(L
>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0:(
lstm_368_while_identity
lstm_368_while_identity_1
lstm_368_while_identity_2
lstm_368_while_identity_3
lstm_368_while_identity_4
lstm_368_while_identity_5+
'lstm_368_while_lstm_368_strided_slice_1g
clstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensorM
;lstm_368_while_lstm_cell_539_matmul_readvariableop_resource:2(O
=lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource:
(J
<lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource:(??3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp?2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp?4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp?
@lstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_368/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0lstm_368_while_placeholderIlstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_368/while/lstm_cell_539/MatMulMatMul9lstm_368/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_368/while/lstm_cell_539/MatMul_1MatMullstm_368_while_placeholder_2<lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_368/while/lstm_cell_539/addAddV2-lstm_368/while/lstm_cell_539/MatMul:product:0/lstm_368/while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_368/while/lstm_cell_539/BiasAddBiasAdd$lstm_368/while/lstm_cell_539/add:z:0;lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_368/while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_368/while/lstm_cell_539/splitSplit5lstm_368/while/lstm_cell_539/split/split_dim:output:0-lstm_368/while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_368/while/lstm_cell_539/SigmoidSigmoid+lstm_368/while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_368/while/lstm_cell_539/Sigmoid_1Sigmoid+lstm_368/while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_368/while/lstm_cell_539/mulMul*lstm_368/while/lstm_cell_539/Sigmoid_1:y:0lstm_368_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_368/while/lstm_cell_539/ReluRelu+lstm_368/while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/mul_1Mul(lstm_368/while/lstm_cell_539/Sigmoid:y:0/lstm_368/while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/add_1AddV2$lstm_368/while/lstm_cell_539/mul:z:0&lstm_368/while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_368/while/lstm_cell_539/Sigmoid_2Sigmoid+lstm_368/while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_368/while/lstm_cell_539/Relu_1Relu&lstm_368/while/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/mul_2Mul*lstm_368/while/lstm_cell_539/Sigmoid_2:y:01lstm_368/while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_368/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_368_while_placeholder_1lstm_368_while_placeholder&lstm_368/while/lstm_cell_539/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_368/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_368/while/addAddV2lstm_368_while_placeholderlstm_368/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_368/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_368/while/add_1AddV2*lstm_368_while_lstm_368_while_loop_counterlstm_368/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_368/while/IdentityIdentitylstm_368/while/add_1:z:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_1Identity0lstm_368_while_lstm_368_while_maximum_iterations^lstm_368/while/NoOp*
T0*
_output_shapes
: t
lstm_368/while/Identity_2Identitylstm_368/while/add:z:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_3IdentityClstm_368/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_4Identity&lstm_368/while/lstm_cell_539/mul_2:z:0^lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_368/while/Identity_5Identity&lstm_368/while/lstm_cell_539/add_1:z:0^lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_368/while/NoOpNoOp4^lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp3^lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp5^lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_368_while_identity lstm_368/while/Identity:output:0"?
lstm_368_while_identity_1"lstm_368/while/Identity_1:output:0"?
lstm_368_while_identity_2"lstm_368/while/Identity_2:output:0"?
lstm_368_while_identity_3"lstm_368/while/Identity_3:output:0"?
lstm_368_while_identity_4"lstm_368/while/Identity_4:output:0"?
lstm_368_while_identity_5"lstm_368/while/Identity_5:output:0"T
'lstm_368_while_lstm_368_strided_slice_1)lstm_368_while_lstm_368_strided_slice_1_0"~
<lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0"?
=lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0"|
;lstm_368_while_lstm_cell_539_matmul_readvariableop_resource=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0"?
clstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensorelstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp2h
2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp2l
4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261319

inputs'
lstm_cell_539_3261237:2('
lstm_cell_539_3261239:
(#
lstm_cell_539_3261241:(
identity??%lstm_cell_539/StatefulPartitionedCall?while;
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
%lstm_cell_539/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_539_3261237lstm_cell_539_3261239lstm_cell_539_3261241*
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261191n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_539_3261237lstm_cell_539_3261239lstm_cell_539_3261241*
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
while_body_3261250*
condR
while_cond_3261249*K
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
NoOpNoOp&^lstm_cell_539/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_539/StatefulPartitionedCall%lstm_cell_539/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3261249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261249___redundant_placeholder05
1while_while_cond_3261249___redundant_placeholder15
1while_while_cond_3261249___redundant_placeholder25
1while_while_cond_3261249___redundant_placeholder3
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
0__inference_sequential_122_layer_call_fn_3262443
lstm_366_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262391o
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
_user_specified_namelstm_366_input
?8
?
while_body_3263978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_366_while_cond_3263077.
*lstm_366_while_lstm_366_while_loop_counter4
0lstm_366_while_lstm_366_while_maximum_iterations
lstm_366_while_placeholder 
lstm_366_while_placeholder_1 
lstm_366_while_placeholder_2 
lstm_366_while_placeholder_30
,lstm_366_while_less_lstm_366_strided_slice_1G
Clstm_366_while_lstm_366_while_cond_3263077___redundant_placeholder0G
Clstm_366_while_lstm_366_while_cond_3263077___redundant_placeholder1G
Clstm_366_while_lstm_366_while_cond_3263077___redundant_placeholder2G
Clstm_366_while_lstm_366_while_cond_3263077___redundant_placeholder3
lstm_366_while_identity
?
lstm_366/while/LessLesslstm_366_while_placeholder,lstm_366_while_less_lstm_366_strided_slice_1*
T0*
_output_shapes
: ]
lstm_366/while/IdentityIdentitylstm_366/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_366_while_identity lstm_366/while/Identity:output:0*(
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
while_cond_3260549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3260549___redundant_placeholder05
1while_while_cond_3260549___redundant_placeholder15
1while_while_cond_3260549___redundant_placeholder25
1while_while_cond_3260549___redundant_placeholder3
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3262323

inputs?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3262239*
condR
while_cond_3262238*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265151

inputs>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3265067*
condR
while_cond_3265066*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3264780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264780___redundant_placeholder05
1while_while_cond_3264780___redundant_placeholder15
1while_while_cond_3264780___redundant_placeholder25
1while_while_cond_3264780___redundant_placeholder3
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3260619

inputs(
lstm_cell_537_3260537:	?(
lstm_cell_537_3260539:	d?$
lstm_cell_537_3260541:	?
identity??%lstm_cell_537/StatefulPartitionedCall?while;
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
%lstm_cell_537/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_537_3260537lstm_cell_537_3260539lstm_cell_537_3260541*
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260491n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_537_3260537lstm_cell_537_3260539lstm_cell_537_3260541*
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
while_body_3260550*
condR
while_cond_3260549*K
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
NoOpNoOp&^lstm_cell_537/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_537/StatefulPartitionedCall%lstm_cell_537/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_368_layer_call_and_return_conditional_losses_3264865
inputs_0>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3264781*
condR
while_cond_3264780*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3265210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3260778

inputs(
lstm_cell_538_3260696:	d?(
lstm_cell_538_3260698:	2?$
lstm_cell_538_3260700:	?
identity??%lstm_cell_538/StatefulPartitionedCall?while;
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
%lstm_cell_538/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_538_3260696lstm_cell_538_3260698lstm_cell_538_3260700*
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260695n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_538_3260696lstm_cell_538_3260698lstm_cell_538_3260700*
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
while_body_3260709*
condR
while_cond_3260708*K
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
NoOpNoOp&^lstm_cell_538/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_538/StatefulPartitionedCall%lstm_cell_538/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_3260550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_537_3260574_0:	?0
while_lstm_cell_537_3260576_0:	d?,
while_lstm_cell_537_3260578_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_537_3260574:	?.
while_lstm_cell_537_3260576:	d?*
while_lstm_cell_537_3260578:	???+while/lstm_cell_537/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_537/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_537_3260574_0while_lstm_cell_537_3260576_0while_lstm_cell_537_3260578_0*
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260491?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_537/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_537/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_537/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_537_3260574while_lstm_cell_537_3260574_0"<
while_lstm_cell_537_3260576while_lstm_cell_537_3260576_0"<
while_lstm_cell_537_3260578while_lstm_cell_537_3260578_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_537/StatefulPartitionedCall+while/lstm_cell_537/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_368_layer_call_fn_3264722

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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261993o
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
while_cond_3261392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3261392___redundant_placeholder05
1while_while_cond_3261392___redundant_placeholder15
1while_while_cond_3261392___redundant_placeholder25
1while_while_cond_3261392___redundant_placeholder3
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
0__inference_sequential_122_layer_call_fn_3262565

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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3261802o
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
?
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262503
lstm_366_input#
lstm_366_3262476:	?#
lstm_366_3262478:	d?
lstm_366_3262480:	?#
lstm_367_3262483:	d?#
lstm_367_3262485:	2?
lstm_367_3262487:	?"
lstm_368_3262490:2("
lstm_368_3262492:
(
lstm_368_3262494:(#
dense_122_3262497:

dense_122_3262499:
identity??!dense_122/StatefulPartitionedCall? lstm_366/StatefulPartitionedCall? lstm_367/StatefulPartitionedCall? lstm_368/StatefulPartitionedCall?
 lstm_366/StatefulPartitionedCallStatefulPartitionedCalllstm_366_inputlstm_366_3262476lstm_366_3262478lstm_366_3262480*
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3262323?
 lstm_367/StatefulPartitionedCallStatefulPartitionedCall)lstm_366/StatefulPartitionedCall:output:0lstm_367_3262483lstm_367_3262485lstm_367_3262487*
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3262158?
 lstm_368/StatefulPartitionedCallStatefulPartitionedCall)lstm_367/StatefulPartitionedCall:output:0lstm_368_3262490lstm_368_3262492lstm_368_3262494*
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261993?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_368/StatefulPartitionedCall:output:0dense_122_3262497dense_122_3262499*
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
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795y
IdentityIdentity*dense_122/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_122/StatefulPartitionedCall!^lstm_366/StatefulPartitionedCall!^lstm_367/StatefulPartitionedCall!^lstm_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2D
 lstm_366/StatefulPartitionedCall lstm_366/StatefulPartitionedCall2D
 lstm_367/StatefulPartitionedCall lstm_367/StatefulPartitionedCall2D
 lstm_368/StatefulPartitionedCall lstm_368/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_366_input
?
?
+__inference_dense_122_layer_call_fn_3265303

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
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795o
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
?	
?
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795

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
F__inference_dense_122_layer_call_and_return_conditional_losses_3265313

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
while_cond_3265066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3265066___redundant_placeholder05
1while_while_cond_3265066___redundant_placeholder15
1while_while_cond_3265066___redundant_placeholder25
1while_while_cond_3265066___redundant_placeholder3
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264392
inputs_0?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3264308*
condR
while_cond_3264307*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_366_layer_call_fn_3263479

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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3261477s
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
while_body_3264924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_539_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_539_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_539_matmul_readvariableop_resource:2(F
4while_lstm_cell_539_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_539_biasadd_readvariableop_resource:(??*while/lstm_cell_539/BiasAdd/ReadVariableOp?)while/lstm_cell_539/MatMul/ReadVariableOp?+while/lstm_cell_539/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_539/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_539/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_539/addAddV2$while/lstm_cell_539/MatMul:product:0&while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_539/BiasAddBiasAddwhile/lstm_cell_539/add:z:02while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_539/splitSplit,while/lstm_cell_539/split/split_dim:output:0$while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_539/SigmoidSigmoid"while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_1Sigmoid"while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mulMul!while/lstm_cell_539/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_539/ReluRelu"while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_1Mulwhile/lstm_cell_539/Sigmoid:y:0&while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/add_1AddV2while/lstm_cell_539/mul:z:0while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_539/Sigmoid_2Sigmoid"while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_539/Relu_1Reluwhile/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_539/mul_2Mul!while/lstm_cell_539/Sigmoid_2:y:0(while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_539/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_539/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_539/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_539/BiasAdd/ReadVariableOp*^while/lstm_cell_539/MatMul/ReadVariableOp,^while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_539_biasadd_readvariableop_resource5while_lstm_cell_539_biasadd_readvariableop_resource_0"n
4while_lstm_cell_539_matmul_1_readvariableop_resource6while_lstm_cell_539_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_539_matmul_readvariableop_resource4while_lstm_cell_539_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_539/BiasAdd/ReadVariableOp*while/lstm_cell_539/BiasAdd/ReadVariableOp2V
)while/lstm_cell_539/MatMul/ReadVariableOp)while/lstm_cell_539/MatMul/ReadVariableOp2Z
+while/lstm_cell_539/MatMul_1/ReadVariableOp+while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_367_while_body_3263217.
*lstm_367_while_lstm_367_while_loop_counter4
0lstm_367_while_lstm_367_while_maximum_iterations
lstm_367_while_placeholder 
lstm_367_while_placeholder_1 
lstm_367_while_placeholder_2 
lstm_367_while_placeholder_3-
)lstm_367_while_lstm_367_strided_slice_1_0i
elstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0:	d?R
?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?M
>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
lstm_367_while_identity
lstm_367_while_identity_1
lstm_367_while_identity_2
lstm_367_while_identity_3
lstm_367_while_identity_4
lstm_367_while_identity_5+
'lstm_367_while_lstm_367_strided_slice_1g
clstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensorN
;lstm_367_while_lstm_cell_538_matmul_readvariableop_resource:	d?P
=lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource:	2?K
<lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource:	???3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp?2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp?4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp?
@lstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_367/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0lstm_367_while_placeholderIlstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_367/while/lstm_cell_538/MatMulMatMul9lstm_367/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_367/while/lstm_cell_538/MatMul_1MatMullstm_367_while_placeholder_2<lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_367/while/lstm_cell_538/addAddV2-lstm_367/while/lstm_cell_538/MatMul:product:0/lstm_367/while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_367/while/lstm_cell_538/BiasAddBiasAdd$lstm_367/while/lstm_cell_538/add:z:0;lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_367/while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_367/while/lstm_cell_538/splitSplit5lstm_367/while/lstm_cell_538/split/split_dim:output:0-lstm_367/while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_367/while/lstm_cell_538/SigmoidSigmoid+lstm_367/while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_367/while/lstm_cell_538/Sigmoid_1Sigmoid+lstm_367/while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_367/while/lstm_cell_538/mulMul*lstm_367/while/lstm_cell_538/Sigmoid_1:y:0lstm_367_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_367/while/lstm_cell_538/ReluRelu+lstm_367/while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/mul_1Mul(lstm_367/while/lstm_cell_538/Sigmoid:y:0/lstm_367/while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/add_1AddV2$lstm_367/while/lstm_cell_538/mul:z:0&lstm_367/while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_367/while/lstm_cell_538/Sigmoid_2Sigmoid+lstm_367/while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_367/while/lstm_cell_538/Relu_1Relu&lstm_367/while/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/mul_2Mul*lstm_367/while/lstm_cell_538/Sigmoid_2:y:01lstm_367/while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_367/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_367_while_placeholder_1lstm_367_while_placeholder&lstm_367/while/lstm_cell_538/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_367/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_367/while/addAddV2lstm_367_while_placeholderlstm_367/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_367/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_367/while/add_1AddV2*lstm_367_while_lstm_367_while_loop_counterlstm_367/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_367/while/IdentityIdentitylstm_367/while/add_1:z:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_1Identity0lstm_367_while_lstm_367_while_maximum_iterations^lstm_367/while/NoOp*
T0*
_output_shapes
: t
lstm_367/while/Identity_2Identitylstm_367/while/add:z:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_3IdentityClstm_367/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_4Identity&lstm_367/while/lstm_cell_538/mul_2:z:0^lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_367/while/Identity_5Identity&lstm_367/while/lstm_cell_538/add_1:z:0^lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_367/while/NoOpNoOp4^lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp3^lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp5^lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_367_while_identity lstm_367/while/Identity:output:0"?
lstm_367_while_identity_1"lstm_367/while/Identity_1:output:0"?
lstm_367_while_identity_2"lstm_367/while/Identity_2:output:0"?
lstm_367_while_identity_3"lstm_367/while/Identity_3:output:0"?
lstm_367_while_identity_4"lstm_367/while/Identity_4:output:0"?
lstm_367_while_identity_5"lstm_367/while/Identity_5:output:0"T
'lstm_367_while_lstm_367_strided_slice_1)lstm_367_while_lstm_367_strided_slice_1_0"~
<lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0"?
=lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0"|
;lstm_367_while_lstm_cell_538_matmul_readvariableop_resource=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0"?
clstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensorelstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp2h
2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp2l
4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265294

inputs>
,lstm_cell_539_matmul_readvariableop_resource:2(@
.lstm_cell_539_matmul_1_readvariableop_resource:
(;
-lstm_cell_539_biasadd_readvariableop_resource:(
identity??$lstm_cell_539/BiasAdd/ReadVariableOp?#lstm_cell_539/MatMul/ReadVariableOp?%lstm_cell_539/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_539/MatMul/ReadVariableOpReadVariableOp,lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_539/MatMulMatMulstrided_slice_2:output:0+lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_539/MatMul_1MatMulzeros:output:0-lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_539/addAddV2lstm_cell_539/MatMul:product:0 lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_539/BiasAddBiasAddlstm_cell_539/add:z:0,lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_539/splitSplit&lstm_cell_539/split/split_dim:output:0lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_539/SigmoidSigmoidlstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_1Sigmoidlstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_539/mulMullstm_cell_539/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_539/ReluRelulstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_1Mullstm_cell_539/Sigmoid:y:0 lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_539/add_1AddV2lstm_cell_539/mul:z:0lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_539/Sigmoid_2Sigmoidlstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_539/Relu_1Relulstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_539/mul_2Mullstm_cell_539/Sigmoid_2:y:0"lstm_cell_539/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_539_matmul_readvariableop_resource.lstm_cell_539_matmul_1_readvariableop_resource-lstm_cell_539_biasadd_readvariableop_resource*
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
while_body_3265210*
condR
while_cond_3265209*K
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
NoOpNoOp%^lstm_cell_539/BiasAdd/ReadVariableOp$^lstm_cell_539/MatMul/ReadVariableOp&^lstm_cell_539/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_539/BiasAdd/ReadVariableOp$lstm_cell_539/BiasAdd/ReadVariableOp2J
#lstm_cell_539/MatMul/ReadVariableOp#lstm_cell_539/MatMul/ReadVariableOp2N
%lstm_cell_539/MatMul_1/ReadVariableOp%lstm_cell_539/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_366_layer_call_and_return_conditional_losses_3264062

inputs?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3263978*
condR
while_cond_3263977*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_366_while_cond_3262650.
*lstm_366_while_lstm_366_while_loop_counter4
0lstm_366_while_lstm_366_while_maximum_iterations
lstm_366_while_placeholder 
lstm_366_while_placeholder_1 
lstm_366_while_placeholder_2 
lstm_366_while_placeholder_30
,lstm_366_while_less_lstm_366_strided_slice_1G
Clstm_366_while_lstm_366_while_cond_3262650___redundant_placeholder0G
Clstm_366_while_lstm_366_while_cond_3262650___redundant_placeholder1G
Clstm_366_while_lstm_366_while_cond_3262650___redundant_placeholder2G
Clstm_366_while_lstm_366_while_cond_3262650___redundant_placeholder3
lstm_366_while_identity
?
lstm_366/while/LessLesslstm_366_while_placeholder,lstm_366_while_less_lstm_366_strided_slice_1*
T0*
_output_shapes
: ]
lstm_366/while/IdentityIdentitylstm_366/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_366_while_identity lstm_366/while/Identity:output:0*(
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

lstm_368_while_body_3263356.
*lstm_368_while_lstm_368_while_loop_counter4
0lstm_368_while_lstm_368_while_maximum_iterations
lstm_368_while_placeholder 
lstm_368_while_placeholder_1 
lstm_368_while_placeholder_2 
lstm_368_while_placeholder_3-
)lstm_368_while_lstm_368_strided_slice_1_0i
elstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0:2(Q
?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0:
(L
>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0:(
lstm_368_while_identity
lstm_368_while_identity_1
lstm_368_while_identity_2
lstm_368_while_identity_3
lstm_368_while_identity_4
lstm_368_while_identity_5+
'lstm_368_while_lstm_368_strided_slice_1g
clstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensorM
;lstm_368_while_lstm_cell_539_matmul_readvariableop_resource:2(O
=lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource:
(J
<lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource:(??3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp?2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp?4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp?
@lstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_368/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0lstm_368_while_placeholderIlstm_368/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_368/while/lstm_cell_539/MatMulMatMul9lstm_368/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_368/while/lstm_cell_539/MatMul_1MatMullstm_368_while_placeholder_2<lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_368/while/lstm_cell_539/addAddV2-lstm_368/while/lstm_cell_539/MatMul:product:0/lstm_368/while/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_368/while/lstm_cell_539/BiasAddBiasAdd$lstm_368/while/lstm_cell_539/add:z:0;lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_368/while/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_368/while/lstm_cell_539/splitSplit5lstm_368/while/lstm_cell_539/split/split_dim:output:0-lstm_368/while/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_368/while/lstm_cell_539/SigmoidSigmoid+lstm_368/while/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_368/while/lstm_cell_539/Sigmoid_1Sigmoid+lstm_368/while/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_368/while/lstm_cell_539/mulMul*lstm_368/while/lstm_cell_539/Sigmoid_1:y:0lstm_368_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_368/while/lstm_cell_539/ReluRelu+lstm_368/while/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/mul_1Mul(lstm_368/while/lstm_cell_539/Sigmoid:y:0/lstm_368/while/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/add_1AddV2$lstm_368/while/lstm_cell_539/mul:z:0&lstm_368/while/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_368/while/lstm_cell_539/Sigmoid_2Sigmoid+lstm_368/while/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_368/while/lstm_cell_539/Relu_1Relu&lstm_368/while/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_368/while/lstm_cell_539/mul_2Mul*lstm_368/while/lstm_cell_539/Sigmoid_2:y:01lstm_368/while/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_368/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_368_while_placeholder_1lstm_368_while_placeholder&lstm_368/while/lstm_cell_539/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_368/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_368/while/addAddV2lstm_368_while_placeholderlstm_368/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_368/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_368/while/add_1AddV2*lstm_368_while_lstm_368_while_loop_counterlstm_368/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_368/while/IdentityIdentitylstm_368/while/add_1:z:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_1Identity0lstm_368_while_lstm_368_while_maximum_iterations^lstm_368/while/NoOp*
T0*
_output_shapes
: t
lstm_368/while/Identity_2Identitylstm_368/while/add:z:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_3IdentityClstm_368/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_368/while/NoOp*
T0*
_output_shapes
: ?
lstm_368/while/Identity_4Identity&lstm_368/while/lstm_cell_539/mul_2:z:0^lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_368/while/Identity_5Identity&lstm_368/while/lstm_cell_539/add_1:z:0^lstm_368/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_368/while/NoOpNoOp4^lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp3^lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp5^lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_368_while_identity lstm_368/while/Identity:output:0"?
lstm_368_while_identity_1"lstm_368/while/Identity_1:output:0"?
lstm_368_while_identity_2"lstm_368/while/Identity_2:output:0"?
lstm_368_while_identity_3"lstm_368/while/Identity_3:output:0"?
lstm_368_while_identity_4"lstm_368/while/Identity_4:output:0"?
lstm_368_while_identity_5"lstm_368/while/Identity_5:output:0"T
'lstm_368_while_lstm_368_strided_slice_1)lstm_368_while_lstm_368_strided_slice_1_0"~
<lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource>lstm_368_while_lstm_cell_539_biasadd_readvariableop_resource_0"?
=lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource?lstm_368_while_lstm_cell_539_matmul_1_readvariableop_resource_0"|
;lstm_368_while_lstm_cell_539_matmul_readvariableop_resource=lstm_368_while_lstm_cell_539_matmul_readvariableop_resource_0"?
clstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensorelstm_368_while_tensorarrayv2read_tensorlistgetitem_lstm_368_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp3lstm_368/while/lstm_cell_539/BiasAdd/ReadVariableOp2h
2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp2lstm_368/while/lstm_cell_539/MatMul/ReadVariableOp2l
4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp4lstm_368/while/lstm_cell_539/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3263835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_367_layer_call_fn_3264073
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3260778|
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
while_cond_3260899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3260899___redundant_placeholder05
1while_while_cond_3260899___redundant_placeholder15
1while_while_cond_3260899___redundant_placeholder25
1while_while_cond_3260899___redundant_placeholder3
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
while_cond_3264450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264450___redundant_placeholder05
1while_while_cond_3264450___redundant_placeholder15
1while_while_cond_3264450___redundant_placeholder25
1while_while_cond_3264450___redundant_placeholder3
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
0__inference_sequential_122_layer_call_fn_3262592

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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262391o
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
while_body_3264451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3262538
lstm_366_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_366_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3260278o
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
_user_specified_namelstm_366_input
?J
?
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264678

inputs?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3264594*
condR
while_cond_3264593*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265607

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
while_cond_3265209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3265209___redundant_placeholder05
1while_while_cond_3265209___redundant_placeholder15
1while_while_cond_3265209___redundant_placeholder25
1while_while_cond_3265209___redundant_placeholder3
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
while_cond_3264923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264923___redundant_placeholder05
1while_while_cond_3264923___redundant_placeholder15
1while_while_cond_3264923___redundant_placeholder25
1while_while_cond_3264923___redundant_placeholder3
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3260428

inputs(
lstm_cell_537_3260346:	?(
lstm_cell_537_3260348:	d?$
lstm_cell_537_3260350:	?
identity??%lstm_cell_537/StatefulPartitionedCall?while;
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
%lstm_cell_537/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_537_3260346lstm_cell_537_3260348lstm_cell_537_3260350*
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260345n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_537_3260346lstm_cell_537_3260348lstm_cell_537_3260350*
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
while_body_3260359*
condR
while_cond_3260358*K
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
NoOpNoOp&^lstm_cell_537/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_537/StatefulPartitionedCall%lstm_cell_537/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3264593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3264593___redundant_placeholder05
1while_while_cond_3264593___redundant_placeholder15
1while_while_cond_3264593___redundant_placeholder25
1while_while_cond_3264593___redundant_placeholder3
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
*sequential_122_lstm_366_while_cond_3259909L
Hsequential_122_lstm_366_while_sequential_122_lstm_366_while_loop_counterR
Nsequential_122_lstm_366_while_sequential_122_lstm_366_while_maximum_iterations-
)sequential_122_lstm_366_while_placeholder/
+sequential_122_lstm_366_while_placeholder_1/
+sequential_122_lstm_366_while_placeholder_2/
+sequential_122_lstm_366_while_placeholder_3N
Jsequential_122_lstm_366_while_less_sequential_122_lstm_366_strided_slice_1e
asequential_122_lstm_366_while_sequential_122_lstm_366_while_cond_3259909___redundant_placeholder0e
asequential_122_lstm_366_while_sequential_122_lstm_366_while_cond_3259909___redundant_placeholder1e
asequential_122_lstm_366_while_sequential_122_lstm_366_while_cond_3259909___redundant_placeholder2e
asequential_122_lstm_366_while_sequential_122_lstm_366_while_cond_3259909___redundant_placeholder3*
&sequential_122_lstm_366_while_identity
?
"sequential_122/lstm_366/while/LessLess)sequential_122_lstm_366_while_placeholderJsequential_122_lstm_366_while_less_sequential_122_lstm_366_strided_slice_1*
T0*
_output_shapes
: {
&sequential_122/lstm_366/while/IdentityIdentity&sequential_122/lstm_366/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_122_lstm_366_while_identity/sequential_122/lstm_366/while/Identity:output:0*(
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
?W
?
 __inference__traced_save_3265750
file_prefix/
+savev2_dense_122_kernel_read_readvariableop-
)savev2_dense_122_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_366_lstm_cell_366_kernel_read_readvariableopF
Bsavev2_lstm_366_lstm_cell_366_recurrent_kernel_read_readvariableop:
6savev2_lstm_366_lstm_cell_366_bias_read_readvariableop<
8savev2_lstm_367_lstm_cell_367_kernel_read_readvariableopF
Bsavev2_lstm_367_lstm_cell_367_recurrent_kernel_read_readvariableop:
6savev2_lstm_367_lstm_cell_367_bias_read_readvariableop<
8savev2_lstm_368_lstm_cell_368_kernel_read_readvariableopF
Bsavev2_lstm_368_lstm_cell_368_recurrent_kernel_read_readvariableop:
6savev2_lstm_368_lstm_cell_368_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_122_kernel_m_read_readvariableop4
0savev2_adam_dense_122_bias_m_read_readvariableopC
?savev2_adam_lstm_366_lstm_cell_366_kernel_m_read_readvariableopM
Isavev2_adam_lstm_366_lstm_cell_366_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_366_lstm_cell_366_bias_m_read_readvariableopC
?savev2_adam_lstm_367_lstm_cell_367_kernel_m_read_readvariableopM
Isavev2_adam_lstm_367_lstm_cell_367_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_367_lstm_cell_367_bias_m_read_readvariableopC
?savev2_adam_lstm_368_lstm_cell_368_kernel_m_read_readvariableopM
Isavev2_adam_lstm_368_lstm_cell_368_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_368_lstm_cell_368_bias_m_read_readvariableop6
2savev2_adam_dense_122_kernel_v_read_readvariableop4
0savev2_adam_dense_122_bias_v_read_readvariableopC
?savev2_adam_lstm_366_lstm_cell_366_kernel_v_read_readvariableopM
Isavev2_adam_lstm_366_lstm_cell_366_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_366_lstm_cell_366_bias_v_read_readvariableopC
?savev2_adam_lstm_367_lstm_cell_367_kernel_v_read_readvariableopM
Isavev2_adam_lstm_367_lstm_cell_367_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_367_lstm_cell_367_bias_v_read_readvariableopC
?savev2_adam_lstm_368_lstm_cell_368_kernel_v_read_readvariableopM
Isavev2_adam_lstm_368_lstm_cell_368_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_368_lstm_cell_368_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_122_kernel_read_readvariableop)savev2_dense_122_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_366_lstm_cell_366_kernel_read_readvariableopBsavev2_lstm_366_lstm_cell_366_recurrent_kernel_read_readvariableop6savev2_lstm_366_lstm_cell_366_bias_read_readvariableop8savev2_lstm_367_lstm_cell_367_kernel_read_readvariableopBsavev2_lstm_367_lstm_cell_367_recurrent_kernel_read_readvariableop6savev2_lstm_367_lstm_cell_367_bias_read_readvariableop8savev2_lstm_368_lstm_cell_368_kernel_read_readvariableopBsavev2_lstm_368_lstm_cell_368_recurrent_kernel_read_readvariableop6savev2_lstm_368_lstm_cell_368_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_122_kernel_m_read_readvariableop0savev2_adam_dense_122_bias_m_read_readvariableop?savev2_adam_lstm_366_lstm_cell_366_kernel_m_read_readvariableopIsavev2_adam_lstm_366_lstm_cell_366_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_366_lstm_cell_366_bias_m_read_readvariableop?savev2_adam_lstm_367_lstm_cell_367_kernel_m_read_readvariableopIsavev2_adam_lstm_367_lstm_cell_367_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_367_lstm_cell_367_bias_m_read_readvariableop?savev2_adam_lstm_368_lstm_cell_368_kernel_m_read_readvariableopIsavev2_adam_lstm_368_lstm_cell_368_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_368_lstm_cell_368_bias_m_read_readvariableop2savev2_adam_dense_122_kernel_v_read_readvariableop0savev2_adam_dense_122_bias_v_read_readvariableop?savev2_adam_lstm_366_lstm_cell_366_kernel_v_read_readvariableopIsavev2_adam_lstm_366_lstm_cell_366_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_366_lstm_cell_366_bias_v_read_readvariableop?savev2_adam_lstm_367_lstm_cell_367_kernel_v_read_readvariableopIsavev2_adam_lstm_367_lstm_cell_367_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_367_lstm_cell_367_bias_v_read_readvariableop?savev2_adam_lstm_368_lstm_cell_368_kernel_v_read_readvariableopIsavev2_adam_lstm_368_lstm_cell_368_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_368_lstm_cell_368_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3263692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3262239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_537_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_537_matmul_readvariableop_resource:	?G
4while_lstm_cell_537_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_537_biasadd_readvariableop_resource:	???*while/lstm_cell_537/BiasAdd/ReadVariableOp?)while/lstm_cell_537/MatMul/ReadVariableOp?+while/lstm_cell_537/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_537/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_537/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_537/addAddV2$while/lstm_cell_537/MatMul:product:0&while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_537/BiasAddBiasAddwhile/lstm_cell_537/add:z:02while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_537/splitSplit,while/lstm_cell_537/split/split_dim:output:0$while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_537/SigmoidSigmoid"while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_1Sigmoid"while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mulMul!while/lstm_cell_537/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_537/ReluRelu"while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_1Mulwhile/lstm_cell_537/Sigmoid:y:0&while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/add_1AddV2while/lstm_cell_537/mul:z:0while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_537/Sigmoid_2Sigmoid"while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_537/Relu_1Reluwhile/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_537/mul_2Mul!while/lstm_cell_537/Sigmoid_2:y:0(while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_537/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_537/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_537/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_537/BiasAdd/ReadVariableOp*^while/lstm_cell_537/MatMul/ReadVariableOp,^while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_537_biasadd_readvariableop_resource5while_lstm_cell_537_biasadd_readvariableop_resource_0"n
4while_lstm_cell_537_matmul_1_readvariableop_resource6while_lstm_cell_537_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_537_matmul_readvariableop_resource4while_lstm_cell_537_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_537/BiasAdd/ReadVariableOp*while/lstm_cell_537/BiasAdd/ReadVariableOp2V
)while/lstm_cell_537/MatMul/ReadVariableOp)while/lstm_cell_537/MatMul/ReadVariableOp2Z
+while/lstm_cell_537/MatMul_1/ReadVariableOp+while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260345

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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265411

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

lstm_366_while_body_3262651.
*lstm_366_while_lstm_366_while_loop_counter4
0lstm_366_while_lstm_366_while_maximum_iterations
lstm_366_while_placeholder 
lstm_366_while_placeholder_1 
lstm_366_while_placeholder_2 
lstm_366_while_placeholder_3-
)lstm_366_while_lstm_366_strided_slice_1_0i
elstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0:	?R
?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?M
>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0:	?
lstm_366_while_identity
lstm_366_while_identity_1
lstm_366_while_identity_2
lstm_366_while_identity_3
lstm_366_while_identity_4
lstm_366_while_identity_5+
'lstm_366_while_lstm_366_strided_slice_1g
clstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensorN
;lstm_366_while_lstm_cell_537_matmul_readvariableop_resource:	?P
=lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource:	d?K
<lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource:	???3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp?2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp?4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp?
@lstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_366/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0lstm_366_while_placeholderIlstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_366/while/lstm_cell_537/MatMulMatMul9lstm_366/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_366/while/lstm_cell_537/MatMul_1MatMullstm_366_while_placeholder_2<lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_366/while/lstm_cell_537/addAddV2-lstm_366/while/lstm_cell_537/MatMul:product:0/lstm_366/while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_366/while/lstm_cell_537/BiasAddBiasAdd$lstm_366/while/lstm_cell_537/add:z:0;lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_366/while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_366/while/lstm_cell_537/splitSplit5lstm_366/while/lstm_cell_537/split/split_dim:output:0-lstm_366/while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_366/while/lstm_cell_537/SigmoidSigmoid+lstm_366/while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_366/while/lstm_cell_537/Sigmoid_1Sigmoid+lstm_366/while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_366/while/lstm_cell_537/mulMul*lstm_366/while/lstm_cell_537/Sigmoid_1:y:0lstm_366_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_366/while/lstm_cell_537/ReluRelu+lstm_366/while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/mul_1Mul(lstm_366/while/lstm_cell_537/Sigmoid:y:0/lstm_366/while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/add_1AddV2$lstm_366/while/lstm_cell_537/mul:z:0&lstm_366/while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_366/while/lstm_cell_537/Sigmoid_2Sigmoid+lstm_366/while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_366/while/lstm_cell_537/Relu_1Relu&lstm_366/while/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_366/while/lstm_cell_537/mul_2Mul*lstm_366/while/lstm_cell_537/Sigmoid_2:y:01lstm_366/while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_366/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_366_while_placeholder_1lstm_366_while_placeholder&lstm_366/while/lstm_cell_537/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_366/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_366/while/addAddV2lstm_366_while_placeholderlstm_366/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_366/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_366/while/add_1AddV2*lstm_366_while_lstm_366_while_loop_counterlstm_366/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_366/while/IdentityIdentitylstm_366/while/add_1:z:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_1Identity0lstm_366_while_lstm_366_while_maximum_iterations^lstm_366/while/NoOp*
T0*
_output_shapes
: t
lstm_366/while/Identity_2Identitylstm_366/while/add:z:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_3IdentityClstm_366/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_366/while/NoOp*
T0*
_output_shapes
: ?
lstm_366/while/Identity_4Identity&lstm_366/while/lstm_cell_537/mul_2:z:0^lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_366/while/Identity_5Identity&lstm_366/while/lstm_cell_537/add_1:z:0^lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_366/while/NoOpNoOp4^lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp3^lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp5^lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_366_while_identity lstm_366/while/Identity:output:0"?
lstm_366_while_identity_1"lstm_366/while/Identity_1:output:0"?
lstm_366_while_identity_2"lstm_366/while/Identity_2:output:0"?
lstm_366_while_identity_3"lstm_366/while/Identity_3:output:0"?
lstm_366_while_identity_4"lstm_366/while/Identity_4:output:0"?
lstm_366_while_identity_5"lstm_366/while/Identity_5:output:0"T
'lstm_366_while_lstm_366_strided_slice_1)lstm_366_while_lstm_366_strided_slice_1_0"~
<lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource>lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0"?
=lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource?lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0"|
;lstm_366_while_lstm_cell_537_matmul_readvariableop_resource=lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0"?
clstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensorelstm_366_while_tensorarrayv2read_tensorlistgetitem_lstm_366_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp3lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp2h
2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp2lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp2l
4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp4lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3260359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_537_3260383_0:	?0
while_lstm_cell_537_3260385_0:	d?,
while_lstm_cell_537_3260387_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_537_3260383:	?.
while_lstm_cell_537_3260385:	d?*
while_lstm_cell_537_3260387:	???+while/lstm_cell_537/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_537/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_537_3260383_0while_lstm_cell_537_3260385_0while_lstm_cell_537_3260387_0*
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3260345?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_537/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_537/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_537/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_537/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_537_3260383while_lstm_cell_537_3260383_0"<
while_lstm_cell_537_3260385while_lstm_cell_537_3260385_0"<
while_lstm_cell_537_3260387while_lstm_cell_537_3260387_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_537/StatefulPartitionedCall+while/lstm_cell_537/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263019

inputsH
5lstm_366_lstm_cell_537_matmul_readvariableop_resource:	?J
7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource:	d?E
6lstm_366_lstm_cell_537_biasadd_readvariableop_resource:	?H
5lstm_367_lstm_cell_538_matmul_readvariableop_resource:	d?J
7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource:	2?E
6lstm_367_lstm_cell_538_biasadd_readvariableop_resource:	?G
5lstm_368_lstm_cell_539_matmul_readvariableop_resource:2(I
7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource:
(D
6lstm_368_lstm_cell_539_biasadd_readvariableop_resource:(:
(dense_122_matmul_readvariableop_resource:
7
)dense_122_biasadd_readvariableop_resource:
identity?? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp?-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp?,lstm_366/lstm_cell_537/MatMul/ReadVariableOp?.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp?lstm_366/while?-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp?,lstm_367/lstm_cell_538/MatMul/ReadVariableOp?.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp?lstm_367/while?-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp?,lstm_368/lstm_cell_539/MatMul/ReadVariableOp?.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp?lstm_368/whileD
lstm_366/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_366/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_366/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_366/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_sliceStridedSlicelstm_366/Shape:output:0%lstm_366/strided_slice/stack:output:0'lstm_366/strided_slice/stack_1:output:0'lstm_366/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_366/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_366/zeros/packedPacklstm_366/strided_slice:output:0 lstm_366/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_366/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_366/zerosFilllstm_366/zeros/packed:output:0lstm_366/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_366/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_366/zeros_1/packedPacklstm_366/strided_slice:output:0"lstm_366/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_366/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_366/zeros_1Fill lstm_366/zeros_1/packed:output:0lstm_366/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_366/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_366/transpose	Transposeinputs lstm_366/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_366/Shape_1Shapelstm_366/transpose:y:0*
T0*
_output_shapes
:h
lstm_366/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_366/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_1StridedSlicelstm_366/Shape_1:output:0'lstm_366/strided_slice_1/stack:output:0)lstm_366/strided_slice_1/stack_1:output:0)lstm_366/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_366/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_366/TensorArrayV2TensorListReserve-lstm_366/TensorArrayV2/element_shape:output:0!lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_366/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_366/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_366/transpose:y:0Glstm_366/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_366/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_366/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_2StridedSlicelstm_366/transpose:y:0'lstm_366/strided_slice_2/stack:output:0)lstm_366/strided_slice_2/stack_1:output:0)lstm_366/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_366/lstm_cell_537/MatMul/ReadVariableOpReadVariableOp5lstm_366_lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_366/lstm_cell_537/MatMulMatMul!lstm_366/strided_slice_2:output:04lstm_366/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_366/lstm_cell_537/MatMul_1MatMullstm_366/zeros:output:06lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_366/lstm_cell_537/addAddV2'lstm_366/lstm_cell_537/MatMul:product:0)lstm_366/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp6lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_366/lstm_cell_537/BiasAddBiasAddlstm_366/lstm_cell_537/add:z:05lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_366/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_366/lstm_cell_537/splitSplit/lstm_366/lstm_cell_537/split/split_dim:output:0'lstm_366/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_366/lstm_cell_537/SigmoidSigmoid%lstm_366/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_366/lstm_cell_537/Sigmoid_1Sigmoid%lstm_366/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mulMul$lstm_366/lstm_cell_537/Sigmoid_1:y:0lstm_366/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_366/lstm_cell_537/ReluRelu%lstm_366/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mul_1Mul"lstm_366/lstm_cell_537/Sigmoid:y:0)lstm_366/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/add_1AddV2lstm_366/lstm_cell_537/mul:z:0 lstm_366/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_366/lstm_cell_537/Sigmoid_2Sigmoid%lstm_366/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_366/lstm_cell_537/Relu_1Relu lstm_366/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_366/lstm_cell_537/mul_2Mul$lstm_366/lstm_cell_537/Sigmoid_2:y:0+lstm_366/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_366/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_366/TensorArrayV2_1TensorListReserve/lstm_366/TensorArrayV2_1/element_shape:output:0!lstm_366/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_366/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_366/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_366/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_366/whileWhile$lstm_366/while/loop_counter:output:0*lstm_366/while/maximum_iterations:output:0lstm_366/time:output:0!lstm_366/TensorArrayV2_1:handle:0lstm_366/zeros:output:0lstm_366/zeros_1:output:0!lstm_366/strided_slice_1:output:0@lstm_366/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_366_lstm_cell_537_matmul_readvariableop_resource7lstm_366_lstm_cell_537_matmul_1_readvariableop_resource6lstm_366_lstm_cell_537_biasadd_readvariableop_resource*
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
lstm_366_while_body_3262651*'
condR
lstm_366_while_cond_3262650*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_366/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_366/TensorArrayV2Stack/TensorListStackTensorListStacklstm_366/while:output:3Blstm_366/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_366/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_366/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_366/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_366/strided_slice_3StridedSlice4lstm_366/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_366/strided_slice_3/stack:output:0)lstm_366/strided_slice_3/stack_1:output:0)lstm_366/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_366/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_366/transpose_1	Transpose4lstm_366/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_366/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_366/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_367/ShapeShapelstm_366/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_367/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_367/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_367/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_sliceStridedSlicelstm_367/Shape:output:0%lstm_367/strided_slice/stack:output:0'lstm_367/strided_slice/stack_1:output:0'lstm_367/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_367/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_367/zeros/packedPacklstm_367/strided_slice:output:0 lstm_367/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_367/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_367/zerosFilllstm_367/zeros/packed:output:0lstm_367/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_367/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_367/zeros_1/packedPacklstm_367/strided_slice:output:0"lstm_367/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_367/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_367/zeros_1Fill lstm_367/zeros_1/packed:output:0lstm_367/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_367/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_367/transpose	Transposelstm_366/transpose_1:y:0 lstm_367/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_367/Shape_1Shapelstm_367/transpose:y:0*
T0*
_output_shapes
:h
lstm_367/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_367/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_1StridedSlicelstm_367/Shape_1:output:0'lstm_367/strided_slice_1/stack:output:0)lstm_367/strided_slice_1/stack_1:output:0)lstm_367/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_367/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_367/TensorArrayV2TensorListReserve-lstm_367/TensorArrayV2/element_shape:output:0!lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_367/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_367/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_367/transpose:y:0Glstm_367/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_367/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_367/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_2StridedSlicelstm_367/transpose:y:0'lstm_367/strided_slice_2/stack:output:0)lstm_367/strided_slice_2/stack_1:output:0)lstm_367/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_367/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp5lstm_367_lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_367/lstm_cell_538/MatMulMatMul!lstm_367/strided_slice_2:output:04lstm_367/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_367/lstm_cell_538/MatMul_1MatMullstm_367/zeros:output:06lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_367/lstm_cell_538/addAddV2'lstm_367/lstm_cell_538/MatMul:product:0)lstm_367/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp6lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_367/lstm_cell_538/BiasAddBiasAddlstm_367/lstm_cell_538/add:z:05lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_367/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_367/lstm_cell_538/splitSplit/lstm_367/lstm_cell_538/split/split_dim:output:0'lstm_367/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_367/lstm_cell_538/SigmoidSigmoid%lstm_367/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_367/lstm_cell_538/Sigmoid_1Sigmoid%lstm_367/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mulMul$lstm_367/lstm_cell_538/Sigmoid_1:y:0lstm_367/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_367/lstm_cell_538/ReluRelu%lstm_367/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mul_1Mul"lstm_367/lstm_cell_538/Sigmoid:y:0)lstm_367/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/add_1AddV2lstm_367/lstm_cell_538/mul:z:0 lstm_367/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_367/lstm_cell_538/Sigmoid_2Sigmoid%lstm_367/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_367/lstm_cell_538/Relu_1Relu lstm_367/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_367/lstm_cell_538/mul_2Mul$lstm_367/lstm_cell_538/Sigmoid_2:y:0+lstm_367/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_367/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_367/TensorArrayV2_1TensorListReserve/lstm_367/TensorArrayV2_1/element_shape:output:0!lstm_367/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_367/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_367/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_367/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_367/whileWhile$lstm_367/while/loop_counter:output:0*lstm_367/while/maximum_iterations:output:0lstm_367/time:output:0!lstm_367/TensorArrayV2_1:handle:0lstm_367/zeros:output:0lstm_367/zeros_1:output:0!lstm_367/strided_slice_1:output:0@lstm_367/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_367_lstm_cell_538_matmul_readvariableop_resource7lstm_367_lstm_cell_538_matmul_1_readvariableop_resource6lstm_367_lstm_cell_538_biasadd_readvariableop_resource*
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
lstm_367_while_body_3262790*'
condR
lstm_367_while_cond_3262789*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_367/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_367/TensorArrayV2Stack/TensorListStackTensorListStacklstm_367/while:output:3Blstm_367/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_367/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_367/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_367/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_367/strided_slice_3StridedSlice4lstm_367/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_367/strided_slice_3/stack:output:0)lstm_367/strided_slice_3/stack_1:output:0)lstm_367/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_367/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_367/transpose_1	Transpose4lstm_367/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_367/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_367/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_368/ShapeShapelstm_367/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_368/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_368/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_368/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_sliceStridedSlicelstm_368/Shape:output:0%lstm_368/strided_slice/stack:output:0'lstm_368/strided_slice/stack_1:output:0'lstm_368/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_368/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_368/zeros/packedPacklstm_368/strided_slice:output:0 lstm_368/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_368/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_368/zerosFilllstm_368/zeros/packed:output:0lstm_368/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_368/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_368/zeros_1/packedPacklstm_368/strided_slice:output:0"lstm_368/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_368/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_368/zeros_1Fill lstm_368/zeros_1/packed:output:0lstm_368/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_368/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_368/transpose	Transposelstm_367/transpose_1:y:0 lstm_368/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_368/Shape_1Shapelstm_368/transpose:y:0*
T0*
_output_shapes
:h
lstm_368/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_368/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_1StridedSlicelstm_368/Shape_1:output:0'lstm_368/strided_slice_1/stack:output:0)lstm_368/strided_slice_1/stack_1:output:0)lstm_368/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_368/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_368/TensorArrayV2TensorListReserve-lstm_368/TensorArrayV2/element_shape:output:0!lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_368/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_368/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_368/transpose:y:0Glstm_368/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_368/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_368/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_2StridedSlicelstm_368/transpose:y:0'lstm_368/strided_slice_2/stack:output:0)lstm_368/strided_slice_2/stack_1:output:0)lstm_368/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_368/lstm_cell_539/MatMul/ReadVariableOpReadVariableOp5lstm_368_lstm_cell_539_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_368/lstm_cell_539/MatMulMatMul!lstm_368/strided_slice_2:output:04lstm_368/lstm_cell_539/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOpReadVariableOp7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_368/lstm_cell_539/MatMul_1MatMullstm_368/zeros:output:06lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_368/lstm_cell_539/addAddV2'lstm_368/lstm_cell_539/MatMul:product:0)lstm_368/lstm_cell_539/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOpReadVariableOp6lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_368/lstm_cell_539/BiasAddBiasAddlstm_368/lstm_cell_539/add:z:05lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_368/lstm_cell_539/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_368/lstm_cell_539/splitSplit/lstm_368/lstm_cell_539/split/split_dim:output:0'lstm_368/lstm_cell_539/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_368/lstm_cell_539/SigmoidSigmoid%lstm_368/lstm_cell_539/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_368/lstm_cell_539/Sigmoid_1Sigmoid%lstm_368/lstm_cell_539/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mulMul$lstm_368/lstm_cell_539/Sigmoid_1:y:0lstm_368/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_368/lstm_cell_539/ReluRelu%lstm_368/lstm_cell_539/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mul_1Mul"lstm_368/lstm_cell_539/Sigmoid:y:0)lstm_368/lstm_cell_539/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/add_1AddV2lstm_368/lstm_cell_539/mul:z:0 lstm_368/lstm_cell_539/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_368/lstm_cell_539/Sigmoid_2Sigmoid%lstm_368/lstm_cell_539/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_368/lstm_cell_539/Relu_1Relu lstm_368/lstm_cell_539/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_368/lstm_cell_539/mul_2Mul$lstm_368/lstm_cell_539/Sigmoid_2:y:0+lstm_368/lstm_cell_539/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_368/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_368/TensorArrayV2_1TensorListReserve/lstm_368/TensorArrayV2_1/element_shape:output:0!lstm_368/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_368/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_368/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_368/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_368/whileWhile$lstm_368/while/loop_counter:output:0*lstm_368/while/maximum_iterations:output:0lstm_368/time:output:0!lstm_368/TensorArrayV2_1:handle:0lstm_368/zeros:output:0lstm_368/zeros_1:output:0!lstm_368/strided_slice_1:output:0@lstm_368/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_368_lstm_cell_539_matmul_readvariableop_resource7lstm_368_lstm_cell_539_matmul_1_readvariableop_resource6lstm_368_lstm_cell_539_biasadd_readvariableop_resource*
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
lstm_368_while_body_3262929*'
condR
lstm_368_while_cond_3262928*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_368/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_368/TensorArrayV2Stack/TensorListStackTensorListStacklstm_368/while:output:3Blstm_368/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_368/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_368/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_368/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_368/strided_slice_3StridedSlice4lstm_368/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_368/strided_slice_3/stack:output:0)lstm_368/strided_slice_3/stack_1:output:0)lstm_368/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_368/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_368/transpose_1	Transpose4lstm_368/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_368/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_368/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_122/MatMulMatMul!lstm_368/strided_slice_3:output:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_122/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp.^lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp-^lstm_366/lstm_cell_537/MatMul/ReadVariableOp/^lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp^lstm_366/while.^lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp-^lstm_367/lstm_cell_538/MatMul/ReadVariableOp/^lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp^lstm_367/while.^lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp-^lstm_368/lstm_cell_539/MatMul/ReadVariableOp/^lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp^lstm_368/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp2^
-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp-lstm_366/lstm_cell_537/BiasAdd/ReadVariableOp2\
,lstm_366/lstm_cell_537/MatMul/ReadVariableOp,lstm_366/lstm_cell_537/MatMul/ReadVariableOp2`
.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp.lstm_366/lstm_cell_537/MatMul_1/ReadVariableOp2 
lstm_366/whilelstm_366/while2^
-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp-lstm_367/lstm_cell_538/BiasAdd/ReadVariableOp2\
,lstm_367/lstm_cell_538/MatMul/ReadVariableOp,lstm_367/lstm_cell_538/MatMul/ReadVariableOp2`
.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp.lstm_367/lstm_cell_538/MatMul_1/ReadVariableOp2 
lstm_367/whilelstm_367/while2^
-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp-lstm_368/lstm_cell_539/BiasAdd/ReadVariableOp2\
,lstm_368/lstm_cell_539/MatMul/ReadVariableOp,lstm_368/lstm_cell_539/MatMul/ReadVariableOp2`
.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp.lstm_368/lstm_cell_539/MatMul_1/ReadVariableOp2 
lstm_368/whilelstm_368/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262473
lstm_366_input#
lstm_366_3262446:	?#
lstm_366_3262448:	d?
lstm_366_3262450:	?#
lstm_367_3262453:	d?#
lstm_367_3262455:	2?
lstm_367_3262457:	?"
lstm_368_3262460:2("
lstm_368_3262462:
(
lstm_368_3262464:(#
dense_122_3262467:

dense_122_3262469:
identity??!dense_122/StatefulPartitionedCall? lstm_366/StatefulPartitionedCall? lstm_367/StatefulPartitionedCall? lstm_368/StatefulPartitionedCall?
 lstm_366/StatefulPartitionedCallStatefulPartitionedCalllstm_366_inputlstm_366_3262446lstm_366_3262448lstm_366_3262450*
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3261477?
 lstm_367/StatefulPartitionedCallStatefulPartitionedCall)lstm_366/StatefulPartitionedCall:output:0lstm_367_3262453lstm_367_3262455lstm_367_3262457*
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3261627?
 lstm_368/StatefulPartitionedCallStatefulPartitionedCall)lstm_367/StatefulPartitionedCall:output:0lstm_368_3262460lstm_368_3262462lstm_368_3262464*
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261777?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_368/StatefulPartitionedCall:output:0dense_122_3262467dense_122_3262469*
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
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795y
IdentityIdentity*dense_122/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_122/StatefulPartitionedCall!^lstm_366/StatefulPartitionedCall!^lstm_367/StatefulPartitionedCall!^lstm_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2D
 lstm_366/StatefulPartitionedCall lstm_366/StatefulPartitionedCall2D
 lstm_367/StatefulPartitionedCall lstm_367/StatefulPartitionedCall2D
 lstm_368/StatefulPartitionedCall lstm_368/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_366_input
?K
?
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263776
inputs_0?
,lstm_cell_537_matmul_readvariableop_resource:	?A
.lstm_cell_537_matmul_1_readvariableop_resource:	d?<
-lstm_cell_537_biasadd_readvariableop_resource:	?
identity??$lstm_cell_537/BiasAdd/ReadVariableOp?#lstm_cell_537/MatMul/ReadVariableOp?%lstm_cell_537/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_537/MatMul/ReadVariableOpReadVariableOp,lstm_cell_537_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_537/MatMulMatMulstrided_slice_2:output:0+lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_537_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_537/MatMul_1MatMulzeros:output:0-lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_537/addAddV2lstm_cell_537/MatMul:product:0 lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_537_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_537/BiasAddBiasAddlstm_cell_537/add:z:0,lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_537/splitSplit&lstm_cell_537/split/split_dim:output:0lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_537/SigmoidSigmoidlstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_1Sigmoidlstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_537/mulMullstm_cell_537/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_537/ReluRelulstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_1Mullstm_cell_537/Sigmoid:y:0 lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_537/add_1AddV2lstm_cell_537/mul:z:0lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_537/Sigmoid_2Sigmoidlstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_537/Relu_1Relulstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_537/mul_2Mullstm_cell_537/Sigmoid_2:y:0"lstm_cell_537/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_537_matmul_readvariableop_resource.lstm_cell_537_matmul_1_readvariableop_resource-lstm_cell_537_biasadd_readvariableop_resource*
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
while_body_3263692*
condR
while_cond_3263691*K
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
NoOpNoOp%^lstm_cell_537/BiasAdd/ReadVariableOp$^lstm_cell_537/MatMul/ReadVariableOp&^lstm_cell_537/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_537/BiasAdd/ReadVariableOp$lstm_cell_537/BiasAdd/ReadVariableOp2J
#lstm_cell_537/MatMul/ReadVariableOp#lstm_cell_537/MatMul/ReadVariableOp2N
%lstm_cell_537/MatMul_1/ReadVariableOp%lstm_cell_537/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3263977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3263977___redundant_placeholder05
1while_while_cond_3263977___redundant_placeholder15
1while_while_cond_3263977___redundant_placeholder25
1while_while_cond_3263977___redundant_placeholder3
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3261045

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

?
lstm_368_while_cond_3262928.
*lstm_368_while_lstm_368_while_loop_counter4
0lstm_368_while_lstm_368_while_maximum_iterations
lstm_368_while_placeholder 
lstm_368_while_placeholder_1 
lstm_368_while_placeholder_2 
lstm_368_while_placeholder_30
,lstm_368_while_less_lstm_368_strided_slice_1G
Clstm_368_while_lstm_368_while_cond_3262928___redundant_placeholder0G
Clstm_368_while_lstm_368_while_cond_3262928___redundant_placeholder1G
Clstm_368_while_lstm_368_while_cond_3262928___redundant_placeholder2G
Clstm_368_while_lstm_368_while_cond_3262928___redundant_placeholder3
lstm_368_while_identity
?
lstm_368/while/LessLesslstm_368_while_placeholder,lstm_368_while_less_lstm_368_strided_slice_1*
T0*
_output_shapes
: ]
lstm_368/while/IdentityIdentitylstm_368/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_368_while_identity lstm_368/while/Identity:output:0*(
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
while_cond_3263548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3263548___redundant_placeholder05
1while_while_cond_3263548___redundant_placeholder15
1while_while_cond_3263548___redundant_placeholder25
1while_while_cond_3263548___redundant_placeholder3
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
?T
?
*sequential_122_lstm_366_while_body_3259910L
Hsequential_122_lstm_366_while_sequential_122_lstm_366_while_loop_counterR
Nsequential_122_lstm_366_while_sequential_122_lstm_366_while_maximum_iterations-
)sequential_122_lstm_366_while_placeholder/
+sequential_122_lstm_366_while_placeholder_1/
+sequential_122_lstm_366_while_placeholder_2/
+sequential_122_lstm_366_while_placeholder_3K
Gsequential_122_lstm_366_while_sequential_122_lstm_366_strided_slice_1_0?
?sequential_122_lstm_366_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_366_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_122_lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0:	?a
Nsequential_122_lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0:	d?\
Msequential_122_lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0:	?*
&sequential_122_lstm_366_while_identity,
(sequential_122_lstm_366_while_identity_1,
(sequential_122_lstm_366_while_identity_2,
(sequential_122_lstm_366_while_identity_3,
(sequential_122_lstm_366_while_identity_4,
(sequential_122_lstm_366_while_identity_5I
Esequential_122_lstm_366_while_sequential_122_lstm_366_strided_slice_1?
?sequential_122_lstm_366_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_366_tensorarrayunstack_tensorlistfromtensor]
Jsequential_122_lstm_366_while_lstm_cell_537_matmul_readvariableop_resource:	?_
Lsequential_122_lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource:	d?Z
Ksequential_122_lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource:	???Bsequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp?Asequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp?Csequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp?
Osequential_122/lstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_122/lstm_366/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_122_lstm_366_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_366_tensorarrayunstack_tensorlistfromtensor_0)sequential_122_lstm_366_while_placeholderXsequential_122/lstm_366/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOpReadVariableOpLsequential_122_lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_122/lstm_366/while/lstm_cell_537/MatMulMatMulHsequential_122/lstm_366/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOpReadVariableOpNsequential_122_lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_122/lstm_366/while/lstm_cell_537/MatMul_1MatMul+sequential_122_lstm_366_while_placeholder_2Ksequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_122/lstm_366/while/lstm_cell_537/addAddV2<sequential_122/lstm_366/while/lstm_cell_537/MatMul:product:0>sequential_122/lstm_366/while/lstm_cell_537/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOpReadVariableOpMsequential_122_lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_122/lstm_366/while/lstm_cell_537/BiasAddBiasAdd3sequential_122/lstm_366/while/lstm_cell_537/add:z:0Jsequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_122/lstm_366/while/lstm_cell_537/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_122/lstm_366/while/lstm_cell_537/splitSplitDsequential_122/lstm_366/while/lstm_cell_537/split/split_dim:output:0<sequential_122/lstm_366/while/lstm_cell_537/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_122/lstm_366/while/lstm_cell_537/SigmoidSigmoid:sequential_122/lstm_366/while/lstm_cell_537/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_122/lstm_366/while/lstm_cell_537/Sigmoid_1Sigmoid:sequential_122/lstm_366/while/lstm_cell_537/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_122/lstm_366/while/lstm_cell_537/mulMul9sequential_122/lstm_366/while/lstm_cell_537/Sigmoid_1:y:0+sequential_122_lstm_366_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_122/lstm_366/while/lstm_cell_537/ReluRelu:sequential_122/lstm_366/while/lstm_cell_537/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_122/lstm_366/while/lstm_cell_537/mul_1Mul7sequential_122/lstm_366/while/lstm_cell_537/Sigmoid:y:0>sequential_122/lstm_366/while/lstm_cell_537/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_122/lstm_366/while/lstm_cell_537/add_1AddV23sequential_122/lstm_366/while/lstm_cell_537/mul:z:05sequential_122/lstm_366/while/lstm_cell_537/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_122/lstm_366/while/lstm_cell_537/Sigmoid_2Sigmoid:sequential_122/lstm_366/while/lstm_cell_537/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_122/lstm_366/while/lstm_cell_537/Relu_1Relu5sequential_122/lstm_366/while/lstm_cell_537/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_122/lstm_366/while/lstm_cell_537/mul_2Mul9sequential_122/lstm_366/while/lstm_cell_537/Sigmoid_2:y:0@sequential_122/lstm_366/while/lstm_cell_537/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_122/lstm_366/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_122_lstm_366_while_placeholder_1)sequential_122_lstm_366_while_placeholder5sequential_122/lstm_366/while/lstm_cell_537/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_122/lstm_366/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_122/lstm_366/while/addAddV2)sequential_122_lstm_366_while_placeholder,sequential_122/lstm_366/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_122/lstm_366/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_122/lstm_366/while/add_1AddV2Hsequential_122_lstm_366_while_sequential_122_lstm_366_while_loop_counter.sequential_122/lstm_366/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_122/lstm_366/while/IdentityIdentity'sequential_122/lstm_366/while/add_1:z:0#^sequential_122/lstm_366/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_366/while/Identity_1IdentityNsequential_122_lstm_366_while_sequential_122_lstm_366_while_maximum_iterations#^sequential_122/lstm_366/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_366/while/Identity_2Identity%sequential_122/lstm_366/while/add:z:0#^sequential_122/lstm_366/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_366/while/Identity_3IdentityRsequential_122/lstm_366/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_122/lstm_366/while/NoOp*
T0*
_output_shapes
: ?
(sequential_122/lstm_366/while/Identity_4Identity5sequential_122/lstm_366/while/lstm_cell_537/mul_2:z:0#^sequential_122/lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_122/lstm_366/while/Identity_5Identity5sequential_122/lstm_366/while/lstm_cell_537/add_1:z:0#^sequential_122/lstm_366/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_122/lstm_366/while/NoOpNoOpC^sequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOpB^sequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOpD^sequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_122_lstm_366_while_identity/sequential_122/lstm_366/while/Identity:output:0"]
(sequential_122_lstm_366_while_identity_11sequential_122/lstm_366/while/Identity_1:output:0"]
(sequential_122_lstm_366_while_identity_21sequential_122/lstm_366/while/Identity_2:output:0"]
(sequential_122_lstm_366_while_identity_31sequential_122/lstm_366/while/Identity_3:output:0"]
(sequential_122_lstm_366_while_identity_41sequential_122/lstm_366/while/Identity_4:output:0"]
(sequential_122_lstm_366_while_identity_51sequential_122/lstm_366/while/Identity_5:output:0"?
Ksequential_122_lstm_366_while_lstm_cell_537_biasadd_readvariableop_resourceMsequential_122_lstm_366_while_lstm_cell_537_biasadd_readvariableop_resource_0"?
Lsequential_122_lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resourceNsequential_122_lstm_366_while_lstm_cell_537_matmul_1_readvariableop_resource_0"?
Jsequential_122_lstm_366_while_lstm_cell_537_matmul_readvariableop_resourceLsequential_122_lstm_366_while_lstm_cell_537_matmul_readvariableop_resource_0"?
Esequential_122_lstm_366_while_sequential_122_lstm_366_strided_slice_1Gsequential_122_lstm_366_while_sequential_122_lstm_366_strided_slice_1_0"?
?sequential_122_lstm_366_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_366_tensorarrayunstack_tensorlistfromtensor?sequential_122_lstm_366_while_tensorarrayv2read_tensorlistgetitem_sequential_122_lstm_366_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOpBsequential_122/lstm_366/while/lstm_cell_537/BiasAdd/ReadVariableOp2?
Asequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOpAsequential_122/lstm_366/while/lstm_cell_537/MatMul/ReadVariableOp2?
Csequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOpCsequential_122/lstm_366/while/lstm_cell_537/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_367_while_body_3262790.
*lstm_367_while_lstm_367_while_loop_counter4
0lstm_367_while_lstm_367_while_maximum_iterations
lstm_367_while_placeholder 
lstm_367_while_placeholder_1 
lstm_367_while_placeholder_2 
lstm_367_while_placeholder_3-
)lstm_367_while_lstm_367_strided_slice_1_0i
elstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0:	d?R
?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?M
>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
lstm_367_while_identity
lstm_367_while_identity_1
lstm_367_while_identity_2
lstm_367_while_identity_3
lstm_367_while_identity_4
lstm_367_while_identity_5+
'lstm_367_while_lstm_367_strided_slice_1g
clstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensorN
;lstm_367_while_lstm_cell_538_matmul_readvariableop_resource:	d?P
=lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource:	2?K
<lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource:	???3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp?2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp?4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp?
@lstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_367/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0lstm_367_while_placeholderIlstm_367/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_367/while/lstm_cell_538/MatMulMatMul9lstm_367/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_367/while/lstm_cell_538/MatMul_1MatMullstm_367_while_placeholder_2<lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_367/while/lstm_cell_538/addAddV2-lstm_367/while/lstm_cell_538/MatMul:product:0/lstm_367/while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_367/while/lstm_cell_538/BiasAddBiasAdd$lstm_367/while/lstm_cell_538/add:z:0;lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_367/while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_367/while/lstm_cell_538/splitSplit5lstm_367/while/lstm_cell_538/split/split_dim:output:0-lstm_367/while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_367/while/lstm_cell_538/SigmoidSigmoid+lstm_367/while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_367/while/lstm_cell_538/Sigmoid_1Sigmoid+lstm_367/while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_367/while/lstm_cell_538/mulMul*lstm_367/while/lstm_cell_538/Sigmoid_1:y:0lstm_367_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_367/while/lstm_cell_538/ReluRelu+lstm_367/while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/mul_1Mul(lstm_367/while/lstm_cell_538/Sigmoid:y:0/lstm_367/while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/add_1AddV2$lstm_367/while/lstm_cell_538/mul:z:0&lstm_367/while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_367/while/lstm_cell_538/Sigmoid_2Sigmoid+lstm_367/while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_367/while/lstm_cell_538/Relu_1Relu&lstm_367/while/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_367/while/lstm_cell_538/mul_2Mul*lstm_367/while/lstm_cell_538/Sigmoid_2:y:01lstm_367/while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_367/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_367_while_placeholder_1lstm_367_while_placeholder&lstm_367/while/lstm_cell_538/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_367/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_367/while/addAddV2lstm_367_while_placeholderlstm_367/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_367/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_367/while/add_1AddV2*lstm_367_while_lstm_367_while_loop_counterlstm_367/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_367/while/IdentityIdentitylstm_367/while/add_1:z:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_1Identity0lstm_367_while_lstm_367_while_maximum_iterations^lstm_367/while/NoOp*
T0*
_output_shapes
: t
lstm_367/while/Identity_2Identitylstm_367/while/add:z:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_3IdentityClstm_367/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_367/while/NoOp*
T0*
_output_shapes
: ?
lstm_367/while/Identity_4Identity&lstm_367/while/lstm_cell_538/mul_2:z:0^lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_367/while/Identity_5Identity&lstm_367/while/lstm_cell_538/add_1:z:0^lstm_367/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_367/while/NoOpNoOp4^lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp3^lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp5^lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_367_while_identity lstm_367/while/Identity:output:0"?
lstm_367_while_identity_1"lstm_367/while/Identity_1:output:0"?
lstm_367_while_identity_2"lstm_367/while/Identity_2:output:0"?
lstm_367_while_identity_3"lstm_367/while/Identity_3:output:0"?
lstm_367_while_identity_4"lstm_367/while/Identity_4:output:0"?
lstm_367_while_identity_5"lstm_367/while/Identity_5:output:0"T
'lstm_367_while_lstm_367_strided_slice_1)lstm_367_while_lstm_367_strided_slice_1_0"~
<lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource>lstm_367_while_lstm_cell_538_biasadd_readvariableop_resource_0"?
=lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource?lstm_367_while_lstm_cell_538_matmul_1_readvariableop_resource_0"|
;lstm_367_while_lstm_cell_538_matmul_readvariableop_resource=lstm_367_while_lstm_cell_538_matmul_readvariableop_resource_0"?
clstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensorelstm_367_while_tensorarrayv2read_tensorlistgetitem_lstm_367_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp3lstm_367/while/lstm_cell_538/BiasAdd/ReadVariableOp2h
2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp2lstm_367/while/lstm_cell_538/MatMul/ReadVariableOp2l
4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp4lstm_367/while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3265880
file_prefix3
!assignvariableop_dense_122_kernel:
/
!assignvariableop_1_dense_122_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_366_lstm_cell_366_kernel:	?M
:assignvariableop_8_lstm_366_lstm_cell_366_recurrent_kernel:	d?=
.assignvariableop_9_lstm_366_lstm_cell_366_bias:	?D
1assignvariableop_10_lstm_367_lstm_cell_367_kernel:	d?N
;assignvariableop_11_lstm_367_lstm_cell_367_recurrent_kernel:	2?>
/assignvariableop_12_lstm_367_lstm_cell_367_bias:	?C
1assignvariableop_13_lstm_368_lstm_cell_368_kernel:2(M
;assignvariableop_14_lstm_368_lstm_cell_368_recurrent_kernel:
(=
/assignvariableop_15_lstm_368_lstm_cell_368_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_122_kernel_m:
7
)assignvariableop_19_adam_dense_122_bias_m:K
8assignvariableop_20_adam_lstm_366_lstm_cell_366_kernel_m:	?U
Bassignvariableop_21_adam_lstm_366_lstm_cell_366_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_366_lstm_cell_366_bias_m:	?K
8assignvariableop_23_adam_lstm_367_lstm_cell_367_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_367_lstm_cell_367_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_367_lstm_cell_367_bias_m:	?J
8assignvariableop_26_adam_lstm_368_lstm_cell_368_kernel_m:2(T
Bassignvariableop_27_adam_lstm_368_lstm_cell_368_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_368_lstm_cell_368_bias_m:(=
+assignvariableop_29_adam_dense_122_kernel_v:
7
)assignvariableop_30_adam_dense_122_bias_v:K
8assignvariableop_31_adam_lstm_366_lstm_cell_366_kernel_v:	?U
Bassignvariableop_32_adam_lstm_366_lstm_cell_366_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_366_lstm_cell_366_bias_v:	?K
8assignvariableop_34_adam_lstm_367_lstm_cell_367_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_367_lstm_cell_367_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_367_lstm_cell_367_bias_v:	?J
8assignvariableop_37_adam_lstm_368_lstm_cell_368_kernel_v:2(T
Bassignvariableop_38_adam_lstm_368_lstm_cell_368_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_368_lstm_cell_368_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_122_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_122_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_366_lstm_cell_366_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_366_lstm_cell_366_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_366_lstm_cell_366_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_367_lstm_cell_367_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_367_lstm_cell_367_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_367_lstm_cell_367_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_368_lstm_cell_368_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_368_lstm_cell_368_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_368_lstm_cell_368_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_122_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_122_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_366_lstm_cell_366_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_366_lstm_cell_366_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_366_lstm_cell_366_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_367_lstm_cell_367_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_367_lstm_cell_367_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_367_lstm_cell_367_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_368_lstm_cell_368_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_368_lstm_cell_368_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_368_lstm_cell_368_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_122_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_122_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_366_lstm_cell_366_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_366_lstm_cell_366_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_366_lstm_cell_366_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_367_lstm_cell_367_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_367_lstm_cell_367_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_367_lstm_cell_367_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_368_lstm_cell_368_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_368_lstm_cell_368_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_368_lstm_cell_368_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3262073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3262073___redundant_placeholder05
1while_while_cond_3262073___redundant_placeholder15
1while_while_cond_3262073___redundant_placeholder25
1while_while_cond_3262073___redundant_placeholder3
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
while_body_3262074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_538_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_538_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_538_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_538_matmul_readvariableop_resource:	d?G
4while_lstm_cell_538_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_538_biasadd_readvariableop_resource:	???*while/lstm_cell_538/BiasAdd/ReadVariableOp?)while/lstm_cell_538/MatMul/ReadVariableOp?+while/lstm_cell_538/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_538/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_538_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_538/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_538_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_538/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_538/addAddV2$while/lstm_cell_538/MatMul:product:0&while/lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_538_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_538/BiasAddBiasAddwhile/lstm_cell_538/add:z:02while/lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_538/splitSplit,while/lstm_cell_538/split/split_dim:output:0$while/lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_538/SigmoidSigmoid"while/lstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_1Sigmoid"while/lstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mulMul!while/lstm_cell_538/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_538/ReluRelu"while/lstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_1Mulwhile/lstm_cell_538/Sigmoid:y:0&while/lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/add_1AddV2while/lstm_cell_538/mul:z:0while/lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_538/Sigmoid_2Sigmoid"while/lstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_538/Relu_1Reluwhile/lstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_538/mul_2Mul!while/lstm_cell_538/Sigmoid_2:y:0(while/lstm_cell_538/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_538/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_538/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_538/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_538/BiasAdd/ReadVariableOp*^while/lstm_cell_538/MatMul/ReadVariableOp,^while/lstm_cell_538/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_538_biasadd_readvariableop_resource5while_lstm_cell_538_biasadd_readvariableop_resource_0"n
4while_lstm_cell_538_matmul_1_readvariableop_resource6while_lstm_cell_538_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_538_matmul_readvariableop_resource4while_lstm_cell_538_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_538/BiasAdd/ReadVariableOp*while/lstm_cell_538/BiasAdd/ReadVariableOp2V
)while/lstm_cell_538/MatMul/ReadVariableOp)while/lstm_cell_538/MatMul/ReadVariableOp2Z
+while/lstm_cell_538/MatMul_1/ReadVariableOp+while/lstm_cell_538/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3261627

inputs?
,lstm_cell_538_matmul_readvariableop_resource:	d?A
.lstm_cell_538_matmul_1_readvariableop_resource:	2?<
-lstm_cell_538_biasadd_readvariableop_resource:	?
identity??$lstm_cell_538/BiasAdd/ReadVariableOp?#lstm_cell_538/MatMul/ReadVariableOp?%lstm_cell_538/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_538/MatMul/ReadVariableOpReadVariableOp,lstm_cell_538_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_538/MatMulMatMulstrided_slice_2:output:0+lstm_cell_538/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_538/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_538_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_538/MatMul_1MatMulzeros:output:0-lstm_cell_538/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_538/addAddV2lstm_cell_538/MatMul:product:0 lstm_cell_538/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_538/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_538_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_538/BiasAddBiasAddlstm_cell_538/add:z:0,lstm_cell_538/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_538/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_538/splitSplit&lstm_cell_538/split/split_dim:output:0lstm_cell_538/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_538/SigmoidSigmoidlstm_cell_538/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_1Sigmoidlstm_cell_538/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_538/mulMullstm_cell_538/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_538/ReluRelulstm_cell_538/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_1Mullstm_cell_538/Sigmoid:y:0 lstm_cell_538/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_538/add_1AddV2lstm_cell_538/mul:z:0lstm_cell_538/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_538/Sigmoid_2Sigmoidlstm_cell_538/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_538/Relu_1Relulstm_cell_538/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_538/mul_2Mullstm_cell_538/Sigmoid_2:y:0"lstm_cell_538/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_538_matmul_readvariableop_resource.lstm_cell_538_matmul_1_readvariableop_resource-lstm_cell_538_biasadd_readvariableop_resource*
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
while_body_3261543*
condR
while_cond_3261542*K
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
NoOpNoOp%^lstm_cell_538/BiasAdd/ReadVariableOp$^lstm_cell_538/MatMul/ReadVariableOp&^lstm_cell_538/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_538/BiasAdd/ReadVariableOp$lstm_cell_538/BiasAdd/ReadVariableOp2J
#lstm_cell_538/MatMul/ReadVariableOp#lstm_cell_538/MatMul/ReadVariableOp2N
%lstm_cell_538/MatMul_1/ReadVariableOp%lstm_cell_538/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3260358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3260358___redundant_placeholder05
1while_while_cond_3260358___redundant_placeholder15
1while_while_cond_3260358___redundant_placeholder25
1while_while_cond_3260358___redundant_placeholder3
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262391

inputs#
lstm_366_3262364:	?#
lstm_366_3262366:	d?
lstm_366_3262368:	?#
lstm_367_3262371:	d?#
lstm_367_3262373:	2?
lstm_367_3262375:	?"
lstm_368_3262378:2("
lstm_368_3262380:
(
lstm_368_3262382:(#
dense_122_3262385:

dense_122_3262387:
identity??!dense_122/StatefulPartitionedCall? lstm_366/StatefulPartitionedCall? lstm_367/StatefulPartitionedCall? lstm_368/StatefulPartitionedCall?
 lstm_366/StatefulPartitionedCallStatefulPartitionedCallinputslstm_366_3262364lstm_366_3262366lstm_366_3262368*
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3262323?
 lstm_367/StatefulPartitionedCallStatefulPartitionedCall)lstm_366/StatefulPartitionedCall:output:0lstm_367_3262371lstm_367_3262373lstm_367_3262375*
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3262158?
 lstm_368/StatefulPartitionedCallStatefulPartitionedCall)lstm_367/StatefulPartitionedCall:output:0lstm_368_3262378lstm_368_3262380lstm_368_3262382*
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3261993?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_368/StatefulPartitionedCall:output:0dense_122_3262385dense_122_3262387*
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
F__inference_dense_122_layer_call_and_return_conditional_losses_3261795y
IdentityIdentity*dense_122/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_122/StatefulPartitionedCall!^lstm_366/StatefulPartitionedCall!^lstm_367/StatefulPartitionedCall!^lstm_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2D
 lstm_366/StatefulPartitionedCall lstm_366/StatefulPartitionedCall2D
 lstm_367/StatefulPartitionedCall lstm_367/StatefulPartitionedCall2D
 lstm_368/StatefulPartitionedCall lstm_368/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_367_layer_call_and_return_conditional_losses_3260969

inputs(
lstm_cell_538_3260887:	d?(
lstm_cell_538_3260889:	2?$
lstm_cell_538_3260891:	?
identity??%lstm_cell_538/StatefulPartitionedCall?while;
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
%lstm_cell_538/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_538_3260887lstm_cell_538_3260889lstm_cell_538_3260891*
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3260841n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_538_3260887lstm_cell_538_3260889lstm_cell_538_3260891*
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
while_body_3260900*
condR
while_cond_3260899*K
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
NoOpNoOp&^lstm_cell_538/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_538/StatefulPartitionedCall%lstm_cell_538/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_366_layer_call_fn_3263490

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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3262323s
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_366_input;
 serving_default_lstm_366_input:0?????????=
	dense_1220
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
2dense_122/kernel
:2dense_122/bias
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
0:.	?2lstm_366/lstm_cell_366/kernel
::8	d?2'lstm_366/lstm_cell_366/recurrent_kernel
*:(?2lstm_366/lstm_cell_366/bias
0:.	d?2lstm_367/lstm_cell_367/kernel
::8	2?2'lstm_367/lstm_cell_367/recurrent_kernel
*:(?2lstm_367/lstm_cell_367/bias
/:-2(2lstm_368/lstm_cell_368/kernel
9:7
(2'lstm_368/lstm_cell_368/recurrent_kernel
):'(2lstm_368/lstm_cell_368/bias
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
2Adam/dense_122/kernel/m
!:2Adam/dense_122/bias/m
5:3	?2$Adam/lstm_366/lstm_cell_366/kernel/m
?:=	d?2.Adam/lstm_366/lstm_cell_366/recurrent_kernel/m
/:-?2"Adam/lstm_366/lstm_cell_366/bias/m
5:3	d?2$Adam/lstm_367/lstm_cell_367/kernel/m
?:=	2?2.Adam/lstm_367/lstm_cell_367/recurrent_kernel/m
/:-?2"Adam/lstm_367/lstm_cell_367/bias/m
4:22(2$Adam/lstm_368/lstm_cell_368/kernel/m
>:<
(2.Adam/lstm_368/lstm_cell_368/recurrent_kernel/m
.:,(2"Adam/lstm_368/lstm_cell_368/bias/m
':%
2Adam/dense_122/kernel/v
!:2Adam/dense_122/bias/v
5:3	?2$Adam/lstm_366/lstm_cell_366/kernel/v
?:=	d?2.Adam/lstm_366/lstm_cell_366/recurrent_kernel/v
/:-?2"Adam/lstm_366/lstm_cell_366/bias/v
5:3	d?2$Adam/lstm_367/lstm_cell_367/kernel/v
?:=	2?2.Adam/lstm_367/lstm_cell_367/recurrent_kernel/v
/:-?2"Adam/lstm_367/lstm_cell_367/bias/v
4:22(2$Adam/lstm_368/lstm_cell_368/kernel/v
>:<
(2.Adam/lstm_368/lstm_cell_368/recurrent_kernel/v
.:,(2"Adam/lstm_368/lstm_cell_368/bias/v
?2?
0__inference_sequential_122_layer_call_fn_3261827
0__inference_sequential_122_layer_call_fn_3262565
0__inference_sequential_122_layer_call_fn_3262592
0__inference_sequential_122_layer_call_fn_3262443?
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263019
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263446
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262473
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262503?
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
"__inference__wrapped_model_3260278lstm_366_input"?
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
*__inference_lstm_366_layer_call_fn_3263457
*__inference_lstm_366_layer_call_fn_3263468
*__inference_lstm_366_layer_call_fn_3263479
*__inference_lstm_366_layer_call_fn_3263490?
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263633
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263776
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263919
E__inference_lstm_366_layer_call_and_return_conditional_losses_3264062?
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
*__inference_lstm_367_layer_call_fn_3264073
*__inference_lstm_367_layer_call_fn_3264084
*__inference_lstm_367_layer_call_fn_3264095
*__inference_lstm_367_layer_call_fn_3264106?
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264249
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264392
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264535
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264678?
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
*__inference_lstm_368_layer_call_fn_3264689
*__inference_lstm_368_layer_call_fn_3264700
*__inference_lstm_368_layer_call_fn_3264711
*__inference_lstm_368_layer_call_fn_3264722?
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3264865
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265008
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265151
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265294?
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
+__inference_dense_122_layer_call_fn_3265303?
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
F__inference_dense_122_layer_call_and_return_conditional_losses_3265313?
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
%__inference_signature_wrapper_3262538lstm_366_input"?
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
/__inference_lstm_cell_537_layer_call_fn_3265330
/__inference_lstm_cell_537_layer_call_fn_3265347?
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265379
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265411?
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
/__inference_lstm_cell_538_layer_call_fn_3265428
/__inference_lstm_cell_538_layer_call_fn_3265445?
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265477
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265509?
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
/__inference_lstm_cell_539_layer_call_fn_3265526
/__inference_lstm_cell_539_layer_call_fn_3265543?
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265575
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265607?
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
"__inference__wrapped_model_3260278?-./012345!";?8
1?.
,?)
lstm_366_input?????????
? "5?2
0
	dense_122#? 
	dense_122??????????
F__inference_dense_122_layer_call_and_return_conditional_losses_3265313\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_122_layer_call_fn_3265303O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263633?-./O?L
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263776?-./O?L
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3263919q-./??<
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
E__inference_lstm_366_layer_call_and_return_conditional_losses_3264062q-./??<
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
*__inference_lstm_366_layer_call_fn_3263457}-./O?L
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
*__inference_lstm_366_layer_call_fn_3263468}-./O?L
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
*__inference_lstm_366_layer_call_fn_3263479d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_366_layer_call_fn_3263490d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264249?012O?L
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264392?012O?L
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264535q012??<
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
E__inference_lstm_367_layer_call_and_return_conditional_losses_3264678q012??<
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
*__inference_lstm_367_layer_call_fn_3264073}012O?L
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
*__inference_lstm_367_layer_call_fn_3264084}012O?L
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
*__inference_lstm_367_layer_call_fn_3264095d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_367_layer_call_fn_3264106d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_368_layer_call_and_return_conditional_losses_3264865}345O?L
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265008}345O?L
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265151m345??<
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
E__inference_lstm_368_layer_call_and_return_conditional_losses_3265294m345??<
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
*__inference_lstm_368_layer_call_fn_3264689p345O?L
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
*__inference_lstm_368_layer_call_fn_3264700p345O?L
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
*__inference_lstm_368_layer_call_fn_3264711`345??<
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
*__inference_lstm_368_layer_call_fn_3264722`345??<
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265379?-./??}
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
J__inference_lstm_cell_537_layer_call_and_return_conditional_losses_3265411?-./??}
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
/__inference_lstm_cell_537_layer_call_fn_3265330?-./??}
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
/__inference_lstm_cell_537_layer_call_fn_3265347?-./??}
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265477?012??}
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
J__inference_lstm_cell_538_layer_call_and_return_conditional_losses_3265509?012??}
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
/__inference_lstm_cell_538_layer_call_fn_3265428?012??}
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
/__inference_lstm_cell_538_layer_call_fn_3265445?012??}
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265575?345??}
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
J__inference_lstm_cell_539_layer_call_and_return_conditional_losses_3265607?345??}
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
/__inference_lstm_cell_539_layer_call_fn_3265526?345??}
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
/__inference_lstm_cell_539_layer_call_fn_3265543?345??}
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262473y-./012345!"C?@
9?6
,?)
lstm_366_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_122_layer_call_and_return_conditional_losses_3262503y-./012345!"C?@
9?6
,?)
lstm_366_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263019q-./012345!";?8
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
K__inference_sequential_122_layer_call_and_return_conditional_losses_3263446q-./012345!";?8
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
0__inference_sequential_122_layer_call_fn_3261827l-./012345!"C?@
9?6
,?)
lstm_366_input?????????
p 

 
? "???????????
0__inference_sequential_122_layer_call_fn_3262443l-./012345!"C?@
9?6
,?)
lstm_366_input?????????
p

 
? "???????????
0__inference_sequential_122_layer_call_fn_3262565d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_122_layer_call_fn_3262592d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3262538?-./012345!"M?J
? 
C?@
>
lstm_366_input,?)
lstm_366_input?????????"5?2
0
	dense_122#? 
	dense_122?????????