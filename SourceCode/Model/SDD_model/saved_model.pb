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
dense_263/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_263/kernel
u
$dense_263/kernel/Read/ReadVariableOpReadVariableOpdense_263/kernel*
_output_shapes

:
*
dtype0
t
dense_263/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_263/bias
m
"dense_263/bias/Read/ReadVariableOpReadVariableOpdense_263/bias*
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
lstm_789/lstm_cell_789/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_789/lstm_cell_789/kernel
?
1lstm_789/lstm_cell_789/kernel/Read/ReadVariableOpReadVariableOplstm_789/lstm_cell_789/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_789/lstm_cell_789/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_789/lstm_cell_789/recurrent_kernel
?
;lstm_789/lstm_cell_789/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_789/lstm_cell_789/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_789/lstm_cell_789/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_789/lstm_cell_789/bias
?
/lstm_789/lstm_cell_789/bias/Read/ReadVariableOpReadVariableOplstm_789/lstm_cell_789/bias*
_output_shapes	
:?*
dtype0
?
lstm_790/lstm_cell_790/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_790/lstm_cell_790/kernel
?
1lstm_790/lstm_cell_790/kernel/Read/ReadVariableOpReadVariableOplstm_790/lstm_cell_790/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_790/lstm_cell_790/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_790/lstm_cell_790/recurrent_kernel
?
;lstm_790/lstm_cell_790/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_790/lstm_cell_790/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_790/lstm_cell_790/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_790/lstm_cell_790/bias
?
/lstm_790/lstm_cell_790/bias/Read/ReadVariableOpReadVariableOplstm_790/lstm_cell_790/bias*
_output_shapes	
:?*
dtype0
?
lstm_791/lstm_cell_791/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_791/lstm_cell_791/kernel
?
1lstm_791/lstm_cell_791/kernel/Read/ReadVariableOpReadVariableOplstm_791/lstm_cell_791/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_791/lstm_cell_791/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_791/lstm_cell_791/recurrent_kernel
?
;lstm_791/lstm_cell_791/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_791/lstm_cell_791/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_791/lstm_cell_791/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_791/lstm_cell_791/bias
?
/lstm_791/lstm_cell_791/bias/Read/ReadVariableOpReadVariableOplstm_791/lstm_cell_791/bias*
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
Adam/dense_263/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_263/kernel/m
?
+Adam/dense_263/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_263/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_263/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_263/bias/m
{
)Adam/dense_263/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_263/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_789/lstm_cell_789/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_789/lstm_cell_789/kernel/m
?
8Adam/lstm_789/lstm_cell_789/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_789/lstm_cell_789/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_789/lstm_cell_789/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_789/lstm_cell_789/recurrent_kernel/m
?
BAdam/lstm_789/lstm_cell_789/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_789/lstm_cell_789/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_789/lstm_cell_789/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_789/lstm_cell_789/bias/m
?
6Adam/lstm_789/lstm_cell_789/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_789/lstm_cell_789/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_790/lstm_cell_790/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_790/lstm_cell_790/kernel/m
?
8Adam/lstm_790/lstm_cell_790/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_790/lstm_cell_790/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_790/lstm_cell_790/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_790/lstm_cell_790/recurrent_kernel/m
?
BAdam/lstm_790/lstm_cell_790/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_790/lstm_cell_790/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_790/lstm_cell_790/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_790/lstm_cell_790/bias/m
?
6Adam/lstm_790/lstm_cell_790/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_790/lstm_cell_790/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_791/lstm_cell_791/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_791/lstm_cell_791/kernel/m
?
8Adam/lstm_791/lstm_cell_791/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_791/lstm_cell_791/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_791/lstm_cell_791/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_791/lstm_cell_791/recurrent_kernel/m
?
BAdam/lstm_791/lstm_cell_791/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_791/lstm_cell_791/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_791/lstm_cell_791/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_791/lstm_cell_791/bias/m
?
6Adam/lstm_791/lstm_cell_791/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_791/lstm_cell_791/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_263/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_263/kernel/v
?
+Adam/dense_263/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_263/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_263/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_263/bias/v
{
)Adam/dense_263/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_263/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_789/lstm_cell_789/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_789/lstm_cell_789/kernel/v
?
8Adam/lstm_789/lstm_cell_789/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_789/lstm_cell_789/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_789/lstm_cell_789/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_789/lstm_cell_789/recurrent_kernel/v
?
BAdam/lstm_789/lstm_cell_789/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_789/lstm_cell_789/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_789/lstm_cell_789/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_789/lstm_cell_789/bias/v
?
6Adam/lstm_789/lstm_cell_789/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_789/lstm_cell_789/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_790/lstm_cell_790/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_790/lstm_cell_790/kernel/v
?
8Adam/lstm_790/lstm_cell_790/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_790/lstm_cell_790/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_790/lstm_cell_790/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_790/lstm_cell_790/recurrent_kernel/v
?
BAdam/lstm_790/lstm_cell_790/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_790/lstm_cell_790/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_790/lstm_cell_790/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_790/lstm_cell_790/bias/v
?
6Adam/lstm_790/lstm_cell_790/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_790/lstm_cell_790/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_791/lstm_cell_791/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_791/lstm_cell_791/kernel/v
?
8Adam/lstm_791/lstm_cell_791/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_791/lstm_cell_791/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_791/lstm_cell_791/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_791/lstm_cell_791/recurrent_kernel/v
?
BAdam/lstm_791/lstm_cell_791/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_791/lstm_cell_791/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_791/lstm_cell_791/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_791/lstm_cell_791/bias/v
?
6Adam/lstm_791/lstm_cell_791/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_791/lstm_cell_791/bias/v*
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
VARIABLE_VALUEdense_263/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_263/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_789/lstm_cell_789/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_789/lstm_cell_789/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_789/lstm_cell_789/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_790/lstm_cell_790/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_790/lstm_cell_790/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_790/lstm_cell_790/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_791/lstm_cell_791/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_791/lstm_cell_791/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_791/lstm_cell_791/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_263/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_263/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_789/lstm_cell_789/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_789/lstm_cell_789/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_789/lstm_cell_789/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_790/lstm_cell_790/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_790/lstm_cell_790/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_790/lstm_cell_790/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_791/lstm_cell_791/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_791/lstm_cell_791/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_791/lstm_cell_791/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_263/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_263/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_789/lstm_cell_789/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_789/lstm_cell_789/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_789/lstm_cell_789/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_790/lstm_cell_790/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_790/lstm_cell_790/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_790/lstm_cell_790/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_791/lstm_cell_791/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_791/lstm_cell_791/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_791/lstm_cell_791/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_789_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_789_inputlstm_789/lstm_cell_789/kernel'lstm_789/lstm_cell_789/recurrent_kernellstm_789/lstm_cell_789/biaslstm_790/lstm_cell_790/kernel'lstm_790/lstm_cell_790/recurrent_kernellstm_790/lstm_cell_790/biaslstm_791/lstm_cell_791/kernel'lstm_791/lstm_cell_791/recurrent_kernellstm_791/lstm_cell_791/biasdense_263/kerneldense_263/bias*
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
%__inference_signature_wrapper_4496708
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_263/kernel/Read/ReadVariableOp"dense_263/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_789/lstm_cell_789/kernel/Read/ReadVariableOp;lstm_789/lstm_cell_789/recurrent_kernel/Read/ReadVariableOp/lstm_789/lstm_cell_789/bias/Read/ReadVariableOp1lstm_790/lstm_cell_790/kernel/Read/ReadVariableOp;lstm_790/lstm_cell_790/recurrent_kernel/Read/ReadVariableOp/lstm_790/lstm_cell_790/bias/Read/ReadVariableOp1lstm_791/lstm_cell_791/kernel/Read/ReadVariableOp;lstm_791/lstm_cell_791/recurrent_kernel/Read/ReadVariableOp/lstm_791/lstm_cell_791/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_263/kernel/m/Read/ReadVariableOp)Adam/dense_263/bias/m/Read/ReadVariableOp8Adam/lstm_789/lstm_cell_789/kernel/m/Read/ReadVariableOpBAdam/lstm_789/lstm_cell_789/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_789/lstm_cell_789/bias/m/Read/ReadVariableOp8Adam/lstm_790/lstm_cell_790/kernel/m/Read/ReadVariableOpBAdam/lstm_790/lstm_cell_790/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_790/lstm_cell_790/bias/m/Read/ReadVariableOp8Adam/lstm_791/lstm_cell_791/kernel/m/Read/ReadVariableOpBAdam/lstm_791/lstm_cell_791/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_791/lstm_cell_791/bias/m/Read/ReadVariableOp+Adam/dense_263/kernel/v/Read/ReadVariableOp)Adam/dense_263/bias/v/Read/ReadVariableOp8Adam/lstm_789/lstm_cell_789/kernel/v/Read/ReadVariableOpBAdam/lstm_789/lstm_cell_789/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_789/lstm_cell_789/bias/v/Read/ReadVariableOp8Adam/lstm_790/lstm_cell_790/kernel/v/Read/ReadVariableOpBAdam/lstm_790/lstm_cell_790/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_790/lstm_cell_790/bias/v/Read/ReadVariableOp8Adam/lstm_791/lstm_cell_791/kernel/v/Read/ReadVariableOpBAdam/lstm_791/lstm_cell_791/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_791/lstm_cell_791/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4499920
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_263/kerneldense_263/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_789/lstm_cell_789/kernel'lstm_789/lstm_cell_789/recurrent_kernellstm_789/lstm_cell_789/biaslstm_790/lstm_cell_790/kernel'lstm_790/lstm_cell_790/recurrent_kernellstm_790/lstm_cell_790/biaslstm_791/lstm_cell_791/kernel'lstm_791/lstm_cell_791/recurrent_kernellstm_791/lstm_cell_791/biastotalcountAdam/dense_263/kernel/mAdam/dense_263/bias/m$Adam/lstm_789/lstm_cell_789/kernel/m.Adam/lstm_789/lstm_cell_789/recurrent_kernel/m"Adam/lstm_789/lstm_cell_789/bias/m$Adam/lstm_790/lstm_cell_790/kernel/m.Adam/lstm_790/lstm_cell_790/recurrent_kernel/m"Adam/lstm_790/lstm_cell_790/bias/m$Adam/lstm_791/lstm_cell_791/kernel/m.Adam/lstm_791/lstm_cell_791/recurrent_kernel/m"Adam/lstm_791/lstm_cell_791/bias/mAdam/dense_263/kernel/vAdam/dense_263/bias/v$Adam/lstm_789/lstm_cell_789/kernel/v.Adam/lstm_789/lstm_cell_789/recurrent_kernel/v"Adam/lstm_789/lstm_cell_789/bias/v$Adam/lstm_790/lstm_cell_790/kernel/v.Adam/lstm_790/lstm_cell_790/recurrent_kernel/v"Adam/lstm_790/lstm_cell_790/bias/v$Adam/lstm_791/lstm_cell_791/kernel/v.Adam/lstm_791/lstm_cell_791/recurrent_kernel/v"Adam/lstm_791/lstm_cell_791/bias/v*4
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
#__inference__traced_restore_4500050??+
?8
?
while_body_4495563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_791_layer_call_fn_4498870
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495489o
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499321

inputs>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4499237*
condR
while_cond_4499236*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4499237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4494719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4494719___redundant_placeholder05
1while_while_cond_4494719___redundant_placeholder15
1while_while_cond_4494719___redundant_placeholder25
1while_while_cond_4494719___redundant_placeholder3
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495361

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
/__inference_lstm_cell_741_layer_call_fn_4499517

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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494661o
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
while_cond_4498004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498004___redundant_placeholder05
1while_while_cond_4498004___redundant_placeholder15
1while_while_cond_4498004___redundant_placeholder25
1while_while_cond_4498004___redundant_placeholder3
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
while_body_4495863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498089

inputs?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4498005*
condR
while_cond_4498004*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_790_layer_call_and_return_conditional_losses_4496328

inputs?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4496244*
condR
while_cond_4496243*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_791_layer_call_fn_4498859
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495298o
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
/__inference_lstm_cell_743_layer_call_fn_4499713

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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495361o
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
?T
?
*sequential_263_lstm_789_while_body_4494080L
Hsequential_263_lstm_789_while_sequential_263_lstm_789_while_loop_counterR
Nsequential_263_lstm_789_while_sequential_263_lstm_789_while_maximum_iterations-
)sequential_263_lstm_789_while_placeholder/
+sequential_263_lstm_789_while_placeholder_1/
+sequential_263_lstm_789_while_placeholder_2/
+sequential_263_lstm_789_while_placeholder_3K
Gsequential_263_lstm_789_while_sequential_263_lstm_789_strided_slice_1_0?
?sequential_263_lstm_789_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_789_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_263_lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0:	?a
Nsequential_263_lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?\
Msequential_263_lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0:	?*
&sequential_263_lstm_789_while_identity,
(sequential_263_lstm_789_while_identity_1,
(sequential_263_lstm_789_while_identity_2,
(sequential_263_lstm_789_while_identity_3,
(sequential_263_lstm_789_while_identity_4,
(sequential_263_lstm_789_while_identity_5I
Esequential_263_lstm_789_while_sequential_263_lstm_789_strided_slice_1?
?sequential_263_lstm_789_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_789_tensorarrayunstack_tensorlistfromtensor]
Jsequential_263_lstm_789_while_lstm_cell_741_matmul_readvariableop_resource:	?_
Lsequential_263_lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource:	d?Z
Ksequential_263_lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource:	???Bsequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp?Asequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp?Csequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp?
Osequential_263/lstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_263/lstm_789/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_263_lstm_789_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_789_tensorarrayunstack_tensorlistfromtensor_0)sequential_263_lstm_789_while_placeholderXsequential_263/lstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOpLsequential_263_lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_263/lstm_789/while/lstm_cell_741/MatMulMatMulHsequential_263/lstm_789/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOpNsequential_263_lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_263/lstm_789/while/lstm_cell_741/MatMul_1MatMul+sequential_263_lstm_789_while_placeholder_2Ksequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_263/lstm_789/while/lstm_cell_741/addAddV2<sequential_263/lstm_789/while/lstm_cell_741/MatMul:product:0>sequential_263/lstm_789/while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOpMsequential_263_lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_263/lstm_789/while/lstm_cell_741/BiasAddBiasAdd3sequential_263/lstm_789/while/lstm_cell_741/add:z:0Jsequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_263/lstm_789/while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_263/lstm_789/while/lstm_cell_741/splitSplitDsequential_263/lstm_789/while/lstm_cell_741/split/split_dim:output:0<sequential_263/lstm_789/while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_263/lstm_789/while/lstm_cell_741/SigmoidSigmoid:sequential_263/lstm_789/while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_263/lstm_789/while/lstm_cell_741/Sigmoid_1Sigmoid:sequential_263/lstm_789/while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_263/lstm_789/while/lstm_cell_741/mulMul9sequential_263/lstm_789/while/lstm_cell_741/Sigmoid_1:y:0+sequential_263_lstm_789_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_263/lstm_789/while/lstm_cell_741/ReluRelu:sequential_263/lstm_789/while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_263/lstm_789/while/lstm_cell_741/mul_1Mul7sequential_263/lstm_789/while/lstm_cell_741/Sigmoid:y:0>sequential_263/lstm_789/while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_263/lstm_789/while/lstm_cell_741/add_1AddV23sequential_263/lstm_789/while/lstm_cell_741/mul:z:05sequential_263/lstm_789/while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_263/lstm_789/while/lstm_cell_741/Sigmoid_2Sigmoid:sequential_263/lstm_789/while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_263/lstm_789/while/lstm_cell_741/Relu_1Relu5sequential_263/lstm_789/while/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_263/lstm_789/while/lstm_cell_741/mul_2Mul9sequential_263/lstm_789/while/lstm_cell_741/Sigmoid_2:y:0@sequential_263/lstm_789/while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_263/lstm_789/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_263_lstm_789_while_placeholder_1)sequential_263_lstm_789_while_placeholder5sequential_263/lstm_789/while/lstm_cell_741/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_263/lstm_789/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_263/lstm_789/while/addAddV2)sequential_263_lstm_789_while_placeholder,sequential_263/lstm_789/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_263/lstm_789/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_263/lstm_789/while/add_1AddV2Hsequential_263_lstm_789_while_sequential_263_lstm_789_while_loop_counter.sequential_263/lstm_789/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_263/lstm_789/while/IdentityIdentity'sequential_263/lstm_789/while/add_1:z:0#^sequential_263/lstm_789/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_789/while/Identity_1IdentityNsequential_263_lstm_789_while_sequential_263_lstm_789_while_maximum_iterations#^sequential_263/lstm_789/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_789/while/Identity_2Identity%sequential_263/lstm_789/while/add:z:0#^sequential_263/lstm_789/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_789/while/Identity_3IdentityRsequential_263/lstm_789/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_263/lstm_789/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_789/while/Identity_4Identity5sequential_263/lstm_789/while/lstm_cell_741/mul_2:z:0#^sequential_263/lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_263/lstm_789/while/Identity_5Identity5sequential_263/lstm_789/while/lstm_cell_741/add_1:z:0#^sequential_263/lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_263/lstm_789/while/NoOpNoOpC^sequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOpB^sequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOpD^sequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_263_lstm_789_while_identity/sequential_263/lstm_789/while/Identity:output:0"]
(sequential_263_lstm_789_while_identity_11sequential_263/lstm_789/while/Identity_1:output:0"]
(sequential_263_lstm_789_while_identity_21sequential_263/lstm_789/while/Identity_2:output:0"]
(sequential_263_lstm_789_while_identity_31sequential_263/lstm_789/while/Identity_3:output:0"]
(sequential_263_lstm_789_while_identity_41sequential_263/lstm_789/while/Identity_4:output:0"]
(sequential_263_lstm_789_while_identity_51sequential_263/lstm_789/while/Identity_5:output:0"?
Ksequential_263_lstm_789_while_lstm_cell_741_biasadd_readvariableop_resourceMsequential_263_lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0"?
Lsequential_263_lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resourceNsequential_263_lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0"?
Jsequential_263_lstm_789_while_lstm_cell_741_matmul_readvariableop_resourceLsequential_263_lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0"?
Esequential_263_lstm_789_while_sequential_263_lstm_789_strided_slice_1Gsequential_263_lstm_789_while_sequential_263_lstm_789_strided_slice_1_0"?
?sequential_263_lstm_789_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_789_tensorarrayunstack_tensorlistfromtensor?sequential_263_lstm_789_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_789_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOpBsequential_263/lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp2?
Asequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOpAsequential_263/lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp2?
Csequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOpCsequential_263/lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_263_lstm_790_while_cond_4494218L
Hsequential_263_lstm_790_while_sequential_263_lstm_790_while_loop_counterR
Nsequential_263_lstm_790_while_sequential_263_lstm_790_while_maximum_iterations-
)sequential_263_lstm_790_while_placeholder/
+sequential_263_lstm_790_while_placeholder_1/
+sequential_263_lstm_790_while_placeholder_2/
+sequential_263_lstm_790_while_placeholder_3N
Jsequential_263_lstm_790_while_less_sequential_263_lstm_790_strided_slice_1e
asequential_263_lstm_790_while_sequential_263_lstm_790_while_cond_4494218___redundant_placeholder0e
asequential_263_lstm_790_while_sequential_263_lstm_790_while_cond_4494218___redundant_placeholder1e
asequential_263_lstm_790_while_sequential_263_lstm_790_while_cond_4494218___redundant_placeholder2e
asequential_263_lstm_790_while_sequential_263_lstm_790_while_cond_4494218___redundant_placeholder3*
&sequential_263_lstm_790_while_identity
?
"sequential_263/lstm_790/while/LessLess)sequential_263_lstm_790_while_placeholderJsequential_263_lstm_790_while_less_sequential_263_lstm_790_strided_slice_1*
T0*
_output_shapes
: {
&sequential_263/lstm_790/while/IdentityIdentity&sequential_263/lstm_790/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_263_lstm_790_while_identity/sequential_263/lstm_790/while/Identity:output:0*(
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499679

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
?J
?
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498705

inputs?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4498621*
condR
while_cond_4498620*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4499093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4499093___redundant_placeholder05
1while_while_cond_4499093___redundant_placeholder15
1while_while_cond_4499093___redundant_placeholder25
1while_while_cond_4499093___redundant_placeholder3
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499647

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
"__inference__wrapped_model_4494448
lstm_789_inputW
Dsequential_263_lstm_789_lstm_cell_741_matmul_readvariableop_resource:	?Y
Fsequential_263_lstm_789_lstm_cell_741_matmul_1_readvariableop_resource:	d?T
Esequential_263_lstm_789_lstm_cell_741_biasadd_readvariableop_resource:	?W
Dsequential_263_lstm_790_lstm_cell_742_matmul_readvariableop_resource:	d?Y
Fsequential_263_lstm_790_lstm_cell_742_matmul_1_readvariableop_resource:	2?T
Esequential_263_lstm_790_lstm_cell_742_biasadd_readvariableop_resource:	?V
Dsequential_263_lstm_791_lstm_cell_743_matmul_readvariableop_resource:2(X
Fsequential_263_lstm_791_lstm_cell_743_matmul_1_readvariableop_resource:
(S
Esequential_263_lstm_791_lstm_cell_743_biasadd_readvariableop_resource:(I
7sequential_263_dense_263_matmul_readvariableop_resource:
F
8sequential_263_dense_263_biasadd_readvariableop_resource:
identity??/sequential_263/dense_263/BiasAdd/ReadVariableOp?.sequential_263/dense_263/MatMul/ReadVariableOp?<sequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp?;sequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOp?=sequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp?sequential_263/lstm_789/while?<sequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp?;sequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOp?=sequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp?sequential_263/lstm_790/while?<sequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp?;sequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOp?=sequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp?sequential_263/lstm_791/while[
sequential_263/lstm_789/ShapeShapelstm_789_input*
T0*
_output_shapes
:u
+sequential_263/lstm_789/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_263/lstm_789/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_263/lstm_789/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_263/lstm_789/strided_sliceStridedSlice&sequential_263/lstm_789/Shape:output:04sequential_263/lstm_789/strided_slice/stack:output:06sequential_263/lstm_789/strided_slice/stack_1:output:06sequential_263/lstm_789/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_263/lstm_789/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_263/lstm_789/zeros/packedPack.sequential_263/lstm_789/strided_slice:output:0/sequential_263/lstm_789/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_263/lstm_789/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_789/zerosFill-sequential_263/lstm_789/zeros/packed:output:0,sequential_263/lstm_789/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_263/lstm_789/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_263/lstm_789/zeros_1/packedPack.sequential_263/lstm_789/strided_slice:output:01sequential_263/lstm_789/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_263/lstm_789/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_789/zeros_1Fill/sequential_263/lstm_789/zeros_1/packed:output:0.sequential_263/lstm_789/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_263/lstm_789/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_263/lstm_789/transpose	Transposelstm_789_input/sequential_263/lstm_789/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_263/lstm_789/Shape_1Shape%sequential_263/lstm_789/transpose:y:0*
T0*
_output_shapes
:w
-sequential_263/lstm_789/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_789/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_789/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_789/strided_slice_1StridedSlice(sequential_263/lstm_789/Shape_1:output:06sequential_263/lstm_789/strided_slice_1/stack:output:08sequential_263/lstm_789/strided_slice_1/stack_1:output:08sequential_263/lstm_789/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_263/lstm_789/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_263/lstm_789/TensorArrayV2TensorListReserve<sequential_263/lstm_789/TensorArrayV2/element_shape:output:00sequential_263/lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_263/lstm_789/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_263/lstm_789/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_263/lstm_789/transpose:y:0Vsequential_263/lstm_789/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_263/lstm_789/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_789/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_789/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_789/strided_slice_2StridedSlice%sequential_263/lstm_789/transpose:y:06sequential_263/lstm_789/strided_slice_2/stack:output:08sequential_263/lstm_789/strided_slice_2/stack_1:output:08sequential_263/lstm_789/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOpReadVariableOpDsequential_263_lstm_789_lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_263/lstm_789/lstm_cell_741/MatMulMatMul0sequential_263/lstm_789/strided_slice_2:output:0Csequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOpFsequential_263_lstm_789_lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_263/lstm_789/lstm_cell_741/MatMul_1MatMul&sequential_263/lstm_789/zeros:output:0Esequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_263/lstm_789/lstm_cell_741/addAddV26sequential_263/lstm_789/lstm_cell_741/MatMul:product:08sequential_263/lstm_789/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOpEsequential_263_lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_263/lstm_789/lstm_cell_741/BiasAddBiasAdd-sequential_263/lstm_789/lstm_cell_741/add:z:0Dsequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_263/lstm_789/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_263/lstm_789/lstm_cell_741/splitSplit>sequential_263/lstm_789/lstm_cell_741/split/split_dim:output:06sequential_263/lstm_789/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_263/lstm_789/lstm_cell_741/SigmoidSigmoid4sequential_263/lstm_789/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_263/lstm_789/lstm_cell_741/Sigmoid_1Sigmoid4sequential_263/lstm_789/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_263/lstm_789/lstm_cell_741/mulMul3sequential_263/lstm_789/lstm_cell_741/Sigmoid_1:y:0(sequential_263/lstm_789/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_263/lstm_789/lstm_cell_741/ReluRelu4sequential_263/lstm_789/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_263/lstm_789/lstm_cell_741/mul_1Mul1sequential_263/lstm_789/lstm_cell_741/Sigmoid:y:08sequential_263/lstm_789/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_263/lstm_789/lstm_cell_741/add_1AddV2-sequential_263/lstm_789/lstm_cell_741/mul:z:0/sequential_263/lstm_789/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_263/lstm_789/lstm_cell_741/Sigmoid_2Sigmoid4sequential_263/lstm_789/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_263/lstm_789/lstm_cell_741/Relu_1Relu/sequential_263/lstm_789/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_263/lstm_789/lstm_cell_741/mul_2Mul3sequential_263/lstm_789/lstm_cell_741/Sigmoid_2:y:0:sequential_263/lstm_789/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_263/lstm_789/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_263/lstm_789/TensorArrayV2_1TensorListReserve>sequential_263/lstm_789/TensorArrayV2_1/element_shape:output:00sequential_263/lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_263/lstm_789/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_263/lstm_789/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_263/lstm_789/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_263/lstm_789/whileWhile3sequential_263/lstm_789/while/loop_counter:output:09sequential_263/lstm_789/while/maximum_iterations:output:0%sequential_263/lstm_789/time:output:00sequential_263/lstm_789/TensorArrayV2_1:handle:0&sequential_263/lstm_789/zeros:output:0(sequential_263/lstm_789/zeros_1:output:00sequential_263/lstm_789/strided_slice_1:output:0Osequential_263/lstm_789/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_263_lstm_789_lstm_cell_741_matmul_readvariableop_resourceFsequential_263_lstm_789_lstm_cell_741_matmul_1_readvariableop_resourceEsequential_263_lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
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
*sequential_263_lstm_789_while_body_4494080*6
cond.R,
*sequential_263_lstm_789_while_cond_4494079*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_263/lstm_789/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_263/lstm_789/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_263/lstm_789/while:output:3Qsequential_263/lstm_789/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_263/lstm_789/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_263/lstm_789/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_789/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_789/strided_slice_3StridedSliceCsequential_263/lstm_789/TensorArrayV2Stack/TensorListStack:tensor:06sequential_263/lstm_789/strided_slice_3/stack:output:08sequential_263/lstm_789/strided_slice_3/stack_1:output:08sequential_263/lstm_789/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_263/lstm_789/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_263/lstm_789/transpose_1	TransposeCsequential_263/lstm_789/TensorArrayV2Stack/TensorListStack:tensor:01sequential_263/lstm_789/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_263/lstm_789/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_263/lstm_790/ShapeShape'sequential_263/lstm_789/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_263/lstm_790/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_263/lstm_790/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_263/lstm_790/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_263/lstm_790/strided_sliceStridedSlice&sequential_263/lstm_790/Shape:output:04sequential_263/lstm_790/strided_slice/stack:output:06sequential_263/lstm_790/strided_slice/stack_1:output:06sequential_263/lstm_790/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_263/lstm_790/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_263/lstm_790/zeros/packedPack.sequential_263/lstm_790/strided_slice:output:0/sequential_263/lstm_790/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_263/lstm_790/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_790/zerosFill-sequential_263/lstm_790/zeros/packed:output:0,sequential_263/lstm_790/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_263/lstm_790/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_263/lstm_790/zeros_1/packedPack.sequential_263/lstm_790/strided_slice:output:01sequential_263/lstm_790/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_263/lstm_790/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_790/zeros_1Fill/sequential_263/lstm_790/zeros_1/packed:output:0.sequential_263/lstm_790/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_263/lstm_790/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_263/lstm_790/transpose	Transpose'sequential_263/lstm_789/transpose_1:y:0/sequential_263/lstm_790/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_263/lstm_790/Shape_1Shape%sequential_263/lstm_790/transpose:y:0*
T0*
_output_shapes
:w
-sequential_263/lstm_790/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_790/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_790/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_790/strided_slice_1StridedSlice(sequential_263/lstm_790/Shape_1:output:06sequential_263/lstm_790/strided_slice_1/stack:output:08sequential_263/lstm_790/strided_slice_1/stack_1:output:08sequential_263/lstm_790/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_263/lstm_790/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_263/lstm_790/TensorArrayV2TensorListReserve<sequential_263/lstm_790/TensorArrayV2/element_shape:output:00sequential_263/lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_263/lstm_790/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_263/lstm_790/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_263/lstm_790/transpose:y:0Vsequential_263/lstm_790/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_263/lstm_790/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_790/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_790/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_790/strided_slice_2StridedSlice%sequential_263/lstm_790/transpose:y:06sequential_263/lstm_790/strided_slice_2/stack:output:08sequential_263/lstm_790/strided_slice_2/stack_1:output:08sequential_263/lstm_790/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOpReadVariableOpDsequential_263_lstm_790_lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_263/lstm_790/lstm_cell_742/MatMulMatMul0sequential_263/lstm_790/strided_slice_2:output:0Csequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOpFsequential_263_lstm_790_lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_263/lstm_790/lstm_cell_742/MatMul_1MatMul&sequential_263/lstm_790/zeros:output:0Esequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_263/lstm_790/lstm_cell_742/addAddV26sequential_263/lstm_790/lstm_cell_742/MatMul:product:08sequential_263/lstm_790/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOpEsequential_263_lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_263/lstm_790/lstm_cell_742/BiasAddBiasAdd-sequential_263/lstm_790/lstm_cell_742/add:z:0Dsequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_263/lstm_790/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_263/lstm_790/lstm_cell_742/splitSplit>sequential_263/lstm_790/lstm_cell_742/split/split_dim:output:06sequential_263/lstm_790/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_263/lstm_790/lstm_cell_742/SigmoidSigmoid4sequential_263/lstm_790/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_263/lstm_790/lstm_cell_742/Sigmoid_1Sigmoid4sequential_263/lstm_790/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_263/lstm_790/lstm_cell_742/mulMul3sequential_263/lstm_790/lstm_cell_742/Sigmoid_1:y:0(sequential_263/lstm_790/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_263/lstm_790/lstm_cell_742/ReluRelu4sequential_263/lstm_790/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_263/lstm_790/lstm_cell_742/mul_1Mul1sequential_263/lstm_790/lstm_cell_742/Sigmoid:y:08sequential_263/lstm_790/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_263/lstm_790/lstm_cell_742/add_1AddV2-sequential_263/lstm_790/lstm_cell_742/mul:z:0/sequential_263/lstm_790/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_263/lstm_790/lstm_cell_742/Sigmoid_2Sigmoid4sequential_263/lstm_790/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_263/lstm_790/lstm_cell_742/Relu_1Relu/sequential_263/lstm_790/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_263/lstm_790/lstm_cell_742/mul_2Mul3sequential_263/lstm_790/lstm_cell_742/Sigmoid_2:y:0:sequential_263/lstm_790/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_263/lstm_790/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_263/lstm_790/TensorArrayV2_1TensorListReserve>sequential_263/lstm_790/TensorArrayV2_1/element_shape:output:00sequential_263/lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_263/lstm_790/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_263/lstm_790/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_263/lstm_790/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_263/lstm_790/whileWhile3sequential_263/lstm_790/while/loop_counter:output:09sequential_263/lstm_790/while/maximum_iterations:output:0%sequential_263/lstm_790/time:output:00sequential_263/lstm_790/TensorArrayV2_1:handle:0&sequential_263/lstm_790/zeros:output:0(sequential_263/lstm_790/zeros_1:output:00sequential_263/lstm_790/strided_slice_1:output:0Osequential_263/lstm_790/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_263_lstm_790_lstm_cell_742_matmul_readvariableop_resourceFsequential_263_lstm_790_lstm_cell_742_matmul_1_readvariableop_resourceEsequential_263_lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
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
*sequential_263_lstm_790_while_body_4494219*6
cond.R,
*sequential_263_lstm_790_while_cond_4494218*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_263/lstm_790/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_263/lstm_790/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_263/lstm_790/while:output:3Qsequential_263/lstm_790/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_263/lstm_790/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_263/lstm_790/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_790/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_790/strided_slice_3StridedSliceCsequential_263/lstm_790/TensorArrayV2Stack/TensorListStack:tensor:06sequential_263/lstm_790/strided_slice_3/stack:output:08sequential_263/lstm_790/strided_slice_3/stack_1:output:08sequential_263/lstm_790/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_263/lstm_790/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_263/lstm_790/transpose_1	TransposeCsequential_263/lstm_790/TensorArrayV2Stack/TensorListStack:tensor:01sequential_263/lstm_790/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_263/lstm_790/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_263/lstm_791/ShapeShape'sequential_263/lstm_790/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_263/lstm_791/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_263/lstm_791/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_263/lstm_791/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_263/lstm_791/strided_sliceStridedSlice&sequential_263/lstm_791/Shape:output:04sequential_263/lstm_791/strided_slice/stack:output:06sequential_263/lstm_791/strided_slice/stack_1:output:06sequential_263/lstm_791/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_263/lstm_791/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_263/lstm_791/zeros/packedPack.sequential_263/lstm_791/strided_slice:output:0/sequential_263/lstm_791/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_263/lstm_791/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_791/zerosFill-sequential_263/lstm_791/zeros/packed:output:0,sequential_263/lstm_791/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_263/lstm_791/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_263/lstm_791/zeros_1/packedPack.sequential_263/lstm_791/strided_slice:output:01sequential_263/lstm_791/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_263/lstm_791/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_263/lstm_791/zeros_1Fill/sequential_263/lstm_791/zeros_1/packed:output:0.sequential_263/lstm_791/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_263/lstm_791/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_263/lstm_791/transpose	Transpose'sequential_263/lstm_790/transpose_1:y:0/sequential_263/lstm_791/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_263/lstm_791/Shape_1Shape%sequential_263/lstm_791/transpose:y:0*
T0*
_output_shapes
:w
-sequential_263/lstm_791/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_791/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_791/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_791/strided_slice_1StridedSlice(sequential_263/lstm_791/Shape_1:output:06sequential_263/lstm_791/strided_slice_1/stack:output:08sequential_263/lstm_791/strided_slice_1/stack_1:output:08sequential_263/lstm_791/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_263/lstm_791/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_263/lstm_791/TensorArrayV2TensorListReserve<sequential_263/lstm_791/TensorArrayV2/element_shape:output:00sequential_263/lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_263/lstm_791/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_263/lstm_791/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_263/lstm_791/transpose:y:0Vsequential_263/lstm_791/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_263/lstm_791/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_791/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_263/lstm_791/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_791/strided_slice_2StridedSlice%sequential_263/lstm_791/transpose:y:06sequential_263/lstm_791/strided_slice_2/stack:output:08sequential_263/lstm_791/strided_slice_2/stack_1:output:08sequential_263/lstm_791/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOpReadVariableOpDsequential_263_lstm_791_lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_263/lstm_791/lstm_cell_743/MatMulMatMul0sequential_263/lstm_791/strided_slice_2:output:0Csequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOpFsequential_263_lstm_791_lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_263/lstm_791/lstm_cell_743/MatMul_1MatMul&sequential_263/lstm_791/zeros:output:0Esequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_263/lstm_791/lstm_cell_743/addAddV26sequential_263/lstm_791/lstm_cell_743/MatMul:product:08sequential_263/lstm_791/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOpEsequential_263_lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_263/lstm_791/lstm_cell_743/BiasAddBiasAdd-sequential_263/lstm_791/lstm_cell_743/add:z:0Dsequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_263/lstm_791/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_263/lstm_791/lstm_cell_743/splitSplit>sequential_263/lstm_791/lstm_cell_743/split/split_dim:output:06sequential_263/lstm_791/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_263/lstm_791/lstm_cell_743/SigmoidSigmoid4sequential_263/lstm_791/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_263/lstm_791/lstm_cell_743/Sigmoid_1Sigmoid4sequential_263/lstm_791/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_263/lstm_791/lstm_cell_743/mulMul3sequential_263/lstm_791/lstm_cell_743/Sigmoid_1:y:0(sequential_263/lstm_791/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_263/lstm_791/lstm_cell_743/ReluRelu4sequential_263/lstm_791/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_263/lstm_791/lstm_cell_743/mul_1Mul1sequential_263/lstm_791/lstm_cell_743/Sigmoid:y:08sequential_263/lstm_791/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_263/lstm_791/lstm_cell_743/add_1AddV2-sequential_263/lstm_791/lstm_cell_743/mul:z:0/sequential_263/lstm_791/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_263/lstm_791/lstm_cell_743/Sigmoid_2Sigmoid4sequential_263/lstm_791/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_263/lstm_791/lstm_cell_743/Relu_1Relu/sequential_263/lstm_791/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_263/lstm_791/lstm_cell_743/mul_2Mul3sequential_263/lstm_791/lstm_cell_743/Sigmoid_2:y:0:sequential_263/lstm_791/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_263/lstm_791/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_263/lstm_791/TensorArrayV2_1TensorListReserve>sequential_263/lstm_791/TensorArrayV2_1/element_shape:output:00sequential_263/lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_263/lstm_791/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_263/lstm_791/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_263/lstm_791/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_263/lstm_791/whileWhile3sequential_263/lstm_791/while/loop_counter:output:09sequential_263/lstm_791/while/maximum_iterations:output:0%sequential_263/lstm_791/time:output:00sequential_263/lstm_791/TensorArrayV2_1:handle:0&sequential_263/lstm_791/zeros:output:0(sequential_263/lstm_791/zeros_1:output:00sequential_263/lstm_791/strided_slice_1:output:0Osequential_263/lstm_791/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_263_lstm_791_lstm_cell_743_matmul_readvariableop_resourceFsequential_263_lstm_791_lstm_cell_743_matmul_1_readvariableop_resourceEsequential_263_lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
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
*sequential_263_lstm_791_while_body_4494358*6
cond.R,
*sequential_263_lstm_791_while_cond_4494357*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_263/lstm_791/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_263/lstm_791/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_263/lstm_791/while:output:3Qsequential_263/lstm_791/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_263/lstm_791/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_263/lstm_791/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_263/lstm_791/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_263/lstm_791/strided_slice_3StridedSliceCsequential_263/lstm_791/TensorArrayV2Stack/TensorListStack:tensor:06sequential_263/lstm_791/strided_slice_3/stack:output:08sequential_263/lstm_791/strided_slice_3/stack_1:output:08sequential_263/lstm_791/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_263/lstm_791/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_263/lstm_791/transpose_1	TransposeCsequential_263/lstm_791/TensorArrayV2Stack/TensorListStack:tensor:01sequential_263/lstm_791/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_263/lstm_791/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_263/dense_263/MatMul/ReadVariableOpReadVariableOp7sequential_263_dense_263_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_263/dense_263/MatMulMatMul0sequential_263/lstm_791/strided_slice_3:output:06sequential_263/dense_263/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_263/dense_263/BiasAdd/ReadVariableOpReadVariableOp8sequential_263_dense_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_263/dense_263/BiasAddBiasAdd)sequential_263/dense_263/MatMul:product:07sequential_263/dense_263/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_263/dense_263/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_263/dense_263/BiasAdd/ReadVariableOp/^sequential_263/dense_263/MatMul/ReadVariableOp=^sequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp<^sequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOp>^sequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp^sequential_263/lstm_789/while=^sequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp<^sequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOp>^sequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp^sequential_263/lstm_790/while=^sequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp<^sequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOp>^sequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp^sequential_263/lstm_791/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_263/dense_263/BiasAdd/ReadVariableOp/sequential_263/dense_263/BiasAdd/ReadVariableOp2`
.sequential_263/dense_263/MatMul/ReadVariableOp.sequential_263/dense_263/MatMul/ReadVariableOp2|
<sequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp<sequential_263/lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp2z
;sequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOp;sequential_263/lstm_789/lstm_cell_741/MatMul/ReadVariableOp2~
=sequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp=sequential_263/lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp2>
sequential_263/lstm_789/whilesequential_263/lstm_789/while2|
<sequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp<sequential_263/lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp2z
;sequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOp;sequential_263/lstm_790/lstm_cell_742/MatMul/ReadVariableOp2~
=sequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp=sequential_263/lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp2>
sequential_263/lstm_790/whilesequential_263/lstm_790/while2|
<sequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp<sequential_263/lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp2z
;sequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOp;sequential_263/lstm_791/lstm_cell_743/MatMul/ReadVariableOp2~
=sequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp=sequential_263/lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp2>
sequential_263/lstm_791/whilesequential_263/lstm_791/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_789_input
?
?
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4494865

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
while_body_4499380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4496243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4496243___redundant_placeholder05
1while_while_cond_4496243___redundant_placeholder15
1while_while_cond_4496243___redundant_placeholder25
1while_while_cond_4496243___redundant_placeholder3
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
while_cond_4497861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4497861___redundant_placeholder05
1while_while_cond_4497861___redundant_placeholder15
1while_while_cond_4497861___redundant_placeholder25
1while_while_cond_4497861___redundant_placeholder3
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
while_cond_4495419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495419___redundant_placeholder05
1while_while_cond_4495419___redundant_placeholder15
1while_while_cond_4495419___redundant_placeholder25
1while_while_cond_4495419___redundant_placeholder3
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
lstm_791_while_cond_4497098.
*lstm_791_while_lstm_791_while_loop_counter4
0lstm_791_while_lstm_791_while_maximum_iterations
lstm_791_while_placeholder 
lstm_791_while_placeholder_1 
lstm_791_while_placeholder_2 
lstm_791_while_placeholder_30
,lstm_791_while_less_lstm_791_strided_slice_1G
Clstm_791_while_lstm_791_while_cond_4497098___redundant_placeholder0G
Clstm_791_while_lstm_791_while_cond_4497098___redundant_placeholder1G
Clstm_791_while_lstm_791_while_cond_4497098___redundant_placeholder2G
Clstm_791_while_lstm_791_while_cond_4497098___redundant_placeholder3
lstm_791_while_identity
?
lstm_791/while/LessLesslstm_791_while_placeholder,lstm_791_while_less_lstm_791_strided_slice_1*
T0*
_output_shapes
: ]
lstm_791/while/IdentityIdentitylstm_791/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_791_while_identity lstm_791/while/Identity:output:0*(
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497616

inputsH
5lstm_789_lstm_cell_741_matmul_readvariableop_resource:	?J
7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource:	d?E
6lstm_789_lstm_cell_741_biasadd_readvariableop_resource:	?H
5lstm_790_lstm_cell_742_matmul_readvariableop_resource:	d?J
7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource:	2?E
6lstm_790_lstm_cell_742_biasadd_readvariableop_resource:	?G
5lstm_791_lstm_cell_743_matmul_readvariableop_resource:2(I
7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource:
(D
6lstm_791_lstm_cell_743_biasadd_readvariableop_resource:(:
(dense_263_matmul_readvariableop_resource:
7
)dense_263_biasadd_readvariableop_resource:
identity?? dense_263/BiasAdd/ReadVariableOp?dense_263/MatMul/ReadVariableOp?-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp?,lstm_789/lstm_cell_741/MatMul/ReadVariableOp?.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp?lstm_789/while?-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp?,lstm_790/lstm_cell_742/MatMul/ReadVariableOp?.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp?lstm_790/while?-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp?,lstm_791/lstm_cell_743/MatMul/ReadVariableOp?.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp?lstm_791/whileD
lstm_789/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_789/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_789/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_789/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_sliceStridedSlicelstm_789/Shape:output:0%lstm_789/strided_slice/stack:output:0'lstm_789/strided_slice/stack_1:output:0'lstm_789/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_789/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_789/zeros/packedPacklstm_789/strided_slice:output:0 lstm_789/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_789/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_789/zerosFilllstm_789/zeros/packed:output:0lstm_789/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_789/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_789/zeros_1/packedPacklstm_789/strided_slice:output:0"lstm_789/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_789/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_789/zeros_1Fill lstm_789/zeros_1/packed:output:0lstm_789/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_789/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_789/transpose	Transposeinputs lstm_789/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_789/Shape_1Shapelstm_789/transpose:y:0*
T0*
_output_shapes
:h
lstm_789/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_789/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_1StridedSlicelstm_789/Shape_1:output:0'lstm_789/strided_slice_1/stack:output:0)lstm_789/strided_slice_1/stack_1:output:0)lstm_789/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_789/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_789/TensorArrayV2TensorListReserve-lstm_789/TensorArrayV2/element_shape:output:0!lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_789/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_789/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_789/transpose:y:0Glstm_789/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_789/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_789/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_2StridedSlicelstm_789/transpose:y:0'lstm_789/strided_slice_2/stack:output:0)lstm_789/strided_slice_2/stack_1:output:0)lstm_789/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_789/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp5lstm_789_lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_789/lstm_cell_741/MatMulMatMul!lstm_789/strided_slice_2:output:04lstm_789/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_789/lstm_cell_741/MatMul_1MatMullstm_789/zeros:output:06lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_789/lstm_cell_741/addAddV2'lstm_789/lstm_cell_741/MatMul:product:0)lstm_789/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp6lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_789/lstm_cell_741/BiasAddBiasAddlstm_789/lstm_cell_741/add:z:05lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_789/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_789/lstm_cell_741/splitSplit/lstm_789/lstm_cell_741/split/split_dim:output:0'lstm_789/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_789/lstm_cell_741/SigmoidSigmoid%lstm_789/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_789/lstm_cell_741/Sigmoid_1Sigmoid%lstm_789/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mulMul$lstm_789/lstm_cell_741/Sigmoid_1:y:0lstm_789/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_789/lstm_cell_741/ReluRelu%lstm_789/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mul_1Mul"lstm_789/lstm_cell_741/Sigmoid:y:0)lstm_789/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/add_1AddV2lstm_789/lstm_cell_741/mul:z:0 lstm_789/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_789/lstm_cell_741/Sigmoid_2Sigmoid%lstm_789/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_789/lstm_cell_741/Relu_1Relu lstm_789/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mul_2Mul$lstm_789/lstm_cell_741/Sigmoid_2:y:0+lstm_789/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_789/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_789/TensorArrayV2_1TensorListReserve/lstm_789/TensorArrayV2_1/element_shape:output:0!lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_789/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_789/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_789/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_789/whileWhile$lstm_789/while/loop_counter:output:0*lstm_789/while/maximum_iterations:output:0lstm_789/time:output:0!lstm_789/TensorArrayV2_1:handle:0lstm_789/zeros:output:0lstm_789/zeros_1:output:0!lstm_789/strided_slice_1:output:0@lstm_789/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_789_lstm_cell_741_matmul_readvariableop_resource7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource6lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
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
lstm_789_while_body_4497248*'
condR
lstm_789_while_cond_4497247*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_789/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_789/TensorArrayV2Stack/TensorListStackTensorListStacklstm_789/while:output:3Blstm_789/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_789/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_789/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_3StridedSlice4lstm_789/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_789/strided_slice_3/stack:output:0)lstm_789/strided_slice_3/stack_1:output:0)lstm_789/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_789/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_789/transpose_1	Transpose4lstm_789/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_789/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_789/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_790/ShapeShapelstm_789/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_790/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_790/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_790/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_sliceStridedSlicelstm_790/Shape:output:0%lstm_790/strided_slice/stack:output:0'lstm_790/strided_slice/stack_1:output:0'lstm_790/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_790/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_790/zeros/packedPacklstm_790/strided_slice:output:0 lstm_790/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_790/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_790/zerosFilllstm_790/zeros/packed:output:0lstm_790/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_790/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_790/zeros_1/packedPacklstm_790/strided_slice:output:0"lstm_790/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_790/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_790/zeros_1Fill lstm_790/zeros_1/packed:output:0lstm_790/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_790/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_790/transpose	Transposelstm_789/transpose_1:y:0 lstm_790/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_790/Shape_1Shapelstm_790/transpose:y:0*
T0*
_output_shapes
:h
lstm_790/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_790/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_1StridedSlicelstm_790/Shape_1:output:0'lstm_790/strided_slice_1/stack:output:0)lstm_790/strided_slice_1/stack_1:output:0)lstm_790/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_790/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_790/TensorArrayV2TensorListReserve-lstm_790/TensorArrayV2/element_shape:output:0!lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_790/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_790/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_790/transpose:y:0Glstm_790/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_790/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_790/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_2StridedSlicelstm_790/transpose:y:0'lstm_790/strided_slice_2/stack:output:0)lstm_790/strided_slice_2/stack_1:output:0)lstm_790/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_790/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp5lstm_790_lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_790/lstm_cell_742/MatMulMatMul!lstm_790/strided_slice_2:output:04lstm_790/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_790/lstm_cell_742/MatMul_1MatMullstm_790/zeros:output:06lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_790/lstm_cell_742/addAddV2'lstm_790/lstm_cell_742/MatMul:product:0)lstm_790/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp6lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_790/lstm_cell_742/BiasAddBiasAddlstm_790/lstm_cell_742/add:z:05lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_790/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_790/lstm_cell_742/splitSplit/lstm_790/lstm_cell_742/split/split_dim:output:0'lstm_790/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_790/lstm_cell_742/SigmoidSigmoid%lstm_790/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_790/lstm_cell_742/Sigmoid_1Sigmoid%lstm_790/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mulMul$lstm_790/lstm_cell_742/Sigmoid_1:y:0lstm_790/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_790/lstm_cell_742/ReluRelu%lstm_790/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mul_1Mul"lstm_790/lstm_cell_742/Sigmoid:y:0)lstm_790/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/add_1AddV2lstm_790/lstm_cell_742/mul:z:0 lstm_790/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_790/lstm_cell_742/Sigmoid_2Sigmoid%lstm_790/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_790/lstm_cell_742/Relu_1Relu lstm_790/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mul_2Mul$lstm_790/lstm_cell_742/Sigmoid_2:y:0+lstm_790/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_790/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_790/TensorArrayV2_1TensorListReserve/lstm_790/TensorArrayV2_1/element_shape:output:0!lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_790/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_790/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_790/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_790/whileWhile$lstm_790/while/loop_counter:output:0*lstm_790/while/maximum_iterations:output:0lstm_790/time:output:0!lstm_790/TensorArrayV2_1:handle:0lstm_790/zeros:output:0lstm_790/zeros_1:output:0!lstm_790/strided_slice_1:output:0@lstm_790/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_790_lstm_cell_742_matmul_readvariableop_resource7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource6lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
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
lstm_790_while_body_4497387*'
condR
lstm_790_while_cond_4497386*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_790/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_790/TensorArrayV2Stack/TensorListStackTensorListStacklstm_790/while:output:3Blstm_790/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_790/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_790/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_3StridedSlice4lstm_790/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_790/strided_slice_3/stack:output:0)lstm_790/strided_slice_3/stack_1:output:0)lstm_790/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_790/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_790/transpose_1	Transpose4lstm_790/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_790/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_790/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_791/ShapeShapelstm_790/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_791/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_791/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_791/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_sliceStridedSlicelstm_791/Shape:output:0%lstm_791/strided_slice/stack:output:0'lstm_791/strided_slice/stack_1:output:0'lstm_791/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_791/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_791/zeros/packedPacklstm_791/strided_slice:output:0 lstm_791/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_791/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_791/zerosFilllstm_791/zeros/packed:output:0lstm_791/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_791/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_791/zeros_1/packedPacklstm_791/strided_slice:output:0"lstm_791/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_791/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_791/zeros_1Fill lstm_791/zeros_1/packed:output:0lstm_791/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_791/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_791/transpose	Transposelstm_790/transpose_1:y:0 lstm_791/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_791/Shape_1Shapelstm_791/transpose:y:0*
T0*
_output_shapes
:h
lstm_791/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_791/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_1StridedSlicelstm_791/Shape_1:output:0'lstm_791/strided_slice_1/stack:output:0)lstm_791/strided_slice_1/stack_1:output:0)lstm_791/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_791/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_791/TensorArrayV2TensorListReserve-lstm_791/TensorArrayV2/element_shape:output:0!lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_791/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_791/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_791/transpose:y:0Glstm_791/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_791/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_791/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_2StridedSlicelstm_791/transpose:y:0'lstm_791/strided_slice_2/stack:output:0)lstm_791/strided_slice_2/stack_1:output:0)lstm_791/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_791/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp5lstm_791_lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_791/lstm_cell_743/MatMulMatMul!lstm_791/strided_slice_2:output:04lstm_791/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_791/lstm_cell_743/MatMul_1MatMullstm_791/zeros:output:06lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_791/lstm_cell_743/addAddV2'lstm_791/lstm_cell_743/MatMul:product:0)lstm_791/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp6lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_791/lstm_cell_743/BiasAddBiasAddlstm_791/lstm_cell_743/add:z:05lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_791/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_791/lstm_cell_743/splitSplit/lstm_791/lstm_cell_743/split/split_dim:output:0'lstm_791/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_791/lstm_cell_743/SigmoidSigmoid%lstm_791/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_791/lstm_cell_743/Sigmoid_1Sigmoid%lstm_791/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mulMul$lstm_791/lstm_cell_743/Sigmoid_1:y:0lstm_791/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_791/lstm_cell_743/ReluRelu%lstm_791/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mul_1Mul"lstm_791/lstm_cell_743/Sigmoid:y:0)lstm_791/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/add_1AddV2lstm_791/lstm_cell_743/mul:z:0 lstm_791/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_791/lstm_cell_743/Sigmoid_2Sigmoid%lstm_791/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_791/lstm_cell_743/Relu_1Relu lstm_791/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mul_2Mul$lstm_791/lstm_cell_743/Sigmoid_2:y:0+lstm_791/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_791/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_791/TensorArrayV2_1TensorListReserve/lstm_791/TensorArrayV2_1/element_shape:output:0!lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_791/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_791/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_791/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_791/whileWhile$lstm_791/while/loop_counter:output:0*lstm_791/while/maximum_iterations:output:0lstm_791/time:output:0!lstm_791/TensorArrayV2_1:handle:0lstm_791/zeros:output:0lstm_791/zeros_1:output:0!lstm_791/strided_slice_1:output:0@lstm_791/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_791_lstm_cell_743_matmul_readvariableop_resource7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource6lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
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
lstm_791_while_body_4497526*'
condR
lstm_791_while_cond_4497525*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_791/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_791/TensorArrayV2Stack/TensorListStackTensorListStacklstm_791/while:output:3Blstm_791/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_791/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_791/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_3StridedSlice4lstm_791/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_791/strided_slice_3/stack:output:0)lstm_791/strided_slice_3/stack_1:output:0)lstm_791/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_791/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_791/transpose_1	Transpose4lstm_791/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_791/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_791/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_263/MatMul/ReadVariableOpReadVariableOp(dense_263_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_263/MatMulMatMul!lstm_791/strided_slice_3:output:0'dense_263/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_263/BiasAdd/ReadVariableOpReadVariableOp)dense_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_263/BiasAddBiasAdddense_263/MatMul:product:0(dense_263/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_263/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_263/BiasAdd/ReadVariableOp ^dense_263/MatMul/ReadVariableOp.^lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp-^lstm_789/lstm_cell_741/MatMul/ReadVariableOp/^lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp^lstm_789/while.^lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp-^lstm_790/lstm_cell_742/MatMul/ReadVariableOp/^lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp^lstm_790/while.^lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp-^lstm_791/lstm_cell_743/MatMul/ReadVariableOp/^lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp^lstm_791/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_263/BiasAdd/ReadVariableOp dense_263/BiasAdd/ReadVariableOp2B
dense_263/MatMul/ReadVariableOpdense_263/MatMul/ReadVariableOp2^
-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp2\
,lstm_789/lstm_cell_741/MatMul/ReadVariableOp,lstm_789/lstm_cell_741/MatMul/ReadVariableOp2`
.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp2 
lstm_789/whilelstm_789/while2^
-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp2\
,lstm_790/lstm_cell_742/MatMul/ReadVariableOp,lstm_790/lstm_cell_742/MatMul/ReadVariableOp2`
.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp2 
lstm_790/whilelstm_790/while2^
-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp2\
,lstm_791/lstm_cell_743/MatMul/ReadVariableOp,lstm_791/lstm_cell_743/MatMul/ReadVariableOp2`
.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp2 
lstm_791/whilelstm_791/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_263_layer_call_and_return_conditional_losses_4495972

inputs#
lstm_789_4495648:	?#
lstm_789_4495650:	d?
lstm_789_4495652:	?#
lstm_790_4495798:	d?#
lstm_790_4495800:	2?
lstm_790_4495802:	?"
lstm_791_4495948:2("
lstm_791_4495950:
(
lstm_791_4495952:(#
dense_263_4495966:

dense_263_4495968:
identity??!dense_263/StatefulPartitionedCall? lstm_789/StatefulPartitionedCall? lstm_790/StatefulPartitionedCall? lstm_791/StatefulPartitionedCall?
 lstm_789/StatefulPartitionedCallStatefulPartitionedCallinputslstm_789_4495648lstm_789_4495650lstm_789_4495652*
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4495647?
 lstm_790/StatefulPartitionedCallStatefulPartitionedCall)lstm_789/StatefulPartitionedCall:output:0lstm_790_4495798lstm_790_4495800lstm_790_4495802*
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495797?
 lstm_791/StatefulPartitionedCallStatefulPartitionedCall)lstm_790/StatefulPartitionedCall:output:0lstm_791_4495948lstm_791_4495950lstm_791_4495952*
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495947?
!dense_263/StatefulPartitionedCallStatefulPartitionedCall)lstm_791/StatefulPartitionedCall:output:0dense_263_4495966dense_263_4495968*
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965y
IdentityIdentity*dense_263/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_263/StatefulPartitionedCall!^lstm_789/StatefulPartitionedCall!^lstm_790/StatefulPartitionedCall!^lstm_791/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_263/StatefulPartitionedCall!dense_263/StatefulPartitionedCall2D
 lstm_789/StatefulPartitionedCall lstm_789/StatefulPartitionedCall2D
 lstm_790/StatefulPartitionedCall lstm_790/StatefulPartitionedCall2D
 lstm_791/StatefulPartitionedCall lstm_791/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_263_layer_call_fn_4496762

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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496561o
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499035
inputs_0>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4498951*
condR
while_cond_4498950*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499777

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
?C
?

lstm_790_while_body_4496960.
*lstm_790_while_lstm_790_while_loop_counter4
0lstm_790_while_lstm_790_while_maximum_iterations
lstm_790_while_placeholder 
lstm_790_while_placeholder_1 
lstm_790_while_placeholder_2 
lstm_790_while_placeholder_3-
)lstm_790_while_lstm_790_strided_slice_1_0i
elstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0:	d?R
?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?M
>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
lstm_790_while_identity
lstm_790_while_identity_1
lstm_790_while_identity_2
lstm_790_while_identity_3
lstm_790_while_identity_4
lstm_790_while_identity_5+
'lstm_790_while_lstm_790_strided_slice_1g
clstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensorN
;lstm_790_while_lstm_cell_742_matmul_readvariableop_resource:	d?P
=lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource:	2?K
<lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource:	???3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp?2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp?4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp?
@lstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_790/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0lstm_790_while_placeholderIlstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_790/while/lstm_cell_742/MatMulMatMul9lstm_790/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_790/while/lstm_cell_742/MatMul_1MatMullstm_790_while_placeholder_2<lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_790/while/lstm_cell_742/addAddV2-lstm_790/while/lstm_cell_742/MatMul:product:0/lstm_790/while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_790/while/lstm_cell_742/BiasAddBiasAdd$lstm_790/while/lstm_cell_742/add:z:0;lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_790/while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_790/while/lstm_cell_742/splitSplit5lstm_790/while/lstm_cell_742/split/split_dim:output:0-lstm_790/while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_790/while/lstm_cell_742/SigmoidSigmoid+lstm_790/while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_790/while/lstm_cell_742/Sigmoid_1Sigmoid+lstm_790/while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_790/while/lstm_cell_742/mulMul*lstm_790/while/lstm_cell_742/Sigmoid_1:y:0lstm_790_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_790/while/lstm_cell_742/ReluRelu+lstm_790/while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/mul_1Mul(lstm_790/while/lstm_cell_742/Sigmoid:y:0/lstm_790/while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/add_1AddV2$lstm_790/while/lstm_cell_742/mul:z:0&lstm_790/while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_790/while/lstm_cell_742/Sigmoid_2Sigmoid+lstm_790/while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_790/while/lstm_cell_742/Relu_1Relu&lstm_790/while/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/mul_2Mul*lstm_790/while/lstm_cell_742/Sigmoid_2:y:01lstm_790/while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_790/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_790_while_placeholder_1lstm_790_while_placeholder&lstm_790/while/lstm_cell_742/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_790/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_790/while/addAddV2lstm_790_while_placeholderlstm_790/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_790/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_790/while/add_1AddV2*lstm_790_while_lstm_790_while_loop_counterlstm_790/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_790/while/IdentityIdentitylstm_790/while/add_1:z:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_1Identity0lstm_790_while_lstm_790_while_maximum_iterations^lstm_790/while/NoOp*
T0*
_output_shapes
: t
lstm_790/while/Identity_2Identitylstm_790/while/add:z:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_3IdentityClstm_790/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_4Identity&lstm_790/while/lstm_cell_742/mul_2:z:0^lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_790/while/Identity_5Identity&lstm_790/while/lstm_cell_742/add_1:z:0^lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_790/while/NoOpNoOp4^lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp3^lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp5^lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_790_while_identity lstm_790/while/Identity:output:0"?
lstm_790_while_identity_1"lstm_790/while/Identity_1:output:0"?
lstm_790_while_identity_2"lstm_790/while/Identity_2:output:0"?
lstm_790_while_identity_3"lstm_790/while/Identity_3:output:0"?
lstm_790_while_identity_4"lstm_790/while/Identity_4:output:0"?
lstm_790_while_identity_5"lstm_790/while/Identity_5:output:0"T
'lstm_790_while_lstm_790_strided_slice_1)lstm_790_while_lstm_790_strided_slice_1_0"~
<lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0"?
=lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0"|
;lstm_790_while_lstm_cell_742_matmul_readvariableop_resource=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0"?
clstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensorelstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp2h
2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp2l
4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4494720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_741_4494744_0:	?0
while_lstm_cell_741_4494746_0:	d?,
while_lstm_cell_741_4494748_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_741_4494744:	?.
while_lstm_cell_741_4494746:	d?*
while_lstm_cell_741_4494748:	???+while/lstm_cell_741/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_741/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_741_4494744_0while_lstm_cell_741_4494746_0while_lstm_cell_741_4494748_0*
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494661?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_741/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_741/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_741/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_741/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_741_4494744while_lstm_cell_741_4494744_0"<
while_lstm_cell_741_4494746while_lstm_cell_741_4494746_0"<
while_lstm_cell_741_4494748while_lstm_cell_741_4494748_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_741/StatefulPartitionedCall+while/lstm_cell_741/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_263_layer_call_fn_4496613
lstm_789_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_789_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496561o
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
_user_specified_namelstm_789_input
?8
?
while_body_4495713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498562
inputs_0?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4498478*
condR
while_cond_4498477*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_790_layer_call_fn_4498265

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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495797s
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
while_cond_4498950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498950___redundant_placeholder05
1while_while_cond_4498950___redundant_placeholder15
1while_while_cond_4498950___redundant_placeholder25
1while_while_cond_4498950___redundant_placeholder3
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
*sequential_263_lstm_790_while_body_4494219L
Hsequential_263_lstm_790_while_sequential_263_lstm_790_while_loop_counterR
Nsequential_263_lstm_790_while_sequential_263_lstm_790_while_maximum_iterations-
)sequential_263_lstm_790_while_placeholder/
+sequential_263_lstm_790_while_placeholder_1/
+sequential_263_lstm_790_while_placeholder_2/
+sequential_263_lstm_790_while_placeholder_3K
Gsequential_263_lstm_790_while_sequential_263_lstm_790_strided_slice_1_0?
?sequential_263_lstm_790_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_790_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_263_lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0:	d?a
Nsequential_263_lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?\
Msequential_263_lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0:	?*
&sequential_263_lstm_790_while_identity,
(sequential_263_lstm_790_while_identity_1,
(sequential_263_lstm_790_while_identity_2,
(sequential_263_lstm_790_while_identity_3,
(sequential_263_lstm_790_while_identity_4,
(sequential_263_lstm_790_while_identity_5I
Esequential_263_lstm_790_while_sequential_263_lstm_790_strided_slice_1?
?sequential_263_lstm_790_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_790_tensorarrayunstack_tensorlistfromtensor]
Jsequential_263_lstm_790_while_lstm_cell_742_matmul_readvariableop_resource:	d?_
Lsequential_263_lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource:	2?Z
Ksequential_263_lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource:	???Bsequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp?Asequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp?Csequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp?
Osequential_263/lstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_263/lstm_790/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_263_lstm_790_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_790_tensorarrayunstack_tensorlistfromtensor_0)sequential_263_lstm_790_while_placeholderXsequential_263/lstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOpLsequential_263_lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_263/lstm_790/while/lstm_cell_742/MatMulMatMulHsequential_263/lstm_790/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOpNsequential_263_lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_263/lstm_790/while/lstm_cell_742/MatMul_1MatMul+sequential_263_lstm_790_while_placeholder_2Ksequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_263/lstm_790/while/lstm_cell_742/addAddV2<sequential_263/lstm_790/while/lstm_cell_742/MatMul:product:0>sequential_263/lstm_790/while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOpMsequential_263_lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_263/lstm_790/while/lstm_cell_742/BiasAddBiasAdd3sequential_263/lstm_790/while/lstm_cell_742/add:z:0Jsequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_263/lstm_790/while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_263/lstm_790/while/lstm_cell_742/splitSplitDsequential_263/lstm_790/while/lstm_cell_742/split/split_dim:output:0<sequential_263/lstm_790/while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_263/lstm_790/while/lstm_cell_742/SigmoidSigmoid:sequential_263/lstm_790/while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_263/lstm_790/while/lstm_cell_742/Sigmoid_1Sigmoid:sequential_263/lstm_790/while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_263/lstm_790/while/lstm_cell_742/mulMul9sequential_263/lstm_790/while/lstm_cell_742/Sigmoid_1:y:0+sequential_263_lstm_790_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_263/lstm_790/while/lstm_cell_742/ReluRelu:sequential_263/lstm_790/while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_263/lstm_790/while/lstm_cell_742/mul_1Mul7sequential_263/lstm_790/while/lstm_cell_742/Sigmoid:y:0>sequential_263/lstm_790/while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_263/lstm_790/while/lstm_cell_742/add_1AddV23sequential_263/lstm_790/while/lstm_cell_742/mul:z:05sequential_263/lstm_790/while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_263/lstm_790/while/lstm_cell_742/Sigmoid_2Sigmoid:sequential_263/lstm_790/while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_263/lstm_790/while/lstm_cell_742/Relu_1Relu5sequential_263/lstm_790/while/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_263/lstm_790/while/lstm_cell_742/mul_2Mul9sequential_263/lstm_790/while/lstm_cell_742/Sigmoid_2:y:0@sequential_263/lstm_790/while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_263/lstm_790/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_263_lstm_790_while_placeholder_1)sequential_263_lstm_790_while_placeholder5sequential_263/lstm_790/while/lstm_cell_742/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_263/lstm_790/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_263/lstm_790/while/addAddV2)sequential_263_lstm_790_while_placeholder,sequential_263/lstm_790/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_263/lstm_790/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_263/lstm_790/while/add_1AddV2Hsequential_263_lstm_790_while_sequential_263_lstm_790_while_loop_counter.sequential_263/lstm_790/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_263/lstm_790/while/IdentityIdentity'sequential_263/lstm_790/while/add_1:z:0#^sequential_263/lstm_790/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_790/while/Identity_1IdentityNsequential_263_lstm_790_while_sequential_263_lstm_790_while_maximum_iterations#^sequential_263/lstm_790/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_790/while/Identity_2Identity%sequential_263/lstm_790/while/add:z:0#^sequential_263/lstm_790/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_790/while/Identity_3IdentityRsequential_263/lstm_790/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_263/lstm_790/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_790/while/Identity_4Identity5sequential_263/lstm_790/while/lstm_cell_742/mul_2:z:0#^sequential_263/lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_263/lstm_790/while/Identity_5Identity5sequential_263/lstm_790/while/lstm_cell_742/add_1:z:0#^sequential_263/lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_263/lstm_790/while/NoOpNoOpC^sequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOpB^sequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOpD^sequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_263_lstm_790_while_identity/sequential_263/lstm_790/while/Identity:output:0"]
(sequential_263_lstm_790_while_identity_11sequential_263/lstm_790/while/Identity_1:output:0"]
(sequential_263_lstm_790_while_identity_21sequential_263/lstm_790/while/Identity_2:output:0"]
(sequential_263_lstm_790_while_identity_31sequential_263/lstm_790/while/Identity_3:output:0"]
(sequential_263_lstm_790_while_identity_41sequential_263/lstm_790/while/Identity_4:output:0"]
(sequential_263_lstm_790_while_identity_51sequential_263/lstm_790/while/Identity_5:output:0"?
Ksequential_263_lstm_790_while_lstm_cell_742_biasadd_readvariableop_resourceMsequential_263_lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0"?
Lsequential_263_lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resourceNsequential_263_lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0"?
Jsequential_263_lstm_790_while_lstm_cell_742_matmul_readvariableop_resourceLsequential_263_lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0"?
Esequential_263_lstm_790_while_sequential_263_lstm_790_strided_slice_1Gsequential_263_lstm_790_while_sequential_263_lstm_790_strided_slice_1_0"?
?sequential_263_lstm_790_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_790_tensorarrayunstack_tensorlistfromtensor?sequential_263_lstm_790_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_790_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOpBsequential_263/lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp2?
Asequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOpAsequential_263/lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp2?
Csequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOpCsequential_263/lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498419
inputs_0?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4498335*
condR
while_cond_4498334*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4494528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4494528___redundant_placeholder05
1while_while_cond_4494528___redundant_placeholder15
1while_while_cond_4494528___redundant_placeholder25
1while_while_cond_4494528___redundant_placeholder3
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
*__inference_lstm_790_layer_call_fn_4498243
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4494948|
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
*__inference_lstm_790_layer_call_fn_4498254
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495139|
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498848

inputs?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4498764*
condR
while_cond_4498763*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4498620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498620___redundant_placeholder05
1while_while_cond_4498620___redundant_placeholder15
1while_while_cond_4498620___redundant_placeholder25
1while_while_cond_4498620___redundant_placeholder3
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498232

inputs?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4498148*
condR
while_cond_4498147*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499581

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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499178
inputs_0>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4499094*
condR
while_cond_4499093*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495797

inputs?
,lstm_cell_742_matmul_readvariableop_resource:	d?A
.lstm_cell_742_matmul_1_readvariableop_resource:	2?<
-lstm_cell_742_biasadd_readvariableop_resource:	?
identity??$lstm_cell_742/BiasAdd/ReadVariableOp?#lstm_cell_742/MatMul/ReadVariableOp?%lstm_cell_742/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_742/MatMul/ReadVariableOpReadVariableOp,lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_742/MatMulMatMulstrided_slice_2:output:0+lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_742/MatMul_1MatMulzeros:output:0-lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_742/addAddV2lstm_cell_742/MatMul:product:0 lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_742/BiasAddBiasAddlstm_cell_742/add:z:0,lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_742/splitSplit&lstm_cell_742/split/split_dim:output:0lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_742/SigmoidSigmoidlstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_1Sigmoidlstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_742/mulMullstm_cell_742/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_742/ReluRelulstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_1Mullstm_cell_742/Sigmoid:y:0 lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_742/add_1AddV2lstm_cell_742/mul:z:0lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_742/Sigmoid_2Sigmoidlstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_742/Relu_1Relulstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_742/mul_2Mullstm_cell_742/Sigmoid_2:y:0"lstm_cell_742/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_742_matmul_readvariableop_resource.lstm_cell_742_matmul_1_readvariableop_resource-lstm_cell_742_biasadd_readvariableop_resource*
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
while_body_4495713*
condR
while_cond_4495712*K
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
NoOpNoOp%^lstm_cell_742/BiasAdd/ReadVariableOp$^lstm_cell_742/MatMul/ReadVariableOp&^lstm_cell_742/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_742/BiasAdd/ReadVariableOp$lstm_cell_742/BiasAdd/ReadVariableOp2J
#lstm_cell_742/MatMul/ReadVariableOp#lstm_cell_742/MatMul/ReadVariableOp2N
%lstm_cell_742/MatMul_1/ReadVariableOp%lstm_cell_742/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495298

inputs'
lstm_cell_743_4495216:2('
lstm_cell_743_4495218:
(#
lstm_cell_743_4495220:(
identity??%lstm_cell_743/StatefulPartitionedCall?while;
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
%lstm_cell_743/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_743_4495216lstm_cell_743_4495218lstm_cell_743_4495220*
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495215n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_743_4495216lstm_cell_743_4495218lstm_cell_743_4495220*
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
while_body_4495229*
condR
while_cond_4495228*K
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
NoOpNoOp&^lstm_cell_743/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_743/StatefulPartitionedCall%lstm_cell_743/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4495862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495862___redundant_placeholder05
1while_while_cond_4495862___redundant_placeholder15
1while_while_cond_4495862___redundant_placeholder25
1while_while_cond_4495862___redundant_placeholder3
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
while_body_4498764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_743_layer_call_fn_4499696

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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495215o
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
?8
?
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495139

inputs(
lstm_cell_742_4495057:	d?(
lstm_cell_742_4495059:	2?$
lstm_cell_742_4495061:	?
identity??%lstm_cell_742/StatefulPartitionedCall?while;
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
%lstm_cell_742/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_742_4495057lstm_cell_742_4495059lstm_cell_742_4495061*
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4495011n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_742_4495057lstm_cell_742_4495059lstm_cell_742_4495061*
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
while_body_4495070*
condR
while_cond_4495069*K
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
NoOpNoOp&^lstm_cell_742/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_742/StatefulPartitionedCall%lstm_cell_742/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_790_while_cond_4496959.
*lstm_790_while_lstm_790_while_loop_counter4
0lstm_790_while_lstm_790_while_maximum_iterations
lstm_790_while_placeholder 
lstm_790_while_placeholder_1 
lstm_790_while_placeholder_2 
lstm_790_while_placeholder_30
,lstm_790_while_less_lstm_790_strided_slice_1G
Clstm_790_while_lstm_790_while_cond_4496959___redundant_placeholder0G
Clstm_790_while_lstm_790_while_cond_4496959___redundant_placeholder1G
Clstm_790_while_lstm_790_while_cond_4496959___redundant_placeholder2G
Clstm_790_while_lstm_790_while_cond_4496959___redundant_placeholder3
lstm_790_while_identity
?
lstm_790/while/LessLesslstm_790_while_placeholder,lstm_790_while_less_lstm_790_strided_slice_1*
T0*
_output_shapes
: ]
lstm_790/while/IdentityIdentitylstm_790/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_790_while_identity lstm_790/while/Identity:output:0*(
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

lstm_789_while_body_4497248.
*lstm_789_while_lstm_789_while_loop_counter4
0lstm_789_while_lstm_789_while_maximum_iterations
lstm_789_while_placeholder 
lstm_789_while_placeholder_1 
lstm_789_while_placeholder_2 
lstm_789_while_placeholder_3-
)lstm_789_while_lstm_789_strided_slice_1_0i
elstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0:	?R
?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?M
>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
lstm_789_while_identity
lstm_789_while_identity_1
lstm_789_while_identity_2
lstm_789_while_identity_3
lstm_789_while_identity_4
lstm_789_while_identity_5+
'lstm_789_while_lstm_789_strided_slice_1g
clstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensorN
;lstm_789_while_lstm_cell_741_matmul_readvariableop_resource:	?P
=lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource:	d?K
<lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource:	???3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp?2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp?4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp?
@lstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_789/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0lstm_789_while_placeholderIlstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_789/while/lstm_cell_741/MatMulMatMul9lstm_789/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_789/while/lstm_cell_741/MatMul_1MatMullstm_789_while_placeholder_2<lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_789/while/lstm_cell_741/addAddV2-lstm_789/while/lstm_cell_741/MatMul:product:0/lstm_789/while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_789/while/lstm_cell_741/BiasAddBiasAdd$lstm_789/while/lstm_cell_741/add:z:0;lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_789/while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_789/while/lstm_cell_741/splitSplit5lstm_789/while/lstm_cell_741/split/split_dim:output:0-lstm_789/while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_789/while/lstm_cell_741/SigmoidSigmoid+lstm_789/while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_789/while/lstm_cell_741/Sigmoid_1Sigmoid+lstm_789/while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_789/while/lstm_cell_741/mulMul*lstm_789/while/lstm_cell_741/Sigmoid_1:y:0lstm_789_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_789/while/lstm_cell_741/ReluRelu+lstm_789/while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/mul_1Mul(lstm_789/while/lstm_cell_741/Sigmoid:y:0/lstm_789/while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/add_1AddV2$lstm_789/while/lstm_cell_741/mul:z:0&lstm_789/while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_789/while/lstm_cell_741/Sigmoid_2Sigmoid+lstm_789/while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_789/while/lstm_cell_741/Relu_1Relu&lstm_789/while/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/mul_2Mul*lstm_789/while/lstm_cell_741/Sigmoid_2:y:01lstm_789/while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_789/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_789_while_placeholder_1lstm_789_while_placeholder&lstm_789/while/lstm_cell_741/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_789/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_789/while/addAddV2lstm_789_while_placeholderlstm_789/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_789/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_789/while/add_1AddV2*lstm_789_while_lstm_789_while_loop_counterlstm_789/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_789/while/IdentityIdentitylstm_789/while/add_1:z:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_1Identity0lstm_789_while_lstm_789_while_maximum_iterations^lstm_789/while/NoOp*
T0*
_output_shapes
: t
lstm_789/while/Identity_2Identitylstm_789/while/add:z:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_3IdentityClstm_789/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_4Identity&lstm_789/while/lstm_cell_741/mul_2:z:0^lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_789/while/Identity_5Identity&lstm_789/while/lstm_cell_741/add_1:z:0^lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_789/while/NoOpNoOp4^lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp3^lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp5^lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_789_while_identity lstm_789/while/Identity:output:0"?
lstm_789_while_identity_1"lstm_789/while/Identity_1:output:0"?
lstm_789_while_identity_2"lstm_789/while/Identity_2:output:0"?
lstm_789_while_identity_3"lstm_789/while/Identity_3:output:0"?
lstm_789_while_identity_4"lstm_789/while/Identity_4:output:0"?
lstm_789_while_identity_5"lstm_789/while/Identity_5:output:0"T
'lstm_789_while_lstm_789_strided_slice_1)lstm_789_while_lstm_789_strided_slice_1_0"~
<lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0"?
=lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0"|
;lstm_789_while_lstm_cell_741_matmul_readvariableop_resource=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0"?
clstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensorelstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp2h
2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp2l
4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495947

inputs>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4495863*
condR
while_cond_4495862*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4499236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4499236___redundant_placeholder05
1while_while_cond_4499236___redundant_placeholder15
1while_while_cond_4499236___redundant_placeholder25
1while_while_cond_4499236___redundant_placeholder3
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
while_body_4497862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4500050
file_prefix3
!assignvariableop_dense_263_kernel:
/
!assignvariableop_1_dense_263_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_789_lstm_cell_789_kernel:	?M
:assignvariableop_8_lstm_789_lstm_cell_789_recurrent_kernel:	d?=
.assignvariableop_9_lstm_789_lstm_cell_789_bias:	?D
1assignvariableop_10_lstm_790_lstm_cell_790_kernel:	d?N
;assignvariableop_11_lstm_790_lstm_cell_790_recurrent_kernel:	2?>
/assignvariableop_12_lstm_790_lstm_cell_790_bias:	?C
1assignvariableop_13_lstm_791_lstm_cell_791_kernel:2(M
;assignvariableop_14_lstm_791_lstm_cell_791_recurrent_kernel:
(=
/assignvariableop_15_lstm_791_lstm_cell_791_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_263_kernel_m:
7
)assignvariableop_19_adam_dense_263_bias_m:K
8assignvariableop_20_adam_lstm_789_lstm_cell_789_kernel_m:	?U
Bassignvariableop_21_adam_lstm_789_lstm_cell_789_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_789_lstm_cell_789_bias_m:	?K
8assignvariableop_23_adam_lstm_790_lstm_cell_790_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_790_lstm_cell_790_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_790_lstm_cell_790_bias_m:	?J
8assignvariableop_26_adam_lstm_791_lstm_cell_791_kernel_m:2(T
Bassignvariableop_27_adam_lstm_791_lstm_cell_791_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_791_lstm_cell_791_bias_m:(=
+assignvariableop_29_adam_dense_263_kernel_v:
7
)assignvariableop_30_adam_dense_263_bias_v:K
8assignvariableop_31_adam_lstm_789_lstm_cell_789_kernel_v:	?U
Bassignvariableop_32_adam_lstm_789_lstm_cell_789_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_789_lstm_cell_789_bias_v:	?K
8assignvariableop_34_adam_lstm_790_lstm_cell_790_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_790_lstm_cell_790_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_790_lstm_cell_790_bias_v:	?J
8assignvariableop_37_adam_lstm_791_lstm_cell_791_kernel_v:2(T
Bassignvariableop_38_adam_lstm_791_lstm_cell_791_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_791_lstm_cell_791_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_263_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_263_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_789_lstm_cell_789_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_789_lstm_cell_789_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_789_lstm_cell_789_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_790_lstm_cell_790_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_790_lstm_cell_790_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_790_lstm_cell_790_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_791_lstm_cell_791_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_791_lstm_cell_791_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_791_lstm_cell_791_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_263_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_263_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_789_lstm_cell_789_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_789_lstm_cell_789_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_789_lstm_cell_789_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_790_lstm_cell_790_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_790_lstm_cell_790_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_790_lstm_cell_790_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_791_lstm_cell_791_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_791_lstm_cell_791_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_791_lstm_cell_791_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_263_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_263_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_789_lstm_cell_789_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_789_lstm_cell_789_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_789_lstm_cell_789_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_790_lstm_cell_790_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_790_lstm_cell_790_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_790_lstm_cell_790_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_791_lstm_cell_791_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_791_lstm_cell_791_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_791_lstm_cell_791_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_789_layer_call_and_return_conditional_losses_4496493

inputs?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4496409*
condR
while_cond_4496408*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4499094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_263_lstm_791_while_cond_4494357L
Hsequential_263_lstm_791_while_sequential_263_lstm_791_while_loop_counterR
Nsequential_263_lstm_791_while_sequential_263_lstm_791_while_maximum_iterations-
)sequential_263_lstm_791_while_placeholder/
+sequential_263_lstm_791_while_placeholder_1/
+sequential_263_lstm_791_while_placeholder_2/
+sequential_263_lstm_791_while_placeholder_3N
Jsequential_263_lstm_791_while_less_sequential_263_lstm_791_strided_slice_1e
asequential_263_lstm_791_while_sequential_263_lstm_791_while_cond_4494357___redundant_placeholder0e
asequential_263_lstm_791_while_sequential_263_lstm_791_while_cond_4494357___redundant_placeholder1e
asequential_263_lstm_791_while_sequential_263_lstm_791_while_cond_4494357___redundant_placeholder2e
asequential_263_lstm_791_while_sequential_263_lstm_791_while_cond_4494357___redundant_placeholder3*
&sequential_263_lstm_791_while_identity
?
"sequential_263/lstm_791/while/LessLess)sequential_263_lstm_791_while_placeholderJsequential_263_lstm_791_while_less_sequential_263_lstm_791_strided_slice_1*
T0*
_output_shapes
: {
&sequential_263/lstm_791/while/IdentityIdentity&sequential_263/lstm_791/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_263_lstm_791_while_identity/sequential_263/lstm_791/while/Identity:output:0*(
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965

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
while_cond_4498147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498147___redundant_placeholder05
1while_while_cond_4498147___redundant_placeholder15
1while_while_cond_4498147___redundant_placeholder25
1while_while_cond_4498147___redundant_placeholder3
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
while_cond_4495069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495069___redundant_placeholder05
1while_while_cond_4495069___redundant_placeholder15
1while_while_cond_4495069___redundant_placeholder25
1while_while_cond_4495069___redundant_placeholder3
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
while_body_4498951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4498148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_263_lstm_789_while_cond_4494079L
Hsequential_263_lstm_789_while_sequential_263_lstm_789_while_loop_counterR
Nsequential_263_lstm_789_while_sequential_263_lstm_789_while_maximum_iterations-
)sequential_263_lstm_789_while_placeholder/
+sequential_263_lstm_789_while_placeholder_1/
+sequential_263_lstm_789_while_placeholder_2/
+sequential_263_lstm_789_while_placeholder_3N
Jsequential_263_lstm_789_while_less_sequential_263_lstm_789_strided_slice_1e
asequential_263_lstm_789_while_sequential_263_lstm_789_while_cond_4494079___redundant_placeholder0e
asequential_263_lstm_789_while_sequential_263_lstm_789_while_cond_4494079___redundant_placeholder1e
asequential_263_lstm_789_while_sequential_263_lstm_789_while_cond_4494079___redundant_placeholder2e
asequential_263_lstm_789_while_sequential_263_lstm_789_while_cond_4494079___redundant_placeholder3*
&sequential_263_lstm_789_while_identity
?
"sequential_263/lstm_789/while/LessLess)sequential_263_lstm_789_while_placeholderJsequential_263_lstm_789_while_less_sequential_263_lstm_789_strided_slice_1*
T0*
_output_shapes
: {
&sequential_263/lstm_789/while/IdentityIdentity&sequential_263/lstm_789/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_263_lstm_789_while_identity/sequential_263/lstm_789/while/Identity:output:0*(
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
while_body_4498478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4498335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_791_layer_call_fn_4498881

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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495947o
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
*__inference_lstm_789_layer_call_fn_4497638
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4494789|
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
?
E__inference_lstm_789_layer_call_and_return_conditional_losses_4494789

inputs(
lstm_cell_741_4494707:	?(
lstm_cell_741_4494709:	d?$
lstm_cell_741_4494711:	?
identity??%lstm_cell_741/StatefulPartitionedCall?while;
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
%lstm_cell_741/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_741_4494707lstm_cell_741_4494709lstm_cell_741_4494711*
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494661n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_741_4494707lstm_cell_741_4494709lstm_cell_741_4494711*
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
while_body_4494720*
condR
while_cond_4494719*K
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
NoOpNoOp&^lstm_cell_741/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_741/StatefulPartitionedCall%lstm_cell_741/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_790_while_body_4497387.
*lstm_790_while_lstm_790_while_loop_counter4
0lstm_790_while_lstm_790_while_maximum_iterations
lstm_790_while_placeholder 
lstm_790_while_placeholder_1 
lstm_790_while_placeholder_2 
lstm_790_while_placeholder_3-
)lstm_790_while_lstm_790_strided_slice_1_0i
elstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0:	d?R
?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?M
>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
lstm_790_while_identity
lstm_790_while_identity_1
lstm_790_while_identity_2
lstm_790_while_identity_3
lstm_790_while_identity_4
lstm_790_while_identity_5+
'lstm_790_while_lstm_790_strided_slice_1g
clstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensorN
;lstm_790_while_lstm_cell_742_matmul_readvariableop_resource:	d?P
=lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource:	2?K
<lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource:	???3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp?2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp?4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp?
@lstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_790/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0lstm_790_while_placeholderIlstm_790/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_790/while/lstm_cell_742/MatMulMatMul9lstm_790/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_790/while/lstm_cell_742/MatMul_1MatMullstm_790_while_placeholder_2<lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_790/while/lstm_cell_742/addAddV2-lstm_790/while/lstm_cell_742/MatMul:product:0/lstm_790/while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_790/while/lstm_cell_742/BiasAddBiasAdd$lstm_790/while/lstm_cell_742/add:z:0;lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_790/while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_790/while/lstm_cell_742/splitSplit5lstm_790/while/lstm_cell_742/split/split_dim:output:0-lstm_790/while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_790/while/lstm_cell_742/SigmoidSigmoid+lstm_790/while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_790/while/lstm_cell_742/Sigmoid_1Sigmoid+lstm_790/while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_790/while/lstm_cell_742/mulMul*lstm_790/while/lstm_cell_742/Sigmoid_1:y:0lstm_790_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_790/while/lstm_cell_742/ReluRelu+lstm_790/while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/mul_1Mul(lstm_790/while/lstm_cell_742/Sigmoid:y:0/lstm_790/while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/add_1AddV2$lstm_790/while/lstm_cell_742/mul:z:0&lstm_790/while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_790/while/lstm_cell_742/Sigmoid_2Sigmoid+lstm_790/while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_790/while/lstm_cell_742/Relu_1Relu&lstm_790/while/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_790/while/lstm_cell_742/mul_2Mul*lstm_790/while/lstm_cell_742/Sigmoid_2:y:01lstm_790/while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_790/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_790_while_placeholder_1lstm_790_while_placeholder&lstm_790/while/lstm_cell_742/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_790/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_790/while/addAddV2lstm_790_while_placeholderlstm_790/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_790/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_790/while/add_1AddV2*lstm_790_while_lstm_790_while_loop_counterlstm_790/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_790/while/IdentityIdentitylstm_790/while/add_1:z:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_1Identity0lstm_790_while_lstm_790_while_maximum_iterations^lstm_790/while/NoOp*
T0*
_output_shapes
: t
lstm_790/while/Identity_2Identitylstm_790/while/add:z:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_3IdentityClstm_790/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_790/while/NoOp*
T0*
_output_shapes
: ?
lstm_790/while/Identity_4Identity&lstm_790/while/lstm_cell_742/mul_2:z:0^lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_790/while/Identity_5Identity&lstm_790/while/lstm_cell_742/add_1:z:0^lstm_790/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_790/while/NoOpNoOp4^lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp3^lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp5^lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_790_while_identity lstm_790/while/Identity:output:0"?
lstm_790_while_identity_1"lstm_790/while/Identity_1:output:0"?
lstm_790_while_identity_2"lstm_790/while/Identity_2:output:0"?
lstm_790_while_identity_3"lstm_790/while/Identity_3:output:0"?
lstm_790_while_identity_4"lstm_790/while/Identity_4:output:0"?
lstm_790_while_identity_5"lstm_790/while/Identity_5:output:0"T
'lstm_790_while_lstm_790_strided_slice_1)lstm_790_while_lstm_790_strided_slice_1_0"~
<lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource>lstm_790_while_lstm_cell_742_biasadd_readvariableop_resource_0"?
=lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource?lstm_790_while_lstm_cell_742_matmul_1_readvariableop_resource_0"|
;lstm_790_while_lstm_cell_742_matmul_readvariableop_resource=lstm_790_while_lstm_cell_742_matmul_readvariableop_resource_0"?
clstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensorelstm_790_while_tensorarrayv2read_tensorlistgetitem_lstm_790_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp3lstm_790/while/lstm_cell_742/BiasAdd/ReadVariableOp2h
2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp2lstm_790/while/lstm_cell_742/MatMul/ReadVariableOp2l
4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp4lstm_790/while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497803
inputs_0?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4497719*
condR
while_cond_4497718*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_791_while_body_4497099.
*lstm_791_while_lstm_791_while_loop_counter4
0lstm_791_while_lstm_791_while_maximum_iterations
lstm_791_while_placeholder 
lstm_791_while_placeholder_1 
lstm_791_while_placeholder_2 
lstm_791_while_placeholder_3-
)lstm_791_while_lstm_791_strided_slice_1_0i
elstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0:2(Q
?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(L
>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0:(
lstm_791_while_identity
lstm_791_while_identity_1
lstm_791_while_identity_2
lstm_791_while_identity_3
lstm_791_while_identity_4
lstm_791_while_identity_5+
'lstm_791_while_lstm_791_strided_slice_1g
clstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensorM
;lstm_791_while_lstm_cell_743_matmul_readvariableop_resource:2(O
=lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource:
(J
<lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource:(??3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp?2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp?4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp?
@lstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_791/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0lstm_791_while_placeholderIlstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_791/while/lstm_cell_743/MatMulMatMul9lstm_791/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_791/while/lstm_cell_743/MatMul_1MatMullstm_791_while_placeholder_2<lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_791/while/lstm_cell_743/addAddV2-lstm_791/while/lstm_cell_743/MatMul:product:0/lstm_791/while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_791/while/lstm_cell_743/BiasAddBiasAdd$lstm_791/while/lstm_cell_743/add:z:0;lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_791/while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_791/while/lstm_cell_743/splitSplit5lstm_791/while/lstm_cell_743/split/split_dim:output:0-lstm_791/while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_791/while/lstm_cell_743/SigmoidSigmoid+lstm_791/while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_791/while/lstm_cell_743/Sigmoid_1Sigmoid+lstm_791/while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_791/while/lstm_cell_743/mulMul*lstm_791/while/lstm_cell_743/Sigmoid_1:y:0lstm_791_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_791/while/lstm_cell_743/ReluRelu+lstm_791/while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/mul_1Mul(lstm_791/while/lstm_cell_743/Sigmoid:y:0/lstm_791/while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/add_1AddV2$lstm_791/while/lstm_cell_743/mul:z:0&lstm_791/while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_791/while/lstm_cell_743/Sigmoid_2Sigmoid+lstm_791/while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_791/while/lstm_cell_743/Relu_1Relu&lstm_791/while/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/mul_2Mul*lstm_791/while/lstm_cell_743/Sigmoid_2:y:01lstm_791/while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_791/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_791_while_placeholder_1lstm_791_while_placeholder&lstm_791/while/lstm_cell_743/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_791/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_791/while/addAddV2lstm_791_while_placeholderlstm_791/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_791/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_791/while/add_1AddV2*lstm_791_while_lstm_791_while_loop_counterlstm_791/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_791/while/IdentityIdentitylstm_791/while/add_1:z:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_1Identity0lstm_791_while_lstm_791_while_maximum_iterations^lstm_791/while/NoOp*
T0*
_output_shapes
: t
lstm_791/while/Identity_2Identitylstm_791/while/add:z:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_3IdentityClstm_791/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_4Identity&lstm_791/while/lstm_cell_743/mul_2:z:0^lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_791/while/Identity_5Identity&lstm_791/while/lstm_cell_743/add_1:z:0^lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_791/while/NoOpNoOp4^lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp3^lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp5^lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_791_while_identity lstm_791/while/Identity:output:0"?
lstm_791_while_identity_1"lstm_791/while/Identity_1:output:0"?
lstm_791_while_identity_2"lstm_791/while/Identity_2:output:0"?
lstm_791_while_identity_3"lstm_791/while/Identity_3:output:0"?
lstm_791_while_identity_4"lstm_791/while/Identity_4:output:0"?
lstm_791_while_identity_5"lstm_791/while/Identity_5:output:0"T
'lstm_791_while_lstm_791_strided_slice_1)lstm_791_while_lstm_791_strided_slice_1_0"~
<lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0"?
=lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0"|
;lstm_791_while_lstm_cell_743_matmul_readvariableop_resource=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0"?
clstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensorelstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp2h
2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp2l
4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497189

inputsH
5lstm_789_lstm_cell_741_matmul_readvariableop_resource:	?J
7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource:	d?E
6lstm_789_lstm_cell_741_biasadd_readvariableop_resource:	?H
5lstm_790_lstm_cell_742_matmul_readvariableop_resource:	d?J
7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource:	2?E
6lstm_790_lstm_cell_742_biasadd_readvariableop_resource:	?G
5lstm_791_lstm_cell_743_matmul_readvariableop_resource:2(I
7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource:
(D
6lstm_791_lstm_cell_743_biasadd_readvariableop_resource:(:
(dense_263_matmul_readvariableop_resource:
7
)dense_263_biasadd_readvariableop_resource:
identity?? dense_263/BiasAdd/ReadVariableOp?dense_263/MatMul/ReadVariableOp?-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp?,lstm_789/lstm_cell_741/MatMul/ReadVariableOp?.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp?lstm_789/while?-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp?,lstm_790/lstm_cell_742/MatMul/ReadVariableOp?.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp?lstm_790/while?-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp?,lstm_791/lstm_cell_743/MatMul/ReadVariableOp?.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp?lstm_791/whileD
lstm_789/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_789/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_789/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_789/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_sliceStridedSlicelstm_789/Shape:output:0%lstm_789/strided_slice/stack:output:0'lstm_789/strided_slice/stack_1:output:0'lstm_789/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_789/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_789/zeros/packedPacklstm_789/strided_slice:output:0 lstm_789/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_789/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_789/zerosFilllstm_789/zeros/packed:output:0lstm_789/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_789/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_789/zeros_1/packedPacklstm_789/strided_slice:output:0"lstm_789/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_789/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_789/zeros_1Fill lstm_789/zeros_1/packed:output:0lstm_789/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_789/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_789/transpose	Transposeinputs lstm_789/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_789/Shape_1Shapelstm_789/transpose:y:0*
T0*
_output_shapes
:h
lstm_789/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_789/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_1StridedSlicelstm_789/Shape_1:output:0'lstm_789/strided_slice_1/stack:output:0)lstm_789/strided_slice_1/stack_1:output:0)lstm_789/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_789/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_789/TensorArrayV2TensorListReserve-lstm_789/TensorArrayV2/element_shape:output:0!lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_789/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_789/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_789/transpose:y:0Glstm_789/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_789/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_789/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_2StridedSlicelstm_789/transpose:y:0'lstm_789/strided_slice_2/stack:output:0)lstm_789/strided_slice_2/stack_1:output:0)lstm_789/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_789/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp5lstm_789_lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_789/lstm_cell_741/MatMulMatMul!lstm_789/strided_slice_2:output:04lstm_789/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_789/lstm_cell_741/MatMul_1MatMullstm_789/zeros:output:06lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_789/lstm_cell_741/addAddV2'lstm_789/lstm_cell_741/MatMul:product:0)lstm_789/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp6lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_789/lstm_cell_741/BiasAddBiasAddlstm_789/lstm_cell_741/add:z:05lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_789/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_789/lstm_cell_741/splitSplit/lstm_789/lstm_cell_741/split/split_dim:output:0'lstm_789/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_789/lstm_cell_741/SigmoidSigmoid%lstm_789/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_789/lstm_cell_741/Sigmoid_1Sigmoid%lstm_789/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mulMul$lstm_789/lstm_cell_741/Sigmoid_1:y:0lstm_789/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_789/lstm_cell_741/ReluRelu%lstm_789/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mul_1Mul"lstm_789/lstm_cell_741/Sigmoid:y:0)lstm_789/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/add_1AddV2lstm_789/lstm_cell_741/mul:z:0 lstm_789/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_789/lstm_cell_741/Sigmoid_2Sigmoid%lstm_789/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_789/lstm_cell_741/Relu_1Relu lstm_789/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_789/lstm_cell_741/mul_2Mul$lstm_789/lstm_cell_741/Sigmoid_2:y:0+lstm_789/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_789/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_789/TensorArrayV2_1TensorListReserve/lstm_789/TensorArrayV2_1/element_shape:output:0!lstm_789/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_789/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_789/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_789/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_789/whileWhile$lstm_789/while/loop_counter:output:0*lstm_789/while/maximum_iterations:output:0lstm_789/time:output:0!lstm_789/TensorArrayV2_1:handle:0lstm_789/zeros:output:0lstm_789/zeros_1:output:0!lstm_789/strided_slice_1:output:0@lstm_789/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_789_lstm_cell_741_matmul_readvariableop_resource7lstm_789_lstm_cell_741_matmul_1_readvariableop_resource6lstm_789_lstm_cell_741_biasadd_readvariableop_resource*
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
lstm_789_while_body_4496821*'
condR
lstm_789_while_cond_4496820*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_789/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_789/TensorArrayV2Stack/TensorListStackTensorListStacklstm_789/while:output:3Blstm_789/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_789/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_789/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_789/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_789/strided_slice_3StridedSlice4lstm_789/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_789/strided_slice_3/stack:output:0)lstm_789/strided_slice_3/stack_1:output:0)lstm_789/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_789/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_789/transpose_1	Transpose4lstm_789/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_789/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_789/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_790/ShapeShapelstm_789/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_790/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_790/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_790/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_sliceStridedSlicelstm_790/Shape:output:0%lstm_790/strided_slice/stack:output:0'lstm_790/strided_slice/stack_1:output:0'lstm_790/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_790/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_790/zeros/packedPacklstm_790/strided_slice:output:0 lstm_790/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_790/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_790/zerosFilllstm_790/zeros/packed:output:0lstm_790/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_790/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_790/zeros_1/packedPacklstm_790/strided_slice:output:0"lstm_790/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_790/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_790/zeros_1Fill lstm_790/zeros_1/packed:output:0lstm_790/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_790/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_790/transpose	Transposelstm_789/transpose_1:y:0 lstm_790/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_790/Shape_1Shapelstm_790/transpose:y:0*
T0*
_output_shapes
:h
lstm_790/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_790/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_1StridedSlicelstm_790/Shape_1:output:0'lstm_790/strided_slice_1/stack:output:0)lstm_790/strided_slice_1/stack_1:output:0)lstm_790/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_790/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_790/TensorArrayV2TensorListReserve-lstm_790/TensorArrayV2/element_shape:output:0!lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_790/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_790/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_790/transpose:y:0Glstm_790/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_790/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_790/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_2StridedSlicelstm_790/transpose:y:0'lstm_790/strided_slice_2/stack:output:0)lstm_790/strided_slice_2/stack_1:output:0)lstm_790/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_790/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp5lstm_790_lstm_cell_742_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_790/lstm_cell_742/MatMulMatMul!lstm_790/strided_slice_2:output:04lstm_790/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_790/lstm_cell_742/MatMul_1MatMullstm_790/zeros:output:06lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_790/lstm_cell_742/addAddV2'lstm_790/lstm_cell_742/MatMul:product:0)lstm_790/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp6lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_790/lstm_cell_742/BiasAddBiasAddlstm_790/lstm_cell_742/add:z:05lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_790/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_790/lstm_cell_742/splitSplit/lstm_790/lstm_cell_742/split/split_dim:output:0'lstm_790/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_790/lstm_cell_742/SigmoidSigmoid%lstm_790/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_790/lstm_cell_742/Sigmoid_1Sigmoid%lstm_790/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mulMul$lstm_790/lstm_cell_742/Sigmoid_1:y:0lstm_790/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_790/lstm_cell_742/ReluRelu%lstm_790/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mul_1Mul"lstm_790/lstm_cell_742/Sigmoid:y:0)lstm_790/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/add_1AddV2lstm_790/lstm_cell_742/mul:z:0 lstm_790/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_790/lstm_cell_742/Sigmoid_2Sigmoid%lstm_790/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_790/lstm_cell_742/Relu_1Relu lstm_790/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_790/lstm_cell_742/mul_2Mul$lstm_790/lstm_cell_742/Sigmoid_2:y:0+lstm_790/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_790/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_790/TensorArrayV2_1TensorListReserve/lstm_790/TensorArrayV2_1/element_shape:output:0!lstm_790/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_790/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_790/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_790/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_790/whileWhile$lstm_790/while/loop_counter:output:0*lstm_790/while/maximum_iterations:output:0lstm_790/time:output:0!lstm_790/TensorArrayV2_1:handle:0lstm_790/zeros:output:0lstm_790/zeros_1:output:0!lstm_790/strided_slice_1:output:0@lstm_790/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_790_lstm_cell_742_matmul_readvariableop_resource7lstm_790_lstm_cell_742_matmul_1_readvariableop_resource6lstm_790_lstm_cell_742_biasadd_readvariableop_resource*
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
lstm_790_while_body_4496960*'
condR
lstm_790_while_cond_4496959*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_790/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_790/TensorArrayV2Stack/TensorListStackTensorListStacklstm_790/while:output:3Blstm_790/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_790/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_790/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_790/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_790/strided_slice_3StridedSlice4lstm_790/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_790/strided_slice_3/stack:output:0)lstm_790/strided_slice_3/stack_1:output:0)lstm_790/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_790/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_790/transpose_1	Transpose4lstm_790/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_790/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_790/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_791/ShapeShapelstm_790/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_791/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_791/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_791/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_sliceStridedSlicelstm_791/Shape:output:0%lstm_791/strided_slice/stack:output:0'lstm_791/strided_slice/stack_1:output:0'lstm_791/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_791/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_791/zeros/packedPacklstm_791/strided_slice:output:0 lstm_791/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_791/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_791/zerosFilllstm_791/zeros/packed:output:0lstm_791/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_791/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_791/zeros_1/packedPacklstm_791/strided_slice:output:0"lstm_791/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_791/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_791/zeros_1Fill lstm_791/zeros_1/packed:output:0lstm_791/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_791/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_791/transpose	Transposelstm_790/transpose_1:y:0 lstm_791/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_791/Shape_1Shapelstm_791/transpose:y:0*
T0*
_output_shapes
:h
lstm_791/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_791/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_1StridedSlicelstm_791/Shape_1:output:0'lstm_791/strided_slice_1/stack:output:0)lstm_791/strided_slice_1/stack_1:output:0)lstm_791/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_791/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_791/TensorArrayV2TensorListReserve-lstm_791/TensorArrayV2/element_shape:output:0!lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_791/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_791/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_791/transpose:y:0Glstm_791/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_791/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_791/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_2StridedSlicelstm_791/transpose:y:0'lstm_791/strided_slice_2/stack:output:0)lstm_791/strided_slice_2/stack_1:output:0)lstm_791/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_791/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp5lstm_791_lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_791/lstm_cell_743/MatMulMatMul!lstm_791/strided_slice_2:output:04lstm_791/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_791/lstm_cell_743/MatMul_1MatMullstm_791/zeros:output:06lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_791/lstm_cell_743/addAddV2'lstm_791/lstm_cell_743/MatMul:product:0)lstm_791/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp6lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_791/lstm_cell_743/BiasAddBiasAddlstm_791/lstm_cell_743/add:z:05lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_791/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_791/lstm_cell_743/splitSplit/lstm_791/lstm_cell_743/split/split_dim:output:0'lstm_791/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_791/lstm_cell_743/SigmoidSigmoid%lstm_791/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_791/lstm_cell_743/Sigmoid_1Sigmoid%lstm_791/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mulMul$lstm_791/lstm_cell_743/Sigmoid_1:y:0lstm_791/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_791/lstm_cell_743/ReluRelu%lstm_791/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mul_1Mul"lstm_791/lstm_cell_743/Sigmoid:y:0)lstm_791/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/add_1AddV2lstm_791/lstm_cell_743/mul:z:0 lstm_791/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_791/lstm_cell_743/Sigmoid_2Sigmoid%lstm_791/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_791/lstm_cell_743/Relu_1Relu lstm_791/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_791/lstm_cell_743/mul_2Mul$lstm_791/lstm_cell_743/Sigmoid_2:y:0+lstm_791/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_791/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_791/TensorArrayV2_1TensorListReserve/lstm_791/TensorArrayV2_1/element_shape:output:0!lstm_791/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_791/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_791/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_791/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_791/whileWhile$lstm_791/while/loop_counter:output:0*lstm_791/while/maximum_iterations:output:0lstm_791/time:output:0!lstm_791/TensorArrayV2_1:handle:0lstm_791/zeros:output:0lstm_791/zeros_1:output:0!lstm_791/strided_slice_1:output:0@lstm_791/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_791_lstm_cell_743_matmul_readvariableop_resource7lstm_791_lstm_cell_743_matmul_1_readvariableop_resource6lstm_791_lstm_cell_743_biasadd_readvariableop_resource*
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
lstm_791_while_body_4497099*'
condR
lstm_791_while_cond_4497098*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_791/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_791/TensorArrayV2Stack/TensorListStackTensorListStacklstm_791/while:output:3Blstm_791/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_791/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_791/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_791/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_791/strided_slice_3StridedSlice4lstm_791/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_791/strided_slice_3/stack:output:0)lstm_791/strided_slice_3/stack_1:output:0)lstm_791/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_791/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_791/transpose_1	Transpose4lstm_791/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_791/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_791/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_263/MatMul/ReadVariableOpReadVariableOp(dense_263_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_263/MatMulMatMul!lstm_791/strided_slice_3:output:0'dense_263/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_263/BiasAdd/ReadVariableOpReadVariableOp)dense_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_263/BiasAddBiasAdddense_263/MatMul:product:0(dense_263/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_263/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_263/BiasAdd/ReadVariableOp ^dense_263/MatMul/ReadVariableOp.^lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp-^lstm_789/lstm_cell_741/MatMul/ReadVariableOp/^lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp^lstm_789/while.^lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp-^lstm_790/lstm_cell_742/MatMul/ReadVariableOp/^lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp^lstm_790/while.^lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp-^lstm_791/lstm_cell_743/MatMul/ReadVariableOp/^lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp^lstm_791/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_263/BiasAdd/ReadVariableOp dense_263/BiasAdd/ReadVariableOp2B
dense_263/MatMul/ReadVariableOpdense_263/MatMul/ReadVariableOp2^
-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp-lstm_789/lstm_cell_741/BiasAdd/ReadVariableOp2\
,lstm_789/lstm_cell_741/MatMul/ReadVariableOp,lstm_789/lstm_cell_741/MatMul/ReadVariableOp2`
.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp.lstm_789/lstm_cell_741/MatMul_1/ReadVariableOp2 
lstm_789/whilelstm_789/while2^
-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp-lstm_790/lstm_cell_742/BiasAdd/ReadVariableOp2\
,lstm_790/lstm_cell_742/MatMul/ReadVariableOp,lstm_790/lstm_cell_742/MatMul/ReadVariableOp2`
.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp.lstm_790/lstm_cell_742/MatMul_1/ReadVariableOp2 
lstm_790/whilelstm_790/while2^
-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp-lstm_791/lstm_cell_743/BiasAdd/ReadVariableOp2\
,lstm_791/lstm_cell_743/MatMul/ReadVariableOp,lstm_791/lstm_cell_743/MatMul/ReadVariableOp2`
.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp.lstm_791/lstm_cell_743/MatMul_1/ReadVariableOp2 
lstm_791/whilelstm_791/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_789_while_body_4496821.
*lstm_789_while_lstm_789_while_loop_counter4
0lstm_789_while_lstm_789_while_maximum_iterations
lstm_789_while_placeholder 
lstm_789_while_placeholder_1 
lstm_789_while_placeholder_2 
lstm_789_while_placeholder_3-
)lstm_789_while_lstm_789_strided_slice_1_0i
elstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0:	?R
?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?M
>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
lstm_789_while_identity
lstm_789_while_identity_1
lstm_789_while_identity_2
lstm_789_while_identity_3
lstm_789_while_identity_4
lstm_789_while_identity_5+
'lstm_789_while_lstm_789_strided_slice_1g
clstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensorN
;lstm_789_while_lstm_cell_741_matmul_readvariableop_resource:	?P
=lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource:	d?K
<lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource:	???3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp?2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp?4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp?
@lstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_789/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0lstm_789_while_placeholderIlstm_789/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_789/while/lstm_cell_741/MatMulMatMul9lstm_789/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_789/while/lstm_cell_741/MatMul_1MatMullstm_789_while_placeholder_2<lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_789/while/lstm_cell_741/addAddV2-lstm_789/while/lstm_cell_741/MatMul:product:0/lstm_789/while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_789/while/lstm_cell_741/BiasAddBiasAdd$lstm_789/while/lstm_cell_741/add:z:0;lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_789/while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_789/while/lstm_cell_741/splitSplit5lstm_789/while/lstm_cell_741/split/split_dim:output:0-lstm_789/while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_789/while/lstm_cell_741/SigmoidSigmoid+lstm_789/while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_789/while/lstm_cell_741/Sigmoid_1Sigmoid+lstm_789/while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_789/while/lstm_cell_741/mulMul*lstm_789/while/lstm_cell_741/Sigmoid_1:y:0lstm_789_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_789/while/lstm_cell_741/ReluRelu+lstm_789/while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/mul_1Mul(lstm_789/while/lstm_cell_741/Sigmoid:y:0/lstm_789/while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/add_1AddV2$lstm_789/while/lstm_cell_741/mul:z:0&lstm_789/while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_789/while/lstm_cell_741/Sigmoid_2Sigmoid+lstm_789/while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_789/while/lstm_cell_741/Relu_1Relu&lstm_789/while/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_789/while/lstm_cell_741/mul_2Mul*lstm_789/while/lstm_cell_741/Sigmoid_2:y:01lstm_789/while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_789/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_789_while_placeholder_1lstm_789_while_placeholder&lstm_789/while/lstm_cell_741/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_789/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_789/while/addAddV2lstm_789_while_placeholderlstm_789/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_789/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_789/while/add_1AddV2*lstm_789_while_lstm_789_while_loop_counterlstm_789/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_789/while/IdentityIdentitylstm_789/while/add_1:z:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_1Identity0lstm_789_while_lstm_789_while_maximum_iterations^lstm_789/while/NoOp*
T0*
_output_shapes
: t
lstm_789/while/Identity_2Identitylstm_789/while/add:z:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_3IdentityClstm_789/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_789/while/NoOp*
T0*
_output_shapes
: ?
lstm_789/while/Identity_4Identity&lstm_789/while/lstm_cell_741/mul_2:z:0^lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_789/while/Identity_5Identity&lstm_789/while/lstm_cell_741/add_1:z:0^lstm_789/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_789/while/NoOpNoOp4^lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp3^lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp5^lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_789_while_identity lstm_789/while/Identity:output:0"?
lstm_789_while_identity_1"lstm_789/while/Identity_1:output:0"?
lstm_789_while_identity_2"lstm_789/while/Identity_2:output:0"?
lstm_789_while_identity_3"lstm_789/while/Identity_3:output:0"?
lstm_789_while_identity_4"lstm_789/while/Identity_4:output:0"?
lstm_789_while_identity_5"lstm_789/while/Identity_5:output:0"T
'lstm_789_while_lstm_789_strided_slice_1)lstm_789_while_lstm_789_strided_slice_1_0"~
<lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource>lstm_789_while_lstm_cell_741_biasadd_readvariableop_resource_0"?
=lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource?lstm_789_while_lstm_cell_741_matmul_1_readvariableop_resource_0"|
;lstm_789_while_lstm_cell_741_matmul_readvariableop_resource=lstm_789_while_lstm_cell_741_matmul_readvariableop_resource_0"?
clstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensorelstm_789_while_tensorarrayv2read_tensorlistgetitem_lstm_789_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp3lstm_789/while/lstm_cell_741/BiasAdd/ReadVariableOp2h
2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp2lstm_789/while/lstm_cell_741/MatMul/ReadVariableOp2l
4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp4lstm_789/while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4496079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_743_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_743_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_743_matmul_readvariableop_resource:2(F
4while_lstm_cell_743_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_743_biasadd_readvariableop_resource:(??*while/lstm_cell_743/BiasAdd/ReadVariableOp?)while/lstm_cell_743/MatMul/ReadVariableOp?+while/lstm_cell_743/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_743/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_743/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_743/addAddV2$while/lstm_cell_743/MatMul:product:0&while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_743/BiasAddBiasAddwhile/lstm_cell_743/add:z:02while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_743/splitSplit,while/lstm_cell_743/split/split_dim:output:0$while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_743/SigmoidSigmoid"while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_1Sigmoid"while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mulMul!while/lstm_cell_743/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_743/ReluRelu"while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_1Mulwhile/lstm_cell_743/Sigmoid:y:0&while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/add_1AddV2while/lstm_cell_743/mul:z:0while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_743/Sigmoid_2Sigmoid"while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_743/Relu_1Reluwhile/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_743/mul_2Mul!while/lstm_cell_743/Sigmoid_2:y:0(while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_743/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_743/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_743/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_743/BiasAdd/ReadVariableOp*^while/lstm_cell_743/MatMul/ReadVariableOp,^while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_743_biasadd_readvariableop_resource5while_lstm_cell_743_biasadd_readvariableop_resource_0"n
4while_lstm_cell_743_matmul_1_readvariableop_resource6while_lstm_cell_743_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_743_matmul_readvariableop_resource4while_lstm_cell_743_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_743/BiasAdd/ReadVariableOp*while/lstm_cell_743/BiasAdd/ReadVariableOp2V
)while/lstm_cell_743/MatMul/ReadVariableOp)while/lstm_cell_743/MatMul/ReadVariableOp2Z
+while/lstm_cell_743/MatMul_1/ReadVariableOp+while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499745

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

?
0__inference_sequential_263_layer_call_fn_4496735

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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4495972o
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
?#
?
while_body_4495070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_742_4495094_0:	d?0
while_lstm_cell_742_4495096_0:	2?,
while_lstm_cell_742_4495098_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_742_4495094:	d?.
while_lstm_cell_742_4495096:	2?*
while_lstm_cell_742_4495098:	???+while/lstm_cell_742/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_742/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_742_4495094_0while_lstm_cell_742_4495096_0while_lstm_cell_742_4495098_0*
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4495011?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_742/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_742/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_742/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_742/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_742_4495094while_lstm_cell_742_4495094_0"<
while_lstm_cell_742_4495096while_lstm_cell_742_4495096_0"<
while_lstm_cell_742_4495098while_lstm_cell_742_4495098_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_742/StatefulPartitionedCall+while/lstm_cell_742/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4495647

inputs?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4495563*
condR
while_cond_4495562*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4498005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_789_layer_call_fn_4497627
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4494598|
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
?
?
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496561

inputs#
lstm_789_4496534:	?#
lstm_789_4496536:	d?
lstm_789_4496538:	?#
lstm_790_4496541:	d?#
lstm_790_4496543:	2?
lstm_790_4496545:	?"
lstm_791_4496548:2("
lstm_791_4496550:
(
lstm_791_4496552:(#
dense_263_4496555:

dense_263_4496557:
identity??!dense_263/StatefulPartitionedCall? lstm_789/StatefulPartitionedCall? lstm_790/StatefulPartitionedCall? lstm_791/StatefulPartitionedCall?
 lstm_789/StatefulPartitionedCallStatefulPartitionedCallinputslstm_789_4496534lstm_789_4496536lstm_789_4496538*
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4496493?
 lstm_790/StatefulPartitionedCallStatefulPartitionedCall)lstm_789/StatefulPartitionedCall:output:0lstm_790_4496541lstm_790_4496543lstm_790_4496545*
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4496328?
 lstm_791/StatefulPartitionedCallStatefulPartitionedCall)lstm_790/StatefulPartitionedCall:output:0lstm_791_4496548lstm_791_4496550lstm_791_4496552*
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4496163?
!dense_263/StatefulPartitionedCallStatefulPartitionedCall)lstm_791/StatefulPartitionedCall:output:0dense_263_4496555dense_263_4496557*
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965y
IdentityIdentity*dense_263/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_263/StatefulPartitionedCall!^lstm_789/StatefulPartitionedCall!^lstm_790/StatefulPartitionedCall!^lstm_791/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_263/StatefulPartitionedCall!dense_263/StatefulPartitionedCall2D
 lstm_789/StatefulPartitionedCall lstm_789/StatefulPartitionedCall2D
 lstm_790/StatefulPartitionedCall lstm_790/StatefulPartitionedCall2D
 lstm_791/StatefulPartitionedCall lstm_791/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496643
lstm_789_input#
lstm_789_4496616:	?#
lstm_789_4496618:	d?
lstm_789_4496620:	?#
lstm_790_4496623:	d?#
lstm_790_4496625:	2?
lstm_790_4496627:	?"
lstm_791_4496630:2("
lstm_791_4496632:
(
lstm_791_4496634:(#
dense_263_4496637:

dense_263_4496639:
identity??!dense_263/StatefulPartitionedCall? lstm_789/StatefulPartitionedCall? lstm_790/StatefulPartitionedCall? lstm_791/StatefulPartitionedCall?
 lstm_789/StatefulPartitionedCallStatefulPartitionedCalllstm_789_inputlstm_789_4496616lstm_789_4496618lstm_789_4496620*
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4495647?
 lstm_790/StatefulPartitionedCallStatefulPartitionedCall)lstm_789/StatefulPartitionedCall:output:0lstm_790_4496623lstm_790_4496625lstm_790_4496627*
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4495797?
 lstm_791/StatefulPartitionedCallStatefulPartitionedCall)lstm_790/StatefulPartitionedCall:output:0lstm_791_4496630lstm_791_4496632lstm_791_4496634*
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495947?
!dense_263/StatefulPartitionedCallStatefulPartitionedCall)lstm_791/StatefulPartitionedCall:output:0dense_263_4496637dense_263_4496639*
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965y
IdentityIdentity*dense_263/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_263/StatefulPartitionedCall!^lstm_789/StatefulPartitionedCall!^lstm_790/StatefulPartitionedCall!^lstm_791/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_263/StatefulPartitionedCall!dense_263/StatefulPartitionedCall2D
 lstm_789/StatefulPartitionedCall lstm_789/StatefulPartitionedCall2D
 lstm_790/StatefulPartitionedCall lstm_790/StatefulPartitionedCall2D
 lstm_791/StatefulPartitionedCall lstm_791/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_789_input
?
?
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495215

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
while_cond_4498477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498477___redundant_placeholder05
1while_while_cond_4498477___redundant_placeholder15
1while_while_cond_4498477___redundant_placeholder25
1while_while_cond_4498477___redundant_placeholder3
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
while_cond_4497718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4497718___redundant_placeholder05
1while_while_cond_4497718___redundant_placeholder15
1while_while_cond_4497718___redundant_placeholder25
1while_while_cond_4497718___redundant_placeholder3
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
/__inference_lstm_cell_742_layer_call_fn_4499615

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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4495011o
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
*__inference_lstm_790_layer_call_fn_4498276

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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4496328s
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499549

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
while_body_4498621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4498763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498763___redundant_placeholder05
1while_while_cond_4498763___redundant_placeholder15
1while_while_cond_4498763___redundant_placeholder25
1while_while_cond_4498763___redundant_placeholder3
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
*__inference_lstm_789_layer_call_fn_4497660

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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4496493s
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497946
inputs_0?
,lstm_cell_741_matmul_readvariableop_resource:	?A
.lstm_cell_741_matmul_1_readvariableop_resource:	d?<
-lstm_cell_741_biasadd_readvariableop_resource:	?
identity??$lstm_cell_741/BiasAdd/ReadVariableOp?#lstm_cell_741/MatMul/ReadVariableOp?%lstm_cell_741/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_741/MatMul/ReadVariableOpReadVariableOp,lstm_cell_741_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_741/MatMulMatMulstrided_slice_2:output:0+lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_741_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_741/MatMul_1MatMulzeros:output:0-lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_741/addAddV2lstm_cell_741/MatMul:product:0 lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_741_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_741/BiasAddBiasAddlstm_cell_741/add:z:0,lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_741/splitSplit&lstm_cell_741/split/split_dim:output:0lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_741/SigmoidSigmoidlstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_1Sigmoidlstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_741/mulMullstm_cell_741/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_741/ReluRelulstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_1Mullstm_cell_741/Sigmoid:y:0 lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_741/add_1AddV2lstm_cell_741/mul:z:0lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_741/Sigmoid_2Sigmoidlstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_741/Relu_1Relulstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_741/mul_2Mullstm_cell_741/Sigmoid_2:y:0"lstm_cell_741/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_741_matmul_readvariableop_resource.lstm_cell_741_matmul_1_readvariableop_resource-lstm_cell_741_biasadd_readvariableop_resource*
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
while_body_4497862*
condR
while_cond_4497861*K
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
NoOpNoOp%^lstm_cell_741/BiasAdd/ReadVariableOp$^lstm_cell_741/MatMul/ReadVariableOp&^lstm_cell_741/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_741/BiasAdd/ReadVariableOp$lstm_cell_741/BiasAdd/ReadVariableOp2J
#lstm_cell_741/MatMul/ReadVariableOp#lstm_cell_741/MatMul/ReadVariableOp2N
%lstm_cell_741/MatMul_1/ReadVariableOp%lstm_cell_741/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_742_layer_call_fn_4499598

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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4494865o
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
lstm_790_while_cond_4497386.
*lstm_790_while_lstm_790_while_loop_counter4
0lstm_790_while_lstm_790_while_maximum_iterations
lstm_790_while_placeholder 
lstm_790_while_placeholder_1 
lstm_790_while_placeholder_2 
lstm_790_while_placeholder_30
,lstm_790_while_less_lstm_790_strided_slice_1G
Clstm_790_while_lstm_790_while_cond_4497386___redundant_placeholder0G
Clstm_790_while_lstm_790_while_cond_4497386___redundant_placeholder1G
Clstm_790_while_lstm_790_while_cond_4497386___redundant_placeholder2G
Clstm_790_while_lstm_790_while_cond_4497386___redundant_placeholder3
lstm_790_while_identity
?
lstm_790/while/LessLesslstm_790_while_placeholder,lstm_790_while_less_lstm_790_strided_slice_1*
T0*
_output_shapes
: ]
lstm_790/while/IdentityIdentitylstm_790/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_790_while_identity lstm_790/while/Identity:output:0*(
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
while_cond_4494878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4494878___redundant_placeholder05
1while_while_cond_4494878___redundant_placeholder15
1while_while_cond_4494878___redundant_placeholder25
1while_while_cond_4494878___redundant_placeholder3
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
?W
?
 __inference__traced_save_4499920
file_prefix/
+savev2_dense_263_kernel_read_readvariableop-
)savev2_dense_263_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_789_lstm_cell_789_kernel_read_readvariableopF
Bsavev2_lstm_789_lstm_cell_789_recurrent_kernel_read_readvariableop:
6savev2_lstm_789_lstm_cell_789_bias_read_readvariableop<
8savev2_lstm_790_lstm_cell_790_kernel_read_readvariableopF
Bsavev2_lstm_790_lstm_cell_790_recurrent_kernel_read_readvariableop:
6savev2_lstm_790_lstm_cell_790_bias_read_readvariableop<
8savev2_lstm_791_lstm_cell_791_kernel_read_readvariableopF
Bsavev2_lstm_791_lstm_cell_791_recurrent_kernel_read_readvariableop:
6savev2_lstm_791_lstm_cell_791_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_263_kernel_m_read_readvariableop4
0savev2_adam_dense_263_bias_m_read_readvariableopC
?savev2_adam_lstm_789_lstm_cell_789_kernel_m_read_readvariableopM
Isavev2_adam_lstm_789_lstm_cell_789_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_789_lstm_cell_789_bias_m_read_readvariableopC
?savev2_adam_lstm_790_lstm_cell_790_kernel_m_read_readvariableopM
Isavev2_adam_lstm_790_lstm_cell_790_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_790_lstm_cell_790_bias_m_read_readvariableopC
?savev2_adam_lstm_791_lstm_cell_791_kernel_m_read_readvariableopM
Isavev2_adam_lstm_791_lstm_cell_791_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_791_lstm_cell_791_bias_m_read_readvariableop6
2savev2_adam_dense_263_kernel_v_read_readvariableop4
0savev2_adam_dense_263_bias_v_read_readvariableopC
?savev2_adam_lstm_789_lstm_cell_789_kernel_v_read_readvariableopM
Isavev2_adam_lstm_789_lstm_cell_789_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_789_lstm_cell_789_bias_v_read_readvariableopC
?savev2_adam_lstm_790_lstm_cell_790_kernel_v_read_readvariableopM
Isavev2_adam_lstm_790_lstm_cell_790_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_790_lstm_cell_790_bias_v_read_readvariableopC
?savev2_adam_lstm_791_lstm_cell_791_kernel_v_read_readvariableopM
Isavev2_adam_lstm_791_lstm_cell_791_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_791_lstm_cell_791_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_263_kernel_read_readvariableop)savev2_dense_263_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_789_lstm_cell_789_kernel_read_readvariableopBsavev2_lstm_789_lstm_cell_789_recurrent_kernel_read_readvariableop6savev2_lstm_789_lstm_cell_789_bias_read_readvariableop8savev2_lstm_790_lstm_cell_790_kernel_read_readvariableopBsavev2_lstm_790_lstm_cell_790_recurrent_kernel_read_readvariableop6savev2_lstm_790_lstm_cell_790_bias_read_readvariableop8savev2_lstm_791_lstm_cell_791_kernel_read_readvariableopBsavev2_lstm_791_lstm_cell_791_recurrent_kernel_read_readvariableop6savev2_lstm_791_lstm_cell_791_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_263_kernel_m_read_readvariableop0savev2_adam_dense_263_bias_m_read_readvariableop?savev2_adam_lstm_789_lstm_cell_789_kernel_m_read_readvariableopIsavev2_adam_lstm_789_lstm_cell_789_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_789_lstm_cell_789_bias_m_read_readvariableop?savev2_adam_lstm_790_lstm_cell_790_kernel_m_read_readvariableopIsavev2_adam_lstm_790_lstm_cell_790_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_790_lstm_cell_790_bias_m_read_readvariableop?savev2_adam_lstm_791_lstm_cell_791_kernel_m_read_readvariableopIsavev2_adam_lstm_791_lstm_cell_791_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_791_lstm_cell_791_bias_m_read_readvariableop2savev2_adam_dense_263_kernel_v_read_readvariableop0savev2_adam_dense_263_bias_v_read_readvariableop?savev2_adam_lstm_789_lstm_cell_789_kernel_v_read_readvariableopIsavev2_adam_lstm_789_lstm_cell_789_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_789_lstm_cell_789_bias_v_read_readvariableop?savev2_adam_lstm_790_lstm_cell_790_kernel_v_read_readvariableopIsavev2_adam_lstm_790_lstm_cell_790_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_790_lstm_cell_790_bias_v_read_readvariableop?savev2_adam_lstm_791_lstm_cell_791_kernel_v_read_readvariableopIsavev2_adam_lstm_791_lstm_cell_791_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_791_lstm_cell_791_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
/__inference_lstm_cell_741_layer_call_fn_4499500

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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494515o
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
while_cond_4499379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4499379___redundant_placeholder05
1while_while_cond_4499379___redundant_placeholder15
1while_while_cond_4499379___redundant_placeholder25
1while_while_cond_4499379___redundant_placeholder3
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
while_cond_4495562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495562___redundant_placeholder05
1while_while_cond_4495562___redundant_placeholder15
1while_while_cond_4495562___redundant_placeholder25
1while_while_cond_4495562___redundant_placeholder3
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
while_cond_4495712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495712___redundant_placeholder05
1while_while_cond_4495712___redundant_placeholder15
1while_while_cond_4495712___redundant_placeholder25
1while_while_cond_4495712___redundant_placeholder3
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
lstm_789_while_cond_4496820.
*lstm_789_while_lstm_789_while_loop_counter4
0lstm_789_while_lstm_789_while_maximum_iterations
lstm_789_while_placeholder 
lstm_789_while_placeholder_1 
lstm_789_while_placeholder_2 
lstm_789_while_placeholder_30
,lstm_789_while_less_lstm_789_strided_slice_1G
Clstm_789_while_lstm_789_while_cond_4496820___redundant_placeholder0G
Clstm_789_while_lstm_789_while_cond_4496820___redundant_placeholder1G
Clstm_789_while_lstm_789_while_cond_4496820___redundant_placeholder2G
Clstm_789_while_lstm_789_while_cond_4496820___redundant_placeholder3
lstm_789_while_identity
?
lstm_789/while/LessLesslstm_789_while_placeholder,lstm_789_while_less_lstm_789_strided_slice_1*
T0*
_output_shapes
: ]
lstm_789/while/IdentityIdentitylstm_789/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_789_while_identity lstm_789/while/Identity:output:0*(
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496673
lstm_789_input#
lstm_789_4496646:	?#
lstm_789_4496648:	d?
lstm_789_4496650:	?#
lstm_790_4496653:	d?#
lstm_790_4496655:	2?
lstm_790_4496657:	?"
lstm_791_4496660:2("
lstm_791_4496662:
(
lstm_791_4496664:(#
dense_263_4496667:

dense_263_4496669:
identity??!dense_263/StatefulPartitionedCall? lstm_789/StatefulPartitionedCall? lstm_790/StatefulPartitionedCall? lstm_791/StatefulPartitionedCall?
 lstm_789/StatefulPartitionedCallStatefulPartitionedCalllstm_789_inputlstm_789_4496646lstm_789_4496648lstm_789_4496650*
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4496493?
 lstm_790/StatefulPartitionedCallStatefulPartitionedCall)lstm_789/StatefulPartitionedCall:output:0lstm_790_4496653lstm_790_4496655lstm_790_4496657*
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4496328?
 lstm_791/StatefulPartitionedCallStatefulPartitionedCall)lstm_790/StatefulPartitionedCall:output:0lstm_791_4496660lstm_791_4496662lstm_791_4496664*
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4496163?
!dense_263/StatefulPartitionedCallStatefulPartitionedCall)lstm_791/StatefulPartitionedCall:output:0dense_263_4496667dense_263_4496669*
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965y
IdentityIdentity*dense_263/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_263/StatefulPartitionedCall!^lstm_789/StatefulPartitionedCall!^lstm_790/StatefulPartitionedCall!^lstm_791/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_263/StatefulPartitionedCall!dense_263/StatefulPartitionedCall2D
 lstm_789/StatefulPartitionedCall lstm_789/StatefulPartitionedCall2D
 lstm_790/StatefulPartitionedCall lstm_790/StatefulPartitionedCall2D
 lstm_791/StatefulPartitionedCall lstm_791/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_789_input
?
?
while_cond_4496078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4496078___redundant_placeholder05
1while_while_cond_4496078___redundant_placeholder15
1while_while_cond_4496078___redundant_placeholder25
1while_while_cond_4496078___redundant_placeholder3
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
while_body_4497719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4499483

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
lstm_791_while_cond_4497525.
*lstm_791_while_lstm_791_while_loop_counter4
0lstm_791_while_lstm_791_while_maximum_iterations
lstm_791_while_placeholder 
lstm_791_while_placeholder_1 
lstm_791_while_placeholder_2 
lstm_791_while_placeholder_30
,lstm_791_while_less_lstm_791_strided_slice_1G
Clstm_791_while_lstm_791_while_cond_4497525___redundant_placeholder0G
Clstm_791_while_lstm_791_while_cond_4497525___redundant_placeholder1G
Clstm_791_while_lstm_791_while_cond_4497525___redundant_placeholder2G
Clstm_791_while_lstm_791_while_cond_4497525___redundant_placeholder3
lstm_791_while_identity
?
lstm_791/while/LessLesslstm_791_while_placeholder,lstm_791_while_less_lstm_791_strided_slice_1*
T0*
_output_shapes
: ]
lstm_791/while/IdentityIdentitylstm_791/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_791_while_identity lstm_791/while/Identity:output:0*(
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4496163

inputs>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4496079*
condR
while_cond_4496078*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4494529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_741_4494553_0:	?0
while_lstm_cell_741_4494555_0:	d?,
while_lstm_cell_741_4494557_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_741_4494553:	?.
while_lstm_cell_741_4494555:	d?*
while_lstm_cell_741_4494557:	???+while/lstm_cell_741/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_741/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_741_4494553_0while_lstm_cell_741_4494555_0while_lstm_cell_741_4494557_0*
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494515?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_741/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_741/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_741/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_741/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_741_4494553while_lstm_cell_741_4494553_0"<
while_lstm_cell_741_4494555while_lstm_cell_741_4494555_0"<
while_lstm_cell_741_4494557while_lstm_cell_741_4494557_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_741/StatefulPartitionedCall+while/lstm_cell_741/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4494598

inputs(
lstm_cell_741_4494516:	?(
lstm_cell_741_4494518:	d?$
lstm_cell_741_4494520:	?
identity??%lstm_cell_741/StatefulPartitionedCall?while;
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
%lstm_cell_741/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_741_4494516lstm_cell_741_4494518lstm_cell_741_4494520*
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494515n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_741_4494516lstm_cell_741_4494518lstm_cell_741_4494520*
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
while_body_4494529*
condR
while_cond_4494528*K
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
NoOpNoOp&^lstm_cell_741/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_741/StatefulPartitionedCall%lstm_cell_741/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494661

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
?
*__inference_lstm_789_layer_call_fn_4497649

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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4495647s
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
?
?
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4495011

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
while_body_4496409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_741_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_741_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_741_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_741_matmul_readvariableop_resource:	?G
4while_lstm_cell_741_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_741_biasadd_readvariableop_resource:	???*while/lstm_cell_741/BiasAdd/ReadVariableOp?)while/lstm_cell_741/MatMul/ReadVariableOp?+while/lstm_cell_741/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_741/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_741_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_741/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_741/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_741/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_741_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_741/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_741/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_741/addAddV2$while/lstm_cell_741/MatMul:product:0&while/lstm_cell_741/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_741/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_741_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_741/BiasAddBiasAddwhile/lstm_cell_741/add:z:02while/lstm_cell_741/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_741/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_741/splitSplit,while/lstm_cell_741/split/split_dim:output:0$while/lstm_cell_741/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_741/SigmoidSigmoid"while/lstm_cell_741/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_1Sigmoid"while/lstm_cell_741/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mulMul!while/lstm_cell_741/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_741/ReluRelu"while/lstm_cell_741/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_1Mulwhile/lstm_cell_741/Sigmoid:y:0&while/lstm_cell_741/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/add_1AddV2while/lstm_cell_741/mul:z:0while/lstm_cell_741/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_741/Sigmoid_2Sigmoid"while/lstm_cell_741/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_741/Relu_1Reluwhile/lstm_cell_741/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_741/mul_2Mul!while/lstm_cell_741/Sigmoid_2:y:0(while/lstm_cell_741/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_741/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_741/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_741/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_741/BiasAdd/ReadVariableOp*^while/lstm_cell_741/MatMul/ReadVariableOp,^while/lstm_cell_741/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_741_biasadd_readvariableop_resource5while_lstm_cell_741_biasadd_readvariableop_resource_0"n
4while_lstm_cell_741_matmul_1_readvariableop_resource6while_lstm_cell_741_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_741_matmul_readvariableop_resource4while_lstm_cell_741_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_741/BiasAdd/ReadVariableOp*while/lstm_cell_741/BiasAdd/ReadVariableOp2V
)while/lstm_cell_741/MatMul/ReadVariableOp)while/lstm_cell_741/MatMul/ReadVariableOp2Z
+while/lstm_cell_741/MatMul_1/ReadVariableOp+while/lstm_cell_741/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4495228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4495228___redundant_placeholder05
1while_while_cond_4495228___redundant_placeholder15
1while_while_cond_4495228___redundant_placeholder25
1while_while_cond_4495228___redundant_placeholder3
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
while_cond_4496408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4496408___redundant_placeholder05
1while_while_cond_4496408___redundant_placeholder15
1while_while_cond_4496408___redundant_placeholder25
1while_while_cond_4496408___redundant_placeholder3
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
*sequential_263_lstm_791_while_body_4494358L
Hsequential_263_lstm_791_while_sequential_263_lstm_791_while_loop_counterR
Nsequential_263_lstm_791_while_sequential_263_lstm_791_while_maximum_iterations-
)sequential_263_lstm_791_while_placeholder/
+sequential_263_lstm_791_while_placeholder_1/
+sequential_263_lstm_791_while_placeholder_2/
+sequential_263_lstm_791_while_placeholder_3K
Gsequential_263_lstm_791_while_sequential_263_lstm_791_strided_slice_1_0?
?sequential_263_lstm_791_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_791_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_263_lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0:2(`
Nsequential_263_lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0:
([
Msequential_263_lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0:(*
&sequential_263_lstm_791_while_identity,
(sequential_263_lstm_791_while_identity_1,
(sequential_263_lstm_791_while_identity_2,
(sequential_263_lstm_791_while_identity_3,
(sequential_263_lstm_791_while_identity_4,
(sequential_263_lstm_791_while_identity_5I
Esequential_263_lstm_791_while_sequential_263_lstm_791_strided_slice_1?
?sequential_263_lstm_791_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_791_tensorarrayunstack_tensorlistfromtensor\
Jsequential_263_lstm_791_while_lstm_cell_743_matmul_readvariableop_resource:2(^
Lsequential_263_lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource:
(Y
Ksequential_263_lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource:(??Bsequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp?Asequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp?Csequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp?
Osequential_263/lstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_263/lstm_791/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_263_lstm_791_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_791_tensorarrayunstack_tensorlistfromtensor_0)sequential_263_lstm_791_while_placeholderXsequential_263/lstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOpLsequential_263_lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_263/lstm_791/while/lstm_cell_743/MatMulMatMulHsequential_263/lstm_791/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOpNsequential_263_lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_263/lstm_791/while/lstm_cell_743/MatMul_1MatMul+sequential_263_lstm_791_while_placeholder_2Ksequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_263/lstm_791/while/lstm_cell_743/addAddV2<sequential_263/lstm_791/while/lstm_cell_743/MatMul:product:0>sequential_263/lstm_791/while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOpMsequential_263_lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_263/lstm_791/while/lstm_cell_743/BiasAddBiasAdd3sequential_263/lstm_791/while/lstm_cell_743/add:z:0Jsequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_263/lstm_791/while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_263/lstm_791/while/lstm_cell_743/splitSplitDsequential_263/lstm_791/while/lstm_cell_743/split/split_dim:output:0<sequential_263/lstm_791/while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_263/lstm_791/while/lstm_cell_743/SigmoidSigmoid:sequential_263/lstm_791/while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_263/lstm_791/while/lstm_cell_743/Sigmoid_1Sigmoid:sequential_263/lstm_791/while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_263/lstm_791/while/lstm_cell_743/mulMul9sequential_263/lstm_791/while/lstm_cell_743/Sigmoid_1:y:0+sequential_263_lstm_791_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_263/lstm_791/while/lstm_cell_743/ReluRelu:sequential_263/lstm_791/while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_263/lstm_791/while/lstm_cell_743/mul_1Mul7sequential_263/lstm_791/while/lstm_cell_743/Sigmoid:y:0>sequential_263/lstm_791/while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_263/lstm_791/while/lstm_cell_743/add_1AddV23sequential_263/lstm_791/while/lstm_cell_743/mul:z:05sequential_263/lstm_791/while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_263/lstm_791/while/lstm_cell_743/Sigmoid_2Sigmoid:sequential_263/lstm_791/while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_263/lstm_791/while/lstm_cell_743/Relu_1Relu5sequential_263/lstm_791/while/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_263/lstm_791/while/lstm_cell_743/mul_2Mul9sequential_263/lstm_791/while/lstm_cell_743/Sigmoid_2:y:0@sequential_263/lstm_791/while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_263/lstm_791/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_263_lstm_791_while_placeholder_1)sequential_263_lstm_791_while_placeholder5sequential_263/lstm_791/while/lstm_cell_743/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_263/lstm_791/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_263/lstm_791/while/addAddV2)sequential_263_lstm_791_while_placeholder,sequential_263/lstm_791/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_263/lstm_791/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_263/lstm_791/while/add_1AddV2Hsequential_263_lstm_791_while_sequential_263_lstm_791_while_loop_counter.sequential_263/lstm_791/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_263/lstm_791/while/IdentityIdentity'sequential_263/lstm_791/while/add_1:z:0#^sequential_263/lstm_791/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_791/while/Identity_1IdentityNsequential_263_lstm_791_while_sequential_263_lstm_791_while_maximum_iterations#^sequential_263/lstm_791/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_791/while/Identity_2Identity%sequential_263/lstm_791/while/add:z:0#^sequential_263/lstm_791/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_791/while/Identity_3IdentityRsequential_263/lstm_791/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_263/lstm_791/while/NoOp*
T0*
_output_shapes
: ?
(sequential_263/lstm_791/while/Identity_4Identity5sequential_263/lstm_791/while/lstm_cell_743/mul_2:z:0#^sequential_263/lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_263/lstm_791/while/Identity_5Identity5sequential_263/lstm_791/while/lstm_cell_743/add_1:z:0#^sequential_263/lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_263/lstm_791/while/NoOpNoOpC^sequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOpB^sequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOpD^sequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_263_lstm_791_while_identity/sequential_263/lstm_791/while/Identity:output:0"]
(sequential_263_lstm_791_while_identity_11sequential_263/lstm_791/while/Identity_1:output:0"]
(sequential_263_lstm_791_while_identity_21sequential_263/lstm_791/while/Identity_2:output:0"]
(sequential_263_lstm_791_while_identity_31sequential_263/lstm_791/while/Identity_3:output:0"]
(sequential_263_lstm_791_while_identity_41sequential_263/lstm_791/while/Identity_4:output:0"]
(sequential_263_lstm_791_while_identity_51sequential_263/lstm_791/while/Identity_5:output:0"?
Ksequential_263_lstm_791_while_lstm_cell_743_biasadd_readvariableop_resourceMsequential_263_lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0"?
Lsequential_263_lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resourceNsequential_263_lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0"?
Jsequential_263_lstm_791_while_lstm_cell_743_matmul_readvariableop_resourceLsequential_263_lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0"?
Esequential_263_lstm_791_while_sequential_263_lstm_791_strided_slice_1Gsequential_263_lstm_791_while_sequential_263_lstm_791_strided_slice_1_0"?
?sequential_263_lstm_791_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_791_tensorarrayunstack_tensorlistfromtensor?sequential_263_lstm_791_while_tensorarrayv2read_tensorlistgetitem_sequential_263_lstm_791_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOpBsequential_263/lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp2?
Asequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOpAsequential_263/lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp2?
Csequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOpCsequential_263/lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_789_while_cond_4497247.
*lstm_789_while_lstm_789_while_loop_counter4
0lstm_789_while_lstm_789_while_maximum_iterations
lstm_789_while_placeholder 
lstm_789_while_placeholder_1 
lstm_789_while_placeholder_2 
lstm_789_while_placeholder_30
,lstm_789_while_less_lstm_789_strided_slice_1G
Clstm_789_while_lstm_789_while_cond_4497247___redundant_placeholder0G
Clstm_789_while_lstm_789_while_cond_4497247___redundant_placeholder1G
Clstm_789_while_lstm_789_while_cond_4497247___redundant_placeholder2G
Clstm_789_while_lstm_789_while_cond_4497247___redundant_placeholder3
lstm_789_while_identity
?
lstm_789/while/LessLesslstm_789_while_placeholder,lstm_789_while_less_lstm_789_strided_slice_1*
T0*
_output_shapes
: ]
lstm_789/while/IdentityIdentitylstm_789/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_789_while_identity lstm_789/while/Identity:output:0*(
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
*__inference_lstm_791_layer_call_fn_4498892

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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4496163o
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
?#
?
while_body_4494879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_742_4494903_0:	d?0
while_lstm_cell_742_4494905_0:	2?,
while_lstm_cell_742_4494907_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_742_4494903:	d?.
while_lstm_cell_742_4494905:	2?*
while_lstm_cell_742_4494907:	???+while/lstm_cell_742/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_742/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_742_4494903_0while_lstm_cell_742_4494905_0while_lstm_cell_742_4494907_0*
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4494865?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_742/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_742/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_742/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_742/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_742_4494903while_lstm_cell_742_4494903_0"<
while_lstm_cell_742_4494905while_lstm_cell_742_4494905_0"<
while_lstm_cell_742_4494907while_lstm_cell_742_4494907_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_742/StatefulPartitionedCall+while/lstm_cell_742/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4495489

inputs'
lstm_cell_743_4495407:2('
lstm_cell_743_4495409:
(#
lstm_cell_743_4495411:(
identity??%lstm_cell_743/StatefulPartitionedCall?while;
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
%lstm_cell_743/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_743_4495407lstm_cell_743_4495409lstm_cell_743_4495411*
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495361n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_743_4495407lstm_cell_743_4495409lstm_cell_743_4495411*
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
while_body_4495420*
condR
while_cond_4495419*K
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
NoOpNoOp&^lstm_cell_743/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_743/StatefulPartitionedCall%lstm_cell_743/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4495229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_743_4495253_0:2(/
while_lstm_cell_743_4495255_0:
(+
while_lstm_cell_743_4495257_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_743_4495253:2(-
while_lstm_cell_743_4495255:
()
while_lstm_cell_743_4495257:(??+while/lstm_cell_743/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_743/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_743_4495253_0while_lstm_cell_743_4495255_0while_lstm_cell_743_4495257_0*
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495215?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_743/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_743/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_743/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_743/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_743_4495253while_lstm_cell_743_4495253_0"<
while_lstm_cell_743_4495255while_lstm_cell_743_4495255_0"<
while_lstm_cell_743_4495257while_lstm_cell_743_4495257_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_743/StatefulPartitionedCall+while/lstm_cell_743/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499464

inputs>
,lstm_cell_743_matmul_readvariableop_resource:2(@
.lstm_cell_743_matmul_1_readvariableop_resource:
(;
-lstm_cell_743_biasadd_readvariableop_resource:(
identity??$lstm_cell_743/BiasAdd/ReadVariableOp?#lstm_cell_743/MatMul/ReadVariableOp?%lstm_cell_743/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_743/MatMul/ReadVariableOpReadVariableOp,lstm_cell_743_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_743/MatMulMatMulstrided_slice_2:output:0+lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_743_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_743/MatMul_1MatMulzeros:output:0-lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_743/addAddV2lstm_cell_743/MatMul:product:0 lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_743_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_743/BiasAddBiasAddlstm_cell_743/add:z:0,lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_743/splitSplit&lstm_cell_743/split/split_dim:output:0lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_743/SigmoidSigmoidlstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_1Sigmoidlstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_743/mulMullstm_cell_743/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_743/ReluRelulstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_1Mullstm_cell_743/Sigmoid:y:0 lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_743/add_1AddV2lstm_cell_743/mul:z:0lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_743/Sigmoid_2Sigmoidlstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_743/Relu_1Relulstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_743/mul_2Mullstm_cell_743/Sigmoid_2:y:0"lstm_cell_743/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_743_matmul_readvariableop_resource.lstm_cell_743_matmul_1_readvariableop_resource-lstm_cell_743_biasadd_readvariableop_resource*
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
while_body_4499380*
condR
while_cond_4499379*K
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
NoOpNoOp%^lstm_cell_743/BiasAdd/ReadVariableOp$^lstm_cell_743/MatMul/ReadVariableOp&^lstm_cell_743/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_743/BiasAdd/ReadVariableOp$lstm_cell_743/BiasAdd/ReadVariableOp2J
#lstm_cell_743/MatMul/ReadVariableOp#lstm_cell_743/MatMul/ReadVariableOp2N
%lstm_cell_743/MatMul_1/ReadVariableOp%lstm_cell_743/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_263_layer_call_fn_4499473

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
F__inference_dense_263_layer_call_and_return_conditional_losses_4495965o
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
while_body_4495420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_743_4495444_0:2(/
while_lstm_cell_743_4495446_0:
(+
while_lstm_cell_743_4495448_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_743_4495444:2(-
while_lstm_cell_743_4495446:
()
while_lstm_cell_743_4495448:(??+while/lstm_cell_743/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_743/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_743_4495444_0while_lstm_cell_743_4495446_0while_lstm_cell_743_4495448_0*
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4495361?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_743/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_743/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_743/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_743/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_743_4495444while_lstm_cell_743_4495444_0"<
while_lstm_cell_743_4495446while_lstm_cell_743_4495446_0"<
while_lstm_cell_743_4495448while_lstm_cell_743_4495448_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_743/StatefulPartitionedCall+while/lstm_cell_743/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4498334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4498334___redundant_placeholder05
1while_while_cond_4498334___redundant_placeholder15
1while_while_cond_4498334___redundant_placeholder25
1while_while_cond_4498334___redundant_placeholder3
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
while_body_4496244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_742_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_742_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_742_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_742_matmul_readvariableop_resource:	d?G
4while_lstm_cell_742_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_742_biasadd_readvariableop_resource:	???*while/lstm_cell_742/BiasAdd/ReadVariableOp?)while/lstm_cell_742/MatMul/ReadVariableOp?+while/lstm_cell_742/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_742/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_742_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_742/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_742/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_742/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_742_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_742/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_742/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_742/addAddV2$while/lstm_cell_742/MatMul:product:0&while/lstm_cell_742/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_742/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_742_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_742/BiasAddBiasAddwhile/lstm_cell_742/add:z:02while/lstm_cell_742/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_742/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_742/splitSplit,while/lstm_cell_742/split/split_dim:output:0$while/lstm_cell_742/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_742/SigmoidSigmoid"while/lstm_cell_742/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_1Sigmoid"while/lstm_cell_742/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mulMul!while/lstm_cell_742/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_742/ReluRelu"while/lstm_cell_742/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_1Mulwhile/lstm_cell_742/Sigmoid:y:0&while/lstm_cell_742/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/add_1AddV2while/lstm_cell_742/mul:z:0while/lstm_cell_742/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_742/Sigmoid_2Sigmoid"while/lstm_cell_742/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_742/Relu_1Reluwhile/lstm_cell_742/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_742/mul_2Mul!while/lstm_cell_742/Sigmoid_2:y:0(while/lstm_cell_742/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_742/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_742/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_742/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_742/BiasAdd/ReadVariableOp*^while/lstm_cell_742/MatMul/ReadVariableOp,^while/lstm_cell_742/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_742_biasadd_readvariableop_resource5while_lstm_cell_742_biasadd_readvariableop_resource_0"n
4while_lstm_cell_742_matmul_1_readvariableop_resource6while_lstm_cell_742_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_742_matmul_readvariableop_resource4while_lstm_cell_742_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_742/BiasAdd/ReadVariableOp*while/lstm_cell_742/BiasAdd/ReadVariableOp2V
)while/lstm_cell_742/MatMul/ReadVariableOp)while/lstm_cell_742/MatMul/ReadVariableOp2Z
+while/lstm_cell_742/MatMul_1/ReadVariableOp+while/lstm_cell_742/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4496708
lstm_789_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_789_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4494448o
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
_user_specified_namelstm_789_input
?C
?

lstm_791_while_body_4497526.
*lstm_791_while_lstm_791_while_loop_counter4
0lstm_791_while_lstm_791_while_maximum_iterations
lstm_791_while_placeholder 
lstm_791_while_placeholder_1 
lstm_791_while_placeholder_2 
lstm_791_while_placeholder_3-
)lstm_791_while_lstm_791_strided_slice_1_0i
elstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0:2(Q
?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0:
(L
>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0:(
lstm_791_while_identity
lstm_791_while_identity_1
lstm_791_while_identity_2
lstm_791_while_identity_3
lstm_791_while_identity_4
lstm_791_while_identity_5+
'lstm_791_while_lstm_791_strided_slice_1g
clstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensorM
;lstm_791_while_lstm_cell_743_matmul_readvariableop_resource:2(O
=lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource:
(J
<lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource:(??3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp?2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp?4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp?
@lstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_791/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0lstm_791_while_placeholderIlstm_791/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOpReadVariableOp=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_791/while/lstm_cell_743/MatMulMatMul9lstm_791/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOpReadVariableOp?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_791/while/lstm_cell_743/MatMul_1MatMullstm_791_while_placeholder_2<lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_791/while/lstm_cell_743/addAddV2-lstm_791/while/lstm_cell_743/MatMul:product:0/lstm_791/while/lstm_cell_743/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOpReadVariableOp>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_791/while/lstm_cell_743/BiasAddBiasAdd$lstm_791/while/lstm_cell_743/add:z:0;lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_791/while/lstm_cell_743/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_791/while/lstm_cell_743/splitSplit5lstm_791/while/lstm_cell_743/split/split_dim:output:0-lstm_791/while/lstm_cell_743/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_791/while/lstm_cell_743/SigmoidSigmoid+lstm_791/while/lstm_cell_743/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_791/while/lstm_cell_743/Sigmoid_1Sigmoid+lstm_791/while/lstm_cell_743/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_791/while/lstm_cell_743/mulMul*lstm_791/while/lstm_cell_743/Sigmoid_1:y:0lstm_791_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_791/while/lstm_cell_743/ReluRelu+lstm_791/while/lstm_cell_743/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/mul_1Mul(lstm_791/while/lstm_cell_743/Sigmoid:y:0/lstm_791/while/lstm_cell_743/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/add_1AddV2$lstm_791/while/lstm_cell_743/mul:z:0&lstm_791/while/lstm_cell_743/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_791/while/lstm_cell_743/Sigmoid_2Sigmoid+lstm_791/while/lstm_cell_743/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_791/while/lstm_cell_743/Relu_1Relu&lstm_791/while/lstm_cell_743/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_791/while/lstm_cell_743/mul_2Mul*lstm_791/while/lstm_cell_743/Sigmoid_2:y:01lstm_791/while/lstm_cell_743/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_791/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_791_while_placeholder_1lstm_791_while_placeholder&lstm_791/while/lstm_cell_743/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_791/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_791/while/addAddV2lstm_791_while_placeholderlstm_791/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_791/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_791/while/add_1AddV2*lstm_791_while_lstm_791_while_loop_counterlstm_791/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_791/while/IdentityIdentitylstm_791/while/add_1:z:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_1Identity0lstm_791_while_lstm_791_while_maximum_iterations^lstm_791/while/NoOp*
T0*
_output_shapes
: t
lstm_791/while/Identity_2Identitylstm_791/while/add:z:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_3IdentityClstm_791/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_791/while/NoOp*
T0*
_output_shapes
: ?
lstm_791/while/Identity_4Identity&lstm_791/while/lstm_cell_743/mul_2:z:0^lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_791/while/Identity_5Identity&lstm_791/while/lstm_cell_743/add_1:z:0^lstm_791/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_791/while/NoOpNoOp4^lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp3^lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp5^lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_791_while_identity lstm_791/while/Identity:output:0"?
lstm_791_while_identity_1"lstm_791/while/Identity_1:output:0"?
lstm_791_while_identity_2"lstm_791/while/Identity_2:output:0"?
lstm_791_while_identity_3"lstm_791/while/Identity_3:output:0"?
lstm_791_while_identity_4"lstm_791/while/Identity_4:output:0"?
lstm_791_while_identity_5"lstm_791/while/Identity_5:output:0"T
'lstm_791_while_lstm_791_strided_slice_1)lstm_791_while_lstm_791_strided_slice_1_0"~
<lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource>lstm_791_while_lstm_cell_743_biasadd_readvariableop_resource_0"?
=lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource?lstm_791_while_lstm_cell_743_matmul_1_readvariableop_resource_0"|
;lstm_791_while_lstm_cell_743_matmul_readvariableop_resource=lstm_791_while_lstm_cell_743_matmul_readvariableop_resource_0"?
clstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensorelstm_791_while_tensorarrayv2read_tensorlistgetitem_lstm_791_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp3lstm_791/while/lstm_cell_743/BiasAdd/ReadVariableOp2h
2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp2lstm_791/while/lstm_cell_743/MatMul/ReadVariableOp2l
4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp4lstm_791/while/lstm_cell_743/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4494948

inputs(
lstm_cell_742_4494866:	d?(
lstm_cell_742_4494868:	2?$
lstm_cell_742_4494870:	?
identity??%lstm_cell_742/StatefulPartitionedCall?while;
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
%lstm_cell_742/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_742_4494866lstm_cell_742_4494868lstm_cell_742_4494870*
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4494865n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_742_4494866lstm_cell_742_4494868lstm_cell_742_4494870*
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
while_body_4494879*
condR
while_cond_4494878*K
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
NoOpNoOp&^lstm_cell_742/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_742/StatefulPartitionedCall%lstm_cell_742/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_263_layer_call_fn_4495997
lstm_789_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_789_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4495972o
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
_user_specified_namelstm_789_input
?
?
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4494515

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
lstm_789_input;
 serving_default_lstm_789_input:0?????????=
	dense_2630
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
2dense_263/kernel
:2dense_263/bias
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
0:.	?2lstm_789/lstm_cell_789/kernel
::8	d?2'lstm_789/lstm_cell_789/recurrent_kernel
*:(?2lstm_789/lstm_cell_789/bias
0:.	d?2lstm_790/lstm_cell_790/kernel
::8	2?2'lstm_790/lstm_cell_790/recurrent_kernel
*:(?2lstm_790/lstm_cell_790/bias
/:-2(2lstm_791/lstm_cell_791/kernel
9:7
(2'lstm_791/lstm_cell_791/recurrent_kernel
):'(2lstm_791/lstm_cell_791/bias
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
2Adam/dense_263/kernel/m
!:2Adam/dense_263/bias/m
5:3	?2$Adam/lstm_789/lstm_cell_789/kernel/m
?:=	d?2.Adam/lstm_789/lstm_cell_789/recurrent_kernel/m
/:-?2"Adam/lstm_789/lstm_cell_789/bias/m
5:3	d?2$Adam/lstm_790/lstm_cell_790/kernel/m
?:=	2?2.Adam/lstm_790/lstm_cell_790/recurrent_kernel/m
/:-?2"Adam/lstm_790/lstm_cell_790/bias/m
4:22(2$Adam/lstm_791/lstm_cell_791/kernel/m
>:<
(2.Adam/lstm_791/lstm_cell_791/recurrent_kernel/m
.:,(2"Adam/lstm_791/lstm_cell_791/bias/m
':%
2Adam/dense_263/kernel/v
!:2Adam/dense_263/bias/v
5:3	?2$Adam/lstm_789/lstm_cell_789/kernel/v
?:=	d?2.Adam/lstm_789/lstm_cell_789/recurrent_kernel/v
/:-?2"Adam/lstm_789/lstm_cell_789/bias/v
5:3	d?2$Adam/lstm_790/lstm_cell_790/kernel/v
?:=	2?2.Adam/lstm_790/lstm_cell_790/recurrent_kernel/v
/:-?2"Adam/lstm_790/lstm_cell_790/bias/v
4:22(2$Adam/lstm_791/lstm_cell_791/kernel/v
>:<
(2.Adam/lstm_791/lstm_cell_791/recurrent_kernel/v
.:,(2"Adam/lstm_791/lstm_cell_791/bias/v
?2?
0__inference_sequential_263_layer_call_fn_4495997
0__inference_sequential_263_layer_call_fn_4496735
0__inference_sequential_263_layer_call_fn_4496762
0__inference_sequential_263_layer_call_fn_4496613?
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497189
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497616
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496643
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496673?
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
"__inference__wrapped_model_4494448lstm_789_input"?
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
*__inference_lstm_789_layer_call_fn_4497627
*__inference_lstm_789_layer_call_fn_4497638
*__inference_lstm_789_layer_call_fn_4497649
*__inference_lstm_789_layer_call_fn_4497660?
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497803
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497946
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498089
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498232?
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
*__inference_lstm_790_layer_call_fn_4498243
*__inference_lstm_790_layer_call_fn_4498254
*__inference_lstm_790_layer_call_fn_4498265
*__inference_lstm_790_layer_call_fn_4498276?
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498419
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498562
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498705
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498848?
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
*__inference_lstm_791_layer_call_fn_4498859
*__inference_lstm_791_layer_call_fn_4498870
*__inference_lstm_791_layer_call_fn_4498881
*__inference_lstm_791_layer_call_fn_4498892?
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499035
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499178
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499321
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499464?
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
+__inference_dense_263_layer_call_fn_4499473?
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
F__inference_dense_263_layer_call_and_return_conditional_losses_4499483?
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
%__inference_signature_wrapper_4496708lstm_789_input"?
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
/__inference_lstm_cell_741_layer_call_fn_4499500
/__inference_lstm_cell_741_layer_call_fn_4499517?
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499549
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499581?
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
/__inference_lstm_cell_742_layer_call_fn_4499598
/__inference_lstm_cell_742_layer_call_fn_4499615?
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499647
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499679?
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
/__inference_lstm_cell_743_layer_call_fn_4499696
/__inference_lstm_cell_743_layer_call_fn_4499713?
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499745
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499777?
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
"__inference__wrapped_model_4494448?-./012345!";?8
1?.
,?)
lstm_789_input?????????
? "5?2
0
	dense_263#? 
	dense_263??????????
F__inference_dense_263_layer_call_and_return_conditional_losses_4499483\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_263_layer_call_fn_4499473O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497803?-./O?L
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4497946?-./O?L
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498089q-./??<
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
E__inference_lstm_789_layer_call_and_return_conditional_losses_4498232q-./??<
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
*__inference_lstm_789_layer_call_fn_4497627}-./O?L
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
*__inference_lstm_789_layer_call_fn_4497638}-./O?L
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
*__inference_lstm_789_layer_call_fn_4497649d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_789_layer_call_fn_4497660d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498419?012O?L
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498562?012O?L
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498705q012??<
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
E__inference_lstm_790_layer_call_and_return_conditional_losses_4498848q012??<
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
*__inference_lstm_790_layer_call_fn_4498243}012O?L
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
*__inference_lstm_790_layer_call_fn_4498254}012O?L
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
*__inference_lstm_790_layer_call_fn_4498265d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_790_layer_call_fn_4498276d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499035}345O?L
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499178}345O?L
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499321m345??<
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
E__inference_lstm_791_layer_call_and_return_conditional_losses_4499464m345??<
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
*__inference_lstm_791_layer_call_fn_4498859p345O?L
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
*__inference_lstm_791_layer_call_fn_4498870p345O?L
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
*__inference_lstm_791_layer_call_fn_4498881`345??<
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
*__inference_lstm_791_layer_call_fn_4498892`345??<
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499549?-./??}
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
J__inference_lstm_cell_741_layer_call_and_return_conditional_losses_4499581?-./??}
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
/__inference_lstm_cell_741_layer_call_fn_4499500?-./??}
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
/__inference_lstm_cell_741_layer_call_fn_4499517?-./??}
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499647?012??}
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
J__inference_lstm_cell_742_layer_call_and_return_conditional_losses_4499679?012??}
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
/__inference_lstm_cell_742_layer_call_fn_4499598?012??}
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
/__inference_lstm_cell_742_layer_call_fn_4499615?012??}
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499745?345??}
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
J__inference_lstm_cell_743_layer_call_and_return_conditional_losses_4499777?345??}
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
/__inference_lstm_cell_743_layer_call_fn_4499696?345??}
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
/__inference_lstm_cell_743_layer_call_fn_4499713?345??}
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496643y-./012345!"C?@
9?6
,?)
lstm_789_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_263_layer_call_and_return_conditional_losses_4496673y-./012345!"C?@
9?6
,?)
lstm_789_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497189q-./012345!";?8
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
K__inference_sequential_263_layer_call_and_return_conditional_losses_4497616q-./012345!";?8
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
0__inference_sequential_263_layer_call_fn_4495997l-./012345!"C?@
9?6
,?)
lstm_789_input?????????
p 

 
? "???????????
0__inference_sequential_263_layer_call_fn_4496613l-./012345!"C?@
9?6
,?)
lstm_789_input?????????
p

 
? "???????????
0__inference_sequential_263_layer_call_fn_4496735d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_263_layer_call_fn_4496762d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4496708?-./012345!"M?J
? 
C?@
>
lstm_789_input,?)
lstm_789_input?????????"5?2
0
	dense_263#? 
	dense_263?????????