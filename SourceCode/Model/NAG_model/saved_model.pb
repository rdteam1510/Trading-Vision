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
dense_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_145/kernel
u
$dense_145/kernel/Read/ReadVariableOpReadVariableOpdense_145/kernel*
_output_shapes

:
*
dtype0
t
dense_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_145/bias
m
"dense_145/bias/Read/ReadVariableOpReadVariableOpdense_145/bias*
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
lstm_435/lstm_cell_435/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_435/lstm_cell_435/kernel
?
1lstm_435/lstm_cell_435/kernel/Read/ReadVariableOpReadVariableOplstm_435/lstm_cell_435/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_435/lstm_cell_435/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_435/lstm_cell_435/recurrent_kernel
?
;lstm_435/lstm_cell_435/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_435/lstm_cell_435/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_435/lstm_cell_435/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_435/lstm_cell_435/bias
?
/lstm_435/lstm_cell_435/bias/Read/ReadVariableOpReadVariableOplstm_435/lstm_cell_435/bias*
_output_shapes	
:?*
dtype0
?
lstm_436/lstm_cell_436/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_436/lstm_cell_436/kernel
?
1lstm_436/lstm_cell_436/kernel/Read/ReadVariableOpReadVariableOplstm_436/lstm_cell_436/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_436/lstm_cell_436/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_436/lstm_cell_436/recurrent_kernel
?
;lstm_436/lstm_cell_436/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_436/lstm_cell_436/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_436/lstm_cell_436/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_436/lstm_cell_436/bias
?
/lstm_436/lstm_cell_436/bias/Read/ReadVariableOpReadVariableOplstm_436/lstm_cell_436/bias*
_output_shapes	
:?*
dtype0
?
lstm_437/lstm_cell_437/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_437/lstm_cell_437/kernel
?
1lstm_437/lstm_cell_437/kernel/Read/ReadVariableOpReadVariableOplstm_437/lstm_cell_437/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_437/lstm_cell_437/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_437/lstm_cell_437/recurrent_kernel
?
;lstm_437/lstm_cell_437/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_437/lstm_cell_437/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_437/lstm_cell_437/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_437/lstm_cell_437/bias
?
/lstm_437/lstm_cell_437/bias/Read/ReadVariableOpReadVariableOplstm_437/lstm_cell_437/bias*
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
Adam/dense_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_145/kernel/m
?
+Adam/dense_145/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_145/bias/m
{
)Adam/dense_145/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_435/lstm_cell_435/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_435/lstm_cell_435/kernel/m
?
8Adam/lstm_435/lstm_cell_435/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_435/lstm_cell_435/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_435/lstm_cell_435/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_435/lstm_cell_435/recurrent_kernel/m
?
BAdam/lstm_435/lstm_cell_435/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_435/lstm_cell_435/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_435/lstm_cell_435/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_435/lstm_cell_435/bias/m
?
6Adam/lstm_435/lstm_cell_435/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_435/lstm_cell_435/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_436/lstm_cell_436/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_436/lstm_cell_436/kernel/m
?
8Adam/lstm_436/lstm_cell_436/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_436/lstm_cell_436/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_436/lstm_cell_436/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_436/lstm_cell_436/recurrent_kernel/m
?
BAdam/lstm_436/lstm_cell_436/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_436/lstm_cell_436/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_436/lstm_cell_436/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_436/lstm_cell_436/bias/m
?
6Adam/lstm_436/lstm_cell_436/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_436/lstm_cell_436/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_437/lstm_cell_437/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_437/lstm_cell_437/kernel/m
?
8Adam/lstm_437/lstm_cell_437/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_437/lstm_cell_437/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_437/lstm_cell_437/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_437/lstm_cell_437/recurrent_kernel/m
?
BAdam/lstm_437/lstm_cell_437/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_437/lstm_cell_437/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_437/lstm_cell_437/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_437/lstm_cell_437/bias/m
?
6Adam/lstm_437/lstm_cell_437/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_437/lstm_cell_437/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_145/kernel/v
?
+Adam/dense_145/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_145/bias/v
{
)Adam/dense_145/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_435/lstm_cell_435/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_435/lstm_cell_435/kernel/v
?
8Adam/lstm_435/lstm_cell_435/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_435/lstm_cell_435/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_435/lstm_cell_435/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_435/lstm_cell_435/recurrent_kernel/v
?
BAdam/lstm_435/lstm_cell_435/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_435/lstm_cell_435/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_435/lstm_cell_435/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_435/lstm_cell_435/bias/v
?
6Adam/lstm_435/lstm_cell_435/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_435/lstm_cell_435/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_436/lstm_cell_436/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_436/lstm_cell_436/kernel/v
?
8Adam/lstm_436/lstm_cell_436/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_436/lstm_cell_436/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_436/lstm_cell_436/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_436/lstm_cell_436/recurrent_kernel/v
?
BAdam/lstm_436/lstm_cell_436/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_436/lstm_cell_436/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_436/lstm_cell_436/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_436/lstm_cell_436/bias/v
?
6Adam/lstm_436/lstm_cell_436/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_436/lstm_cell_436/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_437/lstm_cell_437/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_437/lstm_cell_437/kernel/v
?
8Adam/lstm_437/lstm_cell_437/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_437/lstm_cell_437/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_437/lstm_cell_437/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_437/lstm_cell_437/recurrent_kernel/v
?
BAdam/lstm_437/lstm_cell_437/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_437/lstm_cell_437/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_437/lstm_cell_437/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_437/lstm_cell_437/bias/v
?
6Adam/lstm_437/lstm_cell_437/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_437/lstm_cell_437/bias/v*
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
VARIABLE_VALUEdense_145/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_145/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_435/lstm_cell_435/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_435/lstm_cell_435/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_435/lstm_cell_435/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_436/lstm_cell_436/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_436/lstm_cell_436/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_436/lstm_cell_436/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_437/lstm_cell_437/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_437/lstm_cell_437/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_437/lstm_cell_437/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_145/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_145/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_435/lstm_cell_435/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_435/lstm_cell_435/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_435/lstm_cell_435/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_436/lstm_cell_436/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_436/lstm_cell_436/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_436/lstm_cell_436/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_437/lstm_cell_437/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_437/lstm_cell_437/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_437/lstm_cell_437/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_145/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_145/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_435/lstm_cell_435/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_435/lstm_cell_435/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_435/lstm_cell_435/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_436/lstm_cell_436/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_436/lstm_cell_436/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_436/lstm_cell_436/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_437/lstm_cell_437/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_437/lstm_cell_437/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_437/lstm_cell_437/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_435_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_435_inputlstm_435/lstm_cell_435/kernel'lstm_435/lstm_cell_435/recurrent_kernellstm_435/lstm_cell_435/biaslstm_436/lstm_cell_436/kernel'lstm_436/lstm_cell_436/recurrent_kernellstm_436/lstm_cell_436/biaslstm_437/lstm_cell_437/kernel'lstm_437/lstm_cell_437/recurrent_kernellstm_437/lstm_cell_437/biasdense_145/kerneldense_145/bias*
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
%__inference_signature_wrapper_2463526
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_145/kernel/Read/ReadVariableOp"dense_145/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_435/lstm_cell_435/kernel/Read/ReadVariableOp;lstm_435/lstm_cell_435/recurrent_kernel/Read/ReadVariableOp/lstm_435/lstm_cell_435/bias/Read/ReadVariableOp1lstm_436/lstm_cell_436/kernel/Read/ReadVariableOp;lstm_436/lstm_cell_436/recurrent_kernel/Read/ReadVariableOp/lstm_436/lstm_cell_436/bias/Read/ReadVariableOp1lstm_437/lstm_cell_437/kernel/Read/ReadVariableOp;lstm_437/lstm_cell_437/recurrent_kernel/Read/ReadVariableOp/lstm_437/lstm_cell_437/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_145/kernel/m/Read/ReadVariableOp)Adam/dense_145/bias/m/Read/ReadVariableOp8Adam/lstm_435/lstm_cell_435/kernel/m/Read/ReadVariableOpBAdam/lstm_435/lstm_cell_435/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_435/lstm_cell_435/bias/m/Read/ReadVariableOp8Adam/lstm_436/lstm_cell_436/kernel/m/Read/ReadVariableOpBAdam/lstm_436/lstm_cell_436/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_436/lstm_cell_436/bias/m/Read/ReadVariableOp8Adam/lstm_437/lstm_cell_437/kernel/m/Read/ReadVariableOpBAdam/lstm_437/lstm_cell_437/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_437/lstm_cell_437/bias/m/Read/ReadVariableOp+Adam/dense_145/kernel/v/Read/ReadVariableOp)Adam/dense_145/bias/v/Read/ReadVariableOp8Adam/lstm_435/lstm_cell_435/kernel/v/Read/ReadVariableOpBAdam/lstm_435/lstm_cell_435/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_435/lstm_cell_435/bias/v/Read/ReadVariableOp8Adam/lstm_436/lstm_cell_436/kernel/v/Read/ReadVariableOpBAdam/lstm_436/lstm_cell_436/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_436/lstm_cell_436/bias/v/Read/ReadVariableOp8Adam/lstm_437/lstm_cell_437/kernel/v/Read/ReadVariableOpBAdam/lstm_437/lstm_cell_437/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_437/lstm_cell_437/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2466738
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_145/kerneldense_145/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_435/lstm_cell_435/kernel'lstm_435/lstm_cell_435/recurrent_kernellstm_435/lstm_cell_435/biaslstm_436/lstm_cell_436/kernel'lstm_436/lstm_cell_436/recurrent_kernellstm_436/lstm_cell_436/biaslstm_437/lstm_cell_437/kernel'lstm_437/lstm_cell_437/recurrent_kernellstm_437/lstm_cell_437/biastotalcountAdam/dense_145/kernel/mAdam/dense_145/bias/m$Adam/lstm_435/lstm_cell_435/kernel/m.Adam/lstm_435/lstm_cell_435/recurrent_kernel/m"Adam/lstm_435/lstm_cell_435/bias/m$Adam/lstm_436/lstm_cell_436/kernel/m.Adam/lstm_436/lstm_cell_436/recurrent_kernel/m"Adam/lstm_436/lstm_cell_436/bias/m$Adam/lstm_437/lstm_cell_437/kernel/m.Adam/lstm_437/lstm_cell_437/recurrent_kernel/m"Adam/lstm_437/lstm_cell_437/bias/mAdam/dense_145/kernel/vAdam/dense_145/bias/v$Adam/lstm_435/lstm_cell_435/kernel/v.Adam/lstm_435/lstm_cell_435/recurrent_kernel/v"Adam/lstm_435/lstm_cell_435/bias/v$Adam/lstm_436/lstm_cell_436/kernel/v.Adam/lstm_436/lstm_cell_436/recurrent_kernel/v"Adam/lstm_436/lstm_cell_436/bias/v$Adam/lstm_437/lstm_cell_437/kernel/v.Adam/lstm_437/lstm_cell_437/recurrent_kernel/v"Adam/lstm_437/lstm_cell_437/bias/v*4
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
#__inference__traced_restore_2466868??+
?T
?
*sequential_145_lstm_435_while_body_2460898L
Hsequential_145_lstm_435_while_sequential_145_lstm_435_while_loop_counterR
Nsequential_145_lstm_435_while_sequential_145_lstm_435_while_maximum_iterations-
)sequential_145_lstm_435_while_placeholder/
+sequential_145_lstm_435_while_placeholder_1/
+sequential_145_lstm_435_while_placeholder_2/
+sequential_145_lstm_435_while_placeholder_3K
Gsequential_145_lstm_435_while_sequential_145_lstm_435_strided_slice_1_0?
?sequential_145_lstm_435_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_435_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_145_lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0:	?a
Nsequential_145_lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?\
Msequential_145_lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0:	?*
&sequential_145_lstm_435_while_identity,
(sequential_145_lstm_435_while_identity_1,
(sequential_145_lstm_435_while_identity_2,
(sequential_145_lstm_435_while_identity_3,
(sequential_145_lstm_435_while_identity_4,
(sequential_145_lstm_435_while_identity_5I
Esequential_145_lstm_435_while_sequential_145_lstm_435_strided_slice_1?
?sequential_145_lstm_435_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_435_tensorarrayunstack_tensorlistfromtensor]
Jsequential_145_lstm_435_while_lstm_cell_405_matmul_readvariableop_resource:	?_
Lsequential_145_lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource:	d?Z
Ksequential_145_lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource:	???Bsequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp?Asequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp?Csequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp?
Osequential_145/lstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_145/lstm_435/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_145_lstm_435_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_435_tensorarrayunstack_tensorlistfromtensor_0)sequential_145_lstm_435_while_placeholderXsequential_145/lstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOpLsequential_145_lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_145/lstm_435/while/lstm_cell_405/MatMulMatMulHsequential_145/lstm_435/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOpNsequential_145_lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_145/lstm_435/while/lstm_cell_405/MatMul_1MatMul+sequential_145_lstm_435_while_placeholder_2Ksequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_145/lstm_435/while/lstm_cell_405/addAddV2<sequential_145/lstm_435/while/lstm_cell_405/MatMul:product:0>sequential_145/lstm_435/while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOpMsequential_145_lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_145/lstm_435/while/lstm_cell_405/BiasAddBiasAdd3sequential_145/lstm_435/while/lstm_cell_405/add:z:0Jsequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_145/lstm_435/while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_145/lstm_435/while/lstm_cell_405/splitSplitDsequential_145/lstm_435/while/lstm_cell_405/split/split_dim:output:0<sequential_145/lstm_435/while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_145/lstm_435/while/lstm_cell_405/SigmoidSigmoid:sequential_145/lstm_435/while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_145/lstm_435/while/lstm_cell_405/Sigmoid_1Sigmoid:sequential_145/lstm_435/while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_145/lstm_435/while/lstm_cell_405/mulMul9sequential_145/lstm_435/while/lstm_cell_405/Sigmoid_1:y:0+sequential_145_lstm_435_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_145/lstm_435/while/lstm_cell_405/ReluRelu:sequential_145/lstm_435/while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_145/lstm_435/while/lstm_cell_405/mul_1Mul7sequential_145/lstm_435/while/lstm_cell_405/Sigmoid:y:0>sequential_145/lstm_435/while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_145/lstm_435/while/lstm_cell_405/add_1AddV23sequential_145/lstm_435/while/lstm_cell_405/mul:z:05sequential_145/lstm_435/while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_145/lstm_435/while/lstm_cell_405/Sigmoid_2Sigmoid:sequential_145/lstm_435/while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_145/lstm_435/while/lstm_cell_405/Relu_1Relu5sequential_145/lstm_435/while/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_145/lstm_435/while/lstm_cell_405/mul_2Mul9sequential_145/lstm_435/while/lstm_cell_405/Sigmoid_2:y:0@sequential_145/lstm_435/while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_145/lstm_435/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_145_lstm_435_while_placeholder_1)sequential_145_lstm_435_while_placeholder5sequential_145/lstm_435/while/lstm_cell_405/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_145/lstm_435/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_145/lstm_435/while/addAddV2)sequential_145_lstm_435_while_placeholder,sequential_145/lstm_435/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_145/lstm_435/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_145/lstm_435/while/add_1AddV2Hsequential_145_lstm_435_while_sequential_145_lstm_435_while_loop_counter.sequential_145/lstm_435/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_145/lstm_435/while/IdentityIdentity'sequential_145/lstm_435/while/add_1:z:0#^sequential_145/lstm_435/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_435/while/Identity_1IdentityNsequential_145_lstm_435_while_sequential_145_lstm_435_while_maximum_iterations#^sequential_145/lstm_435/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_435/while/Identity_2Identity%sequential_145/lstm_435/while/add:z:0#^sequential_145/lstm_435/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_435/while/Identity_3IdentityRsequential_145/lstm_435/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_145/lstm_435/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_435/while/Identity_4Identity5sequential_145/lstm_435/while/lstm_cell_405/mul_2:z:0#^sequential_145/lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_145/lstm_435/while/Identity_5Identity5sequential_145/lstm_435/while/lstm_cell_405/add_1:z:0#^sequential_145/lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_145/lstm_435/while/NoOpNoOpC^sequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOpB^sequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOpD^sequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_145_lstm_435_while_identity/sequential_145/lstm_435/while/Identity:output:0"]
(sequential_145_lstm_435_while_identity_11sequential_145/lstm_435/while/Identity_1:output:0"]
(sequential_145_lstm_435_while_identity_21sequential_145/lstm_435/while/Identity_2:output:0"]
(sequential_145_lstm_435_while_identity_31sequential_145/lstm_435/while/Identity_3:output:0"]
(sequential_145_lstm_435_while_identity_41sequential_145/lstm_435/while/Identity_4:output:0"]
(sequential_145_lstm_435_while_identity_51sequential_145/lstm_435/while/Identity_5:output:0"?
Ksequential_145_lstm_435_while_lstm_cell_405_biasadd_readvariableop_resourceMsequential_145_lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0"?
Lsequential_145_lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resourceNsequential_145_lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0"?
Jsequential_145_lstm_435_while_lstm_cell_405_matmul_readvariableop_resourceLsequential_145_lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0"?
Esequential_145_lstm_435_while_sequential_145_lstm_435_strided_slice_1Gsequential_145_lstm_435_while_sequential_145_lstm_435_strided_slice_1_0"?
?sequential_145_lstm_435_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_435_tensorarrayunstack_tensorlistfromtensor?sequential_145_lstm_435_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_435_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOpBsequential_145/lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp2?
Asequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOpAsequential_145/lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp2?
Csequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOpCsequential_145/lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_436_layer_call_fn_2465083

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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2462615s
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466563

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
while_cond_2462380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462380___redundant_placeholder05
1while_while_cond_2462380___redundant_placeholder15
1while_while_cond_2462380___redundant_placeholder25
1while_while_cond_2462380___redundant_placeholder3
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465666

inputs?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2465582*
condR
while_cond_2465581*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_2461538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_405_2461562_0:	?0
while_lstm_cell_405_2461564_0:	d?,
while_lstm_cell_405_2461566_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_405_2461562:	?.
while_lstm_cell_405_2461564:	d?*
while_lstm_cell_405_2461566:	???+while/lstm_cell_405/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_405/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_405_2461562_0while_lstm_cell_405_2461564_0while_lstm_cell_405_2461566_0*
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461479?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_405/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_405/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_405/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_405/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_405_2461562while_lstm_cell_405_2461562_0"<
while_lstm_cell_405_2461564while_lstm_cell_405_2461564_0"<
while_lstm_cell_405_2461566while_lstm_cell_405_2461566_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_405/StatefulPartitionedCall+while/lstm_cell_405/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2464965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2464965___redundant_placeholder05
1while_while_cond_2464965___redundant_placeholder15
1while_while_cond_2464965___redundant_placeholder25
1while_while_cond_2464965___redundant_placeholder3
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
0__inference_sequential_145_layer_call_fn_2463431
lstm_435_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_435_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463379o
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
_user_specified_namelstm_435_input
?
?
*sequential_145_lstm_437_while_cond_2461175L
Hsequential_145_lstm_437_while_sequential_145_lstm_437_while_loop_counterR
Nsequential_145_lstm_437_while_sequential_145_lstm_437_while_maximum_iterations-
)sequential_145_lstm_437_while_placeholder/
+sequential_145_lstm_437_while_placeholder_1/
+sequential_145_lstm_437_while_placeholder_2/
+sequential_145_lstm_437_while_placeholder_3N
Jsequential_145_lstm_437_while_less_sequential_145_lstm_437_strided_slice_1e
asequential_145_lstm_437_while_sequential_145_lstm_437_while_cond_2461175___redundant_placeholder0e
asequential_145_lstm_437_while_sequential_145_lstm_437_while_cond_2461175___redundant_placeholder1e
asequential_145_lstm_437_while_sequential_145_lstm_437_while_cond_2461175___redundant_placeholder2e
asequential_145_lstm_437_while_sequential_145_lstm_437_while_cond_2461175___redundant_placeholder3*
&sequential_145_lstm_437_while_identity
?
"sequential_145/lstm_437/while/LessLess)sequential_145_lstm_437_while_placeholderJsequential_145_lstm_437_while_less_sequential_145_lstm_437_strided_slice_1*
T0*
_output_shapes
: {
&sequential_145/lstm_437/while/IdentityIdentity&sequential_145/lstm_437/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_145_lstm_437_while_identity/sequential_145/lstm_437/while/Identity:output:0*(
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
while_cond_2465152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465152___redundant_placeholder05
1while_while_cond_2465152___redundant_placeholder15
1while_while_cond_2465152___redundant_placeholder25
1while_while_cond_2465152___redundant_placeholder3
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
while_body_2465439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464907

inputs?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2464823*
condR
while_cond_2464822*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466465

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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466282

inputs>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2466198*
condR
while_cond_2466197*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463379

inputs#
lstm_435_2463352:	?#
lstm_435_2463354:	d?
lstm_435_2463356:	?#
lstm_436_2463359:	d?#
lstm_436_2463361:	2?
lstm_436_2463363:	?"
lstm_437_2463366:2("
lstm_437_2463368:
(
lstm_437_2463370:(#
dense_145_2463373:

dense_145_2463375:
identity??!dense_145/StatefulPartitionedCall? lstm_435/StatefulPartitionedCall? lstm_436/StatefulPartitionedCall? lstm_437/StatefulPartitionedCall?
 lstm_435/StatefulPartitionedCallStatefulPartitionedCallinputslstm_435_2463352lstm_435_2463354lstm_435_2463356*
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2463311?
 lstm_436/StatefulPartitionedCallStatefulPartitionedCall)lstm_435/StatefulPartitionedCall:output:0lstm_436_2463359lstm_436_2463361lstm_436_2463363*
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2463146?
 lstm_437/StatefulPartitionedCallStatefulPartitionedCall)lstm_436/StatefulPartitionedCall:output:0lstm_437_2463366lstm_437_2463368lstm_437_2463370*
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462981?
!dense_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_437/StatefulPartitionedCall:output:0dense_145_2463373dense_145_2463375*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783y
IdentityIdentity*dense_145/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_145/StatefulPartitionedCall!^lstm_435/StatefulPartitionedCall!^lstm_436/StatefulPartitionedCall!^lstm_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2D
 lstm_435/StatefulPartitionedCall lstm_435/StatefulPartitionedCall2D
 lstm_436/StatefulPartitionedCall lstm_436/StatefulPartitionedCall2D
 lstm_437/StatefulPartitionedCall lstm_437/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2462381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2462896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462896___redundant_placeholder05
1while_while_cond_2462896___redundant_placeholder15
1while_while_cond_2462896___redundant_placeholder25
1while_while_cond_2462896___redundant_placeholder3
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461683

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
*__inference_lstm_435_layer_call_fn_2464456
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2461607|
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
*__inference_lstm_437_layer_call_fn_2465677
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462116o
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462116

inputs'
lstm_cell_407_2462034:2('
lstm_cell_407_2462036:
(#
lstm_cell_407_2462038:(
identity??%lstm_cell_407/StatefulPartitionedCall?while;
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
%lstm_cell_407/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_407_2462034lstm_cell_407_2462036lstm_cell_407_2462038*
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462033n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_407_2462034lstm_cell_407_2462036lstm_cell_407_2462038*
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
while_body_2462047*
condR
while_cond_2462046*K
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
NoOpNoOp&^lstm_cell_407/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_407/StatefulPartitionedCall%lstm_cell_407/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_435_layer_call_and_return_conditional_losses_2463311

inputs?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2463227*
condR
while_cond_2463226*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_435_while_body_2463639.
*lstm_435_while_lstm_435_while_loop_counter4
0lstm_435_while_lstm_435_while_maximum_iterations
lstm_435_while_placeholder 
lstm_435_while_placeholder_1 
lstm_435_while_placeholder_2 
lstm_435_while_placeholder_3-
)lstm_435_while_lstm_435_strided_slice_1_0i
elstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0:	?R
?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?M
>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
lstm_435_while_identity
lstm_435_while_identity_1
lstm_435_while_identity_2
lstm_435_while_identity_3
lstm_435_while_identity_4
lstm_435_while_identity_5+
'lstm_435_while_lstm_435_strided_slice_1g
clstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensorN
;lstm_435_while_lstm_cell_405_matmul_readvariableop_resource:	?P
=lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource:	d?K
<lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource:	???3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp?2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp?4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp?
@lstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_435/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0lstm_435_while_placeholderIlstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_435/while/lstm_cell_405/MatMulMatMul9lstm_435/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_435/while/lstm_cell_405/MatMul_1MatMullstm_435_while_placeholder_2<lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_435/while/lstm_cell_405/addAddV2-lstm_435/while/lstm_cell_405/MatMul:product:0/lstm_435/while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_435/while/lstm_cell_405/BiasAddBiasAdd$lstm_435/while/lstm_cell_405/add:z:0;lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_435/while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_435/while/lstm_cell_405/splitSplit5lstm_435/while/lstm_cell_405/split/split_dim:output:0-lstm_435/while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_435/while/lstm_cell_405/SigmoidSigmoid+lstm_435/while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_435/while/lstm_cell_405/Sigmoid_1Sigmoid+lstm_435/while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_435/while/lstm_cell_405/mulMul*lstm_435/while/lstm_cell_405/Sigmoid_1:y:0lstm_435_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_435/while/lstm_cell_405/ReluRelu+lstm_435/while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/mul_1Mul(lstm_435/while/lstm_cell_405/Sigmoid:y:0/lstm_435/while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/add_1AddV2$lstm_435/while/lstm_cell_405/mul:z:0&lstm_435/while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_435/while/lstm_cell_405/Sigmoid_2Sigmoid+lstm_435/while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_435/while/lstm_cell_405/Relu_1Relu&lstm_435/while/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/mul_2Mul*lstm_435/while/lstm_cell_405/Sigmoid_2:y:01lstm_435/while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_435/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_435_while_placeholder_1lstm_435_while_placeholder&lstm_435/while/lstm_cell_405/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_435/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_435/while/addAddV2lstm_435_while_placeholderlstm_435/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_435/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_435/while/add_1AddV2*lstm_435_while_lstm_435_while_loop_counterlstm_435/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_435/while/IdentityIdentitylstm_435/while/add_1:z:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_1Identity0lstm_435_while_lstm_435_while_maximum_iterations^lstm_435/while/NoOp*
T0*
_output_shapes
: t
lstm_435/while/Identity_2Identitylstm_435/while/add:z:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_3IdentityClstm_435/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_4Identity&lstm_435/while/lstm_cell_405/mul_2:z:0^lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_435/while/Identity_5Identity&lstm_435/while/lstm_cell_405/add_1:z:0^lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_435/while/NoOpNoOp4^lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp3^lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp5^lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_435_while_identity lstm_435/while/Identity:output:0"?
lstm_435_while_identity_1"lstm_435/while/Identity_1:output:0"?
lstm_435_while_identity_2"lstm_435/while/Identity_2:output:0"?
lstm_435_while_identity_3"lstm_435/while/Identity_3:output:0"?
lstm_435_while_identity_4"lstm_435/while/Identity_4:output:0"?
lstm_435_while_identity_5"lstm_435/while/Identity_5:output:0"T
'lstm_435_while_lstm_435_strided_slice_1)lstm_435_while_lstm_435_strided_slice_1_0"~
<lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0"?
=lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0"|
;lstm_435_while_lstm_cell_405_matmul_readvariableop_resource=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0"?
clstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensorelstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp2h
2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp2l
4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461333

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

lstm_436_while_body_2464205.
*lstm_436_while_lstm_436_while_loop_counter4
0lstm_436_while_lstm_436_while_maximum_iterations
lstm_436_while_placeholder 
lstm_436_while_placeholder_1 
lstm_436_while_placeholder_2 
lstm_436_while_placeholder_3-
)lstm_436_while_lstm_436_strided_slice_1_0i
elstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0:	d?R
?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?M
>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
lstm_436_while_identity
lstm_436_while_identity_1
lstm_436_while_identity_2
lstm_436_while_identity_3
lstm_436_while_identity_4
lstm_436_while_identity_5+
'lstm_436_while_lstm_436_strided_slice_1g
clstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensorN
;lstm_436_while_lstm_cell_406_matmul_readvariableop_resource:	d?P
=lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource:	2?K
<lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource:	???3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp?2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp?4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp?
@lstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_436/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0lstm_436_while_placeholderIlstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_436/while/lstm_cell_406/MatMulMatMul9lstm_436/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_436/while/lstm_cell_406/MatMul_1MatMullstm_436_while_placeholder_2<lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_436/while/lstm_cell_406/addAddV2-lstm_436/while/lstm_cell_406/MatMul:product:0/lstm_436/while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_436/while/lstm_cell_406/BiasAddBiasAdd$lstm_436/while/lstm_cell_406/add:z:0;lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_436/while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_436/while/lstm_cell_406/splitSplit5lstm_436/while/lstm_cell_406/split/split_dim:output:0-lstm_436/while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_436/while/lstm_cell_406/SigmoidSigmoid+lstm_436/while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_436/while/lstm_cell_406/Sigmoid_1Sigmoid+lstm_436/while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_436/while/lstm_cell_406/mulMul*lstm_436/while/lstm_cell_406/Sigmoid_1:y:0lstm_436_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_436/while/lstm_cell_406/ReluRelu+lstm_436/while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/mul_1Mul(lstm_436/while/lstm_cell_406/Sigmoid:y:0/lstm_436/while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/add_1AddV2$lstm_436/while/lstm_cell_406/mul:z:0&lstm_436/while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_436/while/lstm_cell_406/Sigmoid_2Sigmoid+lstm_436/while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_436/while/lstm_cell_406/Relu_1Relu&lstm_436/while/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/mul_2Mul*lstm_436/while/lstm_cell_406/Sigmoid_2:y:01lstm_436/while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_436/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_436_while_placeholder_1lstm_436_while_placeholder&lstm_436/while/lstm_cell_406/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_436/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_436/while/addAddV2lstm_436_while_placeholderlstm_436/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_436/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_436/while/add_1AddV2*lstm_436_while_lstm_436_while_loop_counterlstm_436/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_436/while/IdentityIdentitylstm_436/while/add_1:z:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_1Identity0lstm_436_while_lstm_436_while_maximum_iterations^lstm_436/while/NoOp*
T0*
_output_shapes
: t
lstm_436/while/Identity_2Identitylstm_436/while/add:z:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_3IdentityClstm_436/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_4Identity&lstm_436/while/lstm_cell_406/mul_2:z:0^lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_436/while/Identity_5Identity&lstm_436/while/lstm_cell_406/add_1:z:0^lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_436/while/NoOpNoOp4^lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp3^lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp5^lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_436_while_identity lstm_436/while/Identity:output:0"?
lstm_436_while_identity_1"lstm_436/while/Identity_1:output:0"?
lstm_436_while_identity_2"lstm_436/while/Identity_2:output:0"?
lstm_436_while_identity_3"lstm_436/while/Identity_3:output:0"?
lstm_436_while_identity_4"lstm_436/while/Identity_4:output:0"?
lstm_436_while_identity_5"lstm_436/while/Identity_5:output:0"T
'lstm_436_while_lstm_436_strided_slice_1)lstm_436_while_lstm_436_strided_slice_1_0"~
<lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0"?
=lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0"|
;lstm_436_while_lstm_cell_406_matmul_readvariableop_resource=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0"?
clstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensorelstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp2h
2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp2l
4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2461697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_406_2461721_0:	d?0
while_lstm_cell_406_2461723_0:	2?,
while_lstm_cell_406_2461725_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_406_2461721:	d?.
while_lstm_cell_406_2461723:	2?*
while_lstm_cell_406_2461725:	???+while/lstm_cell_406/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_406/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_406_2461721_0while_lstm_cell_406_2461723_0while_lstm_cell_406_2461725_0*
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461683?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_406/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_406/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_406/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_406/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_406_2461721while_lstm_cell_406_2461721_0"<
while_lstm_cell_406_2461723while_lstm_cell_406_2461723_0"<
while_lstm_cell_406_2461725while_lstm_cell_406_2461725_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_406/StatefulPartitionedCall+while/lstm_cell_406/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_437_layer_call_fn_2465699

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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462765o
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
while_cond_2462680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462680___redundant_placeholder05
1while_while_cond_2462680___redundant_placeholder15
1while_while_cond_2462680___redundant_placeholder25
1while_while_cond_2462680___redundant_placeholder3
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
while_body_2464823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466367

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
?
*__inference_lstm_436_layer_call_fn_2465072
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2461957|
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
while_cond_2461887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2461887___redundant_placeholder05
1while_while_cond_2461887___redundant_placeholder15
1while_while_cond_2461887___redundant_placeholder25
1while_while_cond_2461887___redundant_placeholder3
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
while_body_2463227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464007

inputsH
5lstm_435_lstm_cell_405_matmul_readvariableop_resource:	?J
7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource:	d?E
6lstm_435_lstm_cell_405_biasadd_readvariableop_resource:	?H
5lstm_436_lstm_cell_406_matmul_readvariableop_resource:	d?J
7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource:	2?E
6lstm_436_lstm_cell_406_biasadd_readvariableop_resource:	?G
5lstm_437_lstm_cell_407_matmul_readvariableop_resource:2(I
7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource:
(D
6lstm_437_lstm_cell_407_biasadd_readvariableop_resource:(:
(dense_145_matmul_readvariableop_resource:
7
)dense_145_biasadd_readvariableop_resource:
identity?? dense_145/BiasAdd/ReadVariableOp?dense_145/MatMul/ReadVariableOp?-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp?,lstm_435/lstm_cell_405/MatMul/ReadVariableOp?.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp?lstm_435/while?-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp?,lstm_436/lstm_cell_406/MatMul/ReadVariableOp?.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp?lstm_436/while?-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp?,lstm_437/lstm_cell_407/MatMul/ReadVariableOp?.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp?lstm_437/whileD
lstm_435/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_sliceStridedSlicelstm_435/Shape:output:0%lstm_435/strided_slice/stack:output:0'lstm_435/strided_slice/stack_1:output:0'lstm_435/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_435/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_435/zeros/packedPacklstm_435/strided_slice:output:0 lstm_435/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_435/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_435/zerosFilllstm_435/zeros/packed:output:0lstm_435/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_435/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_435/zeros_1/packedPacklstm_435/strided_slice:output:0"lstm_435/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_435/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_435/zeros_1Fill lstm_435/zeros_1/packed:output:0lstm_435/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_435/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_435/transpose	Transposeinputs lstm_435/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_435/Shape_1Shapelstm_435/transpose:y:0*
T0*
_output_shapes
:h
lstm_435/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_435/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_1StridedSlicelstm_435/Shape_1:output:0'lstm_435/strided_slice_1/stack:output:0)lstm_435/strided_slice_1/stack_1:output:0)lstm_435/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_435/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_435/TensorArrayV2TensorListReserve-lstm_435/TensorArrayV2/element_shape:output:0!lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_435/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_435/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_435/transpose:y:0Glstm_435/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_435/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_435/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_2StridedSlicelstm_435/transpose:y:0'lstm_435/strided_slice_2/stack:output:0)lstm_435/strided_slice_2/stack_1:output:0)lstm_435/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_435/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp5lstm_435_lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_435/lstm_cell_405/MatMulMatMul!lstm_435/strided_slice_2:output:04lstm_435/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_435/lstm_cell_405/MatMul_1MatMullstm_435/zeros:output:06lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_435/lstm_cell_405/addAddV2'lstm_435/lstm_cell_405/MatMul:product:0)lstm_435/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp6lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_435/lstm_cell_405/BiasAddBiasAddlstm_435/lstm_cell_405/add:z:05lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_435/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_435/lstm_cell_405/splitSplit/lstm_435/lstm_cell_405/split/split_dim:output:0'lstm_435/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_435/lstm_cell_405/SigmoidSigmoid%lstm_435/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_435/lstm_cell_405/Sigmoid_1Sigmoid%lstm_435/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mulMul$lstm_435/lstm_cell_405/Sigmoid_1:y:0lstm_435/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_435/lstm_cell_405/ReluRelu%lstm_435/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mul_1Mul"lstm_435/lstm_cell_405/Sigmoid:y:0)lstm_435/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/add_1AddV2lstm_435/lstm_cell_405/mul:z:0 lstm_435/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_435/lstm_cell_405/Sigmoid_2Sigmoid%lstm_435/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_435/lstm_cell_405/Relu_1Relu lstm_435/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mul_2Mul$lstm_435/lstm_cell_405/Sigmoid_2:y:0+lstm_435/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_435/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_435/TensorArrayV2_1TensorListReserve/lstm_435/TensorArrayV2_1/element_shape:output:0!lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_435/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_435/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_435/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_435/whileWhile$lstm_435/while/loop_counter:output:0*lstm_435/while/maximum_iterations:output:0lstm_435/time:output:0!lstm_435/TensorArrayV2_1:handle:0lstm_435/zeros:output:0lstm_435/zeros_1:output:0!lstm_435/strided_slice_1:output:0@lstm_435/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_435_lstm_cell_405_matmul_readvariableop_resource7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource6lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
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
lstm_435_while_body_2463639*'
condR
lstm_435_while_cond_2463638*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_435/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_435/TensorArrayV2Stack/TensorListStackTensorListStacklstm_435/while:output:3Blstm_435/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_435/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_435/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_3StridedSlice4lstm_435/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_435/strided_slice_3/stack:output:0)lstm_435/strided_slice_3/stack_1:output:0)lstm_435/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_435/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_435/transpose_1	Transpose4lstm_435/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_435/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_435/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_436/ShapeShapelstm_435/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_sliceStridedSlicelstm_436/Shape:output:0%lstm_436/strided_slice/stack:output:0'lstm_436/strided_slice/stack_1:output:0'lstm_436/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_436/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_436/zeros/packedPacklstm_436/strided_slice:output:0 lstm_436/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_436/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_436/zerosFilllstm_436/zeros/packed:output:0lstm_436/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_436/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_436/zeros_1/packedPacklstm_436/strided_slice:output:0"lstm_436/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_436/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_436/zeros_1Fill lstm_436/zeros_1/packed:output:0lstm_436/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_436/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_436/transpose	Transposelstm_435/transpose_1:y:0 lstm_436/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_436/Shape_1Shapelstm_436/transpose:y:0*
T0*
_output_shapes
:h
lstm_436/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_436/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_1StridedSlicelstm_436/Shape_1:output:0'lstm_436/strided_slice_1/stack:output:0)lstm_436/strided_slice_1/stack_1:output:0)lstm_436/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_436/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_436/TensorArrayV2TensorListReserve-lstm_436/TensorArrayV2/element_shape:output:0!lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_436/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_436/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_436/transpose:y:0Glstm_436/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_436/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_436/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_2StridedSlicelstm_436/transpose:y:0'lstm_436/strided_slice_2/stack:output:0)lstm_436/strided_slice_2/stack_1:output:0)lstm_436/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_436/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp5lstm_436_lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_436/lstm_cell_406/MatMulMatMul!lstm_436/strided_slice_2:output:04lstm_436/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_436/lstm_cell_406/MatMul_1MatMullstm_436/zeros:output:06lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_436/lstm_cell_406/addAddV2'lstm_436/lstm_cell_406/MatMul:product:0)lstm_436/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp6lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_436/lstm_cell_406/BiasAddBiasAddlstm_436/lstm_cell_406/add:z:05lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_436/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_436/lstm_cell_406/splitSplit/lstm_436/lstm_cell_406/split/split_dim:output:0'lstm_436/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_436/lstm_cell_406/SigmoidSigmoid%lstm_436/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_436/lstm_cell_406/Sigmoid_1Sigmoid%lstm_436/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mulMul$lstm_436/lstm_cell_406/Sigmoid_1:y:0lstm_436/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_436/lstm_cell_406/ReluRelu%lstm_436/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mul_1Mul"lstm_436/lstm_cell_406/Sigmoid:y:0)lstm_436/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/add_1AddV2lstm_436/lstm_cell_406/mul:z:0 lstm_436/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_436/lstm_cell_406/Sigmoid_2Sigmoid%lstm_436/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_436/lstm_cell_406/Relu_1Relu lstm_436/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mul_2Mul$lstm_436/lstm_cell_406/Sigmoid_2:y:0+lstm_436/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_436/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_436/TensorArrayV2_1TensorListReserve/lstm_436/TensorArrayV2_1/element_shape:output:0!lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_436/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_436/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_436/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_436/whileWhile$lstm_436/while/loop_counter:output:0*lstm_436/while/maximum_iterations:output:0lstm_436/time:output:0!lstm_436/TensorArrayV2_1:handle:0lstm_436/zeros:output:0lstm_436/zeros_1:output:0!lstm_436/strided_slice_1:output:0@lstm_436/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_436_lstm_cell_406_matmul_readvariableop_resource7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource6lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
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
lstm_436_while_body_2463778*'
condR
lstm_436_while_cond_2463777*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_436/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_436/TensorArrayV2Stack/TensorListStackTensorListStacklstm_436/while:output:3Blstm_436/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_436/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_436/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_3StridedSlice4lstm_436/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_436/strided_slice_3/stack:output:0)lstm_436/strided_slice_3/stack_1:output:0)lstm_436/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_436/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_436/transpose_1	Transpose4lstm_436/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_436/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_436/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_437/ShapeShapelstm_436/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_sliceStridedSlicelstm_437/Shape:output:0%lstm_437/strided_slice/stack:output:0'lstm_437/strided_slice/stack_1:output:0'lstm_437/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_437/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_437/zeros/packedPacklstm_437/strided_slice:output:0 lstm_437/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_437/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_437/zerosFilllstm_437/zeros/packed:output:0lstm_437/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_437/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_437/zeros_1/packedPacklstm_437/strided_slice:output:0"lstm_437/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_437/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_437/zeros_1Fill lstm_437/zeros_1/packed:output:0lstm_437/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_437/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_437/transpose	Transposelstm_436/transpose_1:y:0 lstm_437/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_437/Shape_1Shapelstm_437/transpose:y:0*
T0*
_output_shapes
:h
lstm_437/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_437/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_1StridedSlicelstm_437/Shape_1:output:0'lstm_437/strided_slice_1/stack:output:0)lstm_437/strided_slice_1/stack_1:output:0)lstm_437/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_437/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_437/TensorArrayV2TensorListReserve-lstm_437/TensorArrayV2/element_shape:output:0!lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_437/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_437/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_437/transpose:y:0Glstm_437/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_437/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_437/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_2StridedSlicelstm_437/transpose:y:0'lstm_437/strided_slice_2/stack:output:0)lstm_437/strided_slice_2/stack_1:output:0)lstm_437/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_437/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp5lstm_437_lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_437/lstm_cell_407/MatMulMatMul!lstm_437/strided_slice_2:output:04lstm_437/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_437/lstm_cell_407/MatMul_1MatMullstm_437/zeros:output:06lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_437/lstm_cell_407/addAddV2'lstm_437/lstm_cell_407/MatMul:product:0)lstm_437/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp6lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_437/lstm_cell_407/BiasAddBiasAddlstm_437/lstm_cell_407/add:z:05lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_437/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_437/lstm_cell_407/splitSplit/lstm_437/lstm_cell_407/split/split_dim:output:0'lstm_437/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_437/lstm_cell_407/SigmoidSigmoid%lstm_437/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_437/lstm_cell_407/Sigmoid_1Sigmoid%lstm_437/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mulMul$lstm_437/lstm_cell_407/Sigmoid_1:y:0lstm_437/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_437/lstm_cell_407/ReluRelu%lstm_437/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mul_1Mul"lstm_437/lstm_cell_407/Sigmoid:y:0)lstm_437/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/add_1AddV2lstm_437/lstm_cell_407/mul:z:0 lstm_437/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_437/lstm_cell_407/Sigmoid_2Sigmoid%lstm_437/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_437/lstm_cell_407/Relu_1Relu lstm_437/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mul_2Mul$lstm_437/lstm_cell_407/Sigmoid_2:y:0+lstm_437/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_437/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_437/TensorArrayV2_1TensorListReserve/lstm_437/TensorArrayV2_1/element_shape:output:0!lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_437/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_437/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_437/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_437/whileWhile$lstm_437/while/loop_counter:output:0*lstm_437/while/maximum_iterations:output:0lstm_437/time:output:0!lstm_437/TensorArrayV2_1:handle:0lstm_437/zeros:output:0lstm_437/zeros_1:output:0!lstm_437/strided_slice_1:output:0@lstm_437/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_437_lstm_cell_407_matmul_readvariableop_resource7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource6lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
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
lstm_437_while_body_2463917*'
condR
lstm_437_while_cond_2463916*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_437/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_437/TensorArrayV2Stack/TensorListStackTensorListStacklstm_437/while:output:3Blstm_437/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_437/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_437/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_3StridedSlice4lstm_437/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_437/strided_slice_3/stack:output:0)lstm_437/strided_slice_3/stack_1:output:0)lstm_437/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_437/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_437/transpose_1	Transpose4lstm_437/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_437/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_437/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_145/MatMulMatMul!lstm_437/strided_slice_3:output:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_145/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp.^lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp-^lstm_435/lstm_cell_405/MatMul/ReadVariableOp/^lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp^lstm_435/while.^lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp-^lstm_436/lstm_cell_406/MatMul/ReadVariableOp/^lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp^lstm_436/while.^lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp-^lstm_437/lstm_cell_407/MatMul/ReadVariableOp/^lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp^lstm_437/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2^
-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp2\
,lstm_435/lstm_cell_405/MatMul/ReadVariableOp,lstm_435/lstm_cell_405/MatMul/ReadVariableOp2`
.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp2 
lstm_435/whilelstm_435/while2^
-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp2\
,lstm_436/lstm_cell_406/MatMul/ReadVariableOp,lstm_436/lstm_cell_406/MatMul/ReadVariableOp2`
.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp2 
lstm_436/whilelstm_436/while2^
-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp2\
,lstm_437/lstm_cell_407/MatMul/ReadVariableOp,lstm_437/lstm_cell_407/MatMul/ReadVariableOp2`
.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp2 
lstm_437/whilelstm_437/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_407_layer_call_fn_2466514

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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462033o
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
?C
?

lstm_437_while_body_2464344.
*lstm_437_while_lstm_437_while_loop_counter4
0lstm_437_while_lstm_437_while_maximum_iterations
lstm_437_while_placeholder 
lstm_437_while_placeholder_1 
lstm_437_while_placeholder_2 
lstm_437_while_placeholder_3-
)lstm_437_while_lstm_437_strided_slice_1_0i
elstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0:2(Q
?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(L
>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0:(
lstm_437_while_identity
lstm_437_while_identity_1
lstm_437_while_identity_2
lstm_437_while_identity_3
lstm_437_while_identity_4
lstm_437_while_identity_5+
'lstm_437_while_lstm_437_strided_slice_1g
clstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensorM
;lstm_437_while_lstm_cell_407_matmul_readvariableop_resource:2(O
=lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource:
(J
<lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource:(??3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp?2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp?4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp?
@lstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_437/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0lstm_437_while_placeholderIlstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_437/while/lstm_cell_407/MatMulMatMul9lstm_437/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_437/while/lstm_cell_407/MatMul_1MatMullstm_437_while_placeholder_2<lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_437/while/lstm_cell_407/addAddV2-lstm_437/while/lstm_cell_407/MatMul:product:0/lstm_437/while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_437/while/lstm_cell_407/BiasAddBiasAdd$lstm_437/while/lstm_cell_407/add:z:0;lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_437/while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_437/while/lstm_cell_407/splitSplit5lstm_437/while/lstm_cell_407/split/split_dim:output:0-lstm_437/while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_437/while/lstm_cell_407/SigmoidSigmoid+lstm_437/while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_437/while/lstm_cell_407/Sigmoid_1Sigmoid+lstm_437/while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_437/while/lstm_cell_407/mulMul*lstm_437/while/lstm_cell_407/Sigmoid_1:y:0lstm_437_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_437/while/lstm_cell_407/ReluRelu+lstm_437/while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/mul_1Mul(lstm_437/while/lstm_cell_407/Sigmoid:y:0/lstm_437/while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/add_1AddV2$lstm_437/while/lstm_cell_407/mul:z:0&lstm_437/while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_437/while/lstm_cell_407/Sigmoid_2Sigmoid+lstm_437/while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_437/while/lstm_cell_407/Relu_1Relu&lstm_437/while/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/mul_2Mul*lstm_437/while/lstm_cell_407/Sigmoid_2:y:01lstm_437/while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_437/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_437_while_placeholder_1lstm_437_while_placeholder&lstm_437/while/lstm_cell_407/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_437/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_437/while/addAddV2lstm_437_while_placeholderlstm_437/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_437/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_437/while/add_1AddV2*lstm_437_while_lstm_437_while_loop_counterlstm_437/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_437/while/IdentityIdentitylstm_437/while/add_1:z:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_1Identity0lstm_437_while_lstm_437_while_maximum_iterations^lstm_437/while/NoOp*
T0*
_output_shapes
: t
lstm_437/while/Identity_2Identitylstm_437/while/add:z:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_3IdentityClstm_437/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_4Identity&lstm_437/while/lstm_cell_407/mul_2:z:0^lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_437/while/Identity_5Identity&lstm_437/while/lstm_cell_407/add_1:z:0^lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_437/while/NoOpNoOp4^lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp3^lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp5^lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_437_while_identity lstm_437/while/Identity:output:0"?
lstm_437_while_identity_1"lstm_437/while/Identity_1:output:0"?
lstm_437_while_identity_2"lstm_437/while/Identity_2:output:0"?
lstm_437_while_identity_3"lstm_437/while/Identity_3:output:0"?
lstm_437_while_identity_4"lstm_437/while/Identity_4:output:0"?
lstm_437_while_identity_5"lstm_437/while/Identity_5:output:0"T
'lstm_437_while_lstm_437_strided_slice_1)lstm_437_while_lstm_437_strided_slice_1_0"~
<lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0"?
=lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0"|
;lstm_437_while_lstm_cell_407_matmul_readvariableop_resource=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0"?
clstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensorelstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp2h
2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp2l
4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462307

inputs'
lstm_cell_407_2462225:2('
lstm_cell_407_2462227:
(#
lstm_cell_407_2462229:(
identity??%lstm_cell_407/StatefulPartitionedCall?while;
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
%lstm_cell_407/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_407_2462225lstm_cell_407_2462227lstm_cell_407_2462229*
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462179n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_407_2462225lstm_cell_407_2462227lstm_cell_407_2462229*
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
while_body_2462238*
condR
while_cond_2462237*K
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
NoOpNoOp&^lstm_cell_407/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_407/StatefulPartitionedCall%lstm_cell_407/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?T
?
*sequential_145_lstm_436_while_body_2461037L
Hsequential_145_lstm_436_while_sequential_145_lstm_436_while_loop_counterR
Nsequential_145_lstm_436_while_sequential_145_lstm_436_while_maximum_iterations-
)sequential_145_lstm_436_while_placeholder/
+sequential_145_lstm_436_while_placeholder_1/
+sequential_145_lstm_436_while_placeholder_2/
+sequential_145_lstm_436_while_placeholder_3K
Gsequential_145_lstm_436_while_sequential_145_lstm_436_strided_slice_1_0?
?sequential_145_lstm_436_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_436_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_145_lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0:	d?a
Nsequential_145_lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?\
Msequential_145_lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0:	?*
&sequential_145_lstm_436_while_identity,
(sequential_145_lstm_436_while_identity_1,
(sequential_145_lstm_436_while_identity_2,
(sequential_145_lstm_436_while_identity_3,
(sequential_145_lstm_436_while_identity_4,
(sequential_145_lstm_436_while_identity_5I
Esequential_145_lstm_436_while_sequential_145_lstm_436_strided_slice_1?
?sequential_145_lstm_436_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_436_tensorarrayunstack_tensorlistfromtensor]
Jsequential_145_lstm_436_while_lstm_cell_406_matmul_readvariableop_resource:	d?_
Lsequential_145_lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource:	2?Z
Ksequential_145_lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource:	???Bsequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp?Asequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp?Csequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp?
Osequential_145/lstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_145/lstm_436/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_145_lstm_436_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_436_tensorarrayunstack_tensorlistfromtensor_0)sequential_145_lstm_436_while_placeholderXsequential_145/lstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOpLsequential_145_lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_145/lstm_436/while/lstm_cell_406/MatMulMatMulHsequential_145/lstm_436/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOpNsequential_145_lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_145/lstm_436/while/lstm_cell_406/MatMul_1MatMul+sequential_145_lstm_436_while_placeholder_2Ksequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_145/lstm_436/while/lstm_cell_406/addAddV2<sequential_145/lstm_436/while/lstm_cell_406/MatMul:product:0>sequential_145/lstm_436/while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOpMsequential_145_lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_145/lstm_436/while/lstm_cell_406/BiasAddBiasAdd3sequential_145/lstm_436/while/lstm_cell_406/add:z:0Jsequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_145/lstm_436/while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_145/lstm_436/while/lstm_cell_406/splitSplitDsequential_145/lstm_436/while/lstm_cell_406/split/split_dim:output:0<sequential_145/lstm_436/while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_145/lstm_436/while/lstm_cell_406/SigmoidSigmoid:sequential_145/lstm_436/while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_145/lstm_436/while/lstm_cell_406/Sigmoid_1Sigmoid:sequential_145/lstm_436/while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_145/lstm_436/while/lstm_cell_406/mulMul9sequential_145/lstm_436/while/lstm_cell_406/Sigmoid_1:y:0+sequential_145_lstm_436_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_145/lstm_436/while/lstm_cell_406/ReluRelu:sequential_145/lstm_436/while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_145/lstm_436/while/lstm_cell_406/mul_1Mul7sequential_145/lstm_436/while/lstm_cell_406/Sigmoid:y:0>sequential_145/lstm_436/while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_145/lstm_436/while/lstm_cell_406/add_1AddV23sequential_145/lstm_436/while/lstm_cell_406/mul:z:05sequential_145/lstm_436/while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_145/lstm_436/while/lstm_cell_406/Sigmoid_2Sigmoid:sequential_145/lstm_436/while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_145/lstm_436/while/lstm_cell_406/Relu_1Relu5sequential_145/lstm_436/while/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_145/lstm_436/while/lstm_cell_406/mul_2Mul9sequential_145/lstm_436/while/lstm_cell_406/Sigmoid_2:y:0@sequential_145/lstm_436/while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_145/lstm_436/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_145_lstm_436_while_placeholder_1)sequential_145_lstm_436_while_placeholder5sequential_145/lstm_436/while/lstm_cell_406/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_145/lstm_436/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_145/lstm_436/while/addAddV2)sequential_145_lstm_436_while_placeholder,sequential_145/lstm_436/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_145/lstm_436/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_145/lstm_436/while/add_1AddV2Hsequential_145_lstm_436_while_sequential_145_lstm_436_while_loop_counter.sequential_145/lstm_436/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_145/lstm_436/while/IdentityIdentity'sequential_145/lstm_436/while/add_1:z:0#^sequential_145/lstm_436/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_436/while/Identity_1IdentityNsequential_145_lstm_436_while_sequential_145_lstm_436_while_maximum_iterations#^sequential_145/lstm_436/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_436/while/Identity_2Identity%sequential_145/lstm_436/while/add:z:0#^sequential_145/lstm_436/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_436/while/Identity_3IdentityRsequential_145/lstm_436/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_145/lstm_436/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_436/while/Identity_4Identity5sequential_145/lstm_436/while/lstm_cell_406/mul_2:z:0#^sequential_145/lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_145/lstm_436/while/Identity_5Identity5sequential_145/lstm_436/while/lstm_cell_406/add_1:z:0#^sequential_145/lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_145/lstm_436/while/NoOpNoOpC^sequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOpB^sequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOpD^sequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_145_lstm_436_while_identity/sequential_145/lstm_436/while/Identity:output:0"]
(sequential_145_lstm_436_while_identity_11sequential_145/lstm_436/while/Identity_1:output:0"]
(sequential_145_lstm_436_while_identity_21sequential_145/lstm_436/while/Identity_2:output:0"]
(sequential_145_lstm_436_while_identity_31sequential_145/lstm_436/while/Identity_3:output:0"]
(sequential_145_lstm_436_while_identity_41sequential_145/lstm_436/while/Identity_4:output:0"]
(sequential_145_lstm_436_while_identity_51sequential_145/lstm_436/while/Identity_5:output:0"?
Ksequential_145_lstm_436_while_lstm_cell_406_biasadd_readvariableop_resourceMsequential_145_lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0"?
Lsequential_145_lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resourceNsequential_145_lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0"?
Jsequential_145_lstm_436_while_lstm_cell_406_matmul_readvariableop_resourceLsequential_145_lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0"?
Esequential_145_lstm_436_while_sequential_145_lstm_436_strided_slice_1Gsequential_145_lstm_436_while_sequential_145_lstm_436_strided_slice_1_0"?
?sequential_145_lstm_436_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_436_tensorarrayunstack_tensorlistfromtensor?sequential_145_lstm_436_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_436_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOpBsequential_145/lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp2?
Asequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOpAsequential_145/lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp2?
Csequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOpCsequential_145/lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2462465

inputs?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2462381*
condR
while_cond_2462380*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2465768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465768___redundant_placeholder05
1while_while_cond_2465768___redundant_placeholder15
1while_while_cond_2465768___redundant_placeholder25
1while_while_cond_2465768___redundant_placeholder3
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
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2462790

inputs#
lstm_435_2462466:	?#
lstm_435_2462468:	d?
lstm_435_2462470:	?#
lstm_436_2462616:	d?#
lstm_436_2462618:	2?
lstm_436_2462620:	?"
lstm_437_2462766:2("
lstm_437_2462768:
(
lstm_437_2462770:(#
dense_145_2462784:

dense_145_2462786:
identity??!dense_145/StatefulPartitionedCall? lstm_435/StatefulPartitionedCall? lstm_436/StatefulPartitionedCall? lstm_437/StatefulPartitionedCall?
 lstm_435/StatefulPartitionedCallStatefulPartitionedCallinputslstm_435_2462466lstm_435_2462468lstm_435_2462470*
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2462465?
 lstm_436/StatefulPartitionedCallStatefulPartitionedCall)lstm_435/StatefulPartitionedCall:output:0lstm_436_2462616lstm_436_2462618lstm_436_2462620*
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2462615?
 lstm_437/StatefulPartitionedCallStatefulPartitionedCall)lstm_436/StatefulPartitionedCall:output:0lstm_437_2462766lstm_437_2462768lstm_437_2462770*
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462765?
!dense_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_437/StatefulPartitionedCall:output:0dense_145_2462784dense_145_2462786*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783y
IdentityIdentity*dense_145/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_145/StatefulPartitionedCall!^lstm_435/StatefulPartitionedCall!^lstm_436/StatefulPartitionedCall!^lstm_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2D
 lstm_435/StatefulPartitionedCall lstm_435/StatefulPartitionedCall2D
 lstm_436/StatefulPartitionedCall lstm_436/StatefulPartitionedCall2D
 lstm_437/StatefulPartitionedCall lstm_437/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_2466738
file_prefix/
+savev2_dense_145_kernel_read_readvariableop-
)savev2_dense_145_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_435_lstm_cell_435_kernel_read_readvariableopF
Bsavev2_lstm_435_lstm_cell_435_recurrent_kernel_read_readvariableop:
6savev2_lstm_435_lstm_cell_435_bias_read_readvariableop<
8savev2_lstm_436_lstm_cell_436_kernel_read_readvariableopF
Bsavev2_lstm_436_lstm_cell_436_recurrent_kernel_read_readvariableop:
6savev2_lstm_436_lstm_cell_436_bias_read_readvariableop<
8savev2_lstm_437_lstm_cell_437_kernel_read_readvariableopF
Bsavev2_lstm_437_lstm_cell_437_recurrent_kernel_read_readvariableop:
6savev2_lstm_437_lstm_cell_437_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_145_kernel_m_read_readvariableop4
0savev2_adam_dense_145_bias_m_read_readvariableopC
?savev2_adam_lstm_435_lstm_cell_435_kernel_m_read_readvariableopM
Isavev2_adam_lstm_435_lstm_cell_435_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_435_lstm_cell_435_bias_m_read_readvariableopC
?savev2_adam_lstm_436_lstm_cell_436_kernel_m_read_readvariableopM
Isavev2_adam_lstm_436_lstm_cell_436_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_436_lstm_cell_436_bias_m_read_readvariableopC
?savev2_adam_lstm_437_lstm_cell_437_kernel_m_read_readvariableopM
Isavev2_adam_lstm_437_lstm_cell_437_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_437_lstm_cell_437_bias_m_read_readvariableop6
2savev2_adam_dense_145_kernel_v_read_readvariableop4
0savev2_adam_dense_145_bias_v_read_readvariableopC
?savev2_adam_lstm_435_lstm_cell_435_kernel_v_read_readvariableopM
Isavev2_adam_lstm_435_lstm_cell_435_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_435_lstm_cell_435_bias_v_read_readvariableopC
?savev2_adam_lstm_436_lstm_cell_436_kernel_v_read_readvariableopM
Isavev2_adam_lstm_436_lstm_cell_436_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_436_lstm_cell_436_bias_v_read_readvariableopC
?savev2_adam_lstm_437_lstm_cell_437_kernel_v_read_readvariableopM
Isavev2_adam_lstm_437_lstm_cell_437_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_437_lstm_cell_437_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_145_kernel_read_readvariableop)savev2_dense_145_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_435_lstm_cell_435_kernel_read_readvariableopBsavev2_lstm_435_lstm_cell_435_recurrent_kernel_read_readvariableop6savev2_lstm_435_lstm_cell_435_bias_read_readvariableop8savev2_lstm_436_lstm_cell_436_kernel_read_readvariableopBsavev2_lstm_436_lstm_cell_436_recurrent_kernel_read_readvariableop6savev2_lstm_436_lstm_cell_436_bias_read_readvariableop8savev2_lstm_437_lstm_cell_437_kernel_read_readvariableopBsavev2_lstm_437_lstm_cell_437_recurrent_kernel_read_readvariableop6savev2_lstm_437_lstm_cell_437_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_145_kernel_m_read_readvariableop0savev2_adam_dense_145_bias_m_read_readvariableop?savev2_adam_lstm_435_lstm_cell_435_kernel_m_read_readvariableopIsavev2_adam_lstm_435_lstm_cell_435_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_435_lstm_cell_435_bias_m_read_readvariableop?savev2_adam_lstm_436_lstm_cell_436_kernel_m_read_readvariableopIsavev2_adam_lstm_436_lstm_cell_436_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_436_lstm_cell_436_bias_m_read_readvariableop?savev2_adam_lstm_437_lstm_cell_437_kernel_m_read_readvariableopIsavev2_adam_lstm_437_lstm_cell_437_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_437_lstm_cell_437_bias_m_read_readvariableop2savev2_adam_dense_145_kernel_v_read_readvariableop0savev2_adam_dense_145_bias_v_read_readvariableop?savev2_adam_lstm_435_lstm_cell_435_kernel_v_read_readvariableopIsavev2_adam_lstm_435_lstm_cell_435_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_435_lstm_cell_435_bias_v_read_readvariableop?savev2_adam_lstm_436_lstm_cell_436_kernel_v_read_readvariableopIsavev2_adam_lstm_436_lstm_cell_436_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_436_lstm_cell_436_bias_v_read_readvariableop?savev2_adam_lstm_437_lstm_cell_437_kernel_v_read_readvariableopIsavev2_adam_lstm_437_lstm_cell_437_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_437_lstm_cell_437_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783

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
?
E__inference_lstm_436_layer_call_and_return_conditional_losses_2461957

inputs(
lstm_cell_406_2461875:	d?(
lstm_cell_406_2461877:	2?$
lstm_cell_406_2461879:	?
identity??%lstm_cell_406/StatefulPartitionedCall?while;
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
%lstm_cell_406/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_406_2461875lstm_cell_406_2461877lstm_cell_406_2461879*
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461829n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_406_2461875lstm_cell_406_2461877lstm_cell_406_2461879*
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
while_body_2461888*
condR
while_cond_2461887*K
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
NoOpNoOp&^lstm_cell_406/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_406/StatefulPartitionedCall%lstm_cell_406/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_435_while_cond_2464065.
*lstm_435_while_lstm_435_while_loop_counter4
0lstm_435_while_lstm_435_while_maximum_iterations
lstm_435_while_placeholder 
lstm_435_while_placeholder_1 
lstm_435_while_placeholder_2 
lstm_435_while_placeholder_30
,lstm_435_while_less_lstm_435_strided_slice_1G
Clstm_435_while_lstm_435_while_cond_2464065___redundant_placeholder0G
Clstm_435_while_lstm_435_while_cond_2464065___redundant_placeholder1G
Clstm_435_while_lstm_435_while_cond_2464065___redundant_placeholder2G
Clstm_435_while_lstm_435_while_cond_2464065___redundant_placeholder3
lstm_435_while_identity
?
lstm_435/while/LessLesslstm_435_while_placeholder,lstm_435_while_less_lstm_435_strided_slice_1*
T0*
_output_shapes
: ]
lstm_435/while/IdentityIdentitylstm_435/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_435_while_identity lstm_435/while/Identity:output:0*(
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
0__inference_sequential_145_layer_call_fn_2462815
lstm_435_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_435_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2462790o
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
_user_specified_namelstm_435_input
?8
?
E__inference_lstm_435_layer_call_and_return_conditional_losses_2461416

inputs(
lstm_cell_405_2461334:	?(
lstm_cell_405_2461336:	d?$
lstm_cell_405_2461338:	?
identity??%lstm_cell_405/StatefulPartitionedCall?while;
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
%lstm_cell_405/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_405_2461334lstm_cell_405_2461336lstm_cell_405_2461338*
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461333n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_405_2461334lstm_cell_405_2461336lstm_cell_405_2461338*
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
while_body_2461347*
condR
while_cond_2461346*K
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
NoOpNoOp&^lstm_cell_405/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_405/StatefulPartitionedCall%lstm_cell_405/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461829

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

?
%__inference_signature_wrapper_2463526
lstm_435_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_435_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2461266o
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
_user_specified_namelstm_435_input
?
?
while_cond_2461346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2461346___redundant_placeholder05
1while_while_cond_2461346___redundant_placeholder15
1while_while_cond_2461346___redundant_placeholder25
1while_while_cond_2461346___redundant_placeholder3
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
*sequential_145_lstm_436_while_cond_2461036L
Hsequential_145_lstm_436_while_sequential_145_lstm_436_while_loop_counterR
Nsequential_145_lstm_436_while_sequential_145_lstm_436_while_maximum_iterations-
)sequential_145_lstm_436_while_placeholder/
+sequential_145_lstm_436_while_placeholder_1/
+sequential_145_lstm_436_while_placeholder_2/
+sequential_145_lstm_436_while_placeholder_3N
Jsequential_145_lstm_436_while_less_sequential_145_lstm_436_strided_slice_1e
asequential_145_lstm_436_while_sequential_145_lstm_436_while_cond_2461036___redundant_placeholder0e
asequential_145_lstm_436_while_sequential_145_lstm_436_while_cond_2461036___redundant_placeholder1e
asequential_145_lstm_436_while_sequential_145_lstm_436_while_cond_2461036___redundant_placeholder2e
asequential_145_lstm_436_while_sequential_145_lstm_436_while_cond_2461036___redundant_placeholder3*
&sequential_145_lstm_436_while_identity
?
"sequential_145/lstm_436/while/LessLess)sequential_145_lstm_436_while_placeholderJsequential_145_lstm_436_while_less_sequential_145_lstm_436_strided_slice_1*
T0*
_output_shapes
: {
&sequential_145/lstm_436/while/IdentityIdentity&sequential_145/lstm_436/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_145_lstm_436_while_identity/sequential_145/lstm_436/while/Identity:output:0*(
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2463146

inputs?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2463062*
condR
while_cond_2463061*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464621
inputs_0?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2464537*
condR
while_cond_2464536*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_145_lstm_435_while_cond_2460897L
Hsequential_145_lstm_435_while_sequential_145_lstm_435_while_loop_counterR
Nsequential_145_lstm_435_while_sequential_145_lstm_435_while_maximum_iterations-
)sequential_145_lstm_435_while_placeholder/
+sequential_145_lstm_435_while_placeholder_1/
+sequential_145_lstm_435_while_placeholder_2/
+sequential_145_lstm_435_while_placeholder_3N
Jsequential_145_lstm_435_while_less_sequential_145_lstm_435_strided_slice_1e
asequential_145_lstm_435_while_sequential_145_lstm_435_while_cond_2460897___redundant_placeholder0e
asequential_145_lstm_435_while_sequential_145_lstm_435_while_cond_2460897___redundant_placeholder1e
asequential_145_lstm_435_while_sequential_145_lstm_435_while_cond_2460897___redundant_placeholder2e
asequential_145_lstm_435_while_sequential_145_lstm_435_while_cond_2460897___redundant_placeholder3*
&sequential_145_lstm_435_while_identity
?
"sequential_145/lstm_435/while/LessLess)sequential_145_lstm_435_while_placeholderJsequential_145_lstm_435_while_less_sequential_145_lstm_435_strided_slice_1*
T0*
_output_shapes
: {
&sequential_145/lstm_435/while/IdentityIdentity&sequential_145/lstm_435/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_145_lstm_435_while_identity/sequential_145/lstm_435/while/Identity:output:0*(
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465523

inputs?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2465439*
condR
while_cond_2465438*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2462237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462237___redundant_placeholder05
1while_while_cond_2462237___redundant_placeholder15
1while_while_cond_2462237___redundant_placeholder25
1while_while_cond_2462237___redundant_placeholder3
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
/__inference_lstm_cell_405_layer_call_fn_2466335

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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461479o
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
while_body_2462681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466497

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
?
?
+__inference_dense_145_layer_call_fn_2466291

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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783o
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
while_body_2462897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_436_layer_call_fn_2465094

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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2463146s
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
while_cond_2464536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2464536___redundant_placeholder05
1while_while_cond_2464536___redundant_placeholder15
1while_while_cond_2464536___redundant_placeholder25
1while_while_cond_2464536___redundant_placeholder3
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
while_body_2466055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_435_while_cond_2463638.
*lstm_435_while_lstm_435_while_loop_counter4
0lstm_435_while_lstm_435_while_maximum_iterations
lstm_435_while_placeholder 
lstm_435_while_placeholder_1 
lstm_435_while_placeholder_2 
lstm_435_while_placeholder_30
,lstm_435_while_less_lstm_435_strided_slice_1G
Clstm_435_while_lstm_435_while_cond_2463638___redundant_placeholder0G
Clstm_435_while_lstm_435_while_cond_2463638___redundant_placeholder1G
Clstm_435_while_lstm_435_while_cond_2463638___redundant_placeholder2G
Clstm_435_while_lstm_435_while_cond_2463638___redundant_placeholder3
lstm_435_while_identity
?
lstm_435/while/LessLesslstm_435_while_placeholder,lstm_435_while_less_lstm_435_strided_slice_1*
T0*
_output_shapes
: ]
lstm_435/while/IdentityIdentitylstm_435/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_435_while_identity lstm_435/while/Identity:output:0*(
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
lstm_436_while_cond_2463777.
*lstm_436_while_lstm_436_while_loop_counter4
0lstm_436_while_lstm_436_while_maximum_iterations
lstm_436_while_placeholder 
lstm_436_while_placeholder_1 
lstm_436_while_placeholder_2 
lstm_436_while_placeholder_30
,lstm_436_while_less_lstm_436_strided_slice_1G
Clstm_436_while_lstm_436_while_cond_2463777___redundant_placeholder0G
Clstm_436_while_lstm_436_while_cond_2463777___redundant_placeholder1G
Clstm_436_while_lstm_436_while_cond_2463777___redundant_placeholder2G
Clstm_436_while_lstm_436_while_cond_2463777___redundant_placeholder3
lstm_436_while_identity
?
lstm_436/while/LessLesslstm_436_while_placeholder,lstm_436_while_less_lstm_436_strided_slice_1*
T0*
_output_shapes
: ]
lstm_436/while/IdentityIdentitylstm_436/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_436_while_identity lstm_436/while/Identity:output:0*(
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465996
inputs_0>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2465912*
condR
while_cond_2465911*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2465438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465438___redundant_placeholder05
1while_while_cond_2465438___redundant_placeholder15
1while_while_cond_2465438___redundant_placeholder25
1while_while_cond_2465438___redundant_placeholder3
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
while_body_2462531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462765

inputs>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2462681*
condR
while_cond_2462680*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465237
inputs_0?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2465153*
condR
while_cond_2465152*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_437_while_body_2463917.
*lstm_437_while_lstm_437_while_loop_counter4
0lstm_437_while_lstm_437_while_maximum_iterations
lstm_437_while_placeholder 
lstm_437_while_placeholder_1 
lstm_437_while_placeholder_2 
lstm_437_while_placeholder_3-
)lstm_437_while_lstm_437_strided_slice_1_0i
elstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0:2(Q
?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(L
>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0:(
lstm_437_while_identity
lstm_437_while_identity_1
lstm_437_while_identity_2
lstm_437_while_identity_3
lstm_437_while_identity_4
lstm_437_while_identity_5+
'lstm_437_while_lstm_437_strided_slice_1g
clstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensorM
;lstm_437_while_lstm_cell_407_matmul_readvariableop_resource:2(O
=lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource:
(J
<lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource:(??3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp?2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp?4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp?
@lstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_437/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0lstm_437_while_placeholderIlstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_437/while/lstm_cell_407/MatMulMatMul9lstm_437/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_437/while/lstm_cell_407/MatMul_1MatMullstm_437_while_placeholder_2<lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_437/while/lstm_cell_407/addAddV2-lstm_437/while/lstm_cell_407/MatMul:product:0/lstm_437/while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_437/while/lstm_cell_407/BiasAddBiasAdd$lstm_437/while/lstm_cell_407/add:z:0;lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_437/while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_437/while/lstm_cell_407/splitSplit5lstm_437/while/lstm_cell_407/split/split_dim:output:0-lstm_437/while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_437/while/lstm_cell_407/SigmoidSigmoid+lstm_437/while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_437/while/lstm_cell_407/Sigmoid_1Sigmoid+lstm_437/while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_437/while/lstm_cell_407/mulMul*lstm_437/while/lstm_cell_407/Sigmoid_1:y:0lstm_437_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_437/while/lstm_cell_407/ReluRelu+lstm_437/while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/mul_1Mul(lstm_437/while/lstm_cell_407/Sigmoid:y:0/lstm_437/while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/add_1AddV2$lstm_437/while/lstm_cell_407/mul:z:0&lstm_437/while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_437/while/lstm_cell_407/Sigmoid_2Sigmoid+lstm_437/while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_437/while/lstm_cell_407/Relu_1Relu&lstm_437/while/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_437/while/lstm_cell_407/mul_2Mul*lstm_437/while/lstm_cell_407/Sigmoid_2:y:01lstm_437/while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_437/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_437_while_placeholder_1lstm_437_while_placeholder&lstm_437/while/lstm_cell_407/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_437/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_437/while/addAddV2lstm_437_while_placeholderlstm_437/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_437/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_437/while/add_1AddV2*lstm_437_while_lstm_437_while_loop_counterlstm_437/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_437/while/IdentityIdentitylstm_437/while/add_1:z:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_1Identity0lstm_437_while_lstm_437_while_maximum_iterations^lstm_437/while/NoOp*
T0*
_output_shapes
: t
lstm_437/while/Identity_2Identitylstm_437/while/add:z:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_3IdentityClstm_437/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_437/while/NoOp*
T0*
_output_shapes
: ?
lstm_437/while/Identity_4Identity&lstm_437/while/lstm_cell_407/mul_2:z:0^lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_437/while/Identity_5Identity&lstm_437/while/lstm_cell_407/add_1:z:0^lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_437/while/NoOpNoOp4^lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp3^lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp5^lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_437_while_identity lstm_437/while/Identity:output:0"?
lstm_437_while_identity_1"lstm_437/while/Identity_1:output:0"?
lstm_437_while_identity_2"lstm_437/while/Identity_2:output:0"?
lstm_437_while_identity_3"lstm_437/while/Identity_3:output:0"?
lstm_437_while_identity_4"lstm_437/while/Identity_4:output:0"?
lstm_437_while_identity_5"lstm_437/while/Identity_5:output:0"T
'lstm_437_while_lstm_437_strided_slice_1)lstm_437_while_lstm_437_strided_slice_1_0"~
<lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource>lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0"?
=lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource?lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0"|
;lstm_437_while_lstm_cell_407_matmul_readvariableop_resource=lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0"?
clstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensorelstm_437_while_tensorarrayv2read_tensorlistgetitem_lstm_437_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp3lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp2h
2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp2lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp2l
4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp4lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464764
inputs_0?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2464680*
condR
while_cond_2464679*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_436_while_body_2463778.
*lstm_436_while_lstm_436_while_loop_counter4
0lstm_436_while_lstm_436_while_maximum_iterations
lstm_436_while_placeholder 
lstm_436_while_placeholder_1 
lstm_436_while_placeholder_2 
lstm_436_while_placeholder_3-
)lstm_436_while_lstm_436_strided_slice_1_0i
elstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0:	d?R
?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?M
>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
lstm_436_while_identity
lstm_436_while_identity_1
lstm_436_while_identity_2
lstm_436_while_identity_3
lstm_436_while_identity_4
lstm_436_while_identity_5+
'lstm_436_while_lstm_436_strided_slice_1g
clstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensorN
;lstm_436_while_lstm_cell_406_matmul_readvariableop_resource:	d?P
=lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource:	2?K
<lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource:	???3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp?2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp?4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp?
@lstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_436/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0lstm_436_while_placeholderIlstm_436/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_436/while/lstm_cell_406/MatMulMatMul9lstm_436/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_436/while/lstm_cell_406/MatMul_1MatMullstm_436_while_placeholder_2<lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_436/while/lstm_cell_406/addAddV2-lstm_436/while/lstm_cell_406/MatMul:product:0/lstm_436/while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_436/while/lstm_cell_406/BiasAddBiasAdd$lstm_436/while/lstm_cell_406/add:z:0;lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_436/while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_436/while/lstm_cell_406/splitSplit5lstm_436/while/lstm_cell_406/split/split_dim:output:0-lstm_436/while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_436/while/lstm_cell_406/SigmoidSigmoid+lstm_436/while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_436/while/lstm_cell_406/Sigmoid_1Sigmoid+lstm_436/while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_436/while/lstm_cell_406/mulMul*lstm_436/while/lstm_cell_406/Sigmoid_1:y:0lstm_436_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_436/while/lstm_cell_406/ReluRelu+lstm_436/while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/mul_1Mul(lstm_436/while/lstm_cell_406/Sigmoid:y:0/lstm_436/while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/add_1AddV2$lstm_436/while/lstm_cell_406/mul:z:0&lstm_436/while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_436/while/lstm_cell_406/Sigmoid_2Sigmoid+lstm_436/while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_436/while/lstm_cell_406/Relu_1Relu&lstm_436/while/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_436/while/lstm_cell_406/mul_2Mul*lstm_436/while/lstm_cell_406/Sigmoid_2:y:01lstm_436/while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_436/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_436_while_placeholder_1lstm_436_while_placeholder&lstm_436/while/lstm_cell_406/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_436/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_436/while/addAddV2lstm_436_while_placeholderlstm_436/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_436/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_436/while/add_1AddV2*lstm_436_while_lstm_436_while_loop_counterlstm_436/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_436/while/IdentityIdentitylstm_436/while/add_1:z:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_1Identity0lstm_436_while_lstm_436_while_maximum_iterations^lstm_436/while/NoOp*
T0*
_output_shapes
: t
lstm_436/while/Identity_2Identitylstm_436/while/add:z:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_3IdentityClstm_436/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_436/while/NoOp*
T0*
_output_shapes
: ?
lstm_436/while/Identity_4Identity&lstm_436/while/lstm_cell_406/mul_2:z:0^lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_436/while/Identity_5Identity&lstm_436/while/lstm_cell_406/add_1:z:0^lstm_436/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_436/while/NoOpNoOp4^lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp3^lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp5^lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_436_while_identity lstm_436/while/Identity:output:0"?
lstm_436_while_identity_1"lstm_436/while/Identity_1:output:0"?
lstm_436_while_identity_2"lstm_436/while/Identity_2:output:0"?
lstm_436_while_identity_3"lstm_436/while/Identity_3:output:0"?
lstm_436_while_identity_4"lstm_436/while/Identity_4:output:0"?
lstm_436_while_identity_5"lstm_436/while/Identity_5:output:0"T
'lstm_436_while_lstm_436_strided_slice_1)lstm_436_while_lstm_436_strided_slice_1_0"~
<lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource>lstm_436_while_lstm_cell_406_biasadd_readvariableop_resource_0"?
=lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource?lstm_436_while_lstm_cell_406_matmul_1_readvariableop_resource_0"|
;lstm_436_while_lstm_cell_406_matmul_readvariableop_resource=lstm_436_while_lstm_cell_406_matmul_readvariableop_resource_0"?
clstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensorelstm_436_while_tensorarrayv2read_tensorlistgetitem_lstm_436_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp3lstm_436/while/lstm_cell_406/BiasAdd/ReadVariableOp2h
2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp2lstm_436/while/lstm_cell_406/MatMul/ReadVariableOp2l
4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp4lstm_436/while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2465581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465581___redundant_placeholder05
1while_while_cond_2465581___redundant_placeholder15
1while_while_cond_2465581___redundant_placeholder25
1while_while_cond_2465581___redundant_placeholder3
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
while_cond_2466054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2466054___redundant_placeholder05
1while_while_cond_2466054___redundant_placeholder15
1while_while_cond_2466054___redundant_placeholder25
1while_while_cond_2466054___redundant_placeholder3
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
??
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464434

inputsH
5lstm_435_lstm_cell_405_matmul_readvariableop_resource:	?J
7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource:	d?E
6lstm_435_lstm_cell_405_biasadd_readvariableop_resource:	?H
5lstm_436_lstm_cell_406_matmul_readvariableop_resource:	d?J
7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource:	2?E
6lstm_436_lstm_cell_406_biasadd_readvariableop_resource:	?G
5lstm_437_lstm_cell_407_matmul_readvariableop_resource:2(I
7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource:
(D
6lstm_437_lstm_cell_407_biasadd_readvariableop_resource:(:
(dense_145_matmul_readvariableop_resource:
7
)dense_145_biasadd_readvariableop_resource:
identity?? dense_145/BiasAdd/ReadVariableOp?dense_145/MatMul/ReadVariableOp?-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp?,lstm_435/lstm_cell_405/MatMul/ReadVariableOp?.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp?lstm_435/while?-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp?,lstm_436/lstm_cell_406/MatMul/ReadVariableOp?.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp?lstm_436/while?-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp?,lstm_437/lstm_cell_407/MatMul/ReadVariableOp?.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp?lstm_437/whileD
lstm_435/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_sliceStridedSlicelstm_435/Shape:output:0%lstm_435/strided_slice/stack:output:0'lstm_435/strided_slice/stack_1:output:0'lstm_435/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_435/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_435/zeros/packedPacklstm_435/strided_slice:output:0 lstm_435/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_435/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_435/zerosFilllstm_435/zeros/packed:output:0lstm_435/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_435/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_435/zeros_1/packedPacklstm_435/strided_slice:output:0"lstm_435/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_435/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_435/zeros_1Fill lstm_435/zeros_1/packed:output:0lstm_435/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_435/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_435/transpose	Transposeinputs lstm_435/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_435/Shape_1Shapelstm_435/transpose:y:0*
T0*
_output_shapes
:h
lstm_435/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_435/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_1StridedSlicelstm_435/Shape_1:output:0'lstm_435/strided_slice_1/stack:output:0)lstm_435/strided_slice_1/stack_1:output:0)lstm_435/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_435/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_435/TensorArrayV2TensorListReserve-lstm_435/TensorArrayV2/element_shape:output:0!lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_435/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_435/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_435/transpose:y:0Glstm_435/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_435/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_435/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_2StridedSlicelstm_435/transpose:y:0'lstm_435/strided_slice_2/stack:output:0)lstm_435/strided_slice_2/stack_1:output:0)lstm_435/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_435/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp5lstm_435_lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_435/lstm_cell_405/MatMulMatMul!lstm_435/strided_slice_2:output:04lstm_435/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_435/lstm_cell_405/MatMul_1MatMullstm_435/zeros:output:06lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_435/lstm_cell_405/addAddV2'lstm_435/lstm_cell_405/MatMul:product:0)lstm_435/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp6lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_435/lstm_cell_405/BiasAddBiasAddlstm_435/lstm_cell_405/add:z:05lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_435/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_435/lstm_cell_405/splitSplit/lstm_435/lstm_cell_405/split/split_dim:output:0'lstm_435/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_435/lstm_cell_405/SigmoidSigmoid%lstm_435/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_435/lstm_cell_405/Sigmoid_1Sigmoid%lstm_435/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mulMul$lstm_435/lstm_cell_405/Sigmoid_1:y:0lstm_435/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_435/lstm_cell_405/ReluRelu%lstm_435/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mul_1Mul"lstm_435/lstm_cell_405/Sigmoid:y:0)lstm_435/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/add_1AddV2lstm_435/lstm_cell_405/mul:z:0 lstm_435/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_435/lstm_cell_405/Sigmoid_2Sigmoid%lstm_435/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_435/lstm_cell_405/Relu_1Relu lstm_435/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_435/lstm_cell_405/mul_2Mul$lstm_435/lstm_cell_405/Sigmoid_2:y:0+lstm_435/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_435/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_435/TensorArrayV2_1TensorListReserve/lstm_435/TensorArrayV2_1/element_shape:output:0!lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_435/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_435/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_435/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_435/whileWhile$lstm_435/while/loop_counter:output:0*lstm_435/while/maximum_iterations:output:0lstm_435/time:output:0!lstm_435/TensorArrayV2_1:handle:0lstm_435/zeros:output:0lstm_435/zeros_1:output:0!lstm_435/strided_slice_1:output:0@lstm_435/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_435_lstm_cell_405_matmul_readvariableop_resource7lstm_435_lstm_cell_405_matmul_1_readvariableop_resource6lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
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
lstm_435_while_body_2464066*'
condR
lstm_435_while_cond_2464065*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_435/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_435/TensorArrayV2Stack/TensorListStackTensorListStacklstm_435/while:output:3Blstm_435/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_435/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_435/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_435/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_435/strided_slice_3StridedSlice4lstm_435/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_435/strided_slice_3/stack:output:0)lstm_435/strided_slice_3/stack_1:output:0)lstm_435/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_435/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_435/transpose_1	Transpose4lstm_435/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_435/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_435/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_436/ShapeShapelstm_435/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_sliceStridedSlicelstm_436/Shape:output:0%lstm_436/strided_slice/stack:output:0'lstm_436/strided_slice/stack_1:output:0'lstm_436/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_436/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_436/zeros/packedPacklstm_436/strided_slice:output:0 lstm_436/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_436/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_436/zerosFilllstm_436/zeros/packed:output:0lstm_436/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_436/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_436/zeros_1/packedPacklstm_436/strided_slice:output:0"lstm_436/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_436/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_436/zeros_1Fill lstm_436/zeros_1/packed:output:0lstm_436/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_436/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_436/transpose	Transposelstm_435/transpose_1:y:0 lstm_436/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_436/Shape_1Shapelstm_436/transpose:y:0*
T0*
_output_shapes
:h
lstm_436/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_436/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_1StridedSlicelstm_436/Shape_1:output:0'lstm_436/strided_slice_1/stack:output:0)lstm_436/strided_slice_1/stack_1:output:0)lstm_436/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_436/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_436/TensorArrayV2TensorListReserve-lstm_436/TensorArrayV2/element_shape:output:0!lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_436/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_436/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_436/transpose:y:0Glstm_436/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_436/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_436/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_2StridedSlicelstm_436/transpose:y:0'lstm_436/strided_slice_2/stack:output:0)lstm_436/strided_slice_2/stack_1:output:0)lstm_436/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_436/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp5lstm_436_lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_436/lstm_cell_406/MatMulMatMul!lstm_436/strided_slice_2:output:04lstm_436/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_436/lstm_cell_406/MatMul_1MatMullstm_436/zeros:output:06lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_436/lstm_cell_406/addAddV2'lstm_436/lstm_cell_406/MatMul:product:0)lstm_436/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp6lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_436/lstm_cell_406/BiasAddBiasAddlstm_436/lstm_cell_406/add:z:05lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_436/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_436/lstm_cell_406/splitSplit/lstm_436/lstm_cell_406/split/split_dim:output:0'lstm_436/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_436/lstm_cell_406/SigmoidSigmoid%lstm_436/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_436/lstm_cell_406/Sigmoid_1Sigmoid%lstm_436/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mulMul$lstm_436/lstm_cell_406/Sigmoid_1:y:0lstm_436/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_436/lstm_cell_406/ReluRelu%lstm_436/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mul_1Mul"lstm_436/lstm_cell_406/Sigmoid:y:0)lstm_436/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/add_1AddV2lstm_436/lstm_cell_406/mul:z:0 lstm_436/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_436/lstm_cell_406/Sigmoid_2Sigmoid%lstm_436/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_436/lstm_cell_406/Relu_1Relu lstm_436/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_436/lstm_cell_406/mul_2Mul$lstm_436/lstm_cell_406/Sigmoid_2:y:0+lstm_436/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_436/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_436/TensorArrayV2_1TensorListReserve/lstm_436/TensorArrayV2_1/element_shape:output:0!lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_436/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_436/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_436/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_436/whileWhile$lstm_436/while/loop_counter:output:0*lstm_436/while/maximum_iterations:output:0lstm_436/time:output:0!lstm_436/TensorArrayV2_1:handle:0lstm_436/zeros:output:0lstm_436/zeros_1:output:0!lstm_436/strided_slice_1:output:0@lstm_436/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_436_lstm_cell_406_matmul_readvariableop_resource7lstm_436_lstm_cell_406_matmul_1_readvariableop_resource6lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
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
lstm_436_while_body_2464205*'
condR
lstm_436_while_cond_2464204*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_436/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_436/TensorArrayV2Stack/TensorListStackTensorListStacklstm_436/while:output:3Blstm_436/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_436/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_436/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_436/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_436/strided_slice_3StridedSlice4lstm_436/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_436/strided_slice_3/stack:output:0)lstm_436/strided_slice_3/stack_1:output:0)lstm_436/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_436/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_436/transpose_1	Transpose4lstm_436/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_436/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_436/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_437/ShapeShapelstm_436/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_sliceStridedSlicelstm_437/Shape:output:0%lstm_437/strided_slice/stack:output:0'lstm_437/strided_slice/stack_1:output:0'lstm_437/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_437/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_437/zeros/packedPacklstm_437/strided_slice:output:0 lstm_437/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_437/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_437/zerosFilllstm_437/zeros/packed:output:0lstm_437/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_437/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_437/zeros_1/packedPacklstm_437/strided_slice:output:0"lstm_437/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_437/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_437/zeros_1Fill lstm_437/zeros_1/packed:output:0lstm_437/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_437/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_437/transpose	Transposelstm_436/transpose_1:y:0 lstm_437/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_437/Shape_1Shapelstm_437/transpose:y:0*
T0*
_output_shapes
:h
lstm_437/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_437/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_1StridedSlicelstm_437/Shape_1:output:0'lstm_437/strided_slice_1/stack:output:0)lstm_437/strided_slice_1/stack_1:output:0)lstm_437/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_437/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_437/TensorArrayV2TensorListReserve-lstm_437/TensorArrayV2/element_shape:output:0!lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_437/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_437/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_437/transpose:y:0Glstm_437/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_437/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_437/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_2StridedSlicelstm_437/transpose:y:0'lstm_437/strided_slice_2/stack:output:0)lstm_437/strided_slice_2/stack_1:output:0)lstm_437/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_437/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp5lstm_437_lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_437/lstm_cell_407/MatMulMatMul!lstm_437/strided_slice_2:output:04lstm_437/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_437/lstm_cell_407/MatMul_1MatMullstm_437/zeros:output:06lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_437/lstm_cell_407/addAddV2'lstm_437/lstm_cell_407/MatMul:product:0)lstm_437/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp6lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_437/lstm_cell_407/BiasAddBiasAddlstm_437/lstm_cell_407/add:z:05lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_437/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_437/lstm_cell_407/splitSplit/lstm_437/lstm_cell_407/split/split_dim:output:0'lstm_437/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_437/lstm_cell_407/SigmoidSigmoid%lstm_437/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_437/lstm_cell_407/Sigmoid_1Sigmoid%lstm_437/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mulMul$lstm_437/lstm_cell_407/Sigmoid_1:y:0lstm_437/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_437/lstm_cell_407/ReluRelu%lstm_437/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mul_1Mul"lstm_437/lstm_cell_407/Sigmoid:y:0)lstm_437/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/add_1AddV2lstm_437/lstm_cell_407/mul:z:0 lstm_437/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_437/lstm_cell_407/Sigmoid_2Sigmoid%lstm_437/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_437/lstm_cell_407/Relu_1Relu lstm_437/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_437/lstm_cell_407/mul_2Mul$lstm_437/lstm_cell_407/Sigmoid_2:y:0+lstm_437/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_437/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_437/TensorArrayV2_1TensorListReserve/lstm_437/TensorArrayV2_1/element_shape:output:0!lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_437/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_437/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_437/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_437/whileWhile$lstm_437/while/loop_counter:output:0*lstm_437/while/maximum_iterations:output:0lstm_437/time:output:0!lstm_437/TensorArrayV2_1:handle:0lstm_437/zeros:output:0lstm_437/zeros_1:output:0!lstm_437/strided_slice_1:output:0@lstm_437/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_437_lstm_cell_407_matmul_readvariableop_resource7lstm_437_lstm_cell_407_matmul_1_readvariableop_resource6lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
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
lstm_437_while_body_2464344*'
condR
lstm_437_while_cond_2464343*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_437/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_437/TensorArrayV2Stack/TensorListStackTensorListStacklstm_437/while:output:3Blstm_437/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_437/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_437/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_437/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_437/strided_slice_3StridedSlice4lstm_437/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_437/strided_slice_3/stack:output:0)lstm_437/strided_slice_3/stack_1:output:0)lstm_437/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_437/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_437/transpose_1	Transpose4lstm_437/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_437/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_437/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_145/MatMulMatMul!lstm_437/strided_slice_3:output:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_145/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp.^lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp-^lstm_435/lstm_cell_405/MatMul/ReadVariableOp/^lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp^lstm_435/while.^lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp-^lstm_436/lstm_cell_406/MatMul/ReadVariableOp/^lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp^lstm_436/while.^lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp-^lstm_437/lstm_cell_407/MatMul/ReadVariableOp/^lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp^lstm_437/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2^
-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp-lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp2\
,lstm_435/lstm_cell_405/MatMul/ReadVariableOp,lstm_435/lstm_cell_405/MatMul/ReadVariableOp2`
.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp.lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp2 
lstm_435/whilelstm_435/while2^
-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp-lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp2\
,lstm_436/lstm_cell_406/MatMul/ReadVariableOp,lstm_436/lstm_cell_406/MatMul/ReadVariableOp2`
.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp.lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp2 
lstm_436/whilelstm_436/while2^
-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp-lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp2\
,lstm_437/lstm_cell_407/MatMul/ReadVariableOp,lstm_437/lstm_cell_407/MatMul/ReadVariableOp2`
.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp.lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp2 
lstm_437/whilelstm_437/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2466198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_437_layer_call_fn_2465688
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462307o
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
while_cond_2462530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462530___redundant_placeholder05
1while_while_cond_2462530___redundant_placeholder15
1while_while_cond_2462530___redundant_placeholder25
1while_while_cond_2462530___redundant_placeholder3
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
?
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463491
lstm_435_input#
lstm_435_2463464:	?#
lstm_435_2463466:	d?
lstm_435_2463468:	?#
lstm_436_2463471:	d?#
lstm_436_2463473:	2?
lstm_436_2463475:	?"
lstm_437_2463478:2("
lstm_437_2463480:
(
lstm_437_2463482:(#
dense_145_2463485:

dense_145_2463487:
identity??!dense_145/StatefulPartitionedCall? lstm_435/StatefulPartitionedCall? lstm_436/StatefulPartitionedCall? lstm_437/StatefulPartitionedCall?
 lstm_435/StatefulPartitionedCallStatefulPartitionedCalllstm_435_inputlstm_435_2463464lstm_435_2463466lstm_435_2463468*
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2463311?
 lstm_436/StatefulPartitionedCallStatefulPartitionedCall)lstm_435/StatefulPartitionedCall:output:0lstm_436_2463471lstm_436_2463473lstm_436_2463475*
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2463146?
 lstm_437/StatefulPartitionedCallStatefulPartitionedCall)lstm_436/StatefulPartitionedCall:output:0lstm_437_2463478lstm_437_2463480lstm_437_2463482*
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462981?
!dense_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_437/StatefulPartitionedCall:output:0dense_145_2463485dense_145_2463487*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783y
IdentityIdentity*dense_145/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_145/StatefulPartitionedCall!^lstm_435/StatefulPartitionedCall!^lstm_436/StatefulPartitionedCall!^lstm_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2D
 lstm_435/StatefulPartitionedCall lstm_435/StatefulPartitionedCall2D
 lstm_436/StatefulPartitionedCall lstm_436/StatefulPartitionedCall2D
 lstm_437/StatefulPartitionedCall lstm_437/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_435_input
?
?
/__inference_lstm_cell_405_layer_call_fn_2466318

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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461333o
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
while_cond_2465911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465911___redundant_placeholder05
1while_while_cond_2465911___redundant_placeholder15
1while_while_cond_2465911___redundant_placeholder25
1while_while_cond_2465911___redundant_placeholder3
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
while_cond_2464679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2464679___redundant_placeholder05
1while_while_cond_2464679___redundant_placeholder15
1while_while_cond_2464679___redundant_placeholder25
1while_while_cond_2464679___redundant_placeholder3
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2462615

inputs?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2462531*
condR
while_cond_2462530*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2461696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2461696___redundant_placeholder05
1while_while_cond_2461696___redundant_placeholder15
1while_while_cond_2461696___redundant_placeholder25
1while_while_cond_2461696___redundant_placeholder3
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
while_cond_2462046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2462046___redundant_placeholder05
1while_while_cond_2462046___redundant_placeholder15
1while_while_cond_2462046___redundant_placeholder25
1while_while_cond_2462046___redundant_placeholder3
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462179

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
??
?
#__inference__traced_restore_2466868
file_prefix3
!assignvariableop_dense_145_kernel:
/
!assignvariableop_1_dense_145_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_435_lstm_cell_435_kernel:	?M
:assignvariableop_8_lstm_435_lstm_cell_435_recurrent_kernel:	d?=
.assignvariableop_9_lstm_435_lstm_cell_435_bias:	?D
1assignvariableop_10_lstm_436_lstm_cell_436_kernel:	d?N
;assignvariableop_11_lstm_436_lstm_cell_436_recurrent_kernel:	2?>
/assignvariableop_12_lstm_436_lstm_cell_436_bias:	?C
1assignvariableop_13_lstm_437_lstm_cell_437_kernel:2(M
;assignvariableop_14_lstm_437_lstm_cell_437_recurrent_kernel:
(=
/assignvariableop_15_lstm_437_lstm_cell_437_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_145_kernel_m:
7
)assignvariableop_19_adam_dense_145_bias_m:K
8assignvariableop_20_adam_lstm_435_lstm_cell_435_kernel_m:	?U
Bassignvariableop_21_adam_lstm_435_lstm_cell_435_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_435_lstm_cell_435_bias_m:	?K
8assignvariableop_23_adam_lstm_436_lstm_cell_436_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_436_lstm_cell_436_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_436_lstm_cell_436_bias_m:	?J
8assignvariableop_26_adam_lstm_437_lstm_cell_437_kernel_m:2(T
Bassignvariableop_27_adam_lstm_437_lstm_cell_437_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_437_lstm_cell_437_bias_m:(=
+assignvariableop_29_adam_dense_145_kernel_v:
7
)assignvariableop_30_adam_dense_145_bias_v:K
8assignvariableop_31_adam_lstm_435_lstm_cell_435_kernel_v:	?U
Bassignvariableop_32_adam_lstm_435_lstm_cell_435_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_435_lstm_cell_435_bias_v:	?K
8assignvariableop_34_adam_lstm_436_lstm_cell_436_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_436_lstm_cell_436_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_436_lstm_cell_436_bias_v:	?J
8assignvariableop_37_adam_lstm_437_lstm_cell_437_kernel_v:2(T
Bassignvariableop_38_adam_lstm_437_lstm_cell_437_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_437_lstm_cell_437_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_145_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_145_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_435_lstm_cell_435_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_435_lstm_cell_435_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_435_lstm_cell_435_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_436_lstm_cell_436_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_436_lstm_cell_436_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_436_lstm_cell_436_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_437_lstm_cell_437_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_437_lstm_cell_437_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_437_lstm_cell_437_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_145_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_145_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_435_lstm_cell_435_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_435_lstm_cell_435_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_435_lstm_cell_435_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_436_lstm_cell_436_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_436_lstm_cell_436_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_436_lstm_cell_436_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_437_lstm_cell_437_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_437_lstm_cell_437_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_437_lstm_cell_437_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_145_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_145_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_435_lstm_cell_435_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_435_lstm_cell_435_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_435_lstm_cell_435_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_436_lstm_cell_436_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_436_lstm_cell_436_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_436_lstm_cell_436_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_437_lstm_cell_437_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_437_lstm_cell_437_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_437_lstm_cell_437_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
0__inference_sequential_145_layer_call_fn_2463580

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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463379o
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
while_body_2464537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_406_layer_call_fn_2466416

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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461683o
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
/__inference_lstm_cell_406_layer_call_fn_2466433

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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461829o
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
?
while_body_2465153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2461347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_405_2461371_0:	?0
while_lstm_cell_405_2461373_0:	d?,
while_lstm_cell_405_2461375_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_405_2461371:	?.
while_lstm_cell_405_2461373:	d?*
while_lstm_cell_405_2461375:	???+while/lstm_cell_405/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_405/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_405_2461371_0while_lstm_cell_405_2461373_0while_lstm_cell_405_2461375_0*
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461333?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_405/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_405/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_405/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_405/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_405_2461371while_lstm_cell_405_2461371_0"<
while_lstm_cell_405_2461373while_lstm_cell_405_2461373_0"<
while_lstm_cell_405_2461375while_lstm_cell_405_2461375_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_405/StatefulPartitionedCall+while/lstm_cell_405/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466139

inputs>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2466055*
condR
while_cond_2466054*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2464680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_2461266
lstm_435_inputW
Dsequential_145_lstm_435_lstm_cell_405_matmul_readvariableop_resource:	?Y
Fsequential_145_lstm_435_lstm_cell_405_matmul_1_readvariableop_resource:	d?T
Esequential_145_lstm_435_lstm_cell_405_biasadd_readvariableop_resource:	?W
Dsequential_145_lstm_436_lstm_cell_406_matmul_readvariableop_resource:	d?Y
Fsequential_145_lstm_436_lstm_cell_406_matmul_1_readvariableop_resource:	2?T
Esequential_145_lstm_436_lstm_cell_406_biasadd_readvariableop_resource:	?V
Dsequential_145_lstm_437_lstm_cell_407_matmul_readvariableop_resource:2(X
Fsequential_145_lstm_437_lstm_cell_407_matmul_1_readvariableop_resource:
(S
Esequential_145_lstm_437_lstm_cell_407_biasadd_readvariableop_resource:(I
7sequential_145_dense_145_matmul_readvariableop_resource:
F
8sequential_145_dense_145_biasadd_readvariableop_resource:
identity??/sequential_145/dense_145/BiasAdd/ReadVariableOp?.sequential_145/dense_145/MatMul/ReadVariableOp?<sequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp?;sequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOp?=sequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp?sequential_145/lstm_435/while?<sequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp?;sequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOp?=sequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp?sequential_145/lstm_436/while?<sequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp?;sequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOp?=sequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp?sequential_145/lstm_437/while[
sequential_145/lstm_435/ShapeShapelstm_435_input*
T0*
_output_shapes
:u
+sequential_145/lstm_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_145/lstm_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_145/lstm_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_145/lstm_435/strided_sliceStridedSlice&sequential_145/lstm_435/Shape:output:04sequential_145/lstm_435/strided_slice/stack:output:06sequential_145/lstm_435/strided_slice/stack_1:output:06sequential_145/lstm_435/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_145/lstm_435/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_145/lstm_435/zeros/packedPack.sequential_145/lstm_435/strided_slice:output:0/sequential_145/lstm_435/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_145/lstm_435/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_435/zerosFill-sequential_145/lstm_435/zeros/packed:output:0,sequential_145/lstm_435/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_145/lstm_435/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_145/lstm_435/zeros_1/packedPack.sequential_145/lstm_435/strided_slice:output:01sequential_145/lstm_435/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_145/lstm_435/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_435/zeros_1Fill/sequential_145/lstm_435/zeros_1/packed:output:0.sequential_145/lstm_435/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_145/lstm_435/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_145/lstm_435/transpose	Transposelstm_435_input/sequential_145/lstm_435/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_145/lstm_435/Shape_1Shape%sequential_145/lstm_435/transpose:y:0*
T0*
_output_shapes
:w
-sequential_145/lstm_435/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_435/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_435/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_435/strided_slice_1StridedSlice(sequential_145/lstm_435/Shape_1:output:06sequential_145/lstm_435/strided_slice_1/stack:output:08sequential_145/lstm_435/strided_slice_1/stack_1:output:08sequential_145/lstm_435/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_145/lstm_435/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_145/lstm_435/TensorArrayV2TensorListReserve<sequential_145/lstm_435/TensorArrayV2/element_shape:output:00sequential_145/lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_145/lstm_435/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_145/lstm_435/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_145/lstm_435/transpose:y:0Vsequential_145/lstm_435/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_145/lstm_435/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_435/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_435/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_435/strided_slice_2StridedSlice%sequential_145/lstm_435/transpose:y:06sequential_145/lstm_435/strided_slice_2/stack:output:08sequential_145/lstm_435/strided_slice_2/stack_1:output:08sequential_145/lstm_435/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOpReadVariableOpDsequential_145_lstm_435_lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_145/lstm_435/lstm_cell_405/MatMulMatMul0sequential_145/lstm_435/strided_slice_2:output:0Csequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOpFsequential_145_lstm_435_lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_145/lstm_435/lstm_cell_405/MatMul_1MatMul&sequential_145/lstm_435/zeros:output:0Esequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_145/lstm_435/lstm_cell_405/addAddV26sequential_145/lstm_435/lstm_cell_405/MatMul:product:08sequential_145/lstm_435/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOpEsequential_145_lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_145/lstm_435/lstm_cell_405/BiasAddBiasAdd-sequential_145/lstm_435/lstm_cell_405/add:z:0Dsequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_145/lstm_435/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_145/lstm_435/lstm_cell_405/splitSplit>sequential_145/lstm_435/lstm_cell_405/split/split_dim:output:06sequential_145/lstm_435/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_145/lstm_435/lstm_cell_405/SigmoidSigmoid4sequential_145/lstm_435/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_145/lstm_435/lstm_cell_405/Sigmoid_1Sigmoid4sequential_145/lstm_435/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_145/lstm_435/lstm_cell_405/mulMul3sequential_145/lstm_435/lstm_cell_405/Sigmoid_1:y:0(sequential_145/lstm_435/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_145/lstm_435/lstm_cell_405/ReluRelu4sequential_145/lstm_435/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_145/lstm_435/lstm_cell_405/mul_1Mul1sequential_145/lstm_435/lstm_cell_405/Sigmoid:y:08sequential_145/lstm_435/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_145/lstm_435/lstm_cell_405/add_1AddV2-sequential_145/lstm_435/lstm_cell_405/mul:z:0/sequential_145/lstm_435/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_145/lstm_435/lstm_cell_405/Sigmoid_2Sigmoid4sequential_145/lstm_435/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_145/lstm_435/lstm_cell_405/Relu_1Relu/sequential_145/lstm_435/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_145/lstm_435/lstm_cell_405/mul_2Mul3sequential_145/lstm_435/lstm_cell_405/Sigmoid_2:y:0:sequential_145/lstm_435/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_145/lstm_435/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_145/lstm_435/TensorArrayV2_1TensorListReserve>sequential_145/lstm_435/TensorArrayV2_1/element_shape:output:00sequential_145/lstm_435/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_145/lstm_435/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_145/lstm_435/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_145/lstm_435/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_145/lstm_435/whileWhile3sequential_145/lstm_435/while/loop_counter:output:09sequential_145/lstm_435/while/maximum_iterations:output:0%sequential_145/lstm_435/time:output:00sequential_145/lstm_435/TensorArrayV2_1:handle:0&sequential_145/lstm_435/zeros:output:0(sequential_145/lstm_435/zeros_1:output:00sequential_145/lstm_435/strided_slice_1:output:0Osequential_145/lstm_435/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_145_lstm_435_lstm_cell_405_matmul_readvariableop_resourceFsequential_145_lstm_435_lstm_cell_405_matmul_1_readvariableop_resourceEsequential_145_lstm_435_lstm_cell_405_biasadd_readvariableop_resource*
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
*sequential_145_lstm_435_while_body_2460898*6
cond.R,
*sequential_145_lstm_435_while_cond_2460897*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_145/lstm_435/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_145/lstm_435/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_145/lstm_435/while:output:3Qsequential_145/lstm_435/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_145/lstm_435/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_145/lstm_435/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_435/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_435/strided_slice_3StridedSliceCsequential_145/lstm_435/TensorArrayV2Stack/TensorListStack:tensor:06sequential_145/lstm_435/strided_slice_3/stack:output:08sequential_145/lstm_435/strided_slice_3/stack_1:output:08sequential_145/lstm_435/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_145/lstm_435/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_145/lstm_435/transpose_1	TransposeCsequential_145/lstm_435/TensorArrayV2Stack/TensorListStack:tensor:01sequential_145/lstm_435/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_145/lstm_435/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_145/lstm_436/ShapeShape'sequential_145/lstm_435/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_145/lstm_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_145/lstm_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_145/lstm_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_145/lstm_436/strided_sliceStridedSlice&sequential_145/lstm_436/Shape:output:04sequential_145/lstm_436/strided_slice/stack:output:06sequential_145/lstm_436/strided_slice/stack_1:output:06sequential_145/lstm_436/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_145/lstm_436/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_145/lstm_436/zeros/packedPack.sequential_145/lstm_436/strided_slice:output:0/sequential_145/lstm_436/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_145/lstm_436/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_436/zerosFill-sequential_145/lstm_436/zeros/packed:output:0,sequential_145/lstm_436/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_145/lstm_436/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_145/lstm_436/zeros_1/packedPack.sequential_145/lstm_436/strided_slice:output:01sequential_145/lstm_436/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_145/lstm_436/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_436/zeros_1Fill/sequential_145/lstm_436/zeros_1/packed:output:0.sequential_145/lstm_436/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_145/lstm_436/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_145/lstm_436/transpose	Transpose'sequential_145/lstm_435/transpose_1:y:0/sequential_145/lstm_436/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_145/lstm_436/Shape_1Shape%sequential_145/lstm_436/transpose:y:0*
T0*
_output_shapes
:w
-sequential_145/lstm_436/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_436/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_436/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_436/strided_slice_1StridedSlice(sequential_145/lstm_436/Shape_1:output:06sequential_145/lstm_436/strided_slice_1/stack:output:08sequential_145/lstm_436/strided_slice_1/stack_1:output:08sequential_145/lstm_436/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_145/lstm_436/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_145/lstm_436/TensorArrayV2TensorListReserve<sequential_145/lstm_436/TensorArrayV2/element_shape:output:00sequential_145/lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_145/lstm_436/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_145/lstm_436/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_145/lstm_436/transpose:y:0Vsequential_145/lstm_436/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_145/lstm_436/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_436/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_436/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_436/strided_slice_2StridedSlice%sequential_145/lstm_436/transpose:y:06sequential_145/lstm_436/strided_slice_2/stack:output:08sequential_145/lstm_436/strided_slice_2/stack_1:output:08sequential_145/lstm_436/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOpReadVariableOpDsequential_145_lstm_436_lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_145/lstm_436/lstm_cell_406/MatMulMatMul0sequential_145/lstm_436/strided_slice_2:output:0Csequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOpFsequential_145_lstm_436_lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_145/lstm_436/lstm_cell_406/MatMul_1MatMul&sequential_145/lstm_436/zeros:output:0Esequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_145/lstm_436/lstm_cell_406/addAddV26sequential_145/lstm_436/lstm_cell_406/MatMul:product:08sequential_145/lstm_436/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOpEsequential_145_lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_145/lstm_436/lstm_cell_406/BiasAddBiasAdd-sequential_145/lstm_436/lstm_cell_406/add:z:0Dsequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_145/lstm_436/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_145/lstm_436/lstm_cell_406/splitSplit>sequential_145/lstm_436/lstm_cell_406/split/split_dim:output:06sequential_145/lstm_436/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_145/lstm_436/lstm_cell_406/SigmoidSigmoid4sequential_145/lstm_436/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_145/lstm_436/lstm_cell_406/Sigmoid_1Sigmoid4sequential_145/lstm_436/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_145/lstm_436/lstm_cell_406/mulMul3sequential_145/lstm_436/lstm_cell_406/Sigmoid_1:y:0(sequential_145/lstm_436/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_145/lstm_436/lstm_cell_406/ReluRelu4sequential_145/lstm_436/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_145/lstm_436/lstm_cell_406/mul_1Mul1sequential_145/lstm_436/lstm_cell_406/Sigmoid:y:08sequential_145/lstm_436/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_145/lstm_436/lstm_cell_406/add_1AddV2-sequential_145/lstm_436/lstm_cell_406/mul:z:0/sequential_145/lstm_436/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_145/lstm_436/lstm_cell_406/Sigmoid_2Sigmoid4sequential_145/lstm_436/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_145/lstm_436/lstm_cell_406/Relu_1Relu/sequential_145/lstm_436/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_145/lstm_436/lstm_cell_406/mul_2Mul3sequential_145/lstm_436/lstm_cell_406/Sigmoid_2:y:0:sequential_145/lstm_436/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_145/lstm_436/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_145/lstm_436/TensorArrayV2_1TensorListReserve>sequential_145/lstm_436/TensorArrayV2_1/element_shape:output:00sequential_145/lstm_436/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_145/lstm_436/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_145/lstm_436/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_145/lstm_436/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_145/lstm_436/whileWhile3sequential_145/lstm_436/while/loop_counter:output:09sequential_145/lstm_436/while/maximum_iterations:output:0%sequential_145/lstm_436/time:output:00sequential_145/lstm_436/TensorArrayV2_1:handle:0&sequential_145/lstm_436/zeros:output:0(sequential_145/lstm_436/zeros_1:output:00sequential_145/lstm_436/strided_slice_1:output:0Osequential_145/lstm_436/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_145_lstm_436_lstm_cell_406_matmul_readvariableop_resourceFsequential_145_lstm_436_lstm_cell_406_matmul_1_readvariableop_resourceEsequential_145_lstm_436_lstm_cell_406_biasadd_readvariableop_resource*
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
*sequential_145_lstm_436_while_body_2461037*6
cond.R,
*sequential_145_lstm_436_while_cond_2461036*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_145/lstm_436/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_145/lstm_436/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_145/lstm_436/while:output:3Qsequential_145/lstm_436/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_145/lstm_436/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_145/lstm_436/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_436/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_436/strided_slice_3StridedSliceCsequential_145/lstm_436/TensorArrayV2Stack/TensorListStack:tensor:06sequential_145/lstm_436/strided_slice_3/stack:output:08sequential_145/lstm_436/strided_slice_3/stack_1:output:08sequential_145/lstm_436/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_145/lstm_436/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_145/lstm_436/transpose_1	TransposeCsequential_145/lstm_436/TensorArrayV2Stack/TensorListStack:tensor:01sequential_145/lstm_436/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_145/lstm_436/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_145/lstm_437/ShapeShape'sequential_145/lstm_436/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_145/lstm_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_145/lstm_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_145/lstm_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_145/lstm_437/strided_sliceStridedSlice&sequential_145/lstm_437/Shape:output:04sequential_145/lstm_437/strided_slice/stack:output:06sequential_145/lstm_437/strided_slice/stack_1:output:06sequential_145/lstm_437/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_145/lstm_437/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_145/lstm_437/zeros/packedPack.sequential_145/lstm_437/strided_slice:output:0/sequential_145/lstm_437/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_145/lstm_437/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_437/zerosFill-sequential_145/lstm_437/zeros/packed:output:0,sequential_145/lstm_437/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_145/lstm_437/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_145/lstm_437/zeros_1/packedPack.sequential_145/lstm_437/strided_slice:output:01sequential_145/lstm_437/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_145/lstm_437/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_145/lstm_437/zeros_1Fill/sequential_145/lstm_437/zeros_1/packed:output:0.sequential_145/lstm_437/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_145/lstm_437/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_145/lstm_437/transpose	Transpose'sequential_145/lstm_436/transpose_1:y:0/sequential_145/lstm_437/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_145/lstm_437/Shape_1Shape%sequential_145/lstm_437/transpose:y:0*
T0*
_output_shapes
:w
-sequential_145/lstm_437/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_437/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_437/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_437/strided_slice_1StridedSlice(sequential_145/lstm_437/Shape_1:output:06sequential_145/lstm_437/strided_slice_1/stack:output:08sequential_145/lstm_437/strided_slice_1/stack_1:output:08sequential_145/lstm_437/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_145/lstm_437/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_145/lstm_437/TensorArrayV2TensorListReserve<sequential_145/lstm_437/TensorArrayV2/element_shape:output:00sequential_145/lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_145/lstm_437/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_145/lstm_437/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_145/lstm_437/transpose:y:0Vsequential_145/lstm_437/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_145/lstm_437/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_437/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_145/lstm_437/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_437/strided_slice_2StridedSlice%sequential_145/lstm_437/transpose:y:06sequential_145/lstm_437/strided_slice_2/stack:output:08sequential_145/lstm_437/strided_slice_2/stack_1:output:08sequential_145/lstm_437/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOpReadVariableOpDsequential_145_lstm_437_lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_145/lstm_437/lstm_cell_407/MatMulMatMul0sequential_145/lstm_437/strided_slice_2:output:0Csequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOpFsequential_145_lstm_437_lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_145/lstm_437/lstm_cell_407/MatMul_1MatMul&sequential_145/lstm_437/zeros:output:0Esequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_145/lstm_437/lstm_cell_407/addAddV26sequential_145/lstm_437/lstm_cell_407/MatMul:product:08sequential_145/lstm_437/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOpEsequential_145_lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_145/lstm_437/lstm_cell_407/BiasAddBiasAdd-sequential_145/lstm_437/lstm_cell_407/add:z:0Dsequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_145/lstm_437/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_145/lstm_437/lstm_cell_407/splitSplit>sequential_145/lstm_437/lstm_cell_407/split/split_dim:output:06sequential_145/lstm_437/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_145/lstm_437/lstm_cell_407/SigmoidSigmoid4sequential_145/lstm_437/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_145/lstm_437/lstm_cell_407/Sigmoid_1Sigmoid4sequential_145/lstm_437/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_145/lstm_437/lstm_cell_407/mulMul3sequential_145/lstm_437/lstm_cell_407/Sigmoid_1:y:0(sequential_145/lstm_437/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_145/lstm_437/lstm_cell_407/ReluRelu4sequential_145/lstm_437/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_145/lstm_437/lstm_cell_407/mul_1Mul1sequential_145/lstm_437/lstm_cell_407/Sigmoid:y:08sequential_145/lstm_437/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_145/lstm_437/lstm_cell_407/add_1AddV2-sequential_145/lstm_437/lstm_cell_407/mul:z:0/sequential_145/lstm_437/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_145/lstm_437/lstm_cell_407/Sigmoid_2Sigmoid4sequential_145/lstm_437/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_145/lstm_437/lstm_cell_407/Relu_1Relu/sequential_145/lstm_437/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_145/lstm_437/lstm_cell_407/mul_2Mul3sequential_145/lstm_437/lstm_cell_407/Sigmoid_2:y:0:sequential_145/lstm_437/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_145/lstm_437/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_145/lstm_437/TensorArrayV2_1TensorListReserve>sequential_145/lstm_437/TensorArrayV2_1/element_shape:output:00sequential_145/lstm_437/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_145/lstm_437/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_145/lstm_437/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_145/lstm_437/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_145/lstm_437/whileWhile3sequential_145/lstm_437/while/loop_counter:output:09sequential_145/lstm_437/while/maximum_iterations:output:0%sequential_145/lstm_437/time:output:00sequential_145/lstm_437/TensorArrayV2_1:handle:0&sequential_145/lstm_437/zeros:output:0(sequential_145/lstm_437/zeros_1:output:00sequential_145/lstm_437/strided_slice_1:output:0Osequential_145/lstm_437/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_145_lstm_437_lstm_cell_407_matmul_readvariableop_resourceFsequential_145_lstm_437_lstm_cell_407_matmul_1_readvariableop_resourceEsequential_145_lstm_437_lstm_cell_407_biasadd_readvariableop_resource*
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
*sequential_145_lstm_437_while_body_2461176*6
cond.R,
*sequential_145_lstm_437_while_cond_2461175*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_145/lstm_437/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_145/lstm_437/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_145/lstm_437/while:output:3Qsequential_145/lstm_437/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_145/lstm_437/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_145/lstm_437/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_145/lstm_437/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_145/lstm_437/strided_slice_3StridedSliceCsequential_145/lstm_437/TensorArrayV2Stack/TensorListStack:tensor:06sequential_145/lstm_437/strided_slice_3/stack:output:08sequential_145/lstm_437/strided_slice_3/stack_1:output:08sequential_145/lstm_437/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_145/lstm_437/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_145/lstm_437/transpose_1	TransposeCsequential_145/lstm_437/TensorArrayV2Stack/TensorListStack:tensor:01sequential_145/lstm_437/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_145/lstm_437/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_145/dense_145/MatMul/ReadVariableOpReadVariableOp7sequential_145_dense_145_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_145/dense_145/MatMulMatMul0sequential_145/lstm_437/strided_slice_3:output:06sequential_145/dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_145/dense_145/BiasAdd/ReadVariableOpReadVariableOp8sequential_145_dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_145/dense_145/BiasAddBiasAdd)sequential_145/dense_145/MatMul:product:07sequential_145/dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_145/dense_145/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_145/dense_145/BiasAdd/ReadVariableOp/^sequential_145/dense_145/MatMul/ReadVariableOp=^sequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp<^sequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOp>^sequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp^sequential_145/lstm_435/while=^sequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp<^sequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOp>^sequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp^sequential_145/lstm_436/while=^sequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp<^sequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOp>^sequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp^sequential_145/lstm_437/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_145/dense_145/BiasAdd/ReadVariableOp/sequential_145/dense_145/BiasAdd/ReadVariableOp2`
.sequential_145/dense_145/MatMul/ReadVariableOp.sequential_145/dense_145/MatMul/ReadVariableOp2|
<sequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp<sequential_145/lstm_435/lstm_cell_405/BiasAdd/ReadVariableOp2z
;sequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOp;sequential_145/lstm_435/lstm_cell_405/MatMul/ReadVariableOp2~
=sequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp=sequential_145/lstm_435/lstm_cell_405/MatMul_1/ReadVariableOp2>
sequential_145/lstm_435/whilesequential_145/lstm_435/while2|
<sequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp<sequential_145/lstm_436/lstm_cell_406/BiasAdd/ReadVariableOp2z
;sequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOp;sequential_145/lstm_436/lstm_cell_406/MatMul/ReadVariableOp2~
=sequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp=sequential_145/lstm_436/lstm_cell_406/MatMul_1/ReadVariableOp2>
sequential_145/lstm_436/whilesequential_145/lstm_436/while2|
<sequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp<sequential_145/lstm_437/lstm_cell_407/BiasAdd/ReadVariableOp2z
;sequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOp;sequential_145/lstm_437/lstm_cell_407/MatMul/ReadVariableOp2~
=sequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp=sequential_145/lstm_437/lstm_cell_407/MatMul_1/ReadVariableOp2>
sequential_145/lstm_437/whilesequential_145/lstm_437/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_435_input
?J
?
E__inference_lstm_435_layer_call_and_return_conditional_losses_2465050

inputs?
,lstm_cell_405_matmul_readvariableop_resource:	?A
.lstm_cell_405_matmul_1_readvariableop_resource:	d?<
-lstm_cell_405_biasadd_readvariableop_resource:	?
identity??$lstm_cell_405/BiasAdd/ReadVariableOp?#lstm_cell_405/MatMul/ReadVariableOp?%lstm_cell_405/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_405/MatMul/ReadVariableOpReadVariableOp,lstm_cell_405_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_405/MatMulMatMulstrided_slice_2:output:0+lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_405_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_405/MatMul_1MatMulzeros:output:0-lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_405/addAddV2lstm_cell_405/MatMul:product:0 lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_405_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_405/BiasAddBiasAddlstm_cell_405/add:z:0,lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_405/splitSplit&lstm_cell_405/split/split_dim:output:0lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_405/SigmoidSigmoidlstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_1Sigmoidlstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_405/mulMullstm_cell_405/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_405/ReluRelulstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_1Mullstm_cell_405/Sigmoid:y:0 lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_405/add_1AddV2lstm_cell_405/mul:z:0lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_405/Sigmoid_2Sigmoidlstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_405/Relu_1Relulstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_405/mul_2Mullstm_cell_405/Sigmoid_2:y:0"lstm_cell_405/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_405_matmul_readvariableop_resource.lstm_cell_405_matmul_1_readvariableop_resource-lstm_cell_405_biasadd_readvariableop_resource*
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
while_body_2464966*
condR
while_cond_2464965*K
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
NoOpNoOp%^lstm_cell_405/BiasAdd/ReadVariableOp$^lstm_cell_405/MatMul/ReadVariableOp&^lstm_cell_405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_405/BiasAdd/ReadVariableOp$lstm_cell_405/BiasAdd/ReadVariableOp2J
#lstm_cell_405/MatMul/ReadVariableOp#lstm_cell_405/MatMul/ReadVariableOp2N
%lstm_cell_405/MatMul_1/ReadVariableOp%lstm_cell_405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_145_lstm_437_while_body_2461176L
Hsequential_145_lstm_437_while_sequential_145_lstm_437_while_loop_counterR
Nsequential_145_lstm_437_while_sequential_145_lstm_437_while_maximum_iterations-
)sequential_145_lstm_437_while_placeholder/
+sequential_145_lstm_437_while_placeholder_1/
+sequential_145_lstm_437_while_placeholder_2/
+sequential_145_lstm_437_while_placeholder_3K
Gsequential_145_lstm_437_while_sequential_145_lstm_437_strided_slice_1_0?
?sequential_145_lstm_437_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_437_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_145_lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0:2(`
Nsequential_145_lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0:
([
Msequential_145_lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0:(*
&sequential_145_lstm_437_while_identity,
(sequential_145_lstm_437_while_identity_1,
(sequential_145_lstm_437_while_identity_2,
(sequential_145_lstm_437_while_identity_3,
(sequential_145_lstm_437_while_identity_4,
(sequential_145_lstm_437_while_identity_5I
Esequential_145_lstm_437_while_sequential_145_lstm_437_strided_slice_1?
?sequential_145_lstm_437_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_437_tensorarrayunstack_tensorlistfromtensor\
Jsequential_145_lstm_437_while_lstm_cell_407_matmul_readvariableop_resource:2(^
Lsequential_145_lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource:
(Y
Ksequential_145_lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource:(??Bsequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp?Asequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp?Csequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp?
Osequential_145/lstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_145/lstm_437/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_145_lstm_437_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_437_tensorarrayunstack_tensorlistfromtensor_0)sequential_145_lstm_437_while_placeholderXsequential_145/lstm_437/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOpLsequential_145_lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_145/lstm_437/while/lstm_cell_407/MatMulMatMulHsequential_145/lstm_437/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOpNsequential_145_lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_145/lstm_437/while/lstm_cell_407/MatMul_1MatMul+sequential_145_lstm_437_while_placeholder_2Ksequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_145/lstm_437/while/lstm_cell_407/addAddV2<sequential_145/lstm_437/while/lstm_cell_407/MatMul:product:0>sequential_145/lstm_437/while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOpMsequential_145_lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_145/lstm_437/while/lstm_cell_407/BiasAddBiasAdd3sequential_145/lstm_437/while/lstm_cell_407/add:z:0Jsequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_145/lstm_437/while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_145/lstm_437/while/lstm_cell_407/splitSplitDsequential_145/lstm_437/while/lstm_cell_407/split/split_dim:output:0<sequential_145/lstm_437/while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_145/lstm_437/while/lstm_cell_407/SigmoidSigmoid:sequential_145/lstm_437/while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_145/lstm_437/while/lstm_cell_407/Sigmoid_1Sigmoid:sequential_145/lstm_437/while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_145/lstm_437/while/lstm_cell_407/mulMul9sequential_145/lstm_437/while/lstm_cell_407/Sigmoid_1:y:0+sequential_145_lstm_437_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_145/lstm_437/while/lstm_cell_407/ReluRelu:sequential_145/lstm_437/while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_145/lstm_437/while/lstm_cell_407/mul_1Mul7sequential_145/lstm_437/while/lstm_cell_407/Sigmoid:y:0>sequential_145/lstm_437/while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_145/lstm_437/while/lstm_cell_407/add_1AddV23sequential_145/lstm_437/while/lstm_cell_407/mul:z:05sequential_145/lstm_437/while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_145/lstm_437/while/lstm_cell_407/Sigmoid_2Sigmoid:sequential_145/lstm_437/while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_145/lstm_437/while/lstm_cell_407/Relu_1Relu5sequential_145/lstm_437/while/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_145/lstm_437/while/lstm_cell_407/mul_2Mul9sequential_145/lstm_437/while/lstm_cell_407/Sigmoid_2:y:0@sequential_145/lstm_437/while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_145/lstm_437/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_145_lstm_437_while_placeholder_1)sequential_145_lstm_437_while_placeholder5sequential_145/lstm_437/while/lstm_cell_407/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_145/lstm_437/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_145/lstm_437/while/addAddV2)sequential_145_lstm_437_while_placeholder,sequential_145/lstm_437/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_145/lstm_437/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_145/lstm_437/while/add_1AddV2Hsequential_145_lstm_437_while_sequential_145_lstm_437_while_loop_counter.sequential_145/lstm_437/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_145/lstm_437/while/IdentityIdentity'sequential_145/lstm_437/while/add_1:z:0#^sequential_145/lstm_437/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_437/while/Identity_1IdentityNsequential_145_lstm_437_while_sequential_145_lstm_437_while_maximum_iterations#^sequential_145/lstm_437/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_437/while/Identity_2Identity%sequential_145/lstm_437/while/add:z:0#^sequential_145/lstm_437/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_437/while/Identity_3IdentityRsequential_145/lstm_437/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_145/lstm_437/while/NoOp*
T0*
_output_shapes
: ?
(sequential_145/lstm_437/while/Identity_4Identity5sequential_145/lstm_437/while/lstm_cell_407/mul_2:z:0#^sequential_145/lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_145/lstm_437/while/Identity_5Identity5sequential_145/lstm_437/while/lstm_cell_407/add_1:z:0#^sequential_145/lstm_437/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_145/lstm_437/while/NoOpNoOpC^sequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOpB^sequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOpD^sequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_145_lstm_437_while_identity/sequential_145/lstm_437/while/Identity:output:0"]
(sequential_145_lstm_437_while_identity_11sequential_145/lstm_437/while/Identity_1:output:0"]
(sequential_145_lstm_437_while_identity_21sequential_145/lstm_437/while/Identity_2:output:0"]
(sequential_145_lstm_437_while_identity_31sequential_145/lstm_437/while/Identity_3:output:0"]
(sequential_145_lstm_437_while_identity_41sequential_145/lstm_437/while/Identity_4:output:0"]
(sequential_145_lstm_437_while_identity_51sequential_145/lstm_437/while/Identity_5:output:0"?
Ksequential_145_lstm_437_while_lstm_cell_407_biasadd_readvariableop_resourceMsequential_145_lstm_437_while_lstm_cell_407_biasadd_readvariableop_resource_0"?
Lsequential_145_lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resourceNsequential_145_lstm_437_while_lstm_cell_407_matmul_1_readvariableop_resource_0"?
Jsequential_145_lstm_437_while_lstm_cell_407_matmul_readvariableop_resourceLsequential_145_lstm_437_while_lstm_cell_407_matmul_readvariableop_resource_0"?
Esequential_145_lstm_437_while_sequential_145_lstm_437_strided_slice_1Gsequential_145_lstm_437_while_sequential_145_lstm_437_strided_slice_1_0"?
?sequential_145_lstm_437_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_437_tensorarrayunstack_tensorlistfromtensor?sequential_145_lstm_437_while_tensorarrayv2read_tensorlistgetitem_sequential_145_lstm_437_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOpBsequential_145/lstm_437/while/lstm_cell_407/BiasAdd/ReadVariableOp2?
Asequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOpAsequential_145/lstm_437/while/lstm_cell_407/MatMul/ReadVariableOp2?
Csequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOpCsequential_145/lstm_437/while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2461537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2461537___redundant_placeholder05
1while_while_cond_2461537___redundant_placeholder15
1while_while_cond_2461537___redundant_placeholder25
1while_while_cond_2461537___redundant_placeholder3
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
*__inference_lstm_435_layer_call_fn_2464478

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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2463311s
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
while_cond_2465295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2465295___redundant_placeholder05
1while_while_cond_2465295___redundant_placeholder15
1while_while_cond_2465295___redundant_placeholder25
1while_while_cond_2465295___redundant_placeholder3
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465853
inputs_0>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2465769*
condR
while_cond_2465768*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_437_layer_call_fn_2465710

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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462981o
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

lstm_435_while_body_2464066.
*lstm_435_while_lstm_435_while_loop_counter4
0lstm_435_while_lstm_435_while_maximum_iterations
lstm_435_while_placeholder 
lstm_435_while_placeholder_1 
lstm_435_while_placeholder_2 
lstm_435_while_placeholder_3-
)lstm_435_while_lstm_435_strided_slice_1_0i
elstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0:	?R
?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?M
>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
lstm_435_while_identity
lstm_435_while_identity_1
lstm_435_while_identity_2
lstm_435_while_identity_3
lstm_435_while_identity_4
lstm_435_while_identity_5+
'lstm_435_while_lstm_435_strided_slice_1g
clstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensorN
;lstm_435_while_lstm_cell_405_matmul_readvariableop_resource:	?P
=lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource:	d?K
<lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource:	???3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp?2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp?4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp?
@lstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_435/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0lstm_435_while_placeholderIlstm_435/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_435/while/lstm_cell_405/MatMulMatMul9lstm_435/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_435/while/lstm_cell_405/MatMul_1MatMullstm_435_while_placeholder_2<lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_435/while/lstm_cell_405/addAddV2-lstm_435/while/lstm_cell_405/MatMul:product:0/lstm_435/while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_435/while/lstm_cell_405/BiasAddBiasAdd$lstm_435/while/lstm_cell_405/add:z:0;lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_435/while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_435/while/lstm_cell_405/splitSplit5lstm_435/while/lstm_cell_405/split/split_dim:output:0-lstm_435/while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_435/while/lstm_cell_405/SigmoidSigmoid+lstm_435/while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_435/while/lstm_cell_405/Sigmoid_1Sigmoid+lstm_435/while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_435/while/lstm_cell_405/mulMul*lstm_435/while/lstm_cell_405/Sigmoid_1:y:0lstm_435_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_435/while/lstm_cell_405/ReluRelu+lstm_435/while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/mul_1Mul(lstm_435/while/lstm_cell_405/Sigmoid:y:0/lstm_435/while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/add_1AddV2$lstm_435/while/lstm_cell_405/mul:z:0&lstm_435/while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_435/while/lstm_cell_405/Sigmoid_2Sigmoid+lstm_435/while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_435/while/lstm_cell_405/Relu_1Relu&lstm_435/while/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_435/while/lstm_cell_405/mul_2Mul*lstm_435/while/lstm_cell_405/Sigmoid_2:y:01lstm_435/while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_435/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_435_while_placeholder_1lstm_435_while_placeholder&lstm_435/while/lstm_cell_405/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_435/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_435/while/addAddV2lstm_435_while_placeholderlstm_435/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_435/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_435/while/add_1AddV2*lstm_435_while_lstm_435_while_loop_counterlstm_435/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_435/while/IdentityIdentitylstm_435/while/add_1:z:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_1Identity0lstm_435_while_lstm_435_while_maximum_iterations^lstm_435/while/NoOp*
T0*
_output_shapes
: t
lstm_435/while/Identity_2Identitylstm_435/while/add:z:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_3IdentityClstm_435/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_435/while/NoOp*
T0*
_output_shapes
: ?
lstm_435/while/Identity_4Identity&lstm_435/while/lstm_cell_405/mul_2:z:0^lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_435/while/Identity_5Identity&lstm_435/while/lstm_cell_405/add_1:z:0^lstm_435/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_435/while/NoOpNoOp4^lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp3^lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp5^lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_435_while_identity lstm_435/while/Identity:output:0"?
lstm_435_while_identity_1"lstm_435/while/Identity_1:output:0"?
lstm_435_while_identity_2"lstm_435/while/Identity_2:output:0"?
lstm_435_while_identity_3"lstm_435/while/Identity_3:output:0"?
lstm_435_while_identity_4"lstm_435/while/Identity_4:output:0"?
lstm_435_while_identity_5"lstm_435/while/Identity_5:output:0"T
'lstm_435_while_lstm_435_strided_slice_1)lstm_435_while_lstm_435_strided_slice_1_0"~
<lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource>lstm_435_while_lstm_cell_405_biasadd_readvariableop_resource_0"?
=lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource?lstm_435_while_lstm_cell_405_matmul_1_readvariableop_resource_0"|
;lstm_435_while_lstm_cell_405_matmul_readvariableop_resource=lstm_435_while_lstm_cell_405_matmul_readvariableop_resource_0"?
clstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensorelstm_435_while_tensorarrayv2read_tensorlistgetitem_lstm_435_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp3lstm_435/while/lstm_cell_405/BiasAdd/ReadVariableOp2h
2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp2lstm_435/while/lstm_cell_405/MatMul/ReadVariableOp2l
4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp4lstm_435/while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2466197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2466197___redundant_placeholder05
1while_while_cond_2466197___redundant_placeholder15
1while_while_cond_2466197___redundant_placeholder25
1while_while_cond_2466197___redundant_placeholder3
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
while_body_2462238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_407_2462262_0:2(/
while_lstm_cell_407_2462264_0:
(+
while_lstm_cell_407_2462266_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_407_2462262:2(-
while_lstm_cell_407_2462264:
()
while_lstm_cell_407_2462266:(??+while/lstm_cell_407/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_407/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_407_2462262_0while_lstm_cell_407_2462264_0while_lstm_cell_407_2462266_0*
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462179?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_407/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_407/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_407/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_407_2462262while_lstm_cell_407_2462262_0"<
while_lstm_cell_407_2462264while_lstm_cell_407_2462264_0"<
while_lstm_cell_407_2462266while_lstm_cell_407_2462266_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_407/StatefulPartitionedCall+while/lstm_cell_407/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2465296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2464822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2464822___redundant_placeholder05
1while_while_cond_2464822___redundant_placeholder15
1while_while_cond_2464822___redundant_placeholder25
1while_while_cond_2464822___redundant_placeholder3
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
while_body_2465582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2465769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466399

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
while_body_2464966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_405_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_405_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_405_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_405_matmul_readvariableop_resource:	?G
4while_lstm_cell_405_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_405_biasadd_readvariableop_resource:	???*while/lstm_cell_405/BiasAdd/ReadVariableOp?)while/lstm_cell_405/MatMul/ReadVariableOp?+while/lstm_cell_405/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_405/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_405_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_405/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_405/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_405_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_405/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_405/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_405/addAddV2$while/lstm_cell_405/MatMul:product:0&while/lstm_cell_405/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_405/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_405_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_405/BiasAddBiasAddwhile/lstm_cell_405/add:z:02while/lstm_cell_405/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_405/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_405/splitSplit,while/lstm_cell_405/split/split_dim:output:0$while/lstm_cell_405/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_405/SigmoidSigmoid"while/lstm_cell_405/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_1Sigmoid"while/lstm_cell_405/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mulMul!while/lstm_cell_405/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_405/ReluRelu"while/lstm_cell_405/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_1Mulwhile/lstm_cell_405/Sigmoid:y:0&while/lstm_cell_405/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/add_1AddV2while/lstm_cell_405/mul:z:0while/lstm_cell_405/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_405/Sigmoid_2Sigmoid"while/lstm_cell_405/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_405/Relu_1Reluwhile/lstm_cell_405/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_405/mul_2Mul!while/lstm_cell_405/Sigmoid_2:y:0(while/lstm_cell_405/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_405/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_405/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_405/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_405/BiasAdd/ReadVariableOp*^while/lstm_cell_405/MatMul/ReadVariableOp,^while/lstm_cell_405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_405_biasadd_readvariableop_resource5while_lstm_cell_405_biasadd_readvariableop_resource_0"n
4while_lstm_cell_405_matmul_1_readvariableop_resource6while_lstm_cell_405_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_405_matmul_readvariableop_resource4while_lstm_cell_405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_405/BiasAdd/ReadVariableOp*while/lstm_cell_405/BiasAdd/ReadVariableOp2V
)while/lstm_cell_405/MatMul/ReadVariableOp)while/lstm_cell_405/MatMul/ReadVariableOp2Z
+while/lstm_cell_405/MatMul_1/ReadVariableOp+while/lstm_cell_405/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_437_while_cond_2463916.
*lstm_437_while_lstm_437_while_loop_counter4
0lstm_437_while_lstm_437_while_maximum_iterations
lstm_437_while_placeholder 
lstm_437_while_placeholder_1 
lstm_437_while_placeholder_2 
lstm_437_while_placeholder_30
,lstm_437_while_less_lstm_437_strided_slice_1G
Clstm_437_while_lstm_437_while_cond_2463916___redundant_placeholder0G
Clstm_437_while_lstm_437_while_cond_2463916___redundant_placeholder1G
Clstm_437_while_lstm_437_while_cond_2463916___redundant_placeholder2G
Clstm_437_while_lstm_437_while_cond_2463916___redundant_placeholder3
lstm_437_while_identity
?
lstm_437/while/LessLesslstm_437_while_placeholder,lstm_437_while_less_lstm_437_strided_slice_1*
T0*
_output_shapes
: ]
lstm_437/while/IdentityIdentitylstm_437/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_437_while_identity lstm_437/while/Identity:output:0*(
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
0__inference_sequential_145_layer_call_fn_2463553

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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2462790o
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
?
?
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466595

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
*__inference_lstm_435_layer_call_fn_2464445
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2461416|
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

?
lstm_437_while_cond_2464343.
*lstm_437_while_lstm_437_while_loop_counter4
0lstm_437_while_lstm_437_while_maximum_iterations
lstm_437_while_placeholder 
lstm_437_while_placeholder_1 
lstm_437_while_placeholder_2 
lstm_437_while_placeholder_30
,lstm_437_while_less_lstm_437_strided_slice_1G
Clstm_437_while_lstm_437_while_cond_2464343___redundant_placeholder0G
Clstm_437_while_lstm_437_while_cond_2464343___redundant_placeholder1G
Clstm_437_while_lstm_437_while_cond_2464343___redundant_placeholder2G
Clstm_437_while_lstm_437_while_cond_2464343___redundant_placeholder3
lstm_437_while_identity
?
lstm_437/while/LessLesslstm_437_while_placeholder,lstm_437_while_less_lstm_437_strided_slice_1*
T0*
_output_shapes
: ]
lstm_437/while/IdentityIdentitylstm_437/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_437_while_identity lstm_437/while/Identity:output:0*(
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
while_body_2462047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_407_2462071_0:2(/
while_lstm_cell_407_2462073_0:
(+
while_lstm_cell_407_2462075_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_407_2462071:2(-
while_lstm_cell_407_2462073:
()
while_lstm_cell_407_2462075:(??+while/lstm_cell_407/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_407/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_407_2462071_0while_lstm_cell_407_2462073_0while_lstm_cell_407_2462075_0*
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462033?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_407/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_407/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_407/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_407_2462071while_lstm_cell_407_2462071_0"<
while_lstm_cell_407_2462073while_lstm_cell_407_2462073_0"<
while_lstm_cell_407_2462075while_lstm_cell_407_2462075_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_407/StatefulPartitionedCall+while/lstm_cell_407/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_436_while_cond_2464204.
*lstm_436_while_lstm_436_while_loop_counter4
0lstm_436_while_lstm_436_while_maximum_iterations
lstm_436_while_placeholder 
lstm_436_while_placeholder_1 
lstm_436_while_placeholder_2 
lstm_436_while_placeholder_30
,lstm_436_while_less_lstm_436_strided_slice_1G
Clstm_436_while_lstm_436_while_cond_2464204___redundant_placeholder0G
Clstm_436_while_lstm_436_while_cond_2464204___redundant_placeholder1G
Clstm_436_while_lstm_436_while_cond_2464204___redundant_placeholder2G
Clstm_436_while_lstm_436_while_cond_2464204___redundant_placeholder3
lstm_436_while_identity
?
lstm_436/while/LessLesslstm_436_while_placeholder,lstm_436_while_less_lstm_436_strided_slice_1*
T0*
_output_shapes
: ]
lstm_436/while/IdentityIdentitylstm_436/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_436_while_identity lstm_436/while/Identity:output:0*(
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
?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463461
lstm_435_input#
lstm_435_2463434:	?#
lstm_435_2463436:	d?
lstm_435_2463438:	?#
lstm_436_2463441:	d?#
lstm_436_2463443:	2?
lstm_436_2463445:	?"
lstm_437_2463448:2("
lstm_437_2463450:
(
lstm_437_2463452:(#
dense_145_2463455:

dense_145_2463457:
identity??!dense_145/StatefulPartitionedCall? lstm_435/StatefulPartitionedCall? lstm_436/StatefulPartitionedCall? lstm_437/StatefulPartitionedCall?
 lstm_435/StatefulPartitionedCallStatefulPartitionedCalllstm_435_inputlstm_435_2463434lstm_435_2463436lstm_435_2463438*
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2462465?
 lstm_436/StatefulPartitionedCallStatefulPartitionedCall)lstm_435/StatefulPartitionedCall:output:0lstm_436_2463441lstm_436_2463443lstm_436_2463445*
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2462615?
 lstm_437/StatefulPartitionedCallStatefulPartitionedCall)lstm_436/StatefulPartitionedCall:output:0lstm_437_2463448lstm_437_2463450lstm_437_2463452*
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462765?
!dense_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_437/StatefulPartitionedCall:output:0dense_145_2463455dense_145_2463457*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2462783y
IdentityIdentity*dense_145/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_145/StatefulPartitionedCall!^lstm_435/StatefulPartitionedCall!^lstm_436/StatefulPartitionedCall!^lstm_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2D
 lstm_435/StatefulPartitionedCall lstm_435/StatefulPartitionedCall2D
 lstm_436/StatefulPartitionedCall lstm_436/StatefulPartitionedCall2D
 lstm_437/StatefulPartitionedCall lstm_437/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_435_input
?8
?
while_body_2463062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_406_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_406_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_406_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_406_matmul_readvariableop_resource:	d?G
4while_lstm_cell_406_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_406_biasadd_readvariableop_resource:	???*while/lstm_cell_406/BiasAdd/ReadVariableOp?)while/lstm_cell_406/MatMul/ReadVariableOp?+while/lstm_cell_406/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_406/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_406_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_406/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_406_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_406/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_406/addAddV2$while/lstm_cell_406/MatMul:product:0&while/lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_406_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_406/BiasAddBiasAddwhile/lstm_cell_406/add:z:02while/lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_406/splitSplit,while/lstm_cell_406/split/split_dim:output:0$while/lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_406/SigmoidSigmoid"while/lstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_1Sigmoid"while/lstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mulMul!while/lstm_cell_406/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_406/ReluRelu"while/lstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_1Mulwhile/lstm_cell_406/Sigmoid:y:0&while/lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/add_1AddV2while/lstm_cell_406/mul:z:0while/lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_406/Sigmoid_2Sigmoid"while/lstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_406/Relu_1Reluwhile/lstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_406/mul_2Mul!while/lstm_cell_406/Sigmoid_2:y:0(while/lstm_cell_406/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_406/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_406/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_406/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_406/BiasAdd/ReadVariableOp*^while/lstm_cell_406/MatMul/ReadVariableOp,^while/lstm_cell_406/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_406_biasadd_readvariableop_resource5while_lstm_cell_406_biasadd_readvariableop_resource_0"n
4while_lstm_cell_406_matmul_1_readvariableop_resource6while_lstm_cell_406_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_406_matmul_readvariableop_resource4while_lstm_cell_406_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_406/BiasAdd/ReadVariableOp*while/lstm_cell_406/BiasAdd/ReadVariableOp2V
)while/lstm_cell_406/MatMul/ReadVariableOp)while/lstm_cell_406/MatMul/ReadVariableOp2Z
+while/lstm_cell_406/MatMul_1/ReadVariableOp+while/lstm_cell_406/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462033

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
F__inference_dense_145_layer_call_and_return_conditional_losses_2466301

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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465380
inputs_0?
,lstm_cell_406_matmul_readvariableop_resource:	d?A
.lstm_cell_406_matmul_1_readvariableop_resource:	2?<
-lstm_cell_406_biasadd_readvariableop_resource:	?
identity??$lstm_cell_406/BiasAdd/ReadVariableOp?#lstm_cell_406/MatMul/ReadVariableOp?%lstm_cell_406/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_406/MatMul/ReadVariableOpReadVariableOp,lstm_cell_406_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_406/MatMulMatMulstrided_slice_2:output:0+lstm_cell_406/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_406/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_406_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_406/MatMul_1MatMulzeros:output:0-lstm_cell_406/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_406/addAddV2lstm_cell_406/MatMul:product:0 lstm_cell_406/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_406/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_406_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_406/BiasAddBiasAddlstm_cell_406/add:z:0,lstm_cell_406/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_406/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_406/splitSplit&lstm_cell_406/split/split_dim:output:0lstm_cell_406/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_406/SigmoidSigmoidlstm_cell_406/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_1Sigmoidlstm_cell_406/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_406/mulMullstm_cell_406/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_406/ReluRelulstm_cell_406/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_1Mullstm_cell_406/Sigmoid:y:0 lstm_cell_406/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_406/add_1AddV2lstm_cell_406/mul:z:0lstm_cell_406/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_406/Sigmoid_2Sigmoidlstm_cell_406/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_406/Relu_1Relulstm_cell_406/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_406/mul_2Mullstm_cell_406/Sigmoid_2:y:0"lstm_cell_406/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_406_matmul_readvariableop_resource.lstm_cell_406_matmul_1_readvariableop_resource-lstm_cell_406_biasadd_readvariableop_resource*
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
while_body_2465296*
condR
while_cond_2465295*K
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
NoOpNoOp%^lstm_cell_406/BiasAdd/ReadVariableOp$^lstm_cell_406/MatMul/ReadVariableOp&^lstm_cell_406/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_406/BiasAdd/ReadVariableOp$lstm_cell_406/BiasAdd/ReadVariableOp2J
#lstm_cell_406/MatMul/ReadVariableOp#lstm_cell_406/MatMul/ReadVariableOp2N
%lstm_cell_406/MatMul_1/ReadVariableOp%lstm_cell_406/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2465912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_407_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_407_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_407_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_407_matmul_readvariableop_resource:2(F
4while_lstm_cell_407_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_407_biasadd_readvariableop_resource:(??*while/lstm_cell_407/BiasAdd/ReadVariableOp?)while/lstm_cell_407/MatMul/ReadVariableOp?+while/lstm_cell_407/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_407/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_407_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_407/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_407_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_407/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_407/addAddV2$while/lstm_cell_407/MatMul:product:0&while/lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_407_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_407/BiasAddBiasAddwhile/lstm_cell_407/add:z:02while/lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_407/splitSplit,while/lstm_cell_407/split/split_dim:output:0$while/lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_407/SigmoidSigmoid"while/lstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_1Sigmoid"while/lstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mulMul!while/lstm_cell_407/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_407/ReluRelu"while/lstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_1Mulwhile/lstm_cell_407/Sigmoid:y:0&while/lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/add_1AddV2while/lstm_cell_407/mul:z:0while/lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_407/Sigmoid_2Sigmoid"while/lstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_407/Relu_1Reluwhile/lstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_407/mul_2Mul!while/lstm_cell_407/Sigmoid_2:y:0(while/lstm_cell_407/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_407/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_407/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_407/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_407/BiasAdd/ReadVariableOp*^while/lstm_cell_407/MatMul/ReadVariableOp,^while/lstm_cell_407/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_407_biasadd_readvariableop_resource5while_lstm_cell_407_biasadd_readvariableop_resource_0"n
4while_lstm_cell_407_matmul_1_readvariableop_resource6while_lstm_cell_407_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_407_matmul_readvariableop_resource4while_lstm_cell_407_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_407/BiasAdd/ReadVariableOp*while/lstm_cell_407/BiasAdd/ReadVariableOp2V
)while/lstm_cell_407/MatMul/ReadVariableOp)while/lstm_cell_407/MatMul/ReadVariableOp2Z
+while/lstm_cell_407/MatMul_1/ReadVariableOp+while/lstm_cell_407/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2463226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2463226___redundant_placeholder05
1while_while_cond_2463226___redundant_placeholder15
1while_while_cond_2463226___redundant_placeholder25
1while_while_cond_2463226___redundant_placeholder3
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
/__inference_lstm_cell_407_layer_call_fn_2466531

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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2462179o
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2461607

inputs(
lstm_cell_405_2461525:	?(
lstm_cell_405_2461527:	d?$
lstm_cell_405_2461529:	?
identity??%lstm_cell_405/StatefulPartitionedCall?while;
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
%lstm_cell_405/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_405_2461525lstm_cell_405_2461527lstm_cell_405_2461529*
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461479n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_405_2461525lstm_cell_405_2461527lstm_cell_405_2461529*
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
while_body_2461538*
condR
while_cond_2461537*K
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
NoOpNoOp&^lstm_cell_405/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_405/StatefulPartitionedCall%lstm_cell_405/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2463061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2463061___redundant_placeholder05
1while_while_cond_2463061___redundant_placeholder15
1while_while_cond_2463061___redundant_placeholder25
1while_while_cond_2463061___redundant_placeholder3
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2461766

inputs(
lstm_cell_406_2461684:	d?(
lstm_cell_406_2461686:	2?$
lstm_cell_406_2461688:	?
identity??%lstm_cell_406/StatefulPartitionedCall?while;
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
%lstm_cell_406/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_406_2461684lstm_cell_406_2461686lstm_cell_406_2461688*
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461683n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_406_2461684lstm_cell_406_2461686lstm_cell_406_2461688*
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
while_body_2461697*
condR
while_cond_2461696*K
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
NoOpNoOp&^lstm_cell_406/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_406/StatefulPartitionedCall%lstm_cell_406/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_2461888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_406_2461912_0:	d?0
while_lstm_cell_406_2461914_0:	2?,
while_lstm_cell_406_2461916_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_406_2461912:	d?.
while_lstm_cell_406_2461914:	2?*
while_lstm_cell_406_2461916:	???+while/lstm_cell_406/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_406/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_406_2461912_0while_lstm_cell_406_2461914_0while_lstm_cell_406_2461916_0*
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2461829?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_406/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_406/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_406/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_406/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_406_2461912while_lstm_cell_406_2461912_0"<
while_lstm_cell_406_2461914while_lstm_cell_406_2461914_0"<
while_lstm_cell_406_2461916while_lstm_cell_406_2461916_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_406/StatefulPartitionedCall+while/lstm_cell_406/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_436_layer_call_fn_2465061
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2461766|
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
?
?
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2461479

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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2462981

inputs>
,lstm_cell_407_matmul_readvariableop_resource:2(@
.lstm_cell_407_matmul_1_readvariableop_resource:
(;
-lstm_cell_407_biasadd_readvariableop_resource:(
identity??$lstm_cell_407/BiasAdd/ReadVariableOp?#lstm_cell_407/MatMul/ReadVariableOp?%lstm_cell_407/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_407/MatMul/ReadVariableOpReadVariableOp,lstm_cell_407_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_407/MatMulMatMulstrided_slice_2:output:0+lstm_cell_407/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_407/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_407_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_407/MatMul_1MatMulzeros:output:0-lstm_cell_407/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_407/addAddV2lstm_cell_407/MatMul:product:0 lstm_cell_407/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_407/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_407_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_407/BiasAddBiasAddlstm_cell_407/add:z:0,lstm_cell_407/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_407/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_407/splitSplit&lstm_cell_407/split/split_dim:output:0lstm_cell_407/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_407/SigmoidSigmoidlstm_cell_407/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_1Sigmoidlstm_cell_407/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_407/mulMullstm_cell_407/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_407/ReluRelulstm_cell_407/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_1Mullstm_cell_407/Sigmoid:y:0 lstm_cell_407/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_407/add_1AddV2lstm_cell_407/mul:z:0lstm_cell_407/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_407/Sigmoid_2Sigmoidlstm_cell_407/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_407/Relu_1Relulstm_cell_407/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_407/mul_2Mullstm_cell_407/Sigmoid_2:y:0"lstm_cell_407/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_407_matmul_readvariableop_resource.lstm_cell_407_matmul_1_readvariableop_resource-lstm_cell_407_biasadd_readvariableop_resource*
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
while_body_2462897*
condR
while_cond_2462896*K
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
NoOpNoOp%^lstm_cell_407/BiasAdd/ReadVariableOp$^lstm_cell_407/MatMul/ReadVariableOp&^lstm_cell_407/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_407/BiasAdd/ReadVariableOp$lstm_cell_407/BiasAdd/ReadVariableOp2J
#lstm_cell_407/MatMul/ReadVariableOp#lstm_cell_407/MatMul/ReadVariableOp2N
%lstm_cell_407/MatMul_1/ReadVariableOp%lstm_cell_407/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_435_layer_call_fn_2464467

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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2462465s
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
lstm_435_input;
 serving_default_lstm_435_input:0?????????=
	dense_1450
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
2dense_145/kernel
:2dense_145/bias
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
0:.	?2lstm_435/lstm_cell_435/kernel
::8	d?2'lstm_435/lstm_cell_435/recurrent_kernel
*:(?2lstm_435/lstm_cell_435/bias
0:.	d?2lstm_436/lstm_cell_436/kernel
::8	2?2'lstm_436/lstm_cell_436/recurrent_kernel
*:(?2lstm_436/lstm_cell_436/bias
/:-2(2lstm_437/lstm_cell_437/kernel
9:7
(2'lstm_437/lstm_cell_437/recurrent_kernel
):'(2lstm_437/lstm_cell_437/bias
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
2Adam/dense_145/kernel/m
!:2Adam/dense_145/bias/m
5:3	?2$Adam/lstm_435/lstm_cell_435/kernel/m
?:=	d?2.Adam/lstm_435/lstm_cell_435/recurrent_kernel/m
/:-?2"Adam/lstm_435/lstm_cell_435/bias/m
5:3	d?2$Adam/lstm_436/lstm_cell_436/kernel/m
?:=	2?2.Adam/lstm_436/lstm_cell_436/recurrent_kernel/m
/:-?2"Adam/lstm_436/lstm_cell_436/bias/m
4:22(2$Adam/lstm_437/lstm_cell_437/kernel/m
>:<
(2.Adam/lstm_437/lstm_cell_437/recurrent_kernel/m
.:,(2"Adam/lstm_437/lstm_cell_437/bias/m
':%
2Adam/dense_145/kernel/v
!:2Adam/dense_145/bias/v
5:3	?2$Adam/lstm_435/lstm_cell_435/kernel/v
?:=	d?2.Adam/lstm_435/lstm_cell_435/recurrent_kernel/v
/:-?2"Adam/lstm_435/lstm_cell_435/bias/v
5:3	d?2$Adam/lstm_436/lstm_cell_436/kernel/v
?:=	2?2.Adam/lstm_436/lstm_cell_436/recurrent_kernel/v
/:-?2"Adam/lstm_436/lstm_cell_436/bias/v
4:22(2$Adam/lstm_437/lstm_cell_437/kernel/v
>:<
(2.Adam/lstm_437/lstm_cell_437/recurrent_kernel/v
.:,(2"Adam/lstm_437/lstm_cell_437/bias/v
?2?
0__inference_sequential_145_layer_call_fn_2462815
0__inference_sequential_145_layer_call_fn_2463553
0__inference_sequential_145_layer_call_fn_2463580
0__inference_sequential_145_layer_call_fn_2463431?
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464007
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464434
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463461
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463491?
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
"__inference__wrapped_model_2461266lstm_435_input"?
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
*__inference_lstm_435_layer_call_fn_2464445
*__inference_lstm_435_layer_call_fn_2464456
*__inference_lstm_435_layer_call_fn_2464467
*__inference_lstm_435_layer_call_fn_2464478?
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464621
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464764
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464907
E__inference_lstm_435_layer_call_and_return_conditional_losses_2465050?
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
*__inference_lstm_436_layer_call_fn_2465061
*__inference_lstm_436_layer_call_fn_2465072
*__inference_lstm_436_layer_call_fn_2465083
*__inference_lstm_436_layer_call_fn_2465094?
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465237
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465380
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465523
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465666?
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
*__inference_lstm_437_layer_call_fn_2465677
*__inference_lstm_437_layer_call_fn_2465688
*__inference_lstm_437_layer_call_fn_2465699
*__inference_lstm_437_layer_call_fn_2465710?
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465853
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465996
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466139
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466282?
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
+__inference_dense_145_layer_call_fn_2466291?
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
F__inference_dense_145_layer_call_and_return_conditional_losses_2466301?
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
%__inference_signature_wrapper_2463526lstm_435_input"?
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
/__inference_lstm_cell_405_layer_call_fn_2466318
/__inference_lstm_cell_405_layer_call_fn_2466335?
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466367
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466399?
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
/__inference_lstm_cell_406_layer_call_fn_2466416
/__inference_lstm_cell_406_layer_call_fn_2466433?
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466465
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466497?
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
/__inference_lstm_cell_407_layer_call_fn_2466514
/__inference_lstm_cell_407_layer_call_fn_2466531?
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466563
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466595?
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
"__inference__wrapped_model_2461266?-./012345!";?8
1?.
,?)
lstm_435_input?????????
? "5?2
0
	dense_145#? 
	dense_145??????????
F__inference_dense_145_layer_call_and_return_conditional_losses_2466301\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_145_layer_call_fn_2466291O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464621?-./O?L
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464764?-./O?L
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2464907q-./??<
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
E__inference_lstm_435_layer_call_and_return_conditional_losses_2465050q-./??<
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
*__inference_lstm_435_layer_call_fn_2464445}-./O?L
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
*__inference_lstm_435_layer_call_fn_2464456}-./O?L
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
*__inference_lstm_435_layer_call_fn_2464467d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_435_layer_call_fn_2464478d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465237?012O?L
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465380?012O?L
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465523q012??<
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
E__inference_lstm_436_layer_call_and_return_conditional_losses_2465666q012??<
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
*__inference_lstm_436_layer_call_fn_2465061}012O?L
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
*__inference_lstm_436_layer_call_fn_2465072}012O?L
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
*__inference_lstm_436_layer_call_fn_2465083d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_436_layer_call_fn_2465094d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465853}345O?L
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2465996}345O?L
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466139m345??<
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
E__inference_lstm_437_layer_call_and_return_conditional_losses_2466282m345??<
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
*__inference_lstm_437_layer_call_fn_2465677p345O?L
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
*__inference_lstm_437_layer_call_fn_2465688p345O?L
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
*__inference_lstm_437_layer_call_fn_2465699`345??<
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
*__inference_lstm_437_layer_call_fn_2465710`345??<
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466367?-./??}
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
J__inference_lstm_cell_405_layer_call_and_return_conditional_losses_2466399?-./??}
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
/__inference_lstm_cell_405_layer_call_fn_2466318?-./??}
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
/__inference_lstm_cell_405_layer_call_fn_2466335?-./??}
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466465?012??}
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
J__inference_lstm_cell_406_layer_call_and_return_conditional_losses_2466497?012??}
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
/__inference_lstm_cell_406_layer_call_fn_2466416?012??}
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
/__inference_lstm_cell_406_layer_call_fn_2466433?012??}
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466563?345??}
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
J__inference_lstm_cell_407_layer_call_and_return_conditional_losses_2466595?345??}
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
/__inference_lstm_cell_407_layer_call_fn_2466514?345??}
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
/__inference_lstm_cell_407_layer_call_fn_2466531?345??}
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463461y-./012345!"C?@
9?6
,?)
lstm_435_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2463491y-./012345!"C?@
9?6
,?)
lstm_435_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464007q-./012345!";?8
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
K__inference_sequential_145_layer_call_and_return_conditional_losses_2464434q-./012345!";?8
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
0__inference_sequential_145_layer_call_fn_2462815l-./012345!"C?@
9?6
,?)
lstm_435_input?????????
p 

 
? "???????????
0__inference_sequential_145_layer_call_fn_2463431l-./012345!"C?@
9?6
,?)
lstm_435_input?????????
p

 
? "???????????
0__inference_sequential_145_layer_call_fn_2463553d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_145_layer_call_fn_2463580d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2463526?-./012345!"M?J
? 
C?@
>
lstm_435_input,?)
lstm_435_input?????????"5?2
0
	dense_145#? 
	dense_145?????????