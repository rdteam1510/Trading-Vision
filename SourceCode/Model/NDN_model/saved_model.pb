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
dense_147/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_147/kernel
u
$dense_147/kernel/Read/ReadVariableOpReadVariableOpdense_147/kernel*
_output_shapes

:
*
dtype0
t
dense_147/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_147/bias
m
"dense_147/bias/Read/ReadVariableOpReadVariableOpdense_147/bias*
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
lstm_441/lstm_cell_441/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_441/lstm_cell_441/kernel
?
1lstm_441/lstm_cell_441/kernel/Read/ReadVariableOpReadVariableOplstm_441/lstm_cell_441/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_441/lstm_cell_441/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_441/lstm_cell_441/recurrent_kernel
?
;lstm_441/lstm_cell_441/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_441/lstm_cell_441/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_441/lstm_cell_441/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_441/lstm_cell_441/bias
?
/lstm_441/lstm_cell_441/bias/Read/ReadVariableOpReadVariableOplstm_441/lstm_cell_441/bias*
_output_shapes	
:?*
dtype0
?
lstm_442/lstm_cell_442/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_442/lstm_cell_442/kernel
?
1lstm_442/lstm_cell_442/kernel/Read/ReadVariableOpReadVariableOplstm_442/lstm_cell_442/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_442/lstm_cell_442/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_442/lstm_cell_442/recurrent_kernel
?
;lstm_442/lstm_cell_442/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_442/lstm_cell_442/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_442/lstm_cell_442/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_442/lstm_cell_442/bias
?
/lstm_442/lstm_cell_442/bias/Read/ReadVariableOpReadVariableOplstm_442/lstm_cell_442/bias*
_output_shapes	
:?*
dtype0
?
lstm_443/lstm_cell_443/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_443/lstm_cell_443/kernel
?
1lstm_443/lstm_cell_443/kernel/Read/ReadVariableOpReadVariableOplstm_443/lstm_cell_443/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_443/lstm_cell_443/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_443/lstm_cell_443/recurrent_kernel
?
;lstm_443/lstm_cell_443/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_443/lstm_cell_443/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_443/lstm_cell_443/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_443/lstm_cell_443/bias
?
/lstm_443/lstm_cell_443/bias/Read/ReadVariableOpReadVariableOplstm_443/lstm_cell_443/bias*
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
Adam/dense_147/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_147/kernel/m
?
+Adam/dense_147/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_147/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_147/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_147/bias/m
{
)Adam/dense_147/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_147/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_441/lstm_cell_441/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_441/lstm_cell_441/kernel/m
?
8Adam/lstm_441/lstm_cell_441/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_441/lstm_cell_441/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_441/lstm_cell_441/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_441/lstm_cell_441/recurrent_kernel/m
?
BAdam/lstm_441/lstm_cell_441/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_441/lstm_cell_441/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_441/lstm_cell_441/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_441/lstm_cell_441/bias/m
?
6Adam/lstm_441/lstm_cell_441/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_441/lstm_cell_441/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_442/lstm_cell_442/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_442/lstm_cell_442/kernel/m
?
8Adam/lstm_442/lstm_cell_442/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_442/lstm_cell_442/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_442/lstm_cell_442/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_442/lstm_cell_442/recurrent_kernel/m
?
BAdam/lstm_442/lstm_cell_442/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_442/lstm_cell_442/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_442/lstm_cell_442/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_442/lstm_cell_442/bias/m
?
6Adam/lstm_442/lstm_cell_442/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_442/lstm_cell_442/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_443/lstm_cell_443/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_443/lstm_cell_443/kernel/m
?
8Adam/lstm_443/lstm_cell_443/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_443/lstm_cell_443/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_443/lstm_cell_443/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_443/lstm_cell_443/recurrent_kernel/m
?
BAdam/lstm_443/lstm_cell_443/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_443/lstm_cell_443/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_443/lstm_cell_443/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_443/lstm_cell_443/bias/m
?
6Adam/lstm_443/lstm_cell_443/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_443/lstm_cell_443/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_147/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_147/kernel/v
?
+Adam/dense_147/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_147/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_147/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_147/bias/v
{
)Adam/dense_147/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_147/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_441/lstm_cell_441/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_441/lstm_cell_441/kernel/v
?
8Adam/lstm_441/lstm_cell_441/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_441/lstm_cell_441/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_441/lstm_cell_441/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_441/lstm_cell_441/recurrent_kernel/v
?
BAdam/lstm_441/lstm_cell_441/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_441/lstm_cell_441/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_441/lstm_cell_441/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_441/lstm_cell_441/bias/v
?
6Adam/lstm_441/lstm_cell_441/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_441/lstm_cell_441/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_442/lstm_cell_442/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_442/lstm_cell_442/kernel/v
?
8Adam/lstm_442/lstm_cell_442/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_442/lstm_cell_442/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_442/lstm_cell_442/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_442/lstm_cell_442/recurrent_kernel/v
?
BAdam/lstm_442/lstm_cell_442/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_442/lstm_cell_442/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_442/lstm_cell_442/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_442/lstm_cell_442/bias/v
?
6Adam/lstm_442/lstm_cell_442/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_442/lstm_cell_442/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_443/lstm_cell_443/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_443/lstm_cell_443/kernel/v
?
8Adam/lstm_443/lstm_cell_443/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_443/lstm_cell_443/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_443/lstm_cell_443/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_443/lstm_cell_443/recurrent_kernel/v
?
BAdam/lstm_443/lstm_cell_443/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_443/lstm_cell_443/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_443/lstm_cell_443/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_443/lstm_cell_443/bias/v
?
6Adam/lstm_443/lstm_cell_443/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_443/lstm_cell_443/bias/v*
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
VARIABLE_VALUEdense_147/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_147/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_441/lstm_cell_441/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_441/lstm_cell_441/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_441/lstm_cell_441/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_442/lstm_cell_442/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_442/lstm_cell_442/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_442/lstm_cell_442/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_443/lstm_cell_443/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_443/lstm_cell_443/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_443/lstm_cell_443/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_147/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_147/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_441/lstm_cell_441/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_441/lstm_cell_441/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_441/lstm_cell_441/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_442/lstm_cell_442/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_442/lstm_cell_442/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_442/lstm_cell_442/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_443/lstm_cell_443/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_443/lstm_cell_443/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_443/lstm_cell_443/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_147/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_147/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_441/lstm_cell_441/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_441/lstm_cell_441/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_441/lstm_cell_441/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_442/lstm_cell_442/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_442/lstm_cell_442/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_442/lstm_cell_442/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_443/lstm_cell_443/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_443/lstm_cell_443/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_443/lstm_cell_443/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_441_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_441_inputlstm_441/lstm_cell_441/kernel'lstm_441/lstm_cell_441/recurrent_kernellstm_441/lstm_cell_441/biaslstm_442/lstm_cell_442/kernel'lstm_442/lstm_cell_442/recurrent_kernellstm_442/lstm_cell_442/biaslstm_443/lstm_cell_443/kernel'lstm_443/lstm_cell_443/recurrent_kernellstm_443/lstm_cell_443/biasdense_147/kerneldense_147/bias*
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
$__inference_signature_wrapper_831216
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_147/kernel/Read/ReadVariableOp"dense_147/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_441/lstm_cell_441/kernel/Read/ReadVariableOp;lstm_441/lstm_cell_441/recurrent_kernel/Read/ReadVariableOp/lstm_441/lstm_cell_441/bias/Read/ReadVariableOp1lstm_442/lstm_cell_442/kernel/Read/ReadVariableOp;lstm_442/lstm_cell_442/recurrent_kernel/Read/ReadVariableOp/lstm_442/lstm_cell_442/bias/Read/ReadVariableOp1lstm_443/lstm_cell_443/kernel/Read/ReadVariableOp;lstm_443/lstm_cell_443/recurrent_kernel/Read/ReadVariableOp/lstm_443/lstm_cell_443/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_147/kernel/m/Read/ReadVariableOp)Adam/dense_147/bias/m/Read/ReadVariableOp8Adam/lstm_441/lstm_cell_441/kernel/m/Read/ReadVariableOpBAdam/lstm_441/lstm_cell_441/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_441/lstm_cell_441/bias/m/Read/ReadVariableOp8Adam/lstm_442/lstm_cell_442/kernel/m/Read/ReadVariableOpBAdam/lstm_442/lstm_cell_442/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_442/lstm_cell_442/bias/m/Read/ReadVariableOp8Adam/lstm_443/lstm_cell_443/kernel/m/Read/ReadVariableOpBAdam/lstm_443/lstm_cell_443/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_443/lstm_cell_443/bias/m/Read/ReadVariableOp+Adam/dense_147/kernel/v/Read/ReadVariableOp)Adam/dense_147/bias/v/Read/ReadVariableOp8Adam/lstm_441/lstm_cell_441/kernel/v/Read/ReadVariableOpBAdam/lstm_441/lstm_cell_441/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_441/lstm_cell_441/bias/v/Read/ReadVariableOp8Adam/lstm_442/lstm_cell_442/kernel/v/Read/ReadVariableOpBAdam/lstm_442/lstm_cell_442/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_442/lstm_cell_442/bias/v/Read/ReadVariableOp8Adam/lstm_443/lstm_cell_443/kernel/v/Read/ReadVariableOpBAdam/lstm_443/lstm_cell_443/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_443/lstm_cell_443/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_834428
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_147/kerneldense_147/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_441/lstm_cell_441/kernel'lstm_441/lstm_cell_441/recurrent_kernellstm_441/lstm_cell_441/biaslstm_442/lstm_cell_442/kernel'lstm_442/lstm_cell_442/recurrent_kernellstm_442/lstm_cell_442/biaslstm_443/lstm_cell_443/kernel'lstm_443/lstm_cell_443/recurrent_kernellstm_443/lstm_cell_443/biastotalcountAdam/dense_147/kernel/mAdam/dense_147/bias/m$Adam/lstm_441/lstm_cell_441/kernel/m.Adam/lstm_441/lstm_cell_441/recurrent_kernel/m"Adam/lstm_441/lstm_cell_441/bias/m$Adam/lstm_442/lstm_cell_442/kernel/m.Adam/lstm_442/lstm_cell_442/recurrent_kernel/m"Adam/lstm_442/lstm_cell_442/bias/m$Adam/lstm_443/lstm_cell_443/kernel/m.Adam/lstm_443/lstm_cell_443/recurrent_kernel/m"Adam/lstm_443/lstm_cell_443/bias/mAdam/dense_147/kernel/vAdam/dense_147/bias/v$Adam/lstm_441/lstm_cell_441/kernel/v.Adam/lstm_441/lstm_cell_441/recurrent_kernel/v"Adam/lstm_441/lstm_cell_441/bias/v$Adam/lstm_442/lstm_cell_442/kernel/v.Adam/lstm_442/lstm_cell_442/recurrent_kernel/v"Adam/lstm_442/lstm_cell_442/bias/v$Adam/lstm_443/lstm_cell_443/kernel/v.Adam/lstm_443/lstm_cell_443/recurrent_kernel/v"Adam/lstm_443/lstm_cell_443/bias/v*4
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
"__inference__traced_restore_834558??+
?
?
while_cond_830370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830370___redundant_placeholder04
0while_while_cond_830370___redundant_placeholder14
0while_while_cond_830370___redundant_placeholder24
0while_while_cond_830370___redundant_placeholder3
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
)sequential_147_lstm_442_while_body_828727L
Hsequential_147_lstm_442_while_sequential_147_lstm_442_while_loop_counterR
Nsequential_147_lstm_442_while_sequential_147_lstm_442_while_maximum_iterations-
)sequential_147_lstm_442_while_placeholder/
+sequential_147_lstm_442_while_placeholder_1/
+sequential_147_lstm_442_while_placeholder_2/
+sequential_147_lstm_442_while_placeholder_3K
Gsequential_147_lstm_442_while_sequential_147_lstm_442_strided_slice_1_0?
?sequential_147_lstm_442_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_442_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_147_lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0:	d?a
Nsequential_147_lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?\
Msequential_147_lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0:	?*
&sequential_147_lstm_442_while_identity,
(sequential_147_lstm_442_while_identity_1,
(sequential_147_lstm_442_while_identity_2,
(sequential_147_lstm_442_while_identity_3,
(sequential_147_lstm_442_while_identity_4,
(sequential_147_lstm_442_while_identity_5I
Esequential_147_lstm_442_while_sequential_147_lstm_442_strided_slice_1?
?sequential_147_lstm_442_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_442_tensorarrayunstack_tensorlistfromtensor]
Jsequential_147_lstm_442_while_lstm_cell_136_matmul_readvariableop_resource:	d?_
Lsequential_147_lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource:	2?Z
Ksequential_147_lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource:	???Bsequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp?Asequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp?Csequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp?
Osequential_147/lstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_147/lstm_442/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_147_lstm_442_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_442_tensorarrayunstack_tensorlistfromtensor_0)sequential_147_lstm_442_while_placeholderXsequential_147/lstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOpLsequential_147_lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_147/lstm_442/while/lstm_cell_136/MatMulMatMulHsequential_147/lstm_442/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOpNsequential_147_lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_147/lstm_442/while/lstm_cell_136/MatMul_1MatMul+sequential_147_lstm_442_while_placeholder_2Ksequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_147/lstm_442/while/lstm_cell_136/addAddV2<sequential_147/lstm_442/while/lstm_cell_136/MatMul:product:0>sequential_147/lstm_442/while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOpMsequential_147_lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_147/lstm_442/while/lstm_cell_136/BiasAddBiasAdd3sequential_147/lstm_442/while/lstm_cell_136/add:z:0Jsequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_147/lstm_442/while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_147/lstm_442/while/lstm_cell_136/splitSplitDsequential_147/lstm_442/while/lstm_cell_136/split/split_dim:output:0<sequential_147/lstm_442/while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_147/lstm_442/while/lstm_cell_136/SigmoidSigmoid:sequential_147/lstm_442/while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_147/lstm_442/while/lstm_cell_136/Sigmoid_1Sigmoid:sequential_147/lstm_442/while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_147/lstm_442/while/lstm_cell_136/mulMul9sequential_147/lstm_442/while/lstm_cell_136/Sigmoid_1:y:0+sequential_147_lstm_442_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_147/lstm_442/while/lstm_cell_136/ReluRelu:sequential_147/lstm_442/while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_147/lstm_442/while/lstm_cell_136/mul_1Mul7sequential_147/lstm_442/while/lstm_cell_136/Sigmoid:y:0>sequential_147/lstm_442/while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_147/lstm_442/while/lstm_cell_136/add_1AddV23sequential_147/lstm_442/while/lstm_cell_136/mul:z:05sequential_147/lstm_442/while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_147/lstm_442/while/lstm_cell_136/Sigmoid_2Sigmoid:sequential_147/lstm_442/while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_147/lstm_442/while/lstm_cell_136/Relu_1Relu5sequential_147/lstm_442/while/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_147/lstm_442/while/lstm_cell_136/mul_2Mul9sequential_147/lstm_442/while/lstm_cell_136/Sigmoid_2:y:0@sequential_147/lstm_442/while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_147/lstm_442/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_147_lstm_442_while_placeholder_1)sequential_147_lstm_442_while_placeholder5sequential_147/lstm_442/while/lstm_cell_136/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_147/lstm_442/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_147/lstm_442/while/addAddV2)sequential_147_lstm_442_while_placeholder,sequential_147/lstm_442/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_147/lstm_442/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_147/lstm_442/while/add_1AddV2Hsequential_147_lstm_442_while_sequential_147_lstm_442_while_loop_counter.sequential_147/lstm_442/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_147/lstm_442/while/IdentityIdentity'sequential_147/lstm_442/while/add_1:z:0#^sequential_147/lstm_442/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_442/while/Identity_1IdentityNsequential_147_lstm_442_while_sequential_147_lstm_442_while_maximum_iterations#^sequential_147/lstm_442/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_442/while/Identity_2Identity%sequential_147/lstm_442/while/add:z:0#^sequential_147/lstm_442/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_442/while/Identity_3IdentityRsequential_147/lstm_442/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_147/lstm_442/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_442/while/Identity_4Identity5sequential_147/lstm_442/while/lstm_cell_136/mul_2:z:0#^sequential_147/lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_147/lstm_442/while/Identity_5Identity5sequential_147/lstm_442/while/lstm_cell_136/add_1:z:0#^sequential_147/lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_147/lstm_442/while/NoOpNoOpC^sequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOpB^sequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOpD^sequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_147_lstm_442_while_identity/sequential_147/lstm_442/while/Identity:output:0"]
(sequential_147_lstm_442_while_identity_11sequential_147/lstm_442/while/Identity_1:output:0"]
(sequential_147_lstm_442_while_identity_21sequential_147/lstm_442/while/Identity_2:output:0"]
(sequential_147_lstm_442_while_identity_31sequential_147/lstm_442/while/Identity_3:output:0"]
(sequential_147_lstm_442_while_identity_41sequential_147/lstm_442/while/Identity_4:output:0"]
(sequential_147_lstm_442_while_identity_51sequential_147/lstm_442/while/Identity_5:output:0"?
Ksequential_147_lstm_442_while_lstm_cell_136_biasadd_readvariableop_resourceMsequential_147_lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0"?
Lsequential_147_lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resourceNsequential_147_lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0"?
Jsequential_147_lstm_442_while_lstm_cell_136_matmul_readvariableop_resourceLsequential_147_lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0"?
Esequential_147_lstm_442_while_sequential_147_lstm_442_strided_slice_1Gsequential_147_lstm_442_while_sequential_147_lstm_442_strided_slice_1_0"?
?sequential_147_lstm_442_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_442_tensorarrayunstack_tensorlistfromtensor?sequential_147_lstm_442_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_442_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOpBsequential_147/lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp2?
Asequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOpAsequential_147/lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp2?
Csequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOpCsequential_147/lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832311
inputs_0?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_832227*
condR
while_cond_832226*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_442_layer_call_and_return_conditional_losses_833213

inputs?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_833129*
condR
while_cond_833128*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_830752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_147_layer_call_fn_833981

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
E__inference_dense_147_layer_call_and_return_conditional_losses_830473o
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_833356

inputs?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_833272*
condR
while_cond_833271*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_834558
file_prefix3
!assignvariableop_dense_147_kernel:
/
!assignvariableop_1_dense_147_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_441_lstm_cell_441_kernel:	?M
:assignvariableop_8_lstm_441_lstm_cell_441_recurrent_kernel:	d?=
.assignvariableop_9_lstm_441_lstm_cell_441_bias:	?D
1assignvariableop_10_lstm_442_lstm_cell_442_kernel:	d?N
;assignvariableop_11_lstm_442_lstm_cell_442_recurrent_kernel:	2?>
/assignvariableop_12_lstm_442_lstm_cell_442_bias:	?C
1assignvariableop_13_lstm_443_lstm_cell_443_kernel:2(M
;assignvariableop_14_lstm_443_lstm_cell_443_recurrent_kernel:
(=
/assignvariableop_15_lstm_443_lstm_cell_443_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_147_kernel_m:
7
)assignvariableop_19_adam_dense_147_bias_m:K
8assignvariableop_20_adam_lstm_441_lstm_cell_441_kernel_m:	?U
Bassignvariableop_21_adam_lstm_441_lstm_cell_441_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_441_lstm_cell_441_bias_m:	?K
8assignvariableop_23_adam_lstm_442_lstm_cell_442_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_442_lstm_cell_442_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_442_lstm_cell_442_bias_m:	?J
8assignvariableop_26_adam_lstm_443_lstm_cell_443_kernel_m:2(T
Bassignvariableop_27_adam_lstm_443_lstm_cell_443_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_443_lstm_cell_443_bias_m:(=
+assignvariableop_29_adam_dense_147_kernel_v:
7
)assignvariableop_30_adam_dense_147_bias_v:K
8assignvariableop_31_adam_lstm_441_lstm_cell_441_kernel_v:	?U
Bassignvariableop_32_adam_lstm_441_lstm_cell_441_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_441_lstm_cell_441_bias_v:	?K
8assignvariableop_34_adam_lstm_442_lstm_cell_442_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_442_lstm_cell_442_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_442_lstm_cell_442_bias_v:	?J
8assignvariableop_37_adam_lstm_443_lstm_cell_443_kernel_v:2(T
Bassignvariableop_38_adam_lstm_443_lstm_cell_443_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_443_lstm_cell_443_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_147_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_147_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_441_lstm_cell_441_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_441_lstm_cell_441_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_441_lstm_cell_441_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_442_lstm_cell_442_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_442_lstm_cell_442_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_442_lstm_cell_442_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_443_lstm_cell_443_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_443_lstm_cell_443_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_443_lstm_cell_443_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_147_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_147_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_441_lstm_cell_441_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_441_lstm_cell_441_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_441_lstm_cell_441_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_442_lstm_cell_442_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_442_lstm_cell_442_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_442_lstm_cell_442_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_443_lstm_cell_443_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_443_lstm_cell_443_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_443_lstm_cell_443_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_147_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_147_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_441_lstm_cell_441_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_441_lstm_cell_441_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_441_lstm_cell_441_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_442_lstm_cell_442_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_442_lstm_cell_442_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_442_lstm_cell_442_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_443_lstm_cell_443_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_443_lstm_cell_443_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_443_lstm_cell_443_bias_vIdentity_39:output:0"/device:CPU:0*
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
?W
?
__inference__traced_save_834428
file_prefix/
+savev2_dense_147_kernel_read_readvariableop-
)savev2_dense_147_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_441_lstm_cell_441_kernel_read_readvariableopF
Bsavev2_lstm_441_lstm_cell_441_recurrent_kernel_read_readvariableop:
6savev2_lstm_441_lstm_cell_441_bias_read_readvariableop<
8savev2_lstm_442_lstm_cell_442_kernel_read_readvariableopF
Bsavev2_lstm_442_lstm_cell_442_recurrent_kernel_read_readvariableop:
6savev2_lstm_442_lstm_cell_442_bias_read_readvariableop<
8savev2_lstm_443_lstm_cell_443_kernel_read_readvariableopF
Bsavev2_lstm_443_lstm_cell_443_recurrent_kernel_read_readvariableop:
6savev2_lstm_443_lstm_cell_443_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_147_kernel_m_read_readvariableop4
0savev2_adam_dense_147_bias_m_read_readvariableopC
?savev2_adam_lstm_441_lstm_cell_441_kernel_m_read_readvariableopM
Isavev2_adam_lstm_441_lstm_cell_441_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_441_lstm_cell_441_bias_m_read_readvariableopC
?savev2_adam_lstm_442_lstm_cell_442_kernel_m_read_readvariableopM
Isavev2_adam_lstm_442_lstm_cell_442_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_442_lstm_cell_442_bias_m_read_readvariableopC
?savev2_adam_lstm_443_lstm_cell_443_kernel_m_read_readvariableopM
Isavev2_adam_lstm_443_lstm_cell_443_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_443_lstm_cell_443_bias_m_read_readvariableop6
2savev2_adam_dense_147_kernel_v_read_readvariableop4
0savev2_adam_dense_147_bias_v_read_readvariableopC
?savev2_adam_lstm_441_lstm_cell_441_kernel_v_read_readvariableopM
Isavev2_adam_lstm_441_lstm_cell_441_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_441_lstm_cell_441_bias_v_read_readvariableopC
?savev2_adam_lstm_442_lstm_cell_442_kernel_v_read_readvariableopM
Isavev2_adam_lstm_442_lstm_cell_442_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_442_lstm_cell_442_bias_v_read_readvariableopC
?savev2_adam_lstm_443_lstm_cell_443_kernel_v_read_readvariableopM
Isavev2_adam_lstm_443_lstm_cell_443_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_443_lstm_cell_443_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_147_kernel_read_readvariableop)savev2_dense_147_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_441_lstm_cell_441_kernel_read_readvariableopBsavev2_lstm_441_lstm_cell_441_recurrent_kernel_read_readvariableop6savev2_lstm_441_lstm_cell_441_bias_read_readvariableop8savev2_lstm_442_lstm_cell_442_kernel_read_readvariableopBsavev2_lstm_442_lstm_cell_442_recurrent_kernel_read_readvariableop6savev2_lstm_442_lstm_cell_442_bias_read_readvariableop8savev2_lstm_443_lstm_cell_443_kernel_read_readvariableopBsavev2_lstm_443_lstm_cell_443_recurrent_kernel_read_readvariableop6savev2_lstm_443_lstm_cell_443_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_147_kernel_m_read_readvariableop0savev2_adam_dense_147_bias_m_read_readvariableop?savev2_adam_lstm_441_lstm_cell_441_kernel_m_read_readvariableopIsavev2_adam_lstm_441_lstm_cell_441_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_441_lstm_cell_441_bias_m_read_readvariableop?savev2_adam_lstm_442_lstm_cell_442_kernel_m_read_readvariableopIsavev2_adam_lstm_442_lstm_cell_442_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_442_lstm_cell_442_bias_m_read_readvariableop?savev2_adam_lstm_443_lstm_cell_443_kernel_m_read_readvariableopIsavev2_adam_lstm_443_lstm_cell_443_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_443_lstm_cell_443_bias_m_read_readvariableop2savev2_adam_dense_147_kernel_v_read_readvariableop0savev2_adam_dense_147_bias_v_read_readvariableop?savev2_adam_lstm_441_lstm_cell_441_kernel_v_read_readvariableopIsavev2_adam_lstm_441_lstm_cell_441_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_441_lstm_cell_441_bias_v_read_readvariableop?savev2_adam_lstm_442_lstm_cell_442_kernel_v_read_readvariableopIsavev2_adam_lstm_442_lstm_cell_442_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_442_lstm_cell_442_bias_v_read_readvariableop?savev2_adam_lstm_443_lstm_cell_443_kernel_v_read_readvariableopIsavev2_adam_lstm_443_lstm_cell_443_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_443_lstm_cell_443_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_833128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833128___redundant_placeholder04
0while_while_cond_833128___redundant_placeholder14
0while_while_cond_833128___redundant_placeholder24
0while_while_cond_833128___redundant_placeholder3
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
while_cond_829036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829036___redundant_placeholder04
0while_while_cond_829036___redundant_placeholder14
0while_while_cond_829036___redundant_placeholder24
0while_while_cond_829036___redundant_placeholder3
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
while_cond_832369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832369___redundant_placeholder04
0while_while_cond_832369___redundant_placeholder14
0while_while_cond_832369___redundant_placeholder24
0while_while_cond_832369___redundant_placeholder3
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
while_body_833459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
!__inference__wrapped_model_828956
lstm_441_inputW
Dsequential_147_lstm_441_lstm_cell_135_matmul_readvariableop_resource:	?Y
Fsequential_147_lstm_441_lstm_cell_135_matmul_1_readvariableop_resource:	d?T
Esequential_147_lstm_441_lstm_cell_135_biasadd_readvariableop_resource:	?W
Dsequential_147_lstm_442_lstm_cell_136_matmul_readvariableop_resource:	d?Y
Fsequential_147_lstm_442_lstm_cell_136_matmul_1_readvariableop_resource:	2?T
Esequential_147_lstm_442_lstm_cell_136_biasadd_readvariableop_resource:	?V
Dsequential_147_lstm_443_lstm_cell_137_matmul_readvariableop_resource:2(X
Fsequential_147_lstm_443_lstm_cell_137_matmul_1_readvariableop_resource:
(S
Esequential_147_lstm_443_lstm_cell_137_biasadd_readvariableop_resource:(I
7sequential_147_dense_147_matmul_readvariableop_resource:
F
8sequential_147_dense_147_biasadd_readvariableop_resource:
identity??/sequential_147/dense_147/BiasAdd/ReadVariableOp?.sequential_147/dense_147/MatMul/ReadVariableOp?<sequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp?;sequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOp?=sequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp?sequential_147/lstm_441/while?<sequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp?;sequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOp?=sequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp?sequential_147/lstm_442/while?<sequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp?;sequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOp?=sequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp?sequential_147/lstm_443/while[
sequential_147/lstm_441/ShapeShapelstm_441_input*
T0*
_output_shapes
:u
+sequential_147/lstm_441/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_147/lstm_441/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_147/lstm_441/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_147/lstm_441/strided_sliceStridedSlice&sequential_147/lstm_441/Shape:output:04sequential_147/lstm_441/strided_slice/stack:output:06sequential_147/lstm_441/strided_slice/stack_1:output:06sequential_147/lstm_441/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_147/lstm_441/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_147/lstm_441/zeros/packedPack.sequential_147/lstm_441/strided_slice:output:0/sequential_147/lstm_441/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_147/lstm_441/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_441/zerosFill-sequential_147/lstm_441/zeros/packed:output:0,sequential_147/lstm_441/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_147/lstm_441/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_147/lstm_441/zeros_1/packedPack.sequential_147/lstm_441/strided_slice:output:01sequential_147/lstm_441/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_147/lstm_441/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_441/zeros_1Fill/sequential_147/lstm_441/zeros_1/packed:output:0.sequential_147/lstm_441/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_147/lstm_441/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_147/lstm_441/transpose	Transposelstm_441_input/sequential_147/lstm_441/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_147/lstm_441/Shape_1Shape%sequential_147/lstm_441/transpose:y:0*
T0*
_output_shapes
:w
-sequential_147/lstm_441/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_441/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_441/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_441/strided_slice_1StridedSlice(sequential_147/lstm_441/Shape_1:output:06sequential_147/lstm_441/strided_slice_1/stack:output:08sequential_147/lstm_441/strided_slice_1/stack_1:output:08sequential_147/lstm_441/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_147/lstm_441/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_147/lstm_441/TensorArrayV2TensorListReserve<sequential_147/lstm_441/TensorArrayV2/element_shape:output:00sequential_147/lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_147/lstm_441/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_147/lstm_441/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_147/lstm_441/transpose:y:0Vsequential_147/lstm_441/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_147/lstm_441/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_441/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_441/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_441/strided_slice_2StridedSlice%sequential_147/lstm_441/transpose:y:06sequential_147/lstm_441/strided_slice_2/stack:output:08sequential_147/lstm_441/strided_slice_2/stack_1:output:08sequential_147/lstm_441/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOpReadVariableOpDsequential_147_lstm_441_lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_147/lstm_441/lstm_cell_135/MatMulMatMul0sequential_147/lstm_441/strided_slice_2:output:0Csequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOpFsequential_147_lstm_441_lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_147/lstm_441/lstm_cell_135/MatMul_1MatMul&sequential_147/lstm_441/zeros:output:0Esequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_147/lstm_441/lstm_cell_135/addAddV26sequential_147/lstm_441/lstm_cell_135/MatMul:product:08sequential_147/lstm_441/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOpEsequential_147_lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_147/lstm_441/lstm_cell_135/BiasAddBiasAdd-sequential_147/lstm_441/lstm_cell_135/add:z:0Dsequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_147/lstm_441/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_147/lstm_441/lstm_cell_135/splitSplit>sequential_147/lstm_441/lstm_cell_135/split/split_dim:output:06sequential_147/lstm_441/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_147/lstm_441/lstm_cell_135/SigmoidSigmoid4sequential_147/lstm_441/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_147/lstm_441/lstm_cell_135/Sigmoid_1Sigmoid4sequential_147/lstm_441/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_147/lstm_441/lstm_cell_135/mulMul3sequential_147/lstm_441/lstm_cell_135/Sigmoid_1:y:0(sequential_147/lstm_441/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_147/lstm_441/lstm_cell_135/ReluRelu4sequential_147/lstm_441/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_147/lstm_441/lstm_cell_135/mul_1Mul1sequential_147/lstm_441/lstm_cell_135/Sigmoid:y:08sequential_147/lstm_441/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_147/lstm_441/lstm_cell_135/add_1AddV2-sequential_147/lstm_441/lstm_cell_135/mul:z:0/sequential_147/lstm_441/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_147/lstm_441/lstm_cell_135/Sigmoid_2Sigmoid4sequential_147/lstm_441/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_147/lstm_441/lstm_cell_135/Relu_1Relu/sequential_147/lstm_441/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_147/lstm_441/lstm_cell_135/mul_2Mul3sequential_147/lstm_441/lstm_cell_135/Sigmoid_2:y:0:sequential_147/lstm_441/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_147/lstm_441/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_147/lstm_441/TensorArrayV2_1TensorListReserve>sequential_147/lstm_441/TensorArrayV2_1/element_shape:output:00sequential_147/lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_147/lstm_441/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_147/lstm_441/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_147/lstm_441/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_147/lstm_441/whileWhile3sequential_147/lstm_441/while/loop_counter:output:09sequential_147/lstm_441/while/maximum_iterations:output:0%sequential_147/lstm_441/time:output:00sequential_147/lstm_441/TensorArrayV2_1:handle:0&sequential_147/lstm_441/zeros:output:0(sequential_147/lstm_441/zeros_1:output:00sequential_147/lstm_441/strided_slice_1:output:0Osequential_147/lstm_441/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_147_lstm_441_lstm_cell_135_matmul_readvariableop_resourceFsequential_147_lstm_441_lstm_cell_135_matmul_1_readvariableop_resourceEsequential_147_lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
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
)sequential_147_lstm_441_while_body_828588*5
cond-R+
)sequential_147_lstm_441_while_cond_828587*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_147/lstm_441/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_147/lstm_441/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_147/lstm_441/while:output:3Qsequential_147/lstm_441/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_147/lstm_441/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_147/lstm_441/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_441/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_441/strided_slice_3StridedSliceCsequential_147/lstm_441/TensorArrayV2Stack/TensorListStack:tensor:06sequential_147/lstm_441/strided_slice_3/stack:output:08sequential_147/lstm_441/strided_slice_3/stack_1:output:08sequential_147/lstm_441/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_147/lstm_441/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_147/lstm_441/transpose_1	TransposeCsequential_147/lstm_441/TensorArrayV2Stack/TensorListStack:tensor:01sequential_147/lstm_441/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_147/lstm_441/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_147/lstm_442/ShapeShape'sequential_147/lstm_441/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_147/lstm_442/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_147/lstm_442/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_147/lstm_442/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_147/lstm_442/strided_sliceStridedSlice&sequential_147/lstm_442/Shape:output:04sequential_147/lstm_442/strided_slice/stack:output:06sequential_147/lstm_442/strided_slice/stack_1:output:06sequential_147/lstm_442/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_147/lstm_442/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_147/lstm_442/zeros/packedPack.sequential_147/lstm_442/strided_slice:output:0/sequential_147/lstm_442/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_147/lstm_442/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_442/zerosFill-sequential_147/lstm_442/zeros/packed:output:0,sequential_147/lstm_442/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_147/lstm_442/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_147/lstm_442/zeros_1/packedPack.sequential_147/lstm_442/strided_slice:output:01sequential_147/lstm_442/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_147/lstm_442/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_442/zeros_1Fill/sequential_147/lstm_442/zeros_1/packed:output:0.sequential_147/lstm_442/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_147/lstm_442/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_147/lstm_442/transpose	Transpose'sequential_147/lstm_441/transpose_1:y:0/sequential_147/lstm_442/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_147/lstm_442/Shape_1Shape%sequential_147/lstm_442/transpose:y:0*
T0*
_output_shapes
:w
-sequential_147/lstm_442/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_442/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_442/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_442/strided_slice_1StridedSlice(sequential_147/lstm_442/Shape_1:output:06sequential_147/lstm_442/strided_slice_1/stack:output:08sequential_147/lstm_442/strided_slice_1/stack_1:output:08sequential_147/lstm_442/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_147/lstm_442/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_147/lstm_442/TensorArrayV2TensorListReserve<sequential_147/lstm_442/TensorArrayV2/element_shape:output:00sequential_147/lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_147/lstm_442/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_147/lstm_442/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_147/lstm_442/transpose:y:0Vsequential_147/lstm_442/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_147/lstm_442/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_442/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_442/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_442/strided_slice_2StridedSlice%sequential_147/lstm_442/transpose:y:06sequential_147/lstm_442/strided_slice_2/stack:output:08sequential_147/lstm_442/strided_slice_2/stack_1:output:08sequential_147/lstm_442/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOpReadVariableOpDsequential_147_lstm_442_lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_147/lstm_442/lstm_cell_136/MatMulMatMul0sequential_147/lstm_442/strided_slice_2:output:0Csequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOpFsequential_147_lstm_442_lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_147/lstm_442/lstm_cell_136/MatMul_1MatMul&sequential_147/lstm_442/zeros:output:0Esequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_147/lstm_442/lstm_cell_136/addAddV26sequential_147/lstm_442/lstm_cell_136/MatMul:product:08sequential_147/lstm_442/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOpEsequential_147_lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_147/lstm_442/lstm_cell_136/BiasAddBiasAdd-sequential_147/lstm_442/lstm_cell_136/add:z:0Dsequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_147/lstm_442/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_147/lstm_442/lstm_cell_136/splitSplit>sequential_147/lstm_442/lstm_cell_136/split/split_dim:output:06sequential_147/lstm_442/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_147/lstm_442/lstm_cell_136/SigmoidSigmoid4sequential_147/lstm_442/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_147/lstm_442/lstm_cell_136/Sigmoid_1Sigmoid4sequential_147/lstm_442/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_147/lstm_442/lstm_cell_136/mulMul3sequential_147/lstm_442/lstm_cell_136/Sigmoid_1:y:0(sequential_147/lstm_442/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_147/lstm_442/lstm_cell_136/ReluRelu4sequential_147/lstm_442/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_147/lstm_442/lstm_cell_136/mul_1Mul1sequential_147/lstm_442/lstm_cell_136/Sigmoid:y:08sequential_147/lstm_442/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_147/lstm_442/lstm_cell_136/add_1AddV2-sequential_147/lstm_442/lstm_cell_136/mul:z:0/sequential_147/lstm_442/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_147/lstm_442/lstm_cell_136/Sigmoid_2Sigmoid4sequential_147/lstm_442/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_147/lstm_442/lstm_cell_136/Relu_1Relu/sequential_147/lstm_442/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_147/lstm_442/lstm_cell_136/mul_2Mul3sequential_147/lstm_442/lstm_cell_136/Sigmoid_2:y:0:sequential_147/lstm_442/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_147/lstm_442/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_147/lstm_442/TensorArrayV2_1TensorListReserve>sequential_147/lstm_442/TensorArrayV2_1/element_shape:output:00sequential_147/lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_147/lstm_442/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_147/lstm_442/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_147/lstm_442/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_147/lstm_442/whileWhile3sequential_147/lstm_442/while/loop_counter:output:09sequential_147/lstm_442/while/maximum_iterations:output:0%sequential_147/lstm_442/time:output:00sequential_147/lstm_442/TensorArrayV2_1:handle:0&sequential_147/lstm_442/zeros:output:0(sequential_147/lstm_442/zeros_1:output:00sequential_147/lstm_442/strided_slice_1:output:0Osequential_147/lstm_442/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_147_lstm_442_lstm_cell_136_matmul_readvariableop_resourceFsequential_147_lstm_442_lstm_cell_136_matmul_1_readvariableop_resourceEsequential_147_lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
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
)sequential_147_lstm_442_while_body_828727*5
cond-R+
)sequential_147_lstm_442_while_cond_828726*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_147/lstm_442/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_147/lstm_442/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_147/lstm_442/while:output:3Qsequential_147/lstm_442/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_147/lstm_442/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_147/lstm_442/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_442/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_442/strided_slice_3StridedSliceCsequential_147/lstm_442/TensorArrayV2Stack/TensorListStack:tensor:06sequential_147/lstm_442/strided_slice_3/stack:output:08sequential_147/lstm_442/strided_slice_3/stack_1:output:08sequential_147/lstm_442/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_147/lstm_442/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_147/lstm_442/transpose_1	TransposeCsequential_147/lstm_442/TensorArrayV2Stack/TensorListStack:tensor:01sequential_147/lstm_442/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_147/lstm_442/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_147/lstm_443/ShapeShape'sequential_147/lstm_442/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_147/lstm_443/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_147/lstm_443/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_147/lstm_443/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_147/lstm_443/strided_sliceStridedSlice&sequential_147/lstm_443/Shape:output:04sequential_147/lstm_443/strided_slice/stack:output:06sequential_147/lstm_443/strided_slice/stack_1:output:06sequential_147/lstm_443/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_147/lstm_443/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_147/lstm_443/zeros/packedPack.sequential_147/lstm_443/strided_slice:output:0/sequential_147/lstm_443/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_147/lstm_443/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_443/zerosFill-sequential_147/lstm_443/zeros/packed:output:0,sequential_147/lstm_443/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_147/lstm_443/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_147/lstm_443/zeros_1/packedPack.sequential_147/lstm_443/strided_slice:output:01sequential_147/lstm_443/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_147/lstm_443/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_147/lstm_443/zeros_1Fill/sequential_147/lstm_443/zeros_1/packed:output:0.sequential_147/lstm_443/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_147/lstm_443/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_147/lstm_443/transpose	Transpose'sequential_147/lstm_442/transpose_1:y:0/sequential_147/lstm_443/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_147/lstm_443/Shape_1Shape%sequential_147/lstm_443/transpose:y:0*
T0*
_output_shapes
:w
-sequential_147/lstm_443/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_443/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_443/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_443/strided_slice_1StridedSlice(sequential_147/lstm_443/Shape_1:output:06sequential_147/lstm_443/strided_slice_1/stack:output:08sequential_147/lstm_443/strided_slice_1/stack_1:output:08sequential_147/lstm_443/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_147/lstm_443/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_147/lstm_443/TensorArrayV2TensorListReserve<sequential_147/lstm_443/TensorArrayV2/element_shape:output:00sequential_147/lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_147/lstm_443/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_147/lstm_443/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_147/lstm_443/transpose:y:0Vsequential_147/lstm_443/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_147/lstm_443/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_443/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_147/lstm_443/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_443/strided_slice_2StridedSlice%sequential_147/lstm_443/transpose:y:06sequential_147/lstm_443/strided_slice_2/stack:output:08sequential_147/lstm_443/strided_slice_2/stack_1:output:08sequential_147/lstm_443/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOpReadVariableOpDsequential_147_lstm_443_lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_147/lstm_443/lstm_cell_137/MatMulMatMul0sequential_147/lstm_443/strided_slice_2:output:0Csequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOpFsequential_147_lstm_443_lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_147/lstm_443/lstm_cell_137/MatMul_1MatMul&sequential_147/lstm_443/zeros:output:0Esequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_147/lstm_443/lstm_cell_137/addAddV26sequential_147/lstm_443/lstm_cell_137/MatMul:product:08sequential_147/lstm_443/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOpEsequential_147_lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_147/lstm_443/lstm_cell_137/BiasAddBiasAdd-sequential_147/lstm_443/lstm_cell_137/add:z:0Dsequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_147/lstm_443/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_147/lstm_443/lstm_cell_137/splitSplit>sequential_147/lstm_443/lstm_cell_137/split/split_dim:output:06sequential_147/lstm_443/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_147/lstm_443/lstm_cell_137/SigmoidSigmoid4sequential_147/lstm_443/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_147/lstm_443/lstm_cell_137/Sigmoid_1Sigmoid4sequential_147/lstm_443/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_147/lstm_443/lstm_cell_137/mulMul3sequential_147/lstm_443/lstm_cell_137/Sigmoid_1:y:0(sequential_147/lstm_443/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_147/lstm_443/lstm_cell_137/ReluRelu4sequential_147/lstm_443/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_147/lstm_443/lstm_cell_137/mul_1Mul1sequential_147/lstm_443/lstm_cell_137/Sigmoid:y:08sequential_147/lstm_443/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_147/lstm_443/lstm_cell_137/add_1AddV2-sequential_147/lstm_443/lstm_cell_137/mul:z:0/sequential_147/lstm_443/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_147/lstm_443/lstm_cell_137/Sigmoid_2Sigmoid4sequential_147/lstm_443/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_147/lstm_443/lstm_cell_137/Relu_1Relu/sequential_147/lstm_443/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_147/lstm_443/lstm_cell_137/mul_2Mul3sequential_147/lstm_443/lstm_cell_137/Sigmoid_2:y:0:sequential_147/lstm_443/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_147/lstm_443/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_147/lstm_443/TensorArrayV2_1TensorListReserve>sequential_147/lstm_443/TensorArrayV2_1/element_shape:output:00sequential_147/lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_147/lstm_443/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_147/lstm_443/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_147/lstm_443/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_147/lstm_443/whileWhile3sequential_147/lstm_443/while/loop_counter:output:09sequential_147/lstm_443/while/maximum_iterations:output:0%sequential_147/lstm_443/time:output:00sequential_147/lstm_443/TensorArrayV2_1:handle:0&sequential_147/lstm_443/zeros:output:0(sequential_147/lstm_443/zeros_1:output:00sequential_147/lstm_443/strided_slice_1:output:0Osequential_147/lstm_443/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_147_lstm_443_lstm_cell_137_matmul_readvariableop_resourceFsequential_147_lstm_443_lstm_cell_137_matmul_1_readvariableop_resourceEsequential_147_lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
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
)sequential_147_lstm_443_while_body_828866*5
cond-R+
)sequential_147_lstm_443_while_cond_828865*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_147/lstm_443/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_147/lstm_443/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_147/lstm_443/while:output:3Qsequential_147/lstm_443/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_147/lstm_443/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_147/lstm_443/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_147/lstm_443/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_147/lstm_443/strided_slice_3StridedSliceCsequential_147/lstm_443/TensorArrayV2Stack/TensorListStack:tensor:06sequential_147/lstm_443/strided_slice_3/stack:output:08sequential_147/lstm_443/strided_slice_3/stack_1:output:08sequential_147/lstm_443/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_147/lstm_443/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_147/lstm_443/transpose_1	TransposeCsequential_147/lstm_443/TensorArrayV2Stack/TensorListStack:tensor:01sequential_147/lstm_443/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_147/lstm_443/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_147/dense_147/MatMul/ReadVariableOpReadVariableOp7sequential_147_dense_147_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_147/dense_147/MatMulMatMul0sequential_147/lstm_443/strided_slice_3:output:06sequential_147/dense_147/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_147/dense_147/BiasAdd/ReadVariableOpReadVariableOp8sequential_147_dense_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_147/dense_147/BiasAddBiasAdd)sequential_147/dense_147/MatMul:product:07sequential_147/dense_147/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_147/dense_147/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_147/dense_147/BiasAdd/ReadVariableOp/^sequential_147/dense_147/MatMul/ReadVariableOp=^sequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp<^sequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOp>^sequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp^sequential_147/lstm_441/while=^sequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp<^sequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOp>^sequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp^sequential_147/lstm_442/while=^sequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp<^sequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOp>^sequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp^sequential_147/lstm_443/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_147/dense_147/BiasAdd/ReadVariableOp/sequential_147/dense_147/BiasAdd/ReadVariableOp2`
.sequential_147/dense_147/MatMul/ReadVariableOp.sequential_147/dense_147/MatMul/ReadVariableOp2|
<sequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp<sequential_147/lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp2z
;sequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOp;sequential_147/lstm_441/lstm_cell_135/MatMul/ReadVariableOp2~
=sequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp=sequential_147/lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp2>
sequential_147/lstm_441/whilesequential_147/lstm_441/while2|
<sequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp<sequential_147/lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp2z
;sequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOp;sequential_147/lstm_442/lstm_cell_136/MatMul/ReadVariableOp2~
=sequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp=sequential_147/lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp2>
sequential_147/lstm_442/whilesequential_147/lstm_442/while2|
<sequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp<sequential_147/lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp2z
;sequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOp;sequential_147/lstm_443/lstm_cell_137/MatMul/ReadVariableOp2~
=sequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp=sequential_147/lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp2>
sequential_147/lstm_443/whilesequential_147/lstm_443/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_441_input
?"
?
while_body_829578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_136_829602_0:	d?/
while_lstm_cell_136_829604_0:	2?+
while_lstm_cell_136_829606_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_136_829602:	d?-
while_lstm_cell_136_829604:	2?)
while_lstm_cell_136_829606:	???+while/lstm_cell_136/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_136/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_136_829602_0while_lstm_cell_136_829604_0while_lstm_cell_136_829606_0*
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829519?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_136/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_136/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_136/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_136/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_136_829602while_lstm_cell_136_829602_0":
while_lstm_cell_136_829604while_lstm_cell_136_829604_0":
while_lstm_cell_136_829606while_lstm_cell_136_829606_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_136/StatefulPartitionedCall+while/lstm_cell_136/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_833070
inputs_0?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_832986*
condR
while_cond_832985*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834089

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
while_cond_830916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830916___redundant_placeholder04
0while_while_cond_830916___redundant_placeholder14
0while_while_cond_830916___redundant_placeholder24
0while_while_cond_830916___redundant_placeholder3
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_829456

inputs'
lstm_cell_136_829374:	d?'
lstm_cell_136_829376:	2?#
lstm_cell_136_829378:	?
identity??%lstm_cell_136/StatefulPartitionedCall?while;
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
%lstm_cell_136/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_136_829374lstm_cell_136_829376lstm_cell_136_829378*
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829373n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_136_829374lstm_cell_136_829376lstm_cell_136_829378*
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
while_body_829387*
condR
while_cond_829386*K
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
NoOpNoOp&^lstm_cell_136/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_136/StatefulPartitionedCall%lstm_cell_136/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
)__inference_lstm_443_layer_call_fn_833389

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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830455o
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
lstm_443_while_cond_832033.
*lstm_443_while_lstm_443_while_loop_counter4
0lstm_443_while_lstm_443_while_maximum_iterations
lstm_443_while_placeholder 
lstm_443_while_placeholder_1 
lstm_443_while_placeholder_2 
lstm_443_while_placeholder_30
,lstm_443_while_less_lstm_443_strided_slice_1F
Blstm_443_while_lstm_443_while_cond_832033___redundant_placeholder0F
Blstm_443_while_lstm_443_while_cond_832033___redundant_placeholder1F
Blstm_443_while_lstm_443_while_cond_832033___redundant_placeholder2F
Blstm_443_while_lstm_443_while_cond_832033___redundant_placeholder3
lstm_443_while_identity
?
lstm_443/while/LessLesslstm_443_while_placeholder,lstm_443_while_less_lstm_443_strided_slice_1*
T0*
_output_shapes
: ]
lstm_443/while/IdentityIdentitylstm_443/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_443_while_identity lstm_443/while/Identity:output:0*(
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_830155

inputs?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_830071*
condR
while_cond_830070*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_442_layer_call_fn_832773

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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830305s
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
while_cond_833744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833744___redundant_placeholder04
0while_while_cond_833744___redundant_placeholder14
0while_while_cond_833744___redundant_placeholder24
0while_while_cond_833744___redundant_placeholder3
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834285

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
while_body_829228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_135_829252_0:	?/
while_lstm_cell_135_829254_0:	d?+
while_lstm_cell_135_829256_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_135_829252:	?-
while_lstm_cell_135_829254:	d?)
while_lstm_cell_135_829256:	???+while/lstm_cell_135/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_135/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_135_829252_0while_lstm_cell_135_829254_0while_lstm_cell_135_829256_0*
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829169?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_135/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_135/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_135/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_135/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_135_829252while_lstm_cell_135_829252_0":
while_lstm_cell_135_829254while_lstm_cell_135_829254_0":
while_lstm_cell_135_829256while_lstm_cell_135_829256_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_135/StatefulPartitionedCall+while/lstm_cell_135/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_sequential_147_layer_call_and_return_conditional_losses_830480

inputs"
lstm_441_830156:	?"
lstm_441_830158:	d?
lstm_441_830160:	?"
lstm_442_830306:	d?"
lstm_442_830308:	2?
lstm_442_830310:	?!
lstm_443_830456:2(!
lstm_443_830458:
(
lstm_443_830460:("
dense_147_830474:

dense_147_830476:
identity??!dense_147/StatefulPartitionedCall? lstm_441/StatefulPartitionedCall? lstm_442/StatefulPartitionedCall? lstm_443/StatefulPartitionedCall?
 lstm_441/StatefulPartitionedCallStatefulPartitionedCallinputslstm_441_830156lstm_441_830158lstm_441_830160*
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_830155?
 lstm_442/StatefulPartitionedCallStatefulPartitionedCall)lstm_441/StatefulPartitionedCall:output:0lstm_442_830306lstm_442_830308lstm_442_830310*
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830305?
 lstm_443/StatefulPartitionedCallStatefulPartitionedCall)lstm_442/StatefulPartitionedCall:output:0lstm_443_830456lstm_443_830458lstm_443_830460*
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830455?
!dense_147/StatefulPartitionedCallStatefulPartitionedCall)lstm_443/StatefulPartitionedCall:output:0dense_147_830474dense_147_830476*
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
E__inference_dense_147_layer_call_and_return_conditional_losses_830473y
IdentityIdentity*dense_147/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_147/StatefulPartitionedCall!^lstm_441/StatefulPartitionedCall!^lstm_442/StatefulPartitionedCall!^lstm_443/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2D
 lstm_441/StatefulPartitionedCall lstm_441/StatefulPartitionedCall2D
 lstm_442/StatefulPartitionedCall lstm_442/StatefulPartitionedCall2D
 lstm_443/StatefulPartitionedCall lstm_443/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_441_layer_call_and_return_conditional_losses_829297

inputs'
lstm_cell_135_829215:	?'
lstm_cell_135_829217:	d?#
lstm_cell_135_829219:	?
identity??%lstm_cell_135/StatefulPartitionedCall?while;
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
%lstm_cell_135/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_135_829215lstm_cell_135_829217lstm_cell_135_829219*
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829169n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_135_829215lstm_cell_135_829217lstm_cell_135_829219*
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
while_body_829228*
condR
while_cond_829227*K
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
NoOpNoOp&^lstm_cell_135/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_135/StatefulPartitionedCall%lstm_cell_135/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_830917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_832842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832842___redundant_placeholder04
0while_while_cond_832842___redundant_placeholder14
0while_while_cond_832842___redundant_placeholder24
0while_while_cond_832842___redundant_placeholder3
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_829647

inputs'
lstm_cell_136_829565:	d?'
lstm_cell_136_829567:	2?#
lstm_cell_136_829569:	?
identity??%lstm_cell_136/StatefulPartitionedCall?while;
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
%lstm_cell_136/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_136_829565lstm_cell_136_829567lstm_cell_136_829569*
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829519n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_136_829565lstm_cell_136_829567lstm_cell_136_829569*
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
while_body_829578*
condR
while_cond_829577*K
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
NoOpNoOp&^lstm_cell_136/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_136/StatefulPartitionedCall%lstm_cell_136/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_832986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_832985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832985___redundant_placeholder04
0while_while_cond_832985___redundant_placeholder14
0while_while_cond_832985___redundant_placeholder24
0while_while_cond_832985___redundant_placeholder3
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
.__inference_lstm_cell_135_layer_call_fn_834008

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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829023o
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
while_cond_832226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832226___redundant_placeholder04
0while_while_cond_832226___redundant_placeholder14
0while_while_cond_832226___redundant_placeholder24
0while_while_cond_832226___redundant_placeholder3
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
while_cond_832655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832655___redundant_placeholder04
0while_while_cond_832655___redundant_placeholder14
0while_while_cond_832655___redundant_placeholder24
0while_while_cond_832655___redundant_placeholder3
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_831069

inputs"
lstm_441_831042:	?"
lstm_441_831044:	d?
lstm_441_831046:	?"
lstm_442_831049:	d?"
lstm_442_831051:	2?
lstm_442_831053:	?!
lstm_443_831056:2(!
lstm_443_831058:
(
lstm_443_831060:("
dense_147_831063:

dense_147_831065:
identity??!dense_147/StatefulPartitionedCall? lstm_441/StatefulPartitionedCall? lstm_442/StatefulPartitionedCall? lstm_443/StatefulPartitionedCall?
 lstm_441/StatefulPartitionedCallStatefulPartitionedCallinputslstm_441_831042lstm_441_831044lstm_441_831046*
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_831001?
 lstm_442/StatefulPartitionedCallStatefulPartitionedCall)lstm_441/StatefulPartitionedCall:output:0lstm_442_831049lstm_442_831051lstm_442_831053*
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830836?
 lstm_443/StatefulPartitionedCallStatefulPartitionedCall)lstm_442/StatefulPartitionedCall:output:0lstm_443_831056lstm_443_831058lstm_443_831060*
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830671?
!dense_147/StatefulPartitionedCallStatefulPartitionedCall)lstm_443/StatefulPartitionedCall:output:0dense_147_831063dense_147_831065*
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
E__inference_dense_147_layer_call_and_return_conditional_losses_830473y
IdentityIdentity*dense_147/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_147/StatefulPartitionedCall!^lstm_441/StatefulPartitionedCall!^lstm_442/StatefulPartitionedCall!^lstm_443/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2D
 lstm_441/StatefulPartitionedCall lstm_441/StatefulPartitionedCall2D
 lstm_442/StatefulPartitionedCall lstm_442/StatefulPartitionedCall2D
 lstm_443/StatefulPartitionedCall lstm_443/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_147_layer_call_fn_831121
lstm_441_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_441_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_831069o
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
_user_specified_namelstm_441_input
?8
?
while_body_830587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_833272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_829928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_137_829952_0:2(.
while_lstm_cell_137_829954_0:
(*
while_lstm_cell_137_829956_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_137_829952:2(,
while_lstm_cell_137_829954:
((
while_lstm_cell_137_829956:(??+while/lstm_cell_137/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_137/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_137_829952_0while_lstm_cell_137_829954_0while_lstm_cell_137_829956_0*
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829869?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_137/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_137/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_137/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_137_829952while_lstm_cell_137_829952_0":
while_lstm_cell_137_829954while_lstm_cell_137_829954_0":
while_lstm_cell_137_829956while_lstm_cell_137_829956_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_137/StatefulPartitionedCall+while/lstm_cell_137/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_442_while_cond_831467.
*lstm_442_while_lstm_442_while_loop_counter4
0lstm_442_while_lstm_442_while_maximum_iterations
lstm_442_while_placeholder 
lstm_442_while_placeholder_1 
lstm_442_while_placeholder_2 
lstm_442_while_placeholder_30
,lstm_442_while_less_lstm_442_strided_slice_1F
Blstm_442_while_lstm_442_while_cond_831467___redundant_placeholder0F
Blstm_442_while_lstm_442_while_cond_831467___redundant_placeholder1F
Blstm_442_while_lstm_442_while_cond_831467___redundant_placeholder2F
Blstm_442_while_lstm_442_while_cond_831467___redundant_placeholder3
lstm_442_while_identity
?
lstm_442/while/LessLesslstm_442_while_placeholder,lstm_442_while_less_lstm_442_strided_slice_1*
T0*
_output_shapes
: ]
lstm_442/while/IdentityIdentitylstm_442/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_442_while_identity lstm_442/while/Identity:output:0*(
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
while_body_832227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_833745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_833601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833601___redundant_placeholder04
0while_while_cond_833601___redundant_placeholder14
0while_while_cond_833601___redundant_placeholder24
0while_while_cond_833601___redundant_placeholder3
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
)__inference_lstm_443_layer_call_fn_833378
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_829997o
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
?J
?
D__inference_lstm_441_layer_call_and_return_conditional_losses_832740

inputs?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_832656*
condR
while_cond_832655*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829169

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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833543
inputs_0>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_833459*
condR
while_cond_833458*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829519

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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833829

inputs>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_833745*
condR
while_cond_833744*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829373

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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832597

inputs?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_832513*
condR
while_cond_832512*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_136_layer_call_fn_834106

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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829373o
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
?
.__inference_lstm_cell_137_layer_call_fn_834221

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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829869o
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
?
?
J__inference_sequential_147_layer_call_and_return_conditional_losses_831151
lstm_441_input"
lstm_441_831124:	?"
lstm_441_831126:	d?
lstm_441_831128:	?"
lstm_442_831131:	d?"
lstm_442_831133:	2?
lstm_442_831135:	?!
lstm_443_831138:2(!
lstm_443_831140:
(
lstm_443_831142:("
dense_147_831145:

dense_147_831147:
identity??!dense_147/StatefulPartitionedCall? lstm_441/StatefulPartitionedCall? lstm_442/StatefulPartitionedCall? lstm_443/StatefulPartitionedCall?
 lstm_441/StatefulPartitionedCallStatefulPartitionedCalllstm_441_inputlstm_441_831124lstm_441_831126lstm_441_831128*
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_830155?
 lstm_442/StatefulPartitionedCallStatefulPartitionedCall)lstm_441/StatefulPartitionedCall:output:0lstm_442_831131lstm_442_831133lstm_442_831135*
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830305?
 lstm_443/StatefulPartitionedCallStatefulPartitionedCall)lstm_442/StatefulPartitionedCall:output:0lstm_443_831138lstm_443_831140lstm_443_831142*
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830455?
!dense_147/StatefulPartitionedCallStatefulPartitionedCall)lstm_443/StatefulPartitionedCall:output:0dense_147_831145dense_147_831147*
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
E__inference_dense_147_layer_call_and_return_conditional_losses_830473y
IdentityIdentity*dense_147/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_147/StatefulPartitionedCall!^lstm_441/StatefulPartitionedCall!^lstm_442/StatefulPartitionedCall!^lstm_443/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2D
 lstm_441/StatefulPartitionedCall lstm_441/StatefulPartitionedCall2D
 lstm_442/StatefulPartitionedCall lstm_442/StatefulPartitionedCall2D
 lstm_443/StatefulPartitionedCall lstm_443/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_441_input
?
?
)__inference_lstm_442_layer_call_fn_832762
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_829647|
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
)__inference_lstm_441_layer_call_fn_832146
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_829297|
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829869

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
while_cond_830586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830586___redundant_placeholder04
0while_while_cond_830586___redundant_placeholder14
0while_while_cond_830586___redundant_placeholder24
0while_while_cond_830586___redundant_placeholder3
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
.__inference_lstm_cell_137_layer_call_fn_834204

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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829723o
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834057

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
while_cond_830220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830220___redundant_placeholder04
0while_while_cond_830220___redundant_placeholder14
0while_while_cond_830220___redundant_placeholder24
0while_while_cond_830220___redundant_placeholder3
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
)__inference_lstm_443_layer_call_fn_833367
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_829806o
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
?
D__inference_lstm_443_layer_call_and_return_conditional_losses_829806

inputs&
lstm_cell_137_829724:2(&
lstm_cell_137_829726:
("
lstm_cell_137_829728:(
identity??%lstm_cell_137/StatefulPartitionedCall?while;
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
%lstm_cell_137/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_137_829724lstm_cell_137_829726lstm_cell_137_829728*
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829723n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_137_829724lstm_cell_137_829726lstm_cell_137_829728*
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
while_body_829737*
condR
while_cond_829736*K
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
NoOpNoOp&^lstm_cell_137/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_137/StatefulPartitionedCall%lstm_cell_137/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_441_layer_call_and_return_conditional_losses_831001

inputs?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_830917*
condR
while_cond_830916*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_147_layer_call_and_return_conditional_losses_832124

inputsH
5lstm_441_lstm_cell_135_matmul_readvariableop_resource:	?J
7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource:	d?E
6lstm_441_lstm_cell_135_biasadd_readvariableop_resource:	?H
5lstm_442_lstm_cell_136_matmul_readvariableop_resource:	d?J
7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource:	2?E
6lstm_442_lstm_cell_136_biasadd_readvariableop_resource:	?G
5lstm_443_lstm_cell_137_matmul_readvariableop_resource:2(I
7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource:
(D
6lstm_443_lstm_cell_137_biasadd_readvariableop_resource:(:
(dense_147_matmul_readvariableop_resource:
7
)dense_147_biasadd_readvariableop_resource:
identity?? dense_147/BiasAdd/ReadVariableOp?dense_147/MatMul/ReadVariableOp?-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp?,lstm_441/lstm_cell_135/MatMul/ReadVariableOp?.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp?lstm_441/while?-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp?,lstm_442/lstm_cell_136/MatMul/ReadVariableOp?.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp?lstm_442/while?-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp?,lstm_443/lstm_cell_137/MatMul/ReadVariableOp?.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp?lstm_443/whileD
lstm_441/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_441/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_441/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_441/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_sliceStridedSlicelstm_441/Shape:output:0%lstm_441/strided_slice/stack:output:0'lstm_441/strided_slice/stack_1:output:0'lstm_441/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_441/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_441/zeros/packedPacklstm_441/strided_slice:output:0 lstm_441/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_441/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_441/zerosFilllstm_441/zeros/packed:output:0lstm_441/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_441/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_441/zeros_1/packedPacklstm_441/strided_slice:output:0"lstm_441/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_441/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_441/zeros_1Fill lstm_441/zeros_1/packed:output:0lstm_441/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_441/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_441/transpose	Transposeinputs lstm_441/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_441/Shape_1Shapelstm_441/transpose:y:0*
T0*
_output_shapes
:h
lstm_441/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_441/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_1StridedSlicelstm_441/Shape_1:output:0'lstm_441/strided_slice_1/stack:output:0)lstm_441/strided_slice_1/stack_1:output:0)lstm_441/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_441/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_441/TensorArrayV2TensorListReserve-lstm_441/TensorArrayV2/element_shape:output:0!lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_441/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_441/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_441/transpose:y:0Glstm_441/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_441/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_441/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_2StridedSlicelstm_441/transpose:y:0'lstm_441/strided_slice_2/stack:output:0)lstm_441/strided_slice_2/stack_1:output:0)lstm_441/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_441/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp5lstm_441_lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_441/lstm_cell_135/MatMulMatMul!lstm_441/strided_slice_2:output:04lstm_441/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_441/lstm_cell_135/MatMul_1MatMullstm_441/zeros:output:06lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_441/lstm_cell_135/addAddV2'lstm_441/lstm_cell_135/MatMul:product:0)lstm_441/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp6lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_441/lstm_cell_135/BiasAddBiasAddlstm_441/lstm_cell_135/add:z:05lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_441/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_441/lstm_cell_135/splitSplit/lstm_441/lstm_cell_135/split/split_dim:output:0'lstm_441/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_441/lstm_cell_135/SigmoidSigmoid%lstm_441/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_441/lstm_cell_135/Sigmoid_1Sigmoid%lstm_441/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mulMul$lstm_441/lstm_cell_135/Sigmoid_1:y:0lstm_441/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_441/lstm_cell_135/ReluRelu%lstm_441/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mul_1Mul"lstm_441/lstm_cell_135/Sigmoid:y:0)lstm_441/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/add_1AddV2lstm_441/lstm_cell_135/mul:z:0 lstm_441/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_441/lstm_cell_135/Sigmoid_2Sigmoid%lstm_441/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_441/lstm_cell_135/Relu_1Relu lstm_441/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mul_2Mul$lstm_441/lstm_cell_135/Sigmoid_2:y:0+lstm_441/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_441/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_441/TensorArrayV2_1TensorListReserve/lstm_441/TensorArrayV2_1/element_shape:output:0!lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_441/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_441/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_441/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_441/whileWhile$lstm_441/while/loop_counter:output:0*lstm_441/while/maximum_iterations:output:0lstm_441/time:output:0!lstm_441/TensorArrayV2_1:handle:0lstm_441/zeros:output:0lstm_441/zeros_1:output:0!lstm_441/strided_slice_1:output:0@lstm_441/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_441_lstm_cell_135_matmul_readvariableop_resource7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource6lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
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
lstm_441_while_body_831756*&
condR
lstm_441_while_cond_831755*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_441/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_441/TensorArrayV2Stack/TensorListStackTensorListStacklstm_441/while:output:3Blstm_441/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_441/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_441/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_3StridedSlice4lstm_441/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_441/strided_slice_3/stack:output:0)lstm_441/strided_slice_3/stack_1:output:0)lstm_441/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_441/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_441/transpose_1	Transpose4lstm_441/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_441/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_441/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_442/ShapeShapelstm_441/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_442/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_442/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_442/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_sliceStridedSlicelstm_442/Shape:output:0%lstm_442/strided_slice/stack:output:0'lstm_442/strided_slice/stack_1:output:0'lstm_442/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_442/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_442/zeros/packedPacklstm_442/strided_slice:output:0 lstm_442/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_442/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_442/zerosFilllstm_442/zeros/packed:output:0lstm_442/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_442/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_442/zeros_1/packedPacklstm_442/strided_slice:output:0"lstm_442/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_442/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_442/zeros_1Fill lstm_442/zeros_1/packed:output:0lstm_442/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_442/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_442/transpose	Transposelstm_441/transpose_1:y:0 lstm_442/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_442/Shape_1Shapelstm_442/transpose:y:0*
T0*
_output_shapes
:h
lstm_442/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_442/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_1StridedSlicelstm_442/Shape_1:output:0'lstm_442/strided_slice_1/stack:output:0)lstm_442/strided_slice_1/stack_1:output:0)lstm_442/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_442/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_442/TensorArrayV2TensorListReserve-lstm_442/TensorArrayV2/element_shape:output:0!lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_442/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_442/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_442/transpose:y:0Glstm_442/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_442/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_442/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_2StridedSlicelstm_442/transpose:y:0'lstm_442/strided_slice_2/stack:output:0)lstm_442/strided_slice_2/stack_1:output:0)lstm_442/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_442/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp5lstm_442_lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_442/lstm_cell_136/MatMulMatMul!lstm_442/strided_slice_2:output:04lstm_442/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_442/lstm_cell_136/MatMul_1MatMullstm_442/zeros:output:06lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_442/lstm_cell_136/addAddV2'lstm_442/lstm_cell_136/MatMul:product:0)lstm_442/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp6lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_442/lstm_cell_136/BiasAddBiasAddlstm_442/lstm_cell_136/add:z:05lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_442/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_442/lstm_cell_136/splitSplit/lstm_442/lstm_cell_136/split/split_dim:output:0'lstm_442/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_442/lstm_cell_136/SigmoidSigmoid%lstm_442/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_442/lstm_cell_136/Sigmoid_1Sigmoid%lstm_442/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mulMul$lstm_442/lstm_cell_136/Sigmoid_1:y:0lstm_442/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_442/lstm_cell_136/ReluRelu%lstm_442/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mul_1Mul"lstm_442/lstm_cell_136/Sigmoid:y:0)lstm_442/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/add_1AddV2lstm_442/lstm_cell_136/mul:z:0 lstm_442/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_442/lstm_cell_136/Sigmoid_2Sigmoid%lstm_442/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_442/lstm_cell_136/Relu_1Relu lstm_442/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mul_2Mul$lstm_442/lstm_cell_136/Sigmoid_2:y:0+lstm_442/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_442/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_442/TensorArrayV2_1TensorListReserve/lstm_442/TensorArrayV2_1/element_shape:output:0!lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_442/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_442/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_442/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_442/whileWhile$lstm_442/while/loop_counter:output:0*lstm_442/while/maximum_iterations:output:0lstm_442/time:output:0!lstm_442/TensorArrayV2_1:handle:0lstm_442/zeros:output:0lstm_442/zeros_1:output:0!lstm_442/strided_slice_1:output:0@lstm_442/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_442_lstm_cell_136_matmul_readvariableop_resource7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource6lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
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
lstm_442_while_body_831895*&
condR
lstm_442_while_cond_831894*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_442/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_442/TensorArrayV2Stack/TensorListStackTensorListStacklstm_442/while:output:3Blstm_442/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_442/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_442/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_3StridedSlice4lstm_442/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_442/strided_slice_3/stack:output:0)lstm_442/strided_slice_3/stack_1:output:0)lstm_442/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_442/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_442/transpose_1	Transpose4lstm_442/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_442/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_442/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_443/ShapeShapelstm_442/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_443/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_443/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_443/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_sliceStridedSlicelstm_443/Shape:output:0%lstm_443/strided_slice/stack:output:0'lstm_443/strided_slice/stack_1:output:0'lstm_443/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_443/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_443/zeros/packedPacklstm_443/strided_slice:output:0 lstm_443/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_443/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_443/zerosFilllstm_443/zeros/packed:output:0lstm_443/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_443/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_443/zeros_1/packedPacklstm_443/strided_slice:output:0"lstm_443/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_443/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_443/zeros_1Fill lstm_443/zeros_1/packed:output:0lstm_443/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_443/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_443/transpose	Transposelstm_442/transpose_1:y:0 lstm_443/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_443/Shape_1Shapelstm_443/transpose:y:0*
T0*
_output_shapes
:h
lstm_443/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_443/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_1StridedSlicelstm_443/Shape_1:output:0'lstm_443/strided_slice_1/stack:output:0)lstm_443/strided_slice_1/stack_1:output:0)lstm_443/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_443/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_443/TensorArrayV2TensorListReserve-lstm_443/TensorArrayV2/element_shape:output:0!lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_443/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_443/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_443/transpose:y:0Glstm_443/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_443/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_443/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_2StridedSlicelstm_443/transpose:y:0'lstm_443/strided_slice_2/stack:output:0)lstm_443/strided_slice_2/stack_1:output:0)lstm_443/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_443/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp5lstm_443_lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_443/lstm_cell_137/MatMulMatMul!lstm_443/strided_slice_2:output:04lstm_443/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_443/lstm_cell_137/MatMul_1MatMullstm_443/zeros:output:06lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_443/lstm_cell_137/addAddV2'lstm_443/lstm_cell_137/MatMul:product:0)lstm_443/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp6lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_443/lstm_cell_137/BiasAddBiasAddlstm_443/lstm_cell_137/add:z:05lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_443/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_443/lstm_cell_137/splitSplit/lstm_443/lstm_cell_137/split/split_dim:output:0'lstm_443/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_443/lstm_cell_137/SigmoidSigmoid%lstm_443/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_443/lstm_cell_137/Sigmoid_1Sigmoid%lstm_443/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mulMul$lstm_443/lstm_cell_137/Sigmoid_1:y:0lstm_443/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_443/lstm_cell_137/ReluRelu%lstm_443/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mul_1Mul"lstm_443/lstm_cell_137/Sigmoid:y:0)lstm_443/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/add_1AddV2lstm_443/lstm_cell_137/mul:z:0 lstm_443/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_443/lstm_cell_137/Sigmoid_2Sigmoid%lstm_443/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_443/lstm_cell_137/Relu_1Relu lstm_443/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mul_2Mul$lstm_443/lstm_cell_137/Sigmoid_2:y:0+lstm_443/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_443/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_443/TensorArrayV2_1TensorListReserve/lstm_443/TensorArrayV2_1/element_shape:output:0!lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_443/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_443/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_443/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_443/whileWhile$lstm_443/while/loop_counter:output:0*lstm_443/while/maximum_iterations:output:0lstm_443/time:output:0!lstm_443/TensorArrayV2_1:handle:0lstm_443/zeros:output:0lstm_443/zeros_1:output:0!lstm_443/strided_slice_1:output:0@lstm_443/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_443_lstm_cell_137_matmul_readvariableop_resource7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource6lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
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
lstm_443_while_body_832034*&
condR
lstm_443_while_cond_832033*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_443/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_443/TensorArrayV2Stack/TensorListStackTensorListStacklstm_443/while:output:3Blstm_443/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_443/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_443/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_3StridedSlice4lstm_443/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_443/strided_slice_3/stack:output:0)lstm_443/strided_slice_3/stack_1:output:0)lstm_443/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_443/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_443/transpose_1	Transpose4lstm_443/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_443/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_443/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_147/MatMul/ReadVariableOpReadVariableOp(dense_147_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_147/MatMulMatMul!lstm_443/strided_slice_3:output:0'dense_147/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_147/BiasAdd/ReadVariableOpReadVariableOp)dense_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_147/BiasAddBiasAdddense_147/MatMul:product:0(dense_147/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_147/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_147/BiasAdd/ReadVariableOp ^dense_147/MatMul/ReadVariableOp.^lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp-^lstm_441/lstm_cell_135/MatMul/ReadVariableOp/^lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp^lstm_441/while.^lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp-^lstm_442/lstm_cell_136/MatMul/ReadVariableOp/^lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp^lstm_442/while.^lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp-^lstm_443/lstm_cell_137/MatMul/ReadVariableOp/^lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp^lstm_443/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_147/BiasAdd/ReadVariableOp dense_147/BiasAdd/ReadVariableOp2B
dense_147/MatMul/ReadVariableOpdense_147/MatMul/ReadVariableOp2^
-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp2\
,lstm_441/lstm_cell_135/MatMul/ReadVariableOp,lstm_441/lstm_cell_135/MatMul/ReadVariableOp2`
.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp2 
lstm_441/whilelstm_441/while2^
-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp2\
,lstm_442/lstm_cell_136/MatMul/ReadVariableOp,lstm_442/lstm_cell_136/MatMul/ReadVariableOp2`
.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp2 
lstm_442/whilelstm_442/while2^
-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp2\
,lstm_443/lstm_cell_137/MatMul/ReadVariableOp,lstm_443/lstm_cell_137/MatMul/ReadVariableOp2`
.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp2 
lstm_443/whilelstm_443/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_147_layer_call_and_return_conditional_losses_831697

inputsH
5lstm_441_lstm_cell_135_matmul_readvariableop_resource:	?J
7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource:	d?E
6lstm_441_lstm_cell_135_biasadd_readvariableop_resource:	?H
5lstm_442_lstm_cell_136_matmul_readvariableop_resource:	d?J
7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource:	2?E
6lstm_442_lstm_cell_136_biasadd_readvariableop_resource:	?G
5lstm_443_lstm_cell_137_matmul_readvariableop_resource:2(I
7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource:
(D
6lstm_443_lstm_cell_137_biasadd_readvariableop_resource:(:
(dense_147_matmul_readvariableop_resource:
7
)dense_147_biasadd_readvariableop_resource:
identity?? dense_147/BiasAdd/ReadVariableOp?dense_147/MatMul/ReadVariableOp?-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp?,lstm_441/lstm_cell_135/MatMul/ReadVariableOp?.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp?lstm_441/while?-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp?,lstm_442/lstm_cell_136/MatMul/ReadVariableOp?.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp?lstm_442/while?-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp?,lstm_443/lstm_cell_137/MatMul/ReadVariableOp?.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp?lstm_443/whileD
lstm_441/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_441/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_441/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_441/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_sliceStridedSlicelstm_441/Shape:output:0%lstm_441/strided_slice/stack:output:0'lstm_441/strided_slice/stack_1:output:0'lstm_441/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_441/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_441/zeros/packedPacklstm_441/strided_slice:output:0 lstm_441/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_441/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_441/zerosFilllstm_441/zeros/packed:output:0lstm_441/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_441/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_441/zeros_1/packedPacklstm_441/strided_slice:output:0"lstm_441/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_441/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_441/zeros_1Fill lstm_441/zeros_1/packed:output:0lstm_441/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_441/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_441/transpose	Transposeinputs lstm_441/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_441/Shape_1Shapelstm_441/transpose:y:0*
T0*
_output_shapes
:h
lstm_441/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_441/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_1StridedSlicelstm_441/Shape_1:output:0'lstm_441/strided_slice_1/stack:output:0)lstm_441/strided_slice_1/stack_1:output:0)lstm_441/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_441/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_441/TensorArrayV2TensorListReserve-lstm_441/TensorArrayV2/element_shape:output:0!lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_441/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_441/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_441/transpose:y:0Glstm_441/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_441/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_441/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_2StridedSlicelstm_441/transpose:y:0'lstm_441/strided_slice_2/stack:output:0)lstm_441/strided_slice_2/stack_1:output:0)lstm_441/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_441/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp5lstm_441_lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_441/lstm_cell_135/MatMulMatMul!lstm_441/strided_slice_2:output:04lstm_441/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_441/lstm_cell_135/MatMul_1MatMullstm_441/zeros:output:06lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_441/lstm_cell_135/addAddV2'lstm_441/lstm_cell_135/MatMul:product:0)lstm_441/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp6lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_441/lstm_cell_135/BiasAddBiasAddlstm_441/lstm_cell_135/add:z:05lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_441/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_441/lstm_cell_135/splitSplit/lstm_441/lstm_cell_135/split/split_dim:output:0'lstm_441/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_441/lstm_cell_135/SigmoidSigmoid%lstm_441/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_441/lstm_cell_135/Sigmoid_1Sigmoid%lstm_441/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mulMul$lstm_441/lstm_cell_135/Sigmoid_1:y:0lstm_441/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_441/lstm_cell_135/ReluRelu%lstm_441/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mul_1Mul"lstm_441/lstm_cell_135/Sigmoid:y:0)lstm_441/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/add_1AddV2lstm_441/lstm_cell_135/mul:z:0 lstm_441/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_441/lstm_cell_135/Sigmoid_2Sigmoid%lstm_441/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_441/lstm_cell_135/Relu_1Relu lstm_441/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_441/lstm_cell_135/mul_2Mul$lstm_441/lstm_cell_135/Sigmoid_2:y:0+lstm_441/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_441/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_441/TensorArrayV2_1TensorListReserve/lstm_441/TensorArrayV2_1/element_shape:output:0!lstm_441/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_441/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_441/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_441/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_441/whileWhile$lstm_441/while/loop_counter:output:0*lstm_441/while/maximum_iterations:output:0lstm_441/time:output:0!lstm_441/TensorArrayV2_1:handle:0lstm_441/zeros:output:0lstm_441/zeros_1:output:0!lstm_441/strided_slice_1:output:0@lstm_441/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_441_lstm_cell_135_matmul_readvariableop_resource7lstm_441_lstm_cell_135_matmul_1_readvariableop_resource6lstm_441_lstm_cell_135_biasadd_readvariableop_resource*
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
lstm_441_while_body_831329*&
condR
lstm_441_while_cond_831328*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_441/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_441/TensorArrayV2Stack/TensorListStackTensorListStacklstm_441/while:output:3Blstm_441/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_441/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_441/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_441/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_441/strided_slice_3StridedSlice4lstm_441/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_441/strided_slice_3/stack:output:0)lstm_441/strided_slice_3/stack_1:output:0)lstm_441/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_441/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_441/transpose_1	Transpose4lstm_441/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_441/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_441/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_442/ShapeShapelstm_441/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_442/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_442/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_442/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_sliceStridedSlicelstm_442/Shape:output:0%lstm_442/strided_slice/stack:output:0'lstm_442/strided_slice/stack_1:output:0'lstm_442/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_442/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_442/zeros/packedPacklstm_442/strided_slice:output:0 lstm_442/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_442/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_442/zerosFilllstm_442/zeros/packed:output:0lstm_442/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_442/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_442/zeros_1/packedPacklstm_442/strided_slice:output:0"lstm_442/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_442/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_442/zeros_1Fill lstm_442/zeros_1/packed:output:0lstm_442/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_442/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_442/transpose	Transposelstm_441/transpose_1:y:0 lstm_442/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_442/Shape_1Shapelstm_442/transpose:y:0*
T0*
_output_shapes
:h
lstm_442/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_442/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_1StridedSlicelstm_442/Shape_1:output:0'lstm_442/strided_slice_1/stack:output:0)lstm_442/strided_slice_1/stack_1:output:0)lstm_442/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_442/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_442/TensorArrayV2TensorListReserve-lstm_442/TensorArrayV2/element_shape:output:0!lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_442/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_442/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_442/transpose:y:0Glstm_442/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_442/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_442/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_2StridedSlicelstm_442/transpose:y:0'lstm_442/strided_slice_2/stack:output:0)lstm_442/strided_slice_2/stack_1:output:0)lstm_442/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_442/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp5lstm_442_lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_442/lstm_cell_136/MatMulMatMul!lstm_442/strided_slice_2:output:04lstm_442/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_442/lstm_cell_136/MatMul_1MatMullstm_442/zeros:output:06lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_442/lstm_cell_136/addAddV2'lstm_442/lstm_cell_136/MatMul:product:0)lstm_442/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp6lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_442/lstm_cell_136/BiasAddBiasAddlstm_442/lstm_cell_136/add:z:05lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_442/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_442/lstm_cell_136/splitSplit/lstm_442/lstm_cell_136/split/split_dim:output:0'lstm_442/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_442/lstm_cell_136/SigmoidSigmoid%lstm_442/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_442/lstm_cell_136/Sigmoid_1Sigmoid%lstm_442/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mulMul$lstm_442/lstm_cell_136/Sigmoid_1:y:0lstm_442/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_442/lstm_cell_136/ReluRelu%lstm_442/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mul_1Mul"lstm_442/lstm_cell_136/Sigmoid:y:0)lstm_442/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/add_1AddV2lstm_442/lstm_cell_136/mul:z:0 lstm_442/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_442/lstm_cell_136/Sigmoid_2Sigmoid%lstm_442/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_442/lstm_cell_136/Relu_1Relu lstm_442/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_442/lstm_cell_136/mul_2Mul$lstm_442/lstm_cell_136/Sigmoid_2:y:0+lstm_442/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_442/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_442/TensorArrayV2_1TensorListReserve/lstm_442/TensorArrayV2_1/element_shape:output:0!lstm_442/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_442/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_442/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_442/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_442/whileWhile$lstm_442/while/loop_counter:output:0*lstm_442/while/maximum_iterations:output:0lstm_442/time:output:0!lstm_442/TensorArrayV2_1:handle:0lstm_442/zeros:output:0lstm_442/zeros_1:output:0!lstm_442/strided_slice_1:output:0@lstm_442/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_442_lstm_cell_136_matmul_readvariableop_resource7lstm_442_lstm_cell_136_matmul_1_readvariableop_resource6lstm_442_lstm_cell_136_biasadd_readvariableop_resource*
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
lstm_442_while_body_831468*&
condR
lstm_442_while_cond_831467*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_442/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_442/TensorArrayV2Stack/TensorListStackTensorListStacklstm_442/while:output:3Blstm_442/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_442/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_442/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_442/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_442/strided_slice_3StridedSlice4lstm_442/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_442/strided_slice_3/stack:output:0)lstm_442/strided_slice_3/stack_1:output:0)lstm_442/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_442/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_442/transpose_1	Transpose4lstm_442/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_442/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_442/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_443/ShapeShapelstm_442/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_443/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_443/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_443/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_sliceStridedSlicelstm_443/Shape:output:0%lstm_443/strided_slice/stack:output:0'lstm_443/strided_slice/stack_1:output:0'lstm_443/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_443/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_443/zeros/packedPacklstm_443/strided_slice:output:0 lstm_443/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_443/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_443/zerosFilllstm_443/zeros/packed:output:0lstm_443/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_443/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_443/zeros_1/packedPacklstm_443/strided_slice:output:0"lstm_443/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_443/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_443/zeros_1Fill lstm_443/zeros_1/packed:output:0lstm_443/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_443/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_443/transpose	Transposelstm_442/transpose_1:y:0 lstm_443/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_443/Shape_1Shapelstm_443/transpose:y:0*
T0*
_output_shapes
:h
lstm_443/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_443/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_1StridedSlicelstm_443/Shape_1:output:0'lstm_443/strided_slice_1/stack:output:0)lstm_443/strided_slice_1/stack_1:output:0)lstm_443/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_443/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_443/TensorArrayV2TensorListReserve-lstm_443/TensorArrayV2/element_shape:output:0!lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_443/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_443/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_443/transpose:y:0Glstm_443/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_443/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_443/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_2StridedSlicelstm_443/transpose:y:0'lstm_443/strided_slice_2/stack:output:0)lstm_443/strided_slice_2/stack_1:output:0)lstm_443/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_443/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp5lstm_443_lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_443/lstm_cell_137/MatMulMatMul!lstm_443/strided_slice_2:output:04lstm_443/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_443/lstm_cell_137/MatMul_1MatMullstm_443/zeros:output:06lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_443/lstm_cell_137/addAddV2'lstm_443/lstm_cell_137/MatMul:product:0)lstm_443/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp6lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_443/lstm_cell_137/BiasAddBiasAddlstm_443/lstm_cell_137/add:z:05lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_443/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_443/lstm_cell_137/splitSplit/lstm_443/lstm_cell_137/split/split_dim:output:0'lstm_443/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_443/lstm_cell_137/SigmoidSigmoid%lstm_443/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_443/lstm_cell_137/Sigmoid_1Sigmoid%lstm_443/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mulMul$lstm_443/lstm_cell_137/Sigmoid_1:y:0lstm_443/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_443/lstm_cell_137/ReluRelu%lstm_443/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mul_1Mul"lstm_443/lstm_cell_137/Sigmoid:y:0)lstm_443/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/add_1AddV2lstm_443/lstm_cell_137/mul:z:0 lstm_443/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_443/lstm_cell_137/Sigmoid_2Sigmoid%lstm_443/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_443/lstm_cell_137/Relu_1Relu lstm_443/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_443/lstm_cell_137/mul_2Mul$lstm_443/lstm_cell_137/Sigmoid_2:y:0+lstm_443/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_443/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_443/TensorArrayV2_1TensorListReserve/lstm_443/TensorArrayV2_1/element_shape:output:0!lstm_443/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_443/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_443/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_443/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_443/whileWhile$lstm_443/while/loop_counter:output:0*lstm_443/while/maximum_iterations:output:0lstm_443/time:output:0!lstm_443/TensorArrayV2_1:handle:0lstm_443/zeros:output:0lstm_443/zeros_1:output:0!lstm_443/strided_slice_1:output:0@lstm_443/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_443_lstm_cell_137_matmul_readvariableop_resource7lstm_443_lstm_cell_137_matmul_1_readvariableop_resource6lstm_443_lstm_cell_137_biasadd_readvariableop_resource*
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
lstm_443_while_body_831607*&
condR
lstm_443_while_cond_831606*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_443/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_443/TensorArrayV2Stack/TensorListStackTensorListStacklstm_443/while:output:3Blstm_443/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_443/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_443/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_443/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_443/strided_slice_3StridedSlice4lstm_443/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_443/strided_slice_3/stack:output:0)lstm_443/strided_slice_3/stack_1:output:0)lstm_443/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_443/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_443/transpose_1	Transpose4lstm_443/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_443/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_443/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_147/MatMul/ReadVariableOpReadVariableOp(dense_147_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_147/MatMulMatMul!lstm_443/strided_slice_3:output:0'dense_147/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_147/BiasAdd/ReadVariableOpReadVariableOp)dense_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_147/BiasAddBiasAdddense_147/MatMul:product:0(dense_147/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_147/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_147/BiasAdd/ReadVariableOp ^dense_147/MatMul/ReadVariableOp.^lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp-^lstm_441/lstm_cell_135/MatMul/ReadVariableOp/^lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp^lstm_441/while.^lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp-^lstm_442/lstm_cell_136/MatMul/ReadVariableOp/^lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp^lstm_442/while.^lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp-^lstm_443/lstm_cell_137/MatMul/ReadVariableOp/^lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp^lstm_443/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_147/BiasAdd/ReadVariableOp dense_147/BiasAdd/ReadVariableOp2B
dense_147/MatMul/ReadVariableOpdense_147/MatMul/ReadVariableOp2^
-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp-lstm_441/lstm_cell_135/BiasAdd/ReadVariableOp2\
,lstm_441/lstm_cell_135/MatMul/ReadVariableOp,lstm_441/lstm_cell_135/MatMul/ReadVariableOp2`
.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp.lstm_441/lstm_cell_135/MatMul_1/ReadVariableOp2 
lstm_441/whilelstm_441/while2^
-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp-lstm_442/lstm_cell_136/BiasAdd/ReadVariableOp2\
,lstm_442/lstm_cell_136/MatMul/ReadVariableOp,lstm_442/lstm_cell_136/MatMul/ReadVariableOp2`
.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp.lstm_442/lstm_cell_136/MatMul_1/ReadVariableOp2 
lstm_442/whilelstm_442/while2^
-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp-lstm_443/lstm_cell_137/BiasAdd/ReadVariableOp2\
,lstm_443/lstm_cell_137/MatMul/ReadVariableOp,lstm_443/lstm_cell_137/MatMul/ReadVariableOp2`
.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp.lstm_443/lstm_cell_137/MatMul_1/ReadVariableOp2 
lstm_443/whilelstm_443/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_442_layer_call_and_return_conditional_losses_830305

inputs?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_830221*
condR
while_cond_830220*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_833602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833686
inputs_0>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_833602*
condR
while_cond_833601*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_443_while_body_832034.
*lstm_443_while_lstm_443_while_loop_counter4
0lstm_443_while_lstm_443_while_maximum_iterations
lstm_443_while_placeholder 
lstm_443_while_placeholder_1 
lstm_443_while_placeholder_2 
lstm_443_while_placeholder_3-
)lstm_443_while_lstm_443_strided_slice_1_0i
elstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0:2(Q
?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(L
>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0:(
lstm_443_while_identity
lstm_443_while_identity_1
lstm_443_while_identity_2
lstm_443_while_identity_3
lstm_443_while_identity_4
lstm_443_while_identity_5+
'lstm_443_while_lstm_443_strided_slice_1g
clstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensorM
;lstm_443_while_lstm_cell_137_matmul_readvariableop_resource:2(O
=lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource:
(J
<lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource:(??3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp?2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp?4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp?
@lstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_443/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0lstm_443_while_placeholderIlstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_443/while/lstm_cell_137/MatMulMatMul9lstm_443/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_443/while/lstm_cell_137/MatMul_1MatMullstm_443_while_placeholder_2<lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_443/while/lstm_cell_137/addAddV2-lstm_443/while/lstm_cell_137/MatMul:product:0/lstm_443/while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_443/while/lstm_cell_137/BiasAddBiasAdd$lstm_443/while/lstm_cell_137/add:z:0;lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_443/while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_443/while/lstm_cell_137/splitSplit5lstm_443/while/lstm_cell_137/split/split_dim:output:0-lstm_443/while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_443/while/lstm_cell_137/SigmoidSigmoid+lstm_443/while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_443/while/lstm_cell_137/Sigmoid_1Sigmoid+lstm_443/while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_443/while/lstm_cell_137/mulMul*lstm_443/while/lstm_cell_137/Sigmoid_1:y:0lstm_443_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_443/while/lstm_cell_137/ReluRelu+lstm_443/while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/mul_1Mul(lstm_443/while/lstm_cell_137/Sigmoid:y:0/lstm_443/while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/add_1AddV2$lstm_443/while/lstm_cell_137/mul:z:0&lstm_443/while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_443/while/lstm_cell_137/Sigmoid_2Sigmoid+lstm_443/while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_443/while/lstm_cell_137/Relu_1Relu&lstm_443/while/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/mul_2Mul*lstm_443/while/lstm_cell_137/Sigmoid_2:y:01lstm_443/while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_443/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_443_while_placeholder_1lstm_443_while_placeholder&lstm_443/while/lstm_cell_137/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_443/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_443/while/addAddV2lstm_443_while_placeholderlstm_443/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_443/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_443/while/add_1AddV2*lstm_443_while_lstm_443_while_loop_counterlstm_443/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_443/while/IdentityIdentitylstm_443/while/add_1:z:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_1Identity0lstm_443_while_lstm_443_while_maximum_iterations^lstm_443/while/NoOp*
T0*
_output_shapes
: t
lstm_443/while/Identity_2Identitylstm_443/while/add:z:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_3IdentityClstm_443/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_4Identity&lstm_443/while/lstm_cell_137/mul_2:z:0^lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_443/while/Identity_5Identity&lstm_443/while/lstm_cell_137/add_1:z:0^lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_443/while/NoOpNoOp4^lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp3^lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp5^lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_443_while_identity lstm_443/while/Identity:output:0"?
lstm_443_while_identity_1"lstm_443/while/Identity_1:output:0"?
lstm_443_while_identity_2"lstm_443/while/Identity_2:output:0"?
lstm_443_while_identity_3"lstm_443/while/Identity_3:output:0"?
lstm_443_while_identity_4"lstm_443/while/Identity_4:output:0"?
lstm_443_while_identity_5"lstm_443/while/Identity_5:output:0"T
'lstm_443_while_lstm_443_strided_slice_1)lstm_443_while_lstm_443_strided_slice_1_0"~
<lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0"?
=lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0"|
;lstm_443_while_lstm_cell_137_matmul_readvariableop_resource=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0"?
clstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensorelstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp2h
2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp2l
4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_833887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833887___redundant_placeholder04
0while_while_cond_833887___redundant_placeholder14
0while_while_cond_833887___redundant_placeholder24
0while_while_cond_833887___redundant_placeholder3
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833972

inputs>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_833888*
condR
while_cond_833887*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_829736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829736___redundant_placeholder04
0while_while_cond_829736___redundant_placeholder14
0while_while_cond_829736___redundant_placeholder24
0while_while_cond_829736___redundant_placeholder3
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

lstm_441_while_body_831329.
*lstm_441_while_lstm_441_while_loop_counter4
0lstm_441_while_lstm_441_while_maximum_iterations
lstm_441_while_placeholder 
lstm_441_while_placeholder_1 
lstm_441_while_placeholder_2 
lstm_441_while_placeholder_3-
)lstm_441_while_lstm_441_strided_slice_1_0i
elstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0:	?R
?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?M
>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
lstm_441_while_identity
lstm_441_while_identity_1
lstm_441_while_identity_2
lstm_441_while_identity_3
lstm_441_while_identity_4
lstm_441_while_identity_5+
'lstm_441_while_lstm_441_strided_slice_1g
clstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensorN
;lstm_441_while_lstm_cell_135_matmul_readvariableop_resource:	?P
=lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource:	d?K
<lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource:	???3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp?2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp?4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp?
@lstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_441/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0lstm_441_while_placeholderIlstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_441/while/lstm_cell_135/MatMulMatMul9lstm_441/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_441/while/lstm_cell_135/MatMul_1MatMullstm_441_while_placeholder_2<lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_441/while/lstm_cell_135/addAddV2-lstm_441/while/lstm_cell_135/MatMul:product:0/lstm_441/while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_441/while/lstm_cell_135/BiasAddBiasAdd$lstm_441/while/lstm_cell_135/add:z:0;lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_441/while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_441/while/lstm_cell_135/splitSplit5lstm_441/while/lstm_cell_135/split/split_dim:output:0-lstm_441/while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_441/while/lstm_cell_135/SigmoidSigmoid+lstm_441/while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_441/while/lstm_cell_135/Sigmoid_1Sigmoid+lstm_441/while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_441/while/lstm_cell_135/mulMul*lstm_441/while/lstm_cell_135/Sigmoid_1:y:0lstm_441_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_441/while/lstm_cell_135/ReluRelu+lstm_441/while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/mul_1Mul(lstm_441/while/lstm_cell_135/Sigmoid:y:0/lstm_441/while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/add_1AddV2$lstm_441/while/lstm_cell_135/mul:z:0&lstm_441/while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_441/while/lstm_cell_135/Sigmoid_2Sigmoid+lstm_441/while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_441/while/lstm_cell_135/Relu_1Relu&lstm_441/while/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/mul_2Mul*lstm_441/while/lstm_cell_135/Sigmoid_2:y:01lstm_441/while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_441/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_441_while_placeholder_1lstm_441_while_placeholder&lstm_441/while/lstm_cell_135/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_441/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_441/while/addAddV2lstm_441_while_placeholderlstm_441/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_441/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_441/while/add_1AddV2*lstm_441_while_lstm_441_while_loop_counterlstm_441/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_441/while/IdentityIdentitylstm_441/while/add_1:z:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_1Identity0lstm_441_while_lstm_441_while_maximum_iterations^lstm_441/while/NoOp*
T0*
_output_shapes
: t
lstm_441/while/Identity_2Identitylstm_441/while/add:z:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_3IdentityClstm_441/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_4Identity&lstm_441/while/lstm_cell_135/mul_2:z:0^lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_441/while/Identity_5Identity&lstm_441/while/lstm_cell_135/add_1:z:0^lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_441/while/NoOpNoOp4^lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp3^lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp5^lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_441_while_identity lstm_441/while/Identity:output:0"?
lstm_441_while_identity_1"lstm_441/while/Identity_1:output:0"?
lstm_441_while_identity_2"lstm_441/while/Identity_2:output:0"?
lstm_441_while_identity_3"lstm_441/while/Identity_3:output:0"?
lstm_441_while_identity_4"lstm_441/while/Identity_4:output:0"?
lstm_441_while_identity_5"lstm_441/while/Identity_5:output:0"T
'lstm_441_while_lstm_441_strided_slice_1)lstm_441_while_lstm_441_strided_slice_1_0"~
<lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0"?
=lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0"|
;lstm_441_while_lstm_cell_135_matmul_readvariableop_resource=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0"?
clstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensorelstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp2h
2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp2l
4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834155

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
?
?
J__inference_sequential_147_layer_call_and_return_conditional_losses_831181
lstm_441_input"
lstm_441_831154:	?"
lstm_441_831156:	d?
lstm_441_831158:	?"
lstm_442_831161:	d?"
lstm_442_831163:	2?
lstm_442_831165:	?!
lstm_443_831168:2(!
lstm_443_831170:
(
lstm_443_831172:("
dense_147_831175:

dense_147_831177:
identity??!dense_147/StatefulPartitionedCall? lstm_441/StatefulPartitionedCall? lstm_442/StatefulPartitionedCall? lstm_443/StatefulPartitionedCall?
 lstm_441/StatefulPartitionedCallStatefulPartitionedCalllstm_441_inputlstm_441_831154lstm_441_831156lstm_441_831158*
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_831001?
 lstm_442/StatefulPartitionedCallStatefulPartitionedCall)lstm_441/StatefulPartitionedCall:output:0lstm_442_831161lstm_442_831163lstm_442_831165*
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830836?
 lstm_443/StatefulPartitionedCallStatefulPartitionedCall)lstm_442/StatefulPartitionedCall:output:0lstm_443_831168lstm_443_831170lstm_443_831172*
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830671?
!dense_147/StatefulPartitionedCallStatefulPartitionedCall)lstm_443/StatefulPartitionedCall:output:0dense_147_831175dense_147_831177*
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
E__inference_dense_147_layer_call_and_return_conditional_losses_830473y
IdentityIdentity*dense_147/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_147/StatefulPartitionedCall!^lstm_441/StatefulPartitionedCall!^lstm_442/StatefulPartitionedCall!^lstm_443/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_147/StatefulPartitionedCall!dense_147/StatefulPartitionedCall2D
 lstm_441/StatefulPartitionedCall lstm_441/StatefulPartitionedCall2D
 lstm_442/StatefulPartitionedCall lstm_442/StatefulPartitionedCall2D
 lstm_443/StatefulPartitionedCall lstm_443/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_441_input
?
?
while_cond_830070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830070___redundant_placeholder04
0while_while_cond_830070___redundant_placeholder14
0while_while_cond_830070___redundant_placeholder24
0while_while_cond_830070___redundant_placeholder3
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
while_body_830371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_441_while_cond_831755.
*lstm_441_while_lstm_441_while_loop_counter4
0lstm_441_while_lstm_441_while_maximum_iterations
lstm_441_while_placeholder 
lstm_441_while_placeholder_1 
lstm_441_while_placeholder_2 
lstm_441_while_placeholder_30
,lstm_441_while_less_lstm_441_strided_slice_1F
Blstm_441_while_lstm_441_while_cond_831755___redundant_placeholder0F
Blstm_441_while_lstm_441_while_cond_831755___redundant_placeholder1F
Blstm_441_while_lstm_441_while_cond_831755___redundant_placeholder2F
Blstm_441_while_lstm_441_while_cond_831755___redundant_placeholder3
lstm_441_while_identity
?
lstm_441/while/LessLesslstm_441_while_placeholder,lstm_441_while_less_lstm_441_strided_slice_1*
T0*
_output_shapes
: ]
lstm_441/while/IdentityIdentitylstm_441/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_441_while_identity lstm_441/while/Identity:output:0*(
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
/__inference_sequential_147_layer_call_fn_831243

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
J__inference_sequential_147_layer_call_and_return_conditional_losses_830480o
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
while_body_832370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_442_while_cond_831894.
*lstm_442_while_lstm_442_while_loop_counter4
0lstm_442_while_lstm_442_while_maximum_iterations
lstm_442_while_placeholder 
lstm_442_while_placeholder_1 
lstm_442_while_placeholder_2 
lstm_442_while_placeholder_30
,lstm_442_while_less_lstm_442_strided_slice_1F
Blstm_442_while_lstm_442_while_cond_831894___redundant_placeholder0F
Blstm_442_while_lstm_442_while_cond_831894___redundant_placeholder1F
Blstm_442_while_lstm_442_while_cond_831894___redundant_placeholder2F
Blstm_442_while_lstm_442_while_cond_831894___redundant_placeholder3
lstm_442_while_identity
?
lstm_442/while/LessLesslstm_442_while_placeholder,lstm_442_while_less_lstm_442_strided_slice_1*
T0*
_output_shapes
: ]
lstm_442/while/IdentityIdentitylstm_442/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_442_while_identity lstm_442/while/Identity:output:0*(
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
E__inference_dense_147_layer_call_and_return_conditional_losses_833991

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

?
/__inference_sequential_147_layer_call_fn_831270

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
J__inference_sequential_147_layer_call_and_return_conditional_losses_831069o
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
?T
?
)sequential_147_lstm_443_while_body_828866L
Hsequential_147_lstm_443_while_sequential_147_lstm_443_while_loop_counterR
Nsequential_147_lstm_443_while_sequential_147_lstm_443_while_maximum_iterations-
)sequential_147_lstm_443_while_placeholder/
+sequential_147_lstm_443_while_placeholder_1/
+sequential_147_lstm_443_while_placeholder_2/
+sequential_147_lstm_443_while_placeholder_3K
Gsequential_147_lstm_443_while_sequential_147_lstm_443_strided_slice_1_0?
?sequential_147_lstm_443_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_443_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_147_lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0:2(`
Nsequential_147_lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0:
([
Msequential_147_lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0:(*
&sequential_147_lstm_443_while_identity,
(sequential_147_lstm_443_while_identity_1,
(sequential_147_lstm_443_while_identity_2,
(sequential_147_lstm_443_while_identity_3,
(sequential_147_lstm_443_while_identity_4,
(sequential_147_lstm_443_while_identity_5I
Esequential_147_lstm_443_while_sequential_147_lstm_443_strided_slice_1?
?sequential_147_lstm_443_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_443_tensorarrayunstack_tensorlistfromtensor\
Jsequential_147_lstm_443_while_lstm_cell_137_matmul_readvariableop_resource:2(^
Lsequential_147_lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource:
(Y
Ksequential_147_lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource:(??Bsequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp?Asequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp?Csequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp?
Osequential_147/lstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_147/lstm_443/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_147_lstm_443_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_443_tensorarrayunstack_tensorlistfromtensor_0)sequential_147_lstm_443_while_placeholderXsequential_147/lstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOpLsequential_147_lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_147/lstm_443/while/lstm_cell_137/MatMulMatMulHsequential_147/lstm_443/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOpNsequential_147_lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_147/lstm_443/while/lstm_cell_137/MatMul_1MatMul+sequential_147_lstm_443_while_placeholder_2Ksequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_147/lstm_443/while/lstm_cell_137/addAddV2<sequential_147/lstm_443/while/lstm_cell_137/MatMul:product:0>sequential_147/lstm_443/while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOpMsequential_147_lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_147/lstm_443/while/lstm_cell_137/BiasAddBiasAdd3sequential_147/lstm_443/while/lstm_cell_137/add:z:0Jsequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_147/lstm_443/while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_147/lstm_443/while/lstm_cell_137/splitSplitDsequential_147/lstm_443/while/lstm_cell_137/split/split_dim:output:0<sequential_147/lstm_443/while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_147/lstm_443/while/lstm_cell_137/SigmoidSigmoid:sequential_147/lstm_443/while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_147/lstm_443/while/lstm_cell_137/Sigmoid_1Sigmoid:sequential_147/lstm_443/while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_147/lstm_443/while/lstm_cell_137/mulMul9sequential_147/lstm_443/while/lstm_cell_137/Sigmoid_1:y:0+sequential_147_lstm_443_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_147/lstm_443/while/lstm_cell_137/ReluRelu:sequential_147/lstm_443/while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_147/lstm_443/while/lstm_cell_137/mul_1Mul7sequential_147/lstm_443/while/lstm_cell_137/Sigmoid:y:0>sequential_147/lstm_443/while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_147/lstm_443/while/lstm_cell_137/add_1AddV23sequential_147/lstm_443/while/lstm_cell_137/mul:z:05sequential_147/lstm_443/while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_147/lstm_443/while/lstm_cell_137/Sigmoid_2Sigmoid:sequential_147/lstm_443/while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_147/lstm_443/while/lstm_cell_137/Relu_1Relu5sequential_147/lstm_443/while/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_147/lstm_443/while/lstm_cell_137/mul_2Mul9sequential_147/lstm_443/while/lstm_cell_137/Sigmoid_2:y:0@sequential_147/lstm_443/while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_147/lstm_443/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_147_lstm_443_while_placeholder_1)sequential_147_lstm_443_while_placeholder5sequential_147/lstm_443/while/lstm_cell_137/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_147/lstm_443/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_147/lstm_443/while/addAddV2)sequential_147_lstm_443_while_placeholder,sequential_147/lstm_443/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_147/lstm_443/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_147/lstm_443/while/add_1AddV2Hsequential_147_lstm_443_while_sequential_147_lstm_443_while_loop_counter.sequential_147/lstm_443/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_147/lstm_443/while/IdentityIdentity'sequential_147/lstm_443/while/add_1:z:0#^sequential_147/lstm_443/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_443/while/Identity_1IdentityNsequential_147_lstm_443_while_sequential_147_lstm_443_while_maximum_iterations#^sequential_147/lstm_443/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_443/while/Identity_2Identity%sequential_147/lstm_443/while/add:z:0#^sequential_147/lstm_443/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_443/while/Identity_3IdentityRsequential_147/lstm_443/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_147/lstm_443/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_443/while/Identity_4Identity5sequential_147/lstm_443/while/lstm_cell_137/mul_2:z:0#^sequential_147/lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_147/lstm_443/while/Identity_5Identity5sequential_147/lstm_443/while/lstm_cell_137/add_1:z:0#^sequential_147/lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_147/lstm_443/while/NoOpNoOpC^sequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOpB^sequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOpD^sequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_147_lstm_443_while_identity/sequential_147/lstm_443/while/Identity:output:0"]
(sequential_147_lstm_443_while_identity_11sequential_147/lstm_443/while/Identity_1:output:0"]
(sequential_147_lstm_443_while_identity_21sequential_147/lstm_443/while/Identity_2:output:0"]
(sequential_147_lstm_443_while_identity_31sequential_147/lstm_443/while/Identity_3:output:0"]
(sequential_147_lstm_443_while_identity_41sequential_147/lstm_443/while/Identity_4:output:0"]
(sequential_147_lstm_443_while_identity_51sequential_147/lstm_443/while/Identity_5:output:0"?
Ksequential_147_lstm_443_while_lstm_cell_137_biasadd_readvariableop_resourceMsequential_147_lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0"?
Lsequential_147_lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resourceNsequential_147_lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0"?
Jsequential_147_lstm_443_while_lstm_cell_137_matmul_readvariableop_resourceLsequential_147_lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0"?
Esequential_147_lstm_443_while_sequential_147_lstm_443_strided_slice_1Gsequential_147_lstm_443_while_sequential_147_lstm_443_strided_slice_1_0"?
?sequential_147_lstm_443_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_443_tensorarrayunstack_tensorlistfromtensor?sequential_147_lstm_443_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_443_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOpBsequential_147/lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp2?
Asequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOpAsequential_147/lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp2?
Csequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOpCsequential_147/lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_833888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_137_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_137_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_137_matmul_readvariableop_resource:2(F
4while_lstm_cell_137_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_137_biasadd_readvariableop_resource:(??*while/lstm_cell_137/BiasAdd/ReadVariableOp?)while/lstm_cell_137/MatMul/ReadVariableOp?+while/lstm_cell_137/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_137/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_137/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_137/addAddV2$while/lstm_cell_137/MatMul:product:0&while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_137/BiasAddBiasAddwhile/lstm_cell_137/add:z:02while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_137/splitSplit,while/lstm_cell_137/split/split_dim:output:0$while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_137/SigmoidSigmoid"while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_1Sigmoid"while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mulMul!while/lstm_cell_137/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_137/ReluRelu"while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_1Mulwhile/lstm_cell_137/Sigmoid:y:0&while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/add_1AddV2while/lstm_cell_137/mul:z:0while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_137/Sigmoid_2Sigmoid"while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_137/Relu_1Reluwhile/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_137/mul_2Mul!while/lstm_cell_137/Sigmoid_2:y:0(while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_137/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_137/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_137/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_137/BiasAdd/ReadVariableOp*^while/lstm_cell_137/MatMul/ReadVariableOp,^while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_137_biasadd_readvariableop_resource5while_lstm_cell_137_biasadd_readvariableop_resource_0"n
4while_lstm_cell_137_matmul_1_readvariableop_resource6while_lstm_cell_137_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_137_matmul_readvariableop_resource4while_lstm_cell_137_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_137/BiasAdd/ReadVariableOp*while/lstm_cell_137/BiasAdd/ReadVariableOp2V
)while/lstm_cell_137/MatMul/ReadVariableOp)while/lstm_cell_137/MatMul/ReadVariableOp2Z
+while/lstm_cell_137/MatMul_1/ReadVariableOp+while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_147_lstm_441_while_body_828588L
Hsequential_147_lstm_441_while_sequential_147_lstm_441_while_loop_counterR
Nsequential_147_lstm_441_while_sequential_147_lstm_441_while_maximum_iterations-
)sequential_147_lstm_441_while_placeholder/
+sequential_147_lstm_441_while_placeholder_1/
+sequential_147_lstm_441_while_placeholder_2/
+sequential_147_lstm_441_while_placeholder_3K
Gsequential_147_lstm_441_while_sequential_147_lstm_441_strided_slice_1_0?
?sequential_147_lstm_441_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_441_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_147_lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0:	?a
Nsequential_147_lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?\
Msequential_147_lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0:	?*
&sequential_147_lstm_441_while_identity,
(sequential_147_lstm_441_while_identity_1,
(sequential_147_lstm_441_while_identity_2,
(sequential_147_lstm_441_while_identity_3,
(sequential_147_lstm_441_while_identity_4,
(sequential_147_lstm_441_while_identity_5I
Esequential_147_lstm_441_while_sequential_147_lstm_441_strided_slice_1?
?sequential_147_lstm_441_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_441_tensorarrayunstack_tensorlistfromtensor]
Jsequential_147_lstm_441_while_lstm_cell_135_matmul_readvariableop_resource:	?_
Lsequential_147_lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource:	d?Z
Ksequential_147_lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource:	???Bsequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp?Asequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp?Csequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp?
Osequential_147/lstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_147/lstm_441/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_147_lstm_441_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_441_tensorarrayunstack_tensorlistfromtensor_0)sequential_147_lstm_441_while_placeholderXsequential_147/lstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOpLsequential_147_lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_147/lstm_441/while/lstm_cell_135/MatMulMatMulHsequential_147/lstm_441/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOpNsequential_147_lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_147/lstm_441/while/lstm_cell_135/MatMul_1MatMul+sequential_147_lstm_441_while_placeholder_2Ksequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_147/lstm_441/while/lstm_cell_135/addAddV2<sequential_147/lstm_441/while/lstm_cell_135/MatMul:product:0>sequential_147/lstm_441/while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOpMsequential_147_lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_147/lstm_441/while/lstm_cell_135/BiasAddBiasAdd3sequential_147/lstm_441/while/lstm_cell_135/add:z:0Jsequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_147/lstm_441/while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_147/lstm_441/while/lstm_cell_135/splitSplitDsequential_147/lstm_441/while/lstm_cell_135/split/split_dim:output:0<sequential_147/lstm_441/while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_147/lstm_441/while/lstm_cell_135/SigmoidSigmoid:sequential_147/lstm_441/while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_147/lstm_441/while/lstm_cell_135/Sigmoid_1Sigmoid:sequential_147/lstm_441/while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_147/lstm_441/while/lstm_cell_135/mulMul9sequential_147/lstm_441/while/lstm_cell_135/Sigmoid_1:y:0+sequential_147_lstm_441_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_147/lstm_441/while/lstm_cell_135/ReluRelu:sequential_147/lstm_441/while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_147/lstm_441/while/lstm_cell_135/mul_1Mul7sequential_147/lstm_441/while/lstm_cell_135/Sigmoid:y:0>sequential_147/lstm_441/while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_147/lstm_441/while/lstm_cell_135/add_1AddV23sequential_147/lstm_441/while/lstm_cell_135/mul:z:05sequential_147/lstm_441/while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_147/lstm_441/while/lstm_cell_135/Sigmoid_2Sigmoid:sequential_147/lstm_441/while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_147/lstm_441/while/lstm_cell_135/Relu_1Relu5sequential_147/lstm_441/while/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_147/lstm_441/while/lstm_cell_135/mul_2Mul9sequential_147/lstm_441/while/lstm_cell_135/Sigmoid_2:y:0@sequential_147/lstm_441/while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_147/lstm_441/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_147_lstm_441_while_placeholder_1)sequential_147_lstm_441_while_placeholder5sequential_147/lstm_441/while/lstm_cell_135/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_147/lstm_441/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_147/lstm_441/while/addAddV2)sequential_147_lstm_441_while_placeholder,sequential_147/lstm_441/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_147/lstm_441/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_147/lstm_441/while/add_1AddV2Hsequential_147_lstm_441_while_sequential_147_lstm_441_while_loop_counter.sequential_147/lstm_441/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_147/lstm_441/while/IdentityIdentity'sequential_147/lstm_441/while/add_1:z:0#^sequential_147/lstm_441/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_441/while/Identity_1IdentityNsequential_147_lstm_441_while_sequential_147_lstm_441_while_maximum_iterations#^sequential_147/lstm_441/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_441/while/Identity_2Identity%sequential_147/lstm_441/while/add:z:0#^sequential_147/lstm_441/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_441/while/Identity_3IdentityRsequential_147/lstm_441/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_147/lstm_441/while/NoOp*
T0*
_output_shapes
: ?
(sequential_147/lstm_441/while/Identity_4Identity5sequential_147/lstm_441/while/lstm_cell_135/mul_2:z:0#^sequential_147/lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_147/lstm_441/while/Identity_5Identity5sequential_147/lstm_441/while/lstm_cell_135/add_1:z:0#^sequential_147/lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_147/lstm_441/while/NoOpNoOpC^sequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOpB^sequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOpD^sequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_147_lstm_441_while_identity/sequential_147/lstm_441/while/Identity:output:0"]
(sequential_147_lstm_441_while_identity_11sequential_147/lstm_441/while/Identity_1:output:0"]
(sequential_147_lstm_441_while_identity_21sequential_147/lstm_441/while/Identity_2:output:0"]
(sequential_147_lstm_441_while_identity_31sequential_147/lstm_441/while/Identity_3:output:0"]
(sequential_147_lstm_441_while_identity_41sequential_147/lstm_441/while/Identity_4:output:0"]
(sequential_147_lstm_441_while_identity_51sequential_147/lstm_441/while/Identity_5:output:0"?
Ksequential_147_lstm_441_while_lstm_cell_135_biasadd_readvariableop_resourceMsequential_147_lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0"?
Lsequential_147_lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resourceNsequential_147_lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0"?
Jsequential_147_lstm_441_while_lstm_cell_135_matmul_readvariableop_resourceLsequential_147_lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0"?
Esequential_147_lstm_441_while_sequential_147_lstm_441_strided_slice_1Gsequential_147_lstm_441_while_sequential_147_lstm_441_strided_slice_1_0"?
?sequential_147_lstm_441_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_441_tensorarrayunstack_tensorlistfromtensor?sequential_147_lstm_441_while_tensorarrayv2read_tensorlistgetitem_sequential_147_lstm_441_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOpBsequential_147/lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp2?
Asequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOpAsequential_147/lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp2?
Csequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOpCsequential_147/lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_441_layer_call_fn_832157

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
D__inference_lstm_441_layer_call_and_return_conditional_losses_830155s
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
/__inference_sequential_147_layer_call_fn_830505
lstm_441_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_441_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_830480o
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
_user_specified_namelstm_441_input
?8
?
while_body_830221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_832843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830671

inputs>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_830587*
condR
while_cond_830586*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_829577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829577___redundant_placeholder04
0while_while_cond_829577___redundant_placeholder14
0while_while_cond_829577___redundant_placeholder24
0while_while_cond_829577___redundant_placeholder3
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
.__inference_lstm_cell_136_layer_call_fn_834123

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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829519o
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
?
E__inference_dense_147_layer_call_and_return_conditional_losses_830473

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
?"
?
while_body_829737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_137_829761_0:2(.
while_lstm_cell_137_829763_0:
(*
while_lstm_cell_137_829765_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_137_829761:2(,
while_lstm_cell_137_829763:
((
while_lstm_cell_137_829765:(??+while/lstm_cell_137/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_137/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_137_829761_0while_lstm_cell_137_829763_0while_lstm_cell_137_829765_0*
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829723?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_137/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_137/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_137/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_137_829761while_lstm_cell_137_829761_0":
while_lstm_cell_137_829763while_lstm_cell_137_829763_0":
while_lstm_cell_137_829765while_lstm_cell_137_829765_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_137/StatefulPartitionedCall+while/lstm_cell_137/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834187

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
$__inference_signature_wrapper_831216
lstm_441_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_441_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_828956o
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
_user_specified_namelstm_441_input
?8
?
D__inference_lstm_441_layer_call_and_return_conditional_losses_829106

inputs'
lstm_cell_135_829024:	?'
lstm_cell_135_829026:	d?#
lstm_cell_135_829028:	?
identity??%lstm_cell_135/StatefulPartitionedCall?while;
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
%lstm_cell_135/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_135_829024lstm_cell_135_829026lstm_cell_135_829028*
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829023n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_135_829024lstm_cell_135_829026lstm_cell_135_829028*
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
while_body_829037*
condR
while_cond_829036*K
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
NoOpNoOp&^lstm_cell_135/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_135/StatefulPartitionedCall%lstm_cell_135/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_443_layer_call_and_return_conditional_losses_829997

inputs&
lstm_cell_137_829915:2(&
lstm_cell_137_829917:
("
lstm_cell_137_829919:(
identity??%lstm_cell_137/StatefulPartitionedCall?while;
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
%lstm_cell_137/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_137_829915lstm_cell_137_829917lstm_cell_137_829919*
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829869n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_137_829915lstm_cell_137_829917lstm_cell_137_829919*
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
while_body_829928*
condR
while_cond_829927*K
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
NoOpNoOp&^lstm_cell_137/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_137/StatefulPartitionedCall%lstm_cell_137/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_135_layer_call_fn_834025

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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829169o
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
while_body_830071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_830751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_830751___redundant_placeholder04
0while_while_cond_830751___redundant_placeholder14
0while_while_cond_830751___redundant_placeholder24
0while_while_cond_830751___redundant_placeholder3
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
)__inference_lstm_441_layer_call_fn_832135
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_829106|
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
while_body_832513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_833458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833458___redundant_placeholder04
0while_while_cond_833458___redundant_placeholder14
0while_while_cond_833458___redundant_placeholder24
0while_while_cond_833458___redundant_placeholder3
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
)__inference_lstm_442_layer_call_fn_832784

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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830836s
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
while_cond_829927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829927___redundant_placeholder04
0while_while_cond_829927___redundant_placeholder14
0while_while_cond_829927___redundant_placeholder24
0while_while_cond_829927___redundant_placeholder3
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_832927
inputs_0?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_832843*
condR
while_cond_832842*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_829227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829227___redundant_placeholder04
0while_while_cond_829227___redundant_placeholder14
0while_while_cond_829227___redundant_placeholder24
0while_while_cond_829227___redundant_placeholder3
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
while_cond_829386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_829386___redundant_placeholder04
0while_while_cond_829386___redundant_placeholder14
0while_while_cond_829386___redundant_placeholder24
0while_while_cond_829386___redundant_placeholder3
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

lstm_441_while_body_831756.
*lstm_441_while_lstm_441_while_loop_counter4
0lstm_441_while_lstm_441_while_maximum_iterations
lstm_441_while_placeholder 
lstm_441_while_placeholder_1 
lstm_441_while_placeholder_2 
lstm_441_while_placeholder_3-
)lstm_441_while_lstm_441_strided_slice_1_0i
elstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0:	?R
?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?M
>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
lstm_441_while_identity
lstm_441_while_identity_1
lstm_441_while_identity_2
lstm_441_while_identity_3
lstm_441_while_identity_4
lstm_441_while_identity_5+
'lstm_441_while_lstm_441_strided_slice_1g
clstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensorN
;lstm_441_while_lstm_cell_135_matmul_readvariableop_resource:	?P
=lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource:	d?K
<lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource:	???3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp?2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp?4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp?
@lstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_441/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0lstm_441_while_placeholderIlstm_441/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_441/while/lstm_cell_135/MatMulMatMul9lstm_441/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_441/while/lstm_cell_135/MatMul_1MatMullstm_441_while_placeholder_2<lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_441/while/lstm_cell_135/addAddV2-lstm_441/while/lstm_cell_135/MatMul:product:0/lstm_441/while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_441/while/lstm_cell_135/BiasAddBiasAdd$lstm_441/while/lstm_cell_135/add:z:0;lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_441/while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_441/while/lstm_cell_135/splitSplit5lstm_441/while/lstm_cell_135/split/split_dim:output:0-lstm_441/while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_441/while/lstm_cell_135/SigmoidSigmoid+lstm_441/while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_441/while/lstm_cell_135/Sigmoid_1Sigmoid+lstm_441/while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_441/while/lstm_cell_135/mulMul*lstm_441/while/lstm_cell_135/Sigmoid_1:y:0lstm_441_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_441/while/lstm_cell_135/ReluRelu+lstm_441/while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/mul_1Mul(lstm_441/while/lstm_cell_135/Sigmoid:y:0/lstm_441/while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/add_1AddV2$lstm_441/while/lstm_cell_135/mul:z:0&lstm_441/while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_441/while/lstm_cell_135/Sigmoid_2Sigmoid+lstm_441/while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_441/while/lstm_cell_135/Relu_1Relu&lstm_441/while/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_441/while/lstm_cell_135/mul_2Mul*lstm_441/while/lstm_cell_135/Sigmoid_2:y:01lstm_441/while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_441/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_441_while_placeholder_1lstm_441_while_placeholder&lstm_441/while/lstm_cell_135/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_441/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_441/while/addAddV2lstm_441_while_placeholderlstm_441/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_441/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_441/while/add_1AddV2*lstm_441_while_lstm_441_while_loop_counterlstm_441/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_441/while/IdentityIdentitylstm_441/while/add_1:z:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_1Identity0lstm_441_while_lstm_441_while_maximum_iterations^lstm_441/while/NoOp*
T0*
_output_shapes
: t
lstm_441/while/Identity_2Identitylstm_441/while/add:z:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_3IdentityClstm_441/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_441/while/NoOp*
T0*
_output_shapes
: ?
lstm_441/while/Identity_4Identity&lstm_441/while/lstm_cell_135/mul_2:z:0^lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_441/while/Identity_5Identity&lstm_441/while/lstm_cell_135/add_1:z:0^lstm_441/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_441/while/NoOpNoOp4^lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp3^lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp5^lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_441_while_identity lstm_441/while/Identity:output:0"?
lstm_441_while_identity_1"lstm_441/while/Identity_1:output:0"?
lstm_441_while_identity_2"lstm_441/while/Identity_2:output:0"?
lstm_441_while_identity_3"lstm_441/while/Identity_3:output:0"?
lstm_441_while_identity_4"lstm_441/while/Identity_4:output:0"?
lstm_441_while_identity_5"lstm_441/while/Identity_5:output:0"T
'lstm_441_while_lstm_441_strided_slice_1)lstm_441_while_lstm_441_strided_slice_1_0"~
<lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource>lstm_441_while_lstm_cell_135_biasadd_readvariableop_resource_0"?
=lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource?lstm_441_while_lstm_cell_135_matmul_1_readvariableop_resource_0"|
;lstm_441_while_lstm_cell_135_matmul_readvariableop_resource=lstm_441_while_lstm_cell_135_matmul_readvariableop_resource_0"?
clstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensorelstm_441_while_tensorarrayv2read_tensorlistgetitem_lstm_441_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp3lstm_441/while/lstm_cell_135/BiasAdd/ReadVariableOp2h
2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp2lstm_441/while/lstm_cell_135/MatMul/ReadVariableOp2l
4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp4lstm_441/while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_833271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_833271___redundant_placeholder04
0while_while_cond_833271___redundant_placeholder14
0while_while_cond_833271___redundant_placeholder24
0while_while_cond_833271___redundant_placeholder3
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
)__inference_lstm_441_layer_call_fn_832168

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
D__inference_lstm_441_layer_call_and_return_conditional_losses_831001s
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
?
)__inference_lstm_442_layer_call_fn_832751
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_829456|
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
while_cond_832512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_832512___redundant_placeholder04
0while_while_cond_832512___redundant_placeholder14
0while_while_cond_832512___redundant_placeholder24
0while_while_cond_832512___redundant_placeholder3
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834253

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
lstm_441_while_cond_831328.
*lstm_441_while_lstm_441_while_loop_counter4
0lstm_441_while_lstm_441_while_maximum_iterations
lstm_441_while_placeholder 
lstm_441_while_placeholder_1 
lstm_441_while_placeholder_2 
lstm_441_while_placeholder_30
,lstm_441_while_less_lstm_441_strided_slice_1F
Blstm_441_while_lstm_441_while_cond_831328___redundant_placeholder0F
Blstm_441_while_lstm_441_while_cond_831328___redundant_placeholder1F
Blstm_441_while_lstm_441_while_cond_831328___redundant_placeholder2F
Blstm_441_while_lstm_441_while_cond_831328___redundant_placeholder3
lstm_441_while_identity
?
lstm_441/while/LessLesslstm_441_while_placeholder,lstm_441_while_less_lstm_441_strided_slice_1*
T0*
_output_shapes
: ]
lstm_441/while/IdentityIdentitylstm_441/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_441_while_identity lstm_441/while/Identity:output:0*(
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830455

inputs>
,lstm_cell_137_matmul_readvariableop_resource:2(@
.lstm_cell_137_matmul_1_readvariableop_resource:
(;
-lstm_cell_137_biasadd_readvariableop_resource:(
identity??$lstm_cell_137/BiasAdd/ReadVariableOp?#lstm_cell_137/MatMul/ReadVariableOp?%lstm_cell_137/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_137/MatMul/ReadVariableOpReadVariableOp,lstm_cell_137_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_137/MatMulMatMulstrided_slice_2:output:0+lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_137_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_137/MatMul_1MatMulzeros:output:0-lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_137/addAddV2lstm_cell_137/MatMul:product:0 lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_137_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_137/BiasAddBiasAddlstm_cell_137/add:z:0,lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_137/splitSplit&lstm_cell_137/split/split_dim:output:0lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_137/SigmoidSigmoidlstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_1Sigmoidlstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_137/mulMullstm_cell_137/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_137/ReluRelulstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_1Mullstm_cell_137/Sigmoid:y:0 lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_137/add_1AddV2lstm_cell_137/mul:z:0lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_137/Sigmoid_2Sigmoidlstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_137/Relu_1Relulstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_137/mul_2Mullstm_cell_137/Sigmoid_2:y:0"lstm_cell_137/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_137_matmul_readvariableop_resource.lstm_cell_137_matmul_1_readvariableop_resource-lstm_cell_137_biasadd_readvariableop_resource*
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
while_body_830371*
condR
while_cond_830370*K
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
NoOpNoOp%^lstm_cell_137/BiasAdd/ReadVariableOp$^lstm_cell_137/MatMul/ReadVariableOp&^lstm_cell_137/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_137/BiasAdd/ReadVariableOp$lstm_cell_137/BiasAdd/ReadVariableOp2J
#lstm_cell_137/MatMul/ReadVariableOp#lstm_cell_137/MatMul/ReadVariableOp2N
%lstm_cell_137/MatMul_1/ReadVariableOp%lstm_cell_137/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829023

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
?"
?
while_body_829037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_135_829061_0:	?/
while_lstm_cell_135_829063_0:	d?+
while_lstm_cell_135_829065_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_135_829061:	?-
while_lstm_cell_135_829063:	d?)
while_lstm_cell_135_829065:	???+while/lstm_cell_135/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_135/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_135_829061_0while_lstm_cell_135_829063_0while_lstm_cell_135_829065_0*
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_829023?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_135/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_135/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_135/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_135/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_135_829061while_lstm_cell_135_829061_0":
while_lstm_cell_135_829063while_lstm_cell_135_829063_0":
while_lstm_cell_135_829065while_lstm_cell_135_829065_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_135/StatefulPartitionedCall+while/lstm_cell_135/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_147_lstm_441_while_cond_828587L
Hsequential_147_lstm_441_while_sequential_147_lstm_441_while_loop_counterR
Nsequential_147_lstm_441_while_sequential_147_lstm_441_while_maximum_iterations-
)sequential_147_lstm_441_while_placeholder/
+sequential_147_lstm_441_while_placeholder_1/
+sequential_147_lstm_441_while_placeholder_2/
+sequential_147_lstm_441_while_placeholder_3N
Jsequential_147_lstm_441_while_less_sequential_147_lstm_441_strided_slice_1d
`sequential_147_lstm_441_while_sequential_147_lstm_441_while_cond_828587___redundant_placeholder0d
`sequential_147_lstm_441_while_sequential_147_lstm_441_while_cond_828587___redundant_placeholder1d
`sequential_147_lstm_441_while_sequential_147_lstm_441_while_cond_828587___redundant_placeholder2d
`sequential_147_lstm_441_while_sequential_147_lstm_441_while_cond_828587___redundant_placeholder3*
&sequential_147_lstm_441_while_identity
?
"sequential_147/lstm_441/while/LessLess)sequential_147_lstm_441_while_placeholderJsequential_147_lstm_441_while_less_sequential_147_lstm_441_strided_slice_1*
T0*
_output_shapes
: {
&sequential_147/lstm_441/while/IdentityIdentity&sequential_147/lstm_441/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_147_lstm_441_while_identity/sequential_147/lstm_441/while/Identity:output:0*(
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_829723

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
)__inference_lstm_443_layer_call_fn_833400

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
D__inference_lstm_443_layer_call_and_return_conditional_losses_830671o
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

lstm_443_while_body_831607.
*lstm_443_while_lstm_443_while_loop_counter4
0lstm_443_while_lstm_443_while_maximum_iterations
lstm_443_while_placeholder 
lstm_443_while_placeholder_1 
lstm_443_while_placeholder_2 
lstm_443_while_placeholder_3-
)lstm_443_while_lstm_443_strided_slice_1_0i
elstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0:2(Q
?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0:
(L
>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0:(
lstm_443_while_identity
lstm_443_while_identity_1
lstm_443_while_identity_2
lstm_443_while_identity_3
lstm_443_while_identity_4
lstm_443_while_identity_5+
'lstm_443_while_lstm_443_strided_slice_1g
clstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensorM
;lstm_443_while_lstm_cell_137_matmul_readvariableop_resource:2(O
=lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource:
(J
<lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource:(??3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp?2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp?4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp?
@lstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_443/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0lstm_443_while_placeholderIlstm_443/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOpReadVariableOp=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_443/while/lstm_cell_137/MatMulMatMul9lstm_443/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOpReadVariableOp?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_443/while/lstm_cell_137/MatMul_1MatMullstm_443_while_placeholder_2<lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_443/while/lstm_cell_137/addAddV2-lstm_443/while/lstm_cell_137/MatMul:product:0/lstm_443/while/lstm_cell_137/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOpReadVariableOp>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_443/while/lstm_cell_137/BiasAddBiasAdd$lstm_443/while/lstm_cell_137/add:z:0;lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_443/while/lstm_cell_137/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_443/while/lstm_cell_137/splitSplit5lstm_443/while/lstm_cell_137/split/split_dim:output:0-lstm_443/while/lstm_cell_137/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_443/while/lstm_cell_137/SigmoidSigmoid+lstm_443/while/lstm_cell_137/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_443/while/lstm_cell_137/Sigmoid_1Sigmoid+lstm_443/while/lstm_cell_137/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_443/while/lstm_cell_137/mulMul*lstm_443/while/lstm_cell_137/Sigmoid_1:y:0lstm_443_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_443/while/lstm_cell_137/ReluRelu+lstm_443/while/lstm_cell_137/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/mul_1Mul(lstm_443/while/lstm_cell_137/Sigmoid:y:0/lstm_443/while/lstm_cell_137/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/add_1AddV2$lstm_443/while/lstm_cell_137/mul:z:0&lstm_443/while/lstm_cell_137/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_443/while/lstm_cell_137/Sigmoid_2Sigmoid+lstm_443/while/lstm_cell_137/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_443/while/lstm_cell_137/Relu_1Relu&lstm_443/while/lstm_cell_137/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_443/while/lstm_cell_137/mul_2Mul*lstm_443/while/lstm_cell_137/Sigmoid_2:y:01lstm_443/while/lstm_cell_137/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_443/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_443_while_placeholder_1lstm_443_while_placeholder&lstm_443/while/lstm_cell_137/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_443/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_443/while/addAddV2lstm_443_while_placeholderlstm_443/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_443/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_443/while/add_1AddV2*lstm_443_while_lstm_443_while_loop_counterlstm_443/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_443/while/IdentityIdentitylstm_443/while/add_1:z:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_1Identity0lstm_443_while_lstm_443_while_maximum_iterations^lstm_443/while/NoOp*
T0*
_output_shapes
: t
lstm_443/while/Identity_2Identitylstm_443/while/add:z:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_3IdentityClstm_443/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_443/while/NoOp*
T0*
_output_shapes
: ?
lstm_443/while/Identity_4Identity&lstm_443/while/lstm_cell_137/mul_2:z:0^lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_443/while/Identity_5Identity&lstm_443/while/lstm_cell_137/add_1:z:0^lstm_443/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_443/while/NoOpNoOp4^lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp3^lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp5^lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_443_while_identity lstm_443/while/Identity:output:0"?
lstm_443_while_identity_1"lstm_443/while/Identity_1:output:0"?
lstm_443_while_identity_2"lstm_443/while/Identity_2:output:0"?
lstm_443_while_identity_3"lstm_443/while/Identity_3:output:0"?
lstm_443_while_identity_4"lstm_443/while/Identity_4:output:0"?
lstm_443_while_identity_5"lstm_443/while/Identity_5:output:0"T
'lstm_443_while_lstm_443_strided_slice_1)lstm_443_while_lstm_443_strided_slice_1_0"~
<lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource>lstm_443_while_lstm_cell_137_biasadd_readvariableop_resource_0"?
=lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource?lstm_443_while_lstm_cell_137_matmul_1_readvariableop_resource_0"|
;lstm_443_while_lstm_cell_137_matmul_readvariableop_resource=lstm_443_while_lstm_cell_137_matmul_readvariableop_resource_0"?
clstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensorelstm_443_while_tensorarrayv2read_tensorlistgetitem_lstm_443_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp3lstm_443/while/lstm_cell_137/BiasAdd/ReadVariableOp2h
2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp2lstm_443/while/lstm_cell_137/MatMul/ReadVariableOp2l
4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp4lstm_443/while/lstm_cell_137/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_832656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_135_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_135_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_135_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_135_matmul_readvariableop_resource:	?G
4while_lstm_cell_135_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_135_biasadd_readvariableop_resource:	???*while/lstm_cell_135/BiasAdd/ReadVariableOp?)while/lstm_cell_135/MatMul/ReadVariableOp?+while/lstm_cell_135/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_135/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_135_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_135/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_135_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_135/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_135/addAddV2$while/lstm_cell_135/MatMul:product:0&while/lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_135_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_135/BiasAddBiasAddwhile/lstm_cell_135/add:z:02while/lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_135/splitSplit,while/lstm_cell_135/split/split_dim:output:0$while/lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_135/SigmoidSigmoid"while/lstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_1Sigmoid"while/lstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mulMul!while/lstm_cell_135/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_135/ReluRelu"while/lstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_1Mulwhile/lstm_cell_135/Sigmoid:y:0&while/lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/add_1AddV2while/lstm_cell_135/mul:z:0while/lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_135/Sigmoid_2Sigmoid"while/lstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_135/Relu_1Reluwhile/lstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_135/mul_2Mul!while/lstm_cell_135/Sigmoid_2:y:0(while/lstm_cell_135/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_135/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_135/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_135/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_135/BiasAdd/ReadVariableOp*^while/lstm_cell_135/MatMul/ReadVariableOp,^while/lstm_cell_135/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_135_biasadd_readvariableop_resource5while_lstm_cell_135_biasadd_readvariableop_resource_0"n
4while_lstm_cell_135_matmul_1_readvariableop_resource6while_lstm_cell_135_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_135_matmul_readvariableop_resource4while_lstm_cell_135_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_135/BiasAdd/ReadVariableOp*while/lstm_cell_135/BiasAdd/ReadVariableOp2V
)while/lstm_cell_135/MatMul/ReadVariableOp)while/lstm_cell_135/MatMul/ReadVariableOp2Z
+while/lstm_cell_135/MatMul_1/ReadVariableOp+while/lstm_cell_135/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_833129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_136_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_136_matmul_readvariableop_resource:	d?G
4while_lstm_cell_136_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_136_biasadd_readvariableop_resource:	???*while/lstm_cell_136/BiasAdd/ReadVariableOp?)while/lstm_cell_136/MatMul/ReadVariableOp?+while/lstm_cell_136/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_136/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_136/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_136/addAddV2$while/lstm_cell_136/MatMul:product:0&while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_136/BiasAddBiasAddwhile/lstm_cell_136/add:z:02while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_136/splitSplit,while/lstm_cell_136/split/split_dim:output:0$while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_136/SigmoidSigmoid"while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_1Sigmoid"while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mulMul!while/lstm_cell_136/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_136/ReluRelu"while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_1Mulwhile/lstm_cell_136/Sigmoid:y:0&while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/add_1AddV2while/lstm_cell_136/mul:z:0while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_136/Sigmoid_2Sigmoid"while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_136/Relu_1Reluwhile/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_136/mul_2Mul!while/lstm_cell_136/Sigmoid_2:y:0(while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_136/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_136/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_136/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_136/BiasAdd/ReadVariableOp*^while/lstm_cell_136/MatMul/ReadVariableOp,^while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_136_biasadd_readvariableop_resource5while_lstm_cell_136_biasadd_readvariableop_resource_0"n
4while_lstm_cell_136_matmul_1_readvariableop_resource6while_lstm_cell_136_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_136_matmul_readvariableop_resource4while_lstm_cell_136_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_136/BiasAdd/ReadVariableOp*while/lstm_cell_136/BiasAdd/ReadVariableOp2V
)while/lstm_cell_136/MatMul/ReadVariableOp)while/lstm_cell_136/MatMul/ReadVariableOp2Z
+while/lstm_cell_136/MatMul_1/ReadVariableOp+while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_829387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_136_829411_0:	d?/
while_lstm_cell_136_829413_0:	2?+
while_lstm_cell_136_829415_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_136_829411:	d?-
while_lstm_cell_136_829413:	2?)
while_lstm_cell_136_829415:	???+while/lstm_cell_136/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_136/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_136_829411_0while_lstm_cell_136_829413_0while_lstm_cell_136_829415_0*
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_829373?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_136/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_136/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_136/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_136/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_136_829411while_lstm_cell_136_829411_0":
while_lstm_cell_136_829413while_lstm_cell_136_829413_0":
while_lstm_cell_136_829415while_lstm_cell_136_829415_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_136/StatefulPartitionedCall+while/lstm_cell_136/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_147_lstm_442_while_cond_828726L
Hsequential_147_lstm_442_while_sequential_147_lstm_442_while_loop_counterR
Nsequential_147_lstm_442_while_sequential_147_lstm_442_while_maximum_iterations-
)sequential_147_lstm_442_while_placeholder/
+sequential_147_lstm_442_while_placeholder_1/
+sequential_147_lstm_442_while_placeholder_2/
+sequential_147_lstm_442_while_placeholder_3N
Jsequential_147_lstm_442_while_less_sequential_147_lstm_442_strided_slice_1d
`sequential_147_lstm_442_while_sequential_147_lstm_442_while_cond_828726___redundant_placeholder0d
`sequential_147_lstm_442_while_sequential_147_lstm_442_while_cond_828726___redundant_placeholder1d
`sequential_147_lstm_442_while_sequential_147_lstm_442_while_cond_828726___redundant_placeholder2d
`sequential_147_lstm_442_while_sequential_147_lstm_442_while_cond_828726___redundant_placeholder3*
&sequential_147_lstm_442_while_identity
?
"sequential_147/lstm_442/while/LessLess)sequential_147_lstm_442_while_placeholderJsequential_147_lstm_442_while_less_sequential_147_lstm_442_strided_slice_1*
T0*
_output_shapes
: {
&sequential_147/lstm_442/while/IdentityIdentity&sequential_147/lstm_442/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_147_lstm_442_while_identity/sequential_147/lstm_442/while/Identity:output:0*(
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_830836

inputs?
,lstm_cell_136_matmul_readvariableop_resource:	d?A
.lstm_cell_136_matmul_1_readvariableop_resource:	2?<
-lstm_cell_136_biasadd_readvariableop_resource:	?
identity??$lstm_cell_136/BiasAdd/ReadVariableOp?#lstm_cell_136/MatMul/ReadVariableOp?%lstm_cell_136/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_136/MatMul/ReadVariableOpReadVariableOp,lstm_cell_136_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_136/MatMulMatMulstrided_slice_2:output:0+lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_136_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_136/MatMul_1MatMulzeros:output:0-lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_136/addAddV2lstm_cell_136/MatMul:product:0 lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_136_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_136/BiasAddBiasAddlstm_cell_136/add:z:0,lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_136/splitSplit&lstm_cell_136/split/split_dim:output:0lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_136/SigmoidSigmoidlstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_1Sigmoidlstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_136/mulMullstm_cell_136/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_136/ReluRelulstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_1Mullstm_cell_136/Sigmoid:y:0 lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_136/add_1AddV2lstm_cell_136/mul:z:0lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_136/Sigmoid_2Sigmoidlstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_136/Relu_1Relulstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_136/mul_2Mullstm_cell_136/Sigmoid_2:y:0"lstm_cell_136/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_136_matmul_readvariableop_resource.lstm_cell_136_matmul_1_readvariableop_resource-lstm_cell_136_biasadd_readvariableop_resource*
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
while_body_830752*
condR
while_cond_830751*K
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
NoOpNoOp%^lstm_cell_136/BiasAdd/ReadVariableOp$^lstm_cell_136/MatMul/ReadVariableOp&^lstm_cell_136/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_136/BiasAdd/ReadVariableOp$lstm_cell_136/BiasAdd/ReadVariableOp2J
#lstm_cell_136/MatMul/ReadVariableOp#lstm_cell_136/MatMul/ReadVariableOp2N
%lstm_cell_136/MatMul_1/ReadVariableOp%lstm_cell_136/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_441_layer_call_and_return_conditional_losses_832454
inputs_0?
,lstm_cell_135_matmul_readvariableop_resource:	?A
.lstm_cell_135_matmul_1_readvariableop_resource:	d?<
-lstm_cell_135_biasadd_readvariableop_resource:	?
identity??$lstm_cell_135/BiasAdd/ReadVariableOp?#lstm_cell_135/MatMul/ReadVariableOp?%lstm_cell_135/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_135/MatMul/ReadVariableOpReadVariableOp,lstm_cell_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_135/MatMulMatMulstrided_slice_2:output:0+lstm_cell_135/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_135/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_135_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_135/MatMul_1MatMulzeros:output:0-lstm_cell_135/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_135/addAddV2lstm_cell_135/MatMul:product:0 lstm_cell_135/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_135/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_135_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_135/BiasAddBiasAddlstm_cell_135/add:z:0,lstm_cell_135/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_135/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_135/splitSplit&lstm_cell_135/split/split_dim:output:0lstm_cell_135/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_135/SigmoidSigmoidlstm_cell_135/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_1Sigmoidlstm_cell_135/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_135/mulMullstm_cell_135/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_135/ReluRelulstm_cell_135/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_1Mullstm_cell_135/Sigmoid:y:0 lstm_cell_135/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_135/add_1AddV2lstm_cell_135/mul:z:0lstm_cell_135/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_135/Sigmoid_2Sigmoidlstm_cell_135/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_135/Relu_1Relulstm_cell_135/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_135/mul_2Mullstm_cell_135/Sigmoid_2:y:0"lstm_cell_135/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_135_matmul_readvariableop_resource.lstm_cell_135_matmul_1_readvariableop_resource-lstm_cell_135_biasadd_readvariableop_resource*
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
while_body_832370*
condR
while_cond_832369*K
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
NoOpNoOp%^lstm_cell_135/BiasAdd/ReadVariableOp$^lstm_cell_135/MatMul/ReadVariableOp&^lstm_cell_135/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_135/BiasAdd/ReadVariableOp$lstm_cell_135/BiasAdd/ReadVariableOp2J
#lstm_cell_135/MatMul/ReadVariableOp#lstm_cell_135/MatMul/ReadVariableOp2N
%lstm_cell_135/MatMul_1/ReadVariableOp%lstm_cell_135/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_443_while_cond_831606.
*lstm_443_while_lstm_443_while_loop_counter4
0lstm_443_while_lstm_443_while_maximum_iterations
lstm_443_while_placeholder 
lstm_443_while_placeholder_1 
lstm_443_while_placeholder_2 
lstm_443_while_placeholder_30
,lstm_443_while_less_lstm_443_strided_slice_1F
Blstm_443_while_lstm_443_while_cond_831606___redundant_placeholder0F
Blstm_443_while_lstm_443_while_cond_831606___redundant_placeholder1F
Blstm_443_while_lstm_443_while_cond_831606___redundant_placeholder2F
Blstm_443_while_lstm_443_while_cond_831606___redundant_placeholder3
lstm_443_while_identity
?
lstm_443/while/LessLesslstm_443_while_placeholder,lstm_443_while_less_lstm_443_strided_slice_1*
T0*
_output_shapes
: ]
lstm_443/while/IdentityIdentitylstm_443/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_443_while_identity lstm_443/while/Identity:output:0*(
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

lstm_442_while_body_831895.
*lstm_442_while_lstm_442_while_loop_counter4
0lstm_442_while_lstm_442_while_maximum_iterations
lstm_442_while_placeholder 
lstm_442_while_placeholder_1 
lstm_442_while_placeholder_2 
lstm_442_while_placeholder_3-
)lstm_442_while_lstm_442_strided_slice_1_0i
elstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0:	d?R
?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?M
>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
lstm_442_while_identity
lstm_442_while_identity_1
lstm_442_while_identity_2
lstm_442_while_identity_3
lstm_442_while_identity_4
lstm_442_while_identity_5+
'lstm_442_while_lstm_442_strided_slice_1g
clstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensorN
;lstm_442_while_lstm_cell_136_matmul_readvariableop_resource:	d?P
=lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource:	2?K
<lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource:	???3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp?2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp?4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp?
@lstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_442/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0lstm_442_while_placeholderIlstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_442/while/lstm_cell_136/MatMulMatMul9lstm_442/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_442/while/lstm_cell_136/MatMul_1MatMullstm_442_while_placeholder_2<lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_442/while/lstm_cell_136/addAddV2-lstm_442/while/lstm_cell_136/MatMul:product:0/lstm_442/while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_442/while/lstm_cell_136/BiasAddBiasAdd$lstm_442/while/lstm_cell_136/add:z:0;lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_442/while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_442/while/lstm_cell_136/splitSplit5lstm_442/while/lstm_cell_136/split/split_dim:output:0-lstm_442/while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_442/while/lstm_cell_136/SigmoidSigmoid+lstm_442/while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_442/while/lstm_cell_136/Sigmoid_1Sigmoid+lstm_442/while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_442/while/lstm_cell_136/mulMul*lstm_442/while/lstm_cell_136/Sigmoid_1:y:0lstm_442_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_442/while/lstm_cell_136/ReluRelu+lstm_442/while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/mul_1Mul(lstm_442/while/lstm_cell_136/Sigmoid:y:0/lstm_442/while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/add_1AddV2$lstm_442/while/lstm_cell_136/mul:z:0&lstm_442/while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_442/while/lstm_cell_136/Sigmoid_2Sigmoid+lstm_442/while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_442/while/lstm_cell_136/Relu_1Relu&lstm_442/while/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/mul_2Mul*lstm_442/while/lstm_cell_136/Sigmoid_2:y:01lstm_442/while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_442/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_442_while_placeholder_1lstm_442_while_placeholder&lstm_442/while/lstm_cell_136/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_442/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_442/while/addAddV2lstm_442_while_placeholderlstm_442/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_442/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_442/while/add_1AddV2*lstm_442_while_lstm_442_while_loop_counterlstm_442/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_442/while/IdentityIdentitylstm_442/while/add_1:z:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_1Identity0lstm_442_while_lstm_442_while_maximum_iterations^lstm_442/while/NoOp*
T0*
_output_shapes
: t
lstm_442/while/Identity_2Identitylstm_442/while/add:z:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_3IdentityClstm_442/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_4Identity&lstm_442/while/lstm_cell_136/mul_2:z:0^lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_442/while/Identity_5Identity&lstm_442/while/lstm_cell_136/add_1:z:0^lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_442/while/NoOpNoOp4^lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp3^lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp5^lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_442_while_identity lstm_442/while/Identity:output:0"?
lstm_442_while_identity_1"lstm_442/while/Identity_1:output:0"?
lstm_442_while_identity_2"lstm_442/while/Identity_2:output:0"?
lstm_442_while_identity_3"lstm_442/while/Identity_3:output:0"?
lstm_442_while_identity_4"lstm_442/while/Identity_4:output:0"?
lstm_442_while_identity_5"lstm_442/while/Identity_5:output:0"T
'lstm_442_while_lstm_442_strided_slice_1)lstm_442_while_lstm_442_strided_slice_1_0"~
<lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0"?
=lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0"|
;lstm_442_while_lstm_cell_136_matmul_readvariableop_resource=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0"?
clstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensorelstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp2h
2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp2l
4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_147_lstm_443_while_cond_828865L
Hsequential_147_lstm_443_while_sequential_147_lstm_443_while_loop_counterR
Nsequential_147_lstm_443_while_sequential_147_lstm_443_while_maximum_iterations-
)sequential_147_lstm_443_while_placeholder/
+sequential_147_lstm_443_while_placeholder_1/
+sequential_147_lstm_443_while_placeholder_2/
+sequential_147_lstm_443_while_placeholder_3N
Jsequential_147_lstm_443_while_less_sequential_147_lstm_443_strided_slice_1d
`sequential_147_lstm_443_while_sequential_147_lstm_443_while_cond_828865___redundant_placeholder0d
`sequential_147_lstm_443_while_sequential_147_lstm_443_while_cond_828865___redundant_placeholder1d
`sequential_147_lstm_443_while_sequential_147_lstm_443_while_cond_828865___redundant_placeholder2d
`sequential_147_lstm_443_while_sequential_147_lstm_443_while_cond_828865___redundant_placeholder3*
&sequential_147_lstm_443_while_identity
?
"sequential_147/lstm_443/while/LessLess)sequential_147_lstm_443_while_placeholderJsequential_147_lstm_443_while_less_sequential_147_lstm_443_strided_slice_1*
T0*
_output_shapes
: {
&sequential_147/lstm_443/while/IdentityIdentity&sequential_147/lstm_443/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_147_lstm_443_while_identity/sequential_147/lstm_443/while/Identity:output:0*(
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

lstm_442_while_body_831468.
*lstm_442_while_lstm_442_while_loop_counter4
0lstm_442_while_lstm_442_while_maximum_iterations
lstm_442_while_placeholder 
lstm_442_while_placeholder_1 
lstm_442_while_placeholder_2 
lstm_442_while_placeholder_3-
)lstm_442_while_lstm_442_strided_slice_1_0i
elstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0:	d?R
?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0:	2?M
>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0:	?
lstm_442_while_identity
lstm_442_while_identity_1
lstm_442_while_identity_2
lstm_442_while_identity_3
lstm_442_while_identity_4
lstm_442_while_identity_5+
'lstm_442_while_lstm_442_strided_slice_1g
clstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensorN
;lstm_442_while_lstm_cell_136_matmul_readvariableop_resource:	d?P
=lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource:	2?K
<lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource:	???3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp?2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp?4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp?
@lstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_442/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0lstm_442_while_placeholderIlstm_442/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOpReadVariableOp=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_442/while/lstm_cell_136/MatMulMatMul9lstm_442/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOpReadVariableOp?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_442/while/lstm_cell_136/MatMul_1MatMullstm_442_while_placeholder_2<lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_442/while/lstm_cell_136/addAddV2-lstm_442/while/lstm_cell_136/MatMul:product:0/lstm_442/while/lstm_cell_136/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOpReadVariableOp>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_442/while/lstm_cell_136/BiasAddBiasAdd$lstm_442/while/lstm_cell_136/add:z:0;lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_442/while/lstm_cell_136/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_442/while/lstm_cell_136/splitSplit5lstm_442/while/lstm_cell_136/split/split_dim:output:0-lstm_442/while/lstm_cell_136/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_442/while/lstm_cell_136/SigmoidSigmoid+lstm_442/while/lstm_cell_136/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_442/while/lstm_cell_136/Sigmoid_1Sigmoid+lstm_442/while/lstm_cell_136/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_442/while/lstm_cell_136/mulMul*lstm_442/while/lstm_cell_136/Sigmoid_1:y:0lstm_442_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_442/while/lstm_cell_136/ReluRelu+lstm_442/while/lstm_cell_136/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/mul_1Mul(lstm_442/while/lstm_cell_136/Sigmoid:y:0/lstm_442/while/lstm_cell_136/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/add_1AddV2$lstm_442/while/lstm_cell_136/mul:z:0&lstm_442/while/lstm_cell_136/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_442/while/lstm_cell_136/Sigmoid_2Sigmoid+lstm_442/while/lstm_cell_136/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_442/while/lstm_cell_136/Relu_1Relu&lstm_442/while/lstm_cell_136/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_442/while/lstm_cell_136/mul_2Mul*lstm_442/while/lstm_cell_136/Sigmoid_2:y:01lstm_442/while/lstm_cell_136/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_442/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_442_while_placeholder_1lstm_442_while_placeholder&lstm_442/while/lstm_cell_136/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_442/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_442/while/addAddV2lstm_442_while_placeholderlstm_442/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_442/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_442/while/add_1AddV2*lstm_442_while_lstm_442_while_loop_counterlstm_442/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_442/while/IdentityIdentitylstm_442/while/add_1:z:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_1Identity0lstm_442_while_lstm_442_while_maximum_iterations^lstm_442/while/NoOp*
T0*
_output_shapes
: t
lstm_442/while/Identity_2Identitylstm_442/while/add:z:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_3IdentityClstm_442/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_442/while/NoOp*
T0*
_output_shapes
: ?
lstm_442/while/Identity_4Identity&lstm_442/while/lstm_cell_136/mul_2:z:0^lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_442/while/Identity_5Identity&lstm_442/while/lstm_cell_136/add_1:z:0^lstm_442/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_442/while/NoOpNoOp4^lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp3^lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp5^lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_442_while_identity lstm_442/while/Identity:output:0"?
lstm_442_while_identity_1"lstm_442/while/Identity_1:output:0"?
lstm_442_while_identity_2"lstm_442/while/Identity_2:output:0"?
lstm_442_while_identity_3"lstm_442/while/Identity_3:output:0"?
lstm_442_while_identity_4"lstm_442/while/Identity_4:output:0"?
lstm_442_while_identity_5"lstm_442/while/Identity_5:output:0"T
'lstm_442_while_lstm_442_strided_slice_1)lstm_442_while_lstm_442_strided_slice_1_0"~
<lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource>lstm_442_while_lstm_cell_136_biasadd_readvariableop_resource_0"?
=lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource?lstm_442_while_lstm_cell_136_matmul_1_readvariableop_resource_0"|
;lstm_442_while_lstm_cell_136_matmul_readvariableop_resource=lstm_442_while_lstm_cell_136_matmul_readvariableop_resource_0"?
clstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensorelstm_442_while_tensorarrayv2read_tensorlistgetitem_lstm_442_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp3lstm_442/while/lstm_cell_136/BiasAdd/ReadVariableOp2h
2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp2lstm_442/while/lstm_cell_136/MatMul/ReadVariableOp2l
4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp4lstm_442/while/lstm_cell_136/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_441_input;
 serving_default_lstm_441_input:0?????????=
	dense_1470
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
2dense_147/kernel
:2dense_147/bias
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
0:.	?2lstm_441/lstm_cell_441/kernel
::8	d?2'lstm_441/lstm_cell_441/recurrent_kernel
*:(?2lstm_441/lstm_cell_441/bias
0:.	d?2lstm_442/lstm_cell_442/kernel
::8	2?2'lstm_442/lstm_cell_442/recurrent_kernel
*:(?2lstm_442/lstm_cell_442/bias
/:-2(2lstm_443/lstm_cell_443/kernel
9:7
(2'lstm_443/lstm_cell_443/recurrent_kernel
):'(2lstm_443/lstm_cell_443/bias
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
2Adam/dense_147/kernel/m
!:2Adam/dense_147/bias/m
5:3	?2$Adam/lstm_441/lstm_cell_441/kernel/m
?:=	d?2.Adam/lstm_441/lstm_cell_441/recurrent_kernel/m
/:-?2"Adam/lstm_441/lstm_cell_441/bias/m
5:3	d?2$Adam/lstm_442/lstm_cell_442/kernel/m
?:=	2?2.Adam/lstm_442/lstm_cell_442/recurrent_kernel/m
/:-?2"Adam/lstm_442/lstm_cell_442/bias/m
4:22(2$Adam/lstm_443/lstm_cell_443/kernel/m
>:<
(2.Adam/lstm_443/lstm_cell_443/recurrent_kernel/m
.:,(2"Adam/lstm_443/lstm_cell_443/bias/m
':%
2Adam/dense_147/kernel/v
!:2Adam/dense_147/bias/v
5:3	?2$Adam/lstm_441/lstm_cell_441/kernel/v
?:=	d?2.Adam/lstm_441/lstm_cell_441/recurrent_kernel/v
/:-?2"Adam/lstm_441/lstm_cell_441/bias/v
5:3	d?2$Adam/lstm_442/lstm_cell_442/kernel/v
?:=	2?2.Adam/lstm_442/lstm_cell_442/recurrent_kernel/v
/:-?2"Adam/lstm_442/lstm_cell_442/bias/v
4:22(2$Adam/lstm_443/lstm_cell_443/kernel/v
>:<
(2.Adam/lstm_443/lstm_cell_443/recurrent_kernel/v
.:,(2"Adam/lstm_443/lstm_cell_443/bias/v
?2?
/__inference_sequential_147_layer_call_fn_830505
/__inference_sequential_147_layer_call_fn_831243
/__inference_sequential_147_layer_call_fn_831270
/__inference_sequential_147_layer_call_fn_831121?
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_831697
J__inference_sequential_147_layer_call_and_return_conditional_losses_832124
J__inference_sequential_147_layer_call_and_return_conditional_losses_831151
J__inference_sequential_147_layer_call_and_return_conditional_losses_831181?
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
!__inference__wrapped_model_828956lstm_441_input"?
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
)__inference_lstm_441_layer_call_fn_832135
)__inference_lstm_441_layer_call_fn_832146
)__inference_lstm_441_layer_call_fn_832157
)__inference_lstm_441_layer_call_fn_832168?
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832311
D__inference_lstm_441_layer_call_and_return_conditional_losses_832454
D__inference_lstm_441_layer_call_and_return_conditional_losses_832597
D__inference_lstm_441_layer_call_and_return_conditional_losses_832740?
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
)__inference_lstm_442_layer_call_fn_832751
)__inference_lstm_442_layer_call_fn_832762
)__inference_lstm_442_layer_call_fn_832773
)__inference_lstm_442_layer_call_fn_832784?
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_832927
D__inference_lstm_442_layer_call_and_return_conditional_losses_833070
D__inference_lstm_442_layer_call_and_return_conditional_losses_833213
D__inference_lstm_442_layer_call_and_return_conditional_losses_833356?
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
)__inference_lstm_443_layer_call_fn_833367
)__inference_lstm_443_layer_call_fn_833378
)__inference_lstm_443_layer_call_fn_833389
)__inference_lstm_443_layer_call_fn_833400?
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833543
D__inference_lstm_443_layer_call_and_return_conditional_losses_833686
D__inference_lstm_443_layer_call_and_return_conditional_losses_833829
D__inference_lstm_443_layer_call_and_return_conditional_losses_833972?
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
*__inference_dense_147_layer_call_fn_833981?
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
E__inference_dense_147_layer_call_and_return_conditional_losses_833991?
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
$__inference_signature_wrapper_831216lstm_441_input"?
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
.__inference_lstm_cell_135_layer_call_fn_834008
.__inference_lstm_cell_135_layer_call_fn_834025?
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834057
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834089?
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
.__inference_lstm_cell_136_layer_call_fn_834106
.__inference_lstm_cell_136_layer_call_fn_834123?
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834155
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834187?
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
.__inference_lstm_cell_137_layer_call_fn_834204
.__inference_lstm_cell_137_layer_call_fn_834221?
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834253
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834285?
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
!__inference__wrapped_model_828956?-./012345!";?8
1?.
,?)
lstm_441_input?????????
? "5?2
0
	dense_147#? 
	dense_147??????????
E__inference_dense_147_layer_call_and_return_conditional_losses_833991\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_147_layer_call_fn_833981O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_441_layer_call_and_return_conditional_losses_832311?-./O?L
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832454?-./O?L
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832597q-./??<
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
D__inference_lstm_441_layer_call_and_return_conditional_losses_832740q-./??<
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
)__inference_lstm_441_layer_call_fn_832135}-./O?L
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
)__inference_lstm_441_layer_call_fn_832146}-./O?L
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
)__inference_lstm_441_layer_call_fn_832157d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_441_layer_call_fn_832168d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_442_layer_call_and_return_conditional_losses_832927?012O?L
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_833070?012O?L
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_833213q012??<
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
D__inference_lstm_442_layer_call_and_return_conditional_losses_833356q012??<
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
)__inference_lstm_442_layer_call_fn_832751}012O?L
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
)__inference_lstm_442_layer_call_fn_832762}012O?L
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
)__inference_lstm_442_layer_call_fn_832773d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_442_layer_call_fn_832784d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_443_layer_call_and_return_conditional_losses_833543}345O?L
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833686}345O?L
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833829m345??<
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
D__inference_lstm_443_layer_call_and_return_conditional_losses_833972m345??<
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
)__inference_lstm_443_layer_call_fn_833367p345O?L
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
)__inference_lstm_443_layer_call_fn_833378p345O?L
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
)__inference_lstm_443_layer_call_fn_833389`345??<
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
)__inference_lstm_443_layer_call_fn_833400`345??<
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834057?-./??}
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
I__inference_lstm_cell_135_layer_call_and_return_conditional_losses_834089?-./??}
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
.__inference_lstm_cell_135_layer_call_fn_834008?-./??}
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
.__inference_lstm_cell_135_layer_call_fn_834025?-./??}
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834155?012??}
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
I__inference_lstm_cell_136_layer_call_and_return_conditional_losses_834187?012??}
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
.__inference_lstm_cell_136_layer_call_fn_834106?012??}
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
.__inference_lstm_cell_136_layer_call_fn_834123?012??}
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834253?345??}
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
I__inference_lstm_cell_137_layer_call_and_return_conditional_losses_834285?345??}
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
.__inference_lstm_cell_137_layer_call_fn_834204?345??}
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
.__inference_lstm_cell_137_layer_call_fn_834221?345??}
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_831151y-./012345!"C?@
9?6
,?)
lstm_441_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_147_layer_call_and_return_conditional_losses_831181y-./012345!"C?@
9?6
,?)
lstm_441_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_147_layer_call_and_return_conditional_losses_831697q-./012345!";?8
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
J__inference_sequential_147_layer_call_and_return_conditional_losses_832124q-./012345!";?8
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
/__inference_sequential_147_layer_call_fn_830505l-./012345!"C?@
9?6
,?)
lstm_441_input?????????
p 

 
? "???????????
/__inference_sequential_147_layer_call_fn_831121l-./012345!"C?@
9?6
,?)
lstm_441_input?????????
p

 
? "???????????
/__inference_sequential_147_layer_call_fn_831243d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_147_layer_call_fn_831270d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_831216?-./012345!"M?J
? 
C?@
>
lstm_441_input,?)
lstm_441_input?????????"5?2
0
	dense_147#? 
	dense_147?????????