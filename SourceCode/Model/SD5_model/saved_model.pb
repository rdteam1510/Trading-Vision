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
dense_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_169/kernel
u
$dense_169/kernel/Read/ReadVariableOpReadVariableOpdense_169/kernel*
_output_shapes

:
*
dtype0
t
dense_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_169/bias
m
"dense_169/bias/Read/ReadVariableOpReadVariableOpdense_169/bias*
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
lstm_507/lstm_cell_507/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_507/lstm_cell_507/kernel
?
1lstm_507/lstm_cell_507/kernel/Read/ReadVariableOpReadVariableOplstm_507/lstm_cell_507/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_507/lstm_cell_507/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_507/lstm_cell_507/recurrent_kernel
?
;lstm_507/lstm_cell_507/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_507/lstm_cell_507/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_507/lstm_cell_507/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_507/lstm_cell_507/bias
?
/lstm_507/lstm_cell_507/bias/Read/ReadVariableOpReadVariableOplstm_507/lstm_cell_507/bias*
_output_shapes	
:?*
dtype0
?
lstm_508/lstm_cell_508/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_508/lstm_cell_508/kernel
?
1lstm_508/lstm_cell_508/kernel/Read/ReadVariableOpReadVariableOplstm_508/lstm_cell_508/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_508/lstm_cell_508/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_508/lstm_cell_508/recurrent_kernel
?
;lstm_508/lstm_cell_508/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_508/lstm_cell_508/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_508/lstm_cell_508/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_508/lstm_cell_508/bias
?
/lstm_508/lstm_cell_508/bias/Read/ReadVariableOpReadVariableOplstm_508/lstm_cell_508/bias*
_output_shapes	
:?*
dtype0
?
lstm_509/lstm_cell_509/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_509/lstm_cell_509/kernel
?
1lstm_509/lstm_cell_509/kernel/Read/ReadVariableOpReadVariableOplstm_509/lstm_cell_509/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_509/lstm_cell_509/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_509/lstm_cell_509/recurrent_kernel
?
;lstm_509/lstm_cell_509/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_509/lstm_cell_509/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_509/lstm_cell_509/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_509/lstm_cell_509/bias
?
/lstm_509/lstm_cell_509/bias/Read/ReadVariableOpReadVariableOplstm_509/lstm_cell_509/bias*
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
Adam/dense_169/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_169/kernel/m
?
+Adam/dense_169/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_169/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_169/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_169/bias/m
{
)Adam/dense_169/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_169/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_507/lstm_cell_507/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_507/lstm_cell_507/kernel/m
?
8Adam/lstm_507/lstm_cell_507/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_507/lstm_cell_507/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_507/lstm_cell_507/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_507/lstm_cell_507/recurrent_kernel/m
?
BAdam/lstm_507/lstm_cell_507/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_507/lstm_cell_507/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_507/lstm_cell_507/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_507/lstm_cell_507/bias/m
?
6Adam/lstm_507/lstm_cell_507/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_507/lstm_cell_507/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_508/lstm_cell_508/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_508/lstm_cell_508/kernel/m
?
8Adam/lstm_508/lstm_cell_508/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_508/lstm_cell_508/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_508/lstm_cell_508/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_508/lstm_cell_508/recurrent_kernel/m
?
BAdam/lstm_508/lstm_cell_508/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_508/lstm_cell_508/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_508/lstm_cell_508/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_508/lstm_cell_508/bias/m
?
6Adam/lstm_508/lstm_cell_508/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_508/lstm_cell_508/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_509/lstm_cell_509/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_509/lstm_cell_509/kernel/m
?
8Adam/lstm_509/lstm_cell_509/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_509/lstm_cell_509/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_509/lstm_cell_509/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_509/lstm_cell_509/recurrent_kernel/m
?
BAdam/lstm_509/lstm_cell_509/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_509/lstm_cell_509/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_509/lstm_cell_509/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_509/lstm_cell_509/bias/m
?
6Adam/lstm_509/lstm_cell_509/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_509/lstm_cell_509/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_169/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_169/kernel/v
?
+Adam/dense_169/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_169/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_169/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_169/bias/v
{
)Adam/dense_169/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_169/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_507/lstm_cell_507/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_507/lstm_cell_507/kernel/v
?
8Adam/lstm_507/lstm_cell_507/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_507/lstm_cell_507/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_507/lstm_cell_507/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_507/lstm_cell_507/recurrent_kernel/v
?
BAdam/lstm_507/lstm_cell_507/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_507/lstm_cell_507/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_507/lstm_cell_507/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_507/lstm_cell_507/bias/v
?
6Adam/lstm_507/lstm_cell_507/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_507/lstm_cell_507/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_508/lstm_cell_508/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_508/lstm_cell_508/kernel/v
?
8Adam/lstm_508/lstm_cell_508/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_508/lstm_cell_508/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_508/lstm_cell_508/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_508/lstm_cell_508/recurrent_kernel/v
?
BAdam/lstm_508/lstm_cell_508/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_508/lstm_cell_508/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_508/lstm_cell_508/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_508/lstm_cell_508/bias/v
?
6Adam/lstm_508/lstm_cell_508/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_508/lstm_cell_508/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_509/lstm_cell_509/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_509/lstm_cell_509/kernel/v
?
8Adam/lstm_509/lstm_cell_509/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_509/lstm_cell_509/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_509/lstm_cell_509/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_509/lstm_cell_509/recurrent_kernel/v
?
BAdam/lstm_509/lstm_cell_509/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_509/lstm_cell_509/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_509/lstm_cell_509/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_509/lstm_cell_509/bias/v
?
6Adam/lstm_509/lstm_cell_509/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_509/lstm_cell_509/bias/v*
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
VARIABLE_VALUEdense_169/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_169/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_507/lstm_cell_507/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_507/lstm_cell_507/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_507/lstm_cell_507/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_508/lstm_cell_508/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_508/lstm_cell_508/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_508/lstm_cell_508/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_509/lstm_cell_509/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_509/lstm_cell_509/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_509/lstm_cell_509/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_169/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_169/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_507/lstm_cell_507/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_507/lstm_cell_507/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_507/lstm_cell_507/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_508/lstm_cell_508/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_508/lstm_cell_508/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_508/lstm_cell_508/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_509/lstm_cell_509/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_509/lstm_cell_509/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_509/lstm_cell_509/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_169/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_169/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_507/lstm_cell_507/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_507/lstm_cell_507/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_507/lstm_cell_507/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_508/lstm_cell_508/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_508/lstm_cell_508/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_508/lstm_cell_508/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_509/lstm_cell_509/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_509/lstm_cell_509/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_509/lstm_cell_509/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_507_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_507_inputlstm_507/lstm_cell_507/kernel'lstm_507/lstm_cell_507/recurrent_kernellstm_507/lstm_cell_507/biaslstm_508/lstm_cell_508/kernel'lstm_508/lstm_cell_508/recurrent_kernellstm_508/lstm_cell_508/biaslstm_509/lstm_cell_509/kernel'lstm_509/lstm_cell_509/recurrent_kernellstm_509/lstm_cell_509/biasdense_169/kerneldense_169/bias*
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
$__inference_signature_wrapper_903799
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_169/kernel/Read/ReadVariableOp"dense_169/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_507/lstm_cell_507/kernel/Read/ReadVariableOp;lstm_507/lstm_cell_507/recurrent_kernel/Read/ReadVariableOp/lstm_507/lstm_cell_507/bias/Read/ReadVariableOp1lstm_508/lstm_cell_508/kernel/Read/ReadVariableOp;lstm_508/lstm_cell_508/recurrent_kernel/Read/ReadVariableOp/lstm_508/lstm_cell_508/bias/Read/ReadVariableOp1lstm_509/lstm_cell_509/kernel/Read/ReadVariableOp;lstm_509/lstm_cell_509/recurrent_kernel/Read/ReadVariableOp/lstm_509/lstm_cell_509/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_169/kernel/m/Read/ReadVariableOp)Adam/dense_169/bias/m/Read/ReadVariableOp8Adam/lstm_507/lstm_cell_507/kernel/m/Read/ReadVariableOpBAdam/lstm_507/lstm_cell_507/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_507/lstm_cell_507/bias/m/Read/ReadVariableOp8Adam/lstm_508/lstm_cell_508/kernel/m/Read/ReadVariableOpBAdam/lstm_508/lstm_cell_508/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_508/lstm_cell_508/bias/m/Read/ReadVariableOp8Adam/lstm_509/lstm_cell_509/kernel/m/Read/ReadVariableOpBAdam/lstm_509/lstm_cell_509/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_509/lstm_cell_509/bias/m/Read/ReadVariableOp+Adam/dense_169/kernel/v/Read/ReadVariableOp)Adam/dense_169/bias/v/Read/ReadVariableOp8Adam/lstm_507/lstm_cell_507/kernel/v/Read/ReadVariableOpBAdam/lstm_507/lstm_cell_507/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_507/lstm_cell_507/bias/v/Read/ReadVariableOp8Adam/lstm_508/lstm_cell_508/kernel/v/Read/ReadVariableOpBAdam/lstm_508/lstm_cell_508/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_508/lstm_cell_508/bias/v/Read/ReadVariableOp8Adam/lstm_509/lstm_cell_509/kernel/v/Read/ReadVariableOpBAdam/lstm_509/lstm_cell_509/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_509/lstm_cell_509/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_907011
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_169/kerneldense_169/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_507/lstm_cell_507/kernel'lstm_507/lstm_cell_507/recurrent_kernellstm_507/lstm_cell_507/biaslstm_508/lstm_cell_508/kernel'lstm_508/lstm_cell_508/recurrent_kernellstm_508/lstm_cell_508/biaslstm_509/lstm_cell_509/kernel'lstm_509/lstm_cell_509/recurrent_kernellstm_509/lstm_cell_509/biastotalcountAdam/dense_169/kernel/mAdam/dense_169/bias/m$Adam/lstm_507/lstm_cell_507/kernel/m.Adam/lstm_507/lstm_cell_507/recurrent_kernel/m"Adam/lstm_507/lstm_cell_507/bias/m$Adam/lstm_508/lstm_cell_508/kernel/m.Adam/lstm_508/lstm_cell_508/recurrent_kernel/m"Adam/lstm_508/lstm_cell_508/bias/m$Adam/lstm_509/lstm_cell_509/kernel/m.Adam/lstm_509/lstm_cell_509/recurrent_kernel/m"Adam/lstm_509/lstm_cell_509/bias/mAdam/dense_169/kernel/vAdam/dense_169/bias/v$Adam/lstm_507/lstm_cell_507/kernel/v.Adam/lstm_507/lstm_cell_507/recurrent_kernel/v"Adam/lstm_507/lstm_cell_507/bias/v$Adam/lstm_508/lstm_cell_508/kernel/v.Adam/lstm_508/lstm_cell_508/recurrent_kernel/v"Adam/lstm_508/lstm_cell_508/bias/v$Adam/lstm_509/lstm_cell_509/kernel/v.Adam/lstm_509/lstm_cell_509/recurrent_kernel/v"Adam/lstm_509/lstm_cell_509/bias/v*4
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
"__inference__traced_restore_907141??+
?
?
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901606

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
while_cond_903169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_903169___redundant_placeholder04
0while_while_cond_903169___redundant_placeholder14
0while_while_cond_903169___redundant_placeholder24
0while_while_cond_903169___redundant_placeholder3
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_905037
inputs_0?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_904953*
condR
while_cond_904952*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_507_while_cond_903911.
*lstm_507_while_lstm_507_while_loop_counter4
0lstm_507_while_lstm_507_while_maximum_iterations
lstm_507_while_placeholder 
lstm_507_while_placeholder_1 
lstm_507_while_placeholder_2 
lstm_507_while_placeholder_30
,lstm_507_while_less_lstm_507_strided_slice_1F
Blstm_507_while_lstm_507_while_cond_903911___redundant_placeholder0F
Blstm_507_while_lstm_507_while_cond_903911___redundant_placeholder1F
Blstm_507_while_lstm_507_while_cond_903911___redundant_placeholder2F
Blstm_507_while_lstm_507_while_cond_903911___redundant_placeholder3
lstm_507_while_identity
?
lstm_507/while/LessLesslstm_507_while_placeholder,lstm_507_while_less_lstm_507_strided_slice_1*
T0*
_output_shapes
: ]
lstm_507/while/IdentityIdentitylstm_507/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_507_while_identity lstm_507/while/Identity:output:0*(
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
while_cond_906041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_906041___redundant_placeholder04
0while_while_cond_906041___redundant_placeholder14
0while_while_cond_906041___redundant_placeholder24
0while_while_cond_906041___redundant_placeholder3
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
)__inference_lstm_507_layer_call_fn_904740

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
D__inference_lstm_507_layer_call_and_return_conditional_losses_902738s
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
while_body_903500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_906185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_169_lstm_509_while_body_901449L
Hsequential_169_lstm_509_while_sequential_169_lstm_509_while_loop_counterR
Nsequential_169_lstm_509_while_sequential_169_lstm_509_while_maximum_iterations-
)sequential_169_lstm_509_while_placeholder/
+sequential_169_lstm_509_while_placeholder_1/
+sequential_169_lstm_509_while_placeholder_2/
+sequential_169_lstm_509_while_placeholder_3K
Gsequential_169_lstm_509_while_sequential_169_lstm_509_strided_slice_1_0?
?sequential_169_lstm_509_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_509_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_169_lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0:2(`
Nsequential_169_lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0:
([
Msequential_169_lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0:(*
&sequential_169_lstm_509_while_identity,
(sequential_169_lstm_509_while_identity_1,
(sequential_169_lstm_509_while_identity_2,
(sequential_169_lstm_509_while_identity_3,
(sequential_169_lstm_509_while_identity_4,
(sequential_169_lstm_509_while_identity_5I
Esequential_169_lstm_509_while_sequential_169_lstm_509_strided_slice_1?
?sequential_169_lstm_509_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_509_tensorarrayunstack_tensorlistfromtensor\
Jsequential_169_lstm_509_while_lstm_cell_149_matmul_readvariableop_resource:2(^
Lsequential_169_lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource:
(Y
Ksequential_169_lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource:(??Bsequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp?Asequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp?Csequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp?
Osequential_169/lstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_169/lstm_509/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_169_lstm_509_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_509_tensorarrayunstack_tensorlistfromtensor_0)sequential_169_lstm_509_while_placeholderXsequential_169/lstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOpLsequential_169_lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_169/lstm_509/while/lstm_cell_149/MatMulMatMulHsequential_169/lstm_509/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOpNsequential_169_lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_169/lstm_509/while/lstm_cell_149/MatMul_1MatMul+sequential_169_lstm_509_while_placeholder_2Ksequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_169/lstm_509/while/lstm_cell_149/addAddV2<sequential_169/lstm_509/while/lstm_cell_149/MatMul:product:0>sequential_169/lstm_509/while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOpMsequential_169_lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_169/lstm_509/while/lstm_cell_149/BiasAddBiasAdd3sequential_169/lstm_509/while/lstm_cell_149/add:z:0Jsequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_169/lstm_509/while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_169/lstm_509/while/lstm_cell_149/splitSplitDsequential_169/lstm_509/while/lstm_cell_149/split/split_dim:output:0<sequential_169/lstm_509/while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_169/lstm_509/while/lstm_cell_149/SigmoidSigmoid:sequential_169/lstm_509/while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_169/lstm_509/while/lstm_cell_149/Sigmoid_1Sigmoid:sequential_169/lstm_509/while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_169/lstm_509/while/lstm_cell_149/mulMul9sequential_169/lstm_509/while/lstm_cell_149/Sigmoid_1:y:0+sequential_169_lstm_509_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_169/lstm_509/while/lstm_cell_149/ReluRelu:sequential_169/lstm_509/while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_169/lstm_509/while/lstm_cell_149/mul_1Mul7sequential_169/lstm_509/while/lstm_cell_149/Sigmoid:y:0>sequential_169/lstm_509/while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_169/lstm_509/while/lstm_cell_149/add_1AddV23sequential_169/lstm_509/while/lstm_cell_149/mul:z:05sequential_169/lstm_509/while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_169/lstm_509/while/lstm_cell_149/Sigmoid_2Sigmoid:sequential_169/lstm_509/while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_169/lstm_509/while/lstm_cell_149/Relu_1Relu5sequential_169/lstm_509/while/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_169/lstm_509/while/lstm_cell_149/mul_2Mul9sequential_169/lstm_509/while/lstm_cell_149/Sigmoid_2:y:0@sequential_169/lstm_509/while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_169/lstm_509/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_169_lstm_509_while_placeholder_1)sequential_169_lstm_509_while_placeholder5sequential_169/lstm_509/while/lstm_cell_149/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_169/lstm_509/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_169/lstm_509/while/addAddV2)sequential_169_lstm_509_while_placeholder,sequential_169/lstm_509/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_169/lstm_509/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_169/lstm_509/while/add_1AddV2Hsequential_169_lstm_509_while_sequential_169_lstm_509_while_loop_counter.sequential_169/lstm_509/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_169/lstm_509/while/IdentityIdentity'sequential_169/lstm_509/while/add_1:z:0#^sequential_169/lstm_509/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_509/while/Identity_1IdentityNsequential_169_lstm_509_while_sequential_169_lstm_509_while_maximum_iterations#^sequential_169/lstm_509/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_509/while/Identity_2Identity%sequential_169/lstm_509/while/add:z:0#^sequential_169/lstm_509/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_509/while/Identity_3IdentityRsequential_169/lstm_509/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_169/lstm_509/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_509/while/Identity_4Identity5sequential_169/lstm_509/while/lstm_cell_149/mul_2:z:0#^sequential_169/lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_169/lstm_509/while/Identity_5Identity5sequential_169/lstm_509/while/lstm_cell_149/add_1:z:0#^sequential_169/lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_169/lstm_509/while/NoOpNoOpC^sequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOpB^sequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOpD^sequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_169_lstm_509_while_identity/sequential_169/lstm_509/while/Identity:output:0"]
(sequential_169_lstm_509_while_identity_11sequential_169/lstm_509/while/Identity_1:output:0"]
(sequential_169_lstm_509_while_identity_21sequential_169/lstm_509/while/Identity_2:output:0"]
(sequential_169_lstm_509_while_identity_31sequential_169/lstm_509/while/Identity_3:output:0"]
(sequential_169_lstm_509_while_identity_41sequential_169/lstm_509/while/Identity_4:output:0"]
(sequential_169_lstm_509_while_identity_51sequential_169/lstm_509/while/Identity_5:output:0"?
Ksequential_169_lstm_509_while_lstm_cell_149_biasadd_readvariableop_resourceMsequential_169_lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0"?
Lsequential_169_lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resourceNsequential_169_lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0"?
Jsequential_169_lstm_509_while_lstm_cell_149_matmul_readvariableop_resourceLsequential_169_lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0"?
Esequential_169_lstm_509_while_sequential_169_lstm_509_strided_slice_1Gsequential_169_lstm_509_while_sequential_169_lstm_509_strided_slice_1_0"?
?sequential_169_lstm_509_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_509_tensorarrayunstack_tensorlistfromtensor?sequential_169_lstm_509_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_509_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOpBsequential_169/lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp2?
Asequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOpAsequential_169/lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp2?
Csequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOpCsequential_169/lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903038

inputs>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_902954*
condR
while_cond_902953*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902306

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
.__inference_lstm_cell_147_layer_call_fn_906591

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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901606o
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
?
)sequential_169_lstm_509_while_cond_901448L
Hsequential_169_lstm_509_while_sequential_169_lstm_509_while_loop_counterR
Nsequential_169_lstm_509_while_sequential_169_lstm_509_while_maximum_iterations-
)sequential_169_lstm_509_while_placeholder/
+sequential_169_lstm_509_while_placeholder_1/
+sequential_169_lstm_509_while_placeholder_2/
+sequential_169_lstm_509_while_placeholder_3N
Jsequential_169_lstm_509_while_less_sequential_169_lstm_509_strided_slice_1d
`sequential_169_lstm_509_while_sequential_169_lstm_509_while_cond_901448___redundant_placeholder0d
`sequential_169_lstm_509_while_sequential_169_lstm_509_while_cond_901448___redundant_placeholder1d
`sequential_169_lstm_509_while_sequential_169_lstm_509_while_cond_901448___redundant_placeholder2d
`sequential_169_lstm_509_while_sequential_169_lstm_509_while_cond_901448___redundant_placeholder3*
&sequential_169_lstm_509_while_identity
?
"sequential_169/lstm_509/while/LessLess)sequential_169_lstm_509_while_placeholderJsequential_169_lstm_509_while_less_sequential_169_lstm_509_strided_slice_1*
T0*
_output_shapes
: {
&sequential_169/lstm_509/while/IdentityIdentity&sequential_169/lstm_509/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_169_lstm_509_while_identity/sequential_169/lstm_509/while/Identity:output:0*(
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

lstm_509_while_body_904617.
*lstm_509_while_lstm_509_while_loop_counter4
0lstm_509_while_lstm_509_while_maximum_iterations
lstm_509_while_placeholder 
lstm_509_while_placeholder_1 
lstm_509_while_placeholder_2 
lstm_509_while_placeholder_3-
)lstm_509_while_lstm_509_strided_slice_1_0i
elstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0:2(Q
?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(L
>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0:(
lstm_509_while_identity
lstm_509_while_identity_1
lstm_509_while_identity_2
lstm_509_while_identity_3
lstm_509_while_identity_4
lstm_509_while_identity_5+
'lstm_509_while_lstm_509_strided_slice_1g
clstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensorM
;lstm_509_while_lstm_cell_149_matmul_readvariableop_resource:2(O
=lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource:
(J
<lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource:(??3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp?2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp?4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp?
@lstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_509/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0lstm_509_while_placeholderIlstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_509/while/lstm_cell_149/MatMulMatMul9lstm_509/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_509/while/lstm_cell_149/MatMul_1MatMullstm_509_while_placeholder_2<lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_509/while/lstm_cell_149/addAddV2-lstm_509/while/lstm_cell_149/MatMul:product:0/lstm_509/while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_509/while/lstm_cell_149/BiasAddBiasAdd$lstm_509/while/lstm_cell_149/add:z:0;lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_509/while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_509/while/lstm_cell_149/splitSplit5lstm_509/while/lstm_cell_149/split/split_dim:output:0-lstm_509/while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_509/while/lstm_cell_149/SigmoidSigmoid+lstm_509/while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_509/while/lstm_cell_149/Sigmoid_1Sigmoid+lstm_509/while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_509/while/lstm_cell_149/mulMul*lstm_509/while/lstm_cell_149/Sigmoid_1:y:0lstm_509_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_509/while/lstm_cell_149/ReluRelu+lstm_509/while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/mul_1Mul(lstm_509/while/lstm_cell_149/Sigmoid:y:0/lstm_509/while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/add_1AddV2$lstm_509/while/lstm_cell_149/mul:z:0&lstm_509/while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_509/while/lstm_cell_149/Sigmoid_2Sigmoid+lstm_509/while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_509/while/lstm_cell_149/Relu_1Relu&lstm_509/while/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/mul_2Mul*lstm_509/while/lstm_cell_149/Sigmoid_2:y:01lstm_509/while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_509/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_509_while_placeholder_1lstm_509_while_placeholder&lstm_509/while/lstm_cell_149/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_509/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_509/while/addAddV2lstm_509_while_placeholderlstm_509/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_509/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_509/while/add_1AddV2*lstm_509_while_lstm_509_while_loop_counterlstm_509/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_509/while/IdentityIdentitylstm_509/while/add_1:z:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_1Identity0lstm_509_while_lstm_509_while_maximum_iterations^lstm_509/while/NoOp*
T0*
_output_shapes
: t
lstm_509/while/Identity_2Identitylstm_509/while/add:z:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_3IdentityClstm_509/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_4Identity&lstm_509/while/lstm_cell_149/mul_2:z:0^lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_509/while/Identity_5Identity&lstm_509/while/lstm_cell_149/add_1:z:0^lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_509/while/NoOpNoOp4^lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp3^lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp5^lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_509_while_identity lstm_509/while/Identity:output:0"?
lstm_509_while_identity_1"lstm_509/while/Identity_1:output:0"?
lstm_509_while_identity_2"lstm_509/while/Identity_2:output:0"?
lstm_509_while_identity_3"lstm_509/while/Identity_3:output:0"?
lstm_509_while_identity_4"lstm_509/while/Identity_4:output:0"?
lstm_509_while_identity_5"lstm_509/while/Identity_5:output:0"T
'lstm_509_while_lstm_509_strided_slice_1)lstm_509_while_lstm_509_strided_slice_1_0"~
<lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0"?
=lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0"|
;lstm_509_while_lstm_cell_149_matmul_readvariableop_resource=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0"?
clstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensorelstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp2h
2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp2l
4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_906184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_906184___redundant_placeholder04
0while_while_cond_906184___redundant_placeholder14
0while_while_cond_906184___redundant_placeholder24
0while_while_cond_906184___redundant_placeholder3
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
while_body_904953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903652

inputs"
lstm_507_903625:	?"
lstm_507_903627:	d?
lstm_507_903629:	?"
lstm_508_903632:	d?"
lstm_508_903634:	2?
lstm_508_903636:	?!
lstm_509_903639:2(!
lstm_509_903641:
(
lstm_509_903643:("
dense_169_903646:

dense_169_903648:
identity??!dense_169/StatefulPartitionedCall? lstm_507/StatefulPartitionedCall? lstm_508/StatefulPartitionedCall? lstm_509/StatefulPartitionedCall?
 lstm_507/StatefulPartitionedCallStatefulPartitionedCallinputslstm_507_903625lstm_507_903627lstm_507_903629*
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_903584?
 lstm_508/StatefulPartitionedCallStatefulPartitionedCall)lstm_507/StatefulPartitionedCall:output:0lstm_508_903632lstm_508_903634lstm_508_903636*
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_903419?
 lstm_509/StatefulPartitionedCallStatefulPartitionedCall)lstm_508/StatefulPartitionedCall:output:0lstm_509_903639lstm_509_903641lstm_509_903643*
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903254?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_509/StatefulPartitionedCall:output:0dense_169_903646dense_169_903648*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056y
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_169/StatefulPartitionedCall!^lstm_507/StatefulPartitionedCall!^lstm_508/StatefulPartitionedCall!^lstm_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2D
 lstm_507/StatefulPartitionedCall lstm_507/StatefulPartitionedCall2D
 lstm_508/StatefulPartitionedCall lstm_508/StatefulPartitionedCall2D
 lstm_509/StatefulPartitionedCall lstm_509/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_508_layer_call_and_return_conditional_losses_905510
inputs_0?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_905426*
condR
while_cond_905425*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
D__inference_lstm_509_layer_call_and_return_conditional_losses_906126
inputs_0>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_906042*
condR
while_cond_906041*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_508_layer_call_and_return_conditional_losses_902888

inputs?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_902804*
condR
while_cond_902803*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_902803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902803___redundant_placeholder04
0while_while_cond_902803___redundant_placeholder14
0while_while_cond_902803___redundant_placeholder24
0while_while_cond_902803___redundant_placeholder3
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
while_cond_905711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905711___redundant_placeholder04
0while_while_cond_905711___redundant_placeholder14
0while_while_cond_905711___redundant_placeholder24
0while_while_cond_905711___redundant_placeholder3
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_902580

inputs&
lstm_cell_149_902498:2(&
lstm_cell_149_902500:
("
lstm_cell_149_902502:(
identity??%lstm_cell_149/StatefulPartitionedCall?while;
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
%lstm_cell_149/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_149_902498lstm_cell_149_902500lstm_cell_149_902502*
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902452n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_149_902498lstm_cell_149_902500lstm_cell_149_902502*
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
while_body_902511*
condR
while_cond_902510*K
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
NoOpNoOp&^lstm_cell_149/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_149/StatefulPartitionedCall%lstm_cell_149/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_149_layer_call_fn_906787

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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902306o
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
while_cond_904952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_904952___redundant_placeholder04
0while_while_cond_904952___redundant_placeholder14
0while_while_cond_904952___redundant_placeholder24
0while_while_cond_904952___redundant_placeholder3
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
E__inference_dense_169_layer_call_and_return_conditional_losses_906574

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
while_body_903170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_509_layer_call_fn_905972

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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903038o
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906738

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
$__inference_signature_wrapper_903799
lstm_507_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_901539o
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
_user_specified_namelstm_507_input
?W
?
__inference__traced_save_907011
file_prefix/
+savev2_dense_169_kernel_read_readvariableop-
)savev2_dense_169_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_507_lstm_cell_507_kernel_read_readvariableopF
Bsavev2_lstm_507_lstm_cell_507_recurrent_kernel_read_readvariableop:
6savev2_lstm_507_lstm_cell_507_bias_read_readvariableop<
8savev2_lstm_508_lstm_cell_508_kernel_read_readvariableopF
Bsavev2_lstm_508_lstm_cell_508_recurrent_kernel_read_readvariableop:
6savev2_lstm_508_lstm_cell_508_bias_read_readvariableop<
8savev2_lstm_509_lstm_cell_509_kernel_read_readvariableopF
Bsavev2_lstm_509_lstm_cell_509_recurrent_kernel_read_readvariableop:
6savev2_lstm_509_lstm_cell_509_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_169_kernel_m_read_readvariableop4
0savev2_adam_dense_169_bias_m_read_readvariableopC
?savev2_adam_lstm_507_lstm_cell_507_kernel_m_read_readvariableopM
Isavev2_adam_lstm_507_lstm_cell_507_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_507_lstm_cell_507_bias_m_read_readvariableopC
?savev2_adam_lstm_508_lstm_cell_508_kernel_m_read_readvariableopM
Isavev2_adam_lstm_508_lstm_cell_508_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_508_lstm_cell_508_bias_m_read_readvariableopC
?savev2_adam_lstm_509_lstm_cell_509_kernel_m_read_readvariableopM
Isavev2_adam_lstm_509_lstm_cell_509_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_509_lstm_cell_509_bias_m_read_readvariableop6
2savev2_adam_dense_169_kernel_v_read_readvariableop4
0savev2_adam_dense_169_bias_v_read_readvariableopC
?savev2_adam_lstm_507_lstm_cell_507_kernel_v_read_readvariableopM
Isavev2_adam_lstm_507_lstm_cell_507_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_507_lstm_cell_507_bias_v_read_readvariableopC
?savev2_adam_lstm_508_lstm_cell_508_kernel_v_read_readvariableopM
Isavev2_adam_lstm_508_lstm_cell_508_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_508_lstm_cell_508_bias_v_read_readvariableopC
?savev2_adam_lstm_509_lstm_cell_509_kernel_v_read_readvariableopM
Isavev2_adam_lstm_509_lstm_cell_509_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_509_lstm_cell_509_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_169_kernel_read_readvariableop)savev2_dense_169_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_507_lstm_cell_507_kernel_read_readvariableopBsavev2_lstm_507_lstm_cell_507_recurrent_kernel_read_readvariableop6savev2_lstm_507_lstm_cell_507_bias_read_readvariableop8savev2_lstm_508_lstm_cell_508_kernel_read_readvariableopBsavev2_lstm_508_lstm_cell_508_recurrent_kernel_read_readvariableop6savev2_lstm_508_lstm_cell_508_bias_read_readvariableop8savev2_lstm_509_lstm_cell_509_kernel_read_readvariableopBsavev2_lstm_509_lstm_cell_509_recurrent_kernel_read_readvariableop6savev2_lstm_509_lstm_cell_509_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_169_kernel_m_read_readvariableop0savev2_adam_dense_169_bias_m_read_readvariableop?savev2_adam_lstm_507_lstm_cell_507_kernel_m_read_readvariableopIsavev2_adam_lstm_507_lstm_cell_507_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_507_lstm_cell_507_bias_m_read_readvariableop?savev2_adam_lstm_508_lstm_cell_508_kernel_m_read_readvariableopIsavev2_adam_lstm_508_lstm_cell_508_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_508_lstm_cell_508_bias_m_read_readvariableop?savev2_adam_lstm_509_lstm_cell_509_kernel_m_read_readvariableopIsavev2_adam_lstm_509_lstm_cell_509_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_509_lstm_cell_509_bias_m_read_readvariableop2savev2_adam_dense_169_kernel_v_read_readvariableop0savev2_adam_dense_169_bias_v_read_readvariableop?savev2_adam_lstm_507_lstm_cell_507_kernel_v_read_readvariableopIsavev2_adam_lstm_507_lstm_cell_507_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_507_lstm_cell_507_bias_v_read_readvariableop?savev2_adam_lstm_508_lstm_cell_508_kernel_v_read_readvariableopIsavev2_adam_lstm_508_lstm_cell_508_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_508_lstm_cell_508_bias_v_read_readvariableop?savev2_adam_lstm_509_lstm_cell_509_kernel_v_read_readvariableopIsavev2_adam_lstm_509_lstm_cell_509_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_509_lstm_cell_509_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906672

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
while_cond_904809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_904809___redundant_placeholder04
0while_while_cond_904809___redundant_placeholder14
0while_while_cond_904809___redundant_placeholder24
0while_while_cond_904809___redundant_placeholder3
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
while_body_904810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_904707

inputsH
5lstm_507_lstm_cell_147_matmul_readvariableop_resource:	?J
7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource:	d?E
6lstm_507_lstm_cell_147_biasadd_readvariableop_resource:	?H
5lstm_508_lstm_cell_148_matmul_readvariableop_resource:	d?J
7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource:	2?E
6lstm_508_lstm_cell_148_biasadd_readvariableop_resource:	?G
5lstm_509_lstm_cell_149_matmul_readvariableop_resource:2(I
7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource:
(D
6lstm_509_lstm_cell_149_biasadd_readvariableop_resource:(:
(dense_169_matmul_readvariableop_resource:
7
)dense_169_biasadd_readvariableop_resource:
identity?? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp?-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp?,lstm_507/lstm_cell_147/MatMul/ReadVariableOp?.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp?lstm_507/while?-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp?,lstm_508/lstm_cell_148/MatMul/ReadVariableOp?.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp?lstm_508/while?-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp?,lstm_509/lstm_cell_149/MatMul/ReadVariableOp?.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp?lstm_509/whileD
lstm_507/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_507/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_507/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_507/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_sliceStridedSlicelstm_507/Shape:output:0%lstm_507/strided_slice/stack:output:0'lstm_507/strided_slice/stack_1:output:0'lstm_507/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_507/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_507/zeros/packedPacklstm_507/strided_slice:output:0 lstm_507/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_507/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_507/zerosFilllstm_507/zeros/packed:output:0lstm_507/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_507/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_507/zeros_1/packedPacklstm_507/strided_slice:output:0"lstm_507/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_507/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_507/zeros_1Fill lstm_507/zeros_1/packed:output:0lstm_507/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_507/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_507/transpose	Transposeinputs lstm_507/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_507/Shape_1Shapelstm_507/transpose:y:0*
T0*
_output_shapes
:h
lstm_507/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_507/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_1StridedSlicelstm_507/Shape_1:output:0'lstm_507/strided_slice_1/stack:output:0)lstm_507/strided_slice_1/stack_1:output:0)lstm_507/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_507/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_507/TensorArrayV2TensorListReserve-lstm_507/TensorArrayV2/element_shape:output:0!lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_507/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_507/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_507/transpose:y:0Glstm_507/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_507/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_507/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_2StridedSlicelstm_507/transpose:y:0'lstm_507/strided_slice_2/stack:output:0)lstm_507/strided_slice_2/stack_1:output:0)lstm_507/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_507/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp5lstm_507_lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_507/lstm_cell_147/MatMulMatMul!lstm_507/strided_slice_2:output:04lstm_507/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_507/lstm_cell_147/MatMul_1MatMullstm_507/zeros:output:06lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_507/lstm_cell_147/addAddV2'lstm_507/lstm_cell_147/MatMul:product:0)lstm_507/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp6lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_507/lstm_cell_147/BiasAddBiasAddlstm_507/lstm_cell_147/add:z:05lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_507/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_507/lstm_cell_147/splitSplit/lstm_507/lstm_cell_147/split/split_dim:output:0'lstm_507/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_507/lstm_cell_147/SigmoidSigmoid%lstm_507/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_507/lstm_cell_147/Sigmoid_1Sigmoid%lstm_507/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mulMul$lstm_507/lstm_cell_147/Sigmoid_1:y:0lstm_507/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_507/lstm_cell_147/ReluRelu%lstm_507/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mul_1Mul"lstm_507/lstm_cell_147/Sigmoid:y:0)lstm_507/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/add_1AddV2lstm_507/lstm_cell_147/mul:z:0 lstm_507/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_507/lstm_cell_147/Sigmoid_2Sigmoid%lstm_507/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_507/lstm_cell_147/Relu_1Relu lstm_507/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mul_2Mul$lstm_507/lstm_cell_147/Sigmoid_2:y:0+lstm_507/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_507/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_507/TensorArrayV2_1TensorListReserve/lstm_507/TensorArrayV2_1/element_shape:output:0!lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_507/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_507/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_507/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_507/whileWhile$lstm_507/while/loop_counter:output:0*lstm_507/while/maximum_iterations:output:0lstm_507/time:output:0!lstm_507/TensorArrayV2_1:handle:0lstm_507/zeros:output:0lstm_507/zeros_1:output:0!lstm_507/strided_slice_1:output:0@lstm_507/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_507_lstm_cell_147_matmul_readvariableop_resource7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource6lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
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
lstm_507_while_body_904339*&
condR
lstm_507_while_cond_904338*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_507/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_507/TensorArrayV2Stack/TensorListStackTensorListStacklstm_507/while:output:3Blstm_507/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_507/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_507/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_3StridedSlice4lstm_507/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_507/strided_slice_3/stack:output:0)lstm_507/strided_slice_3/stack_1:output:0)lstm_507/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_507/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_507/transpose_1	Transpose4lstm_507/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_507/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_507/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_508/ShapeShapelstm_507/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_508/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_508/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_508/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_sliceStridedSlicelstm_508/Shape:output:0%lstm_508/strided_slice/stack:output:0'lstm_508/strided_slice/stack_1:output:0'lstm_508/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_508/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_508/zeros/packedPacklstm_508/strided_slice:output:0 lstm_508/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_508/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_508/zerosFilllstm_508/zeros/packed:output:0lstm_508/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_508/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_508/zeros_1/packedPacklstm_508/strided_slice:output:0"lstm_508/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_508/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_508/zeros_1Fill lstm_508/zeros_1/packed:output:0lstm_508/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_508/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_508/transpose	Transposelstm_507/transpose_1:y:0 lstm_508/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_508/Shape_1Shapelstm_508/transpose:y:0*
T0*
_output_shapes
:h
lstm_508/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_508/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_1StridedSlicelstm_508/Shape_1:output:0'lstm_508/strided_slice_1/stack:output:0)lstm_508/strided_slice_1/stack_1:output:0)lstm_508/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_508/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_508/TensorArrayV2TensorListReserve-lstm_508/TensorArrayV2/element_shape:output:0!lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_508/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_508/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_508/transpose:y:0Glstm_508/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_508/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_508/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_2StridedSlicelstm_508/transpose:y:0'lstm_508/strided_slice_2/stack:output:0)lstm_508/strided_slice_2/stack_1:output:0)lstm_508/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_508/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp5lstm_508_lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_508/lstm_cell_148/MatMulMatMul!lstm_508/strided_slice_2:output:04lstm_508/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_508/lstm_cell_148/MatMul_1MatMullstm_508/zeros:output:06lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_508/lstm_cell_148/addAddV2'lstm_508/lstm_cell_148/MatMul:product:0)lstm_508/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp6lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_508/lstm_cell_148/BiasAddBiasAddlstm_508/lstm_cell_148/add:z:05lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_508/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_508/lstm_cell_148/splitSplit/lstm_508/lstm_cell_148/split/split_dim:output:0'lstm_508/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_508/lstm_cell_148/SigmoidSigmoid%lstm_508/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_508/lstm_cell_148/Sigmoid_1Sigmoid%lstm_508/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mulMul$lstm_508/lstm_cell_148/Sigmoid_1:y:0lstm_508/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_508/lstm_cell_148/ReluRelu%lstm_508/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mul_1Mul"lstm_508/lstm_cell_148/Sigmoid:y:0)lstm_508/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/add_1AddV2lstm_508/lstm_cell_148/mul:z:0 lstm_508/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_508/lstm_cell_148/Sigmoid_2Sigmoid%lstm_508/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_508/lstm_cell_148/Relu_1Relu lstm_508/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mul_2Mul$lstm_508/lstm_cell_148/Sigmoid_2:y:0+lstm_508/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_508/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_508/TensorArrayV2_1TensorListReserve/lstm_508/TensorArrayV2_1/element_shape:output:0!lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_508/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_508/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_508/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_508/whileWhile$lstm_508/while/loop_counter:output:0*lstm_508/while/maximum_iterations:output:0lstm_508/time:output:0!lstm_508/TensorArrayV2_1:handle:0lstm_508/zeros:output:0lstm_508/zeros_1:output:0!lstm_508/strided_slice_1:output:0@lstm_508/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_508_lstm_cell_148_matmul_readvariableop_resource7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource6lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
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
lstm_508_while_body_904478*&
condR
lstm_508_while_cond_904477*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_508/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_508/TensorArrayV2Stack/TensorListStackTensorListStacklstm_508/while:output:3Blstm_508/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_508/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_508/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_3StridedSlice4lstm_508/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_508/strided_slice_3/stack:output:0)lstm_508/strided_slice_3/stack_1:output:0)lstm_508/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_508/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_508/transpose_1	Transpose4lstm_508/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_508/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_508/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_509/ShapeShapelstm_508/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_509/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_509/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_509/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_sliceStridedSlicelstm_509/Shape:output:0%lstm_509/strided_slice/stack:output:0'lstm_509/strided_slice/stack_1:output:0'lstm_509/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_509/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_509/zeros/packedPacklstm_509/strided_slice:output:0 lstm_509/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_509/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_509/zerosFilllstm_509/zeros/packed:output:0lstm_509/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_509/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_509/zeros_1/packedPacklstm_509/strided_slice:output:0"lstm_509/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_509/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_509/zeros_1Fill lstm_509/zeros_1/packed:output:0lstm_509/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_509/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_509/transpose	Transposelstm_508/transpose_1:y:0 lstm_509/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_509/Shape_1Shapelstm_509/transpose:y:0*
T0*
_output_shapes
:h
lstm_509/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_509/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_1StridedSlicelstm_509/Shape_1:output:0'lstm_509/strided_slice_1/stack:output:0)lstm_509/strided_slice_1/stack_1:output:0)lstm_509/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_509/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_509/TensorArrayV2TensorListReserve-lstm_509/TensorArrayV2/element_shape:output:0!lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_509/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_509/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_509/transpose:y:0Glstm_509/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_509/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_509/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_2StridedSlicelstm_509/transpose:y:0'lstm_509/strided_slice_2/stack:output:0)lstm_509/strided_slice_2/stack_1:output:0)lstm_509/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_509/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp5lstm_509_lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_509/lstm_cell_149/MatMulMatMul!lstm_509/strided_slice_2:output:04lstm_509/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_509/lstm_cell_149/MatMul_1MatMullstm_509/zeros:output:06lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_509/lstm_cell_149/addAddV2'lstm_509/lstm_cell_149/MatMul:product:0)lstm_509/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp6lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_509/lstm_cell_149/BiasAddBiasAddlstm_509/lstm_cell_149/add:z:05lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_509/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_509/lstm_cell_149/splitSplit/lstm_509/lstm_cell_149/split/split_dim:output:0'lstm_509/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_509/lstm_cell_149/SigmoidSigmoid%lstm_509/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_509/lstm_cell_149/Sigmoid_1Sigmoid%lstm_509/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mulMul$lstm_509/lstm_cell_149/Sigmoid_1:y:0lstm_509/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_509/lstm_cell_149/ReluRelu%lstm_509/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mul_1Mul"lstm_509/lstm_cell_149/Sigmoid:y:0)lstm_509/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/add_1AddV2lstm_509/lstm_cell_149/mul:z:0 lstm_509/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_509/lstm_cell_149/Sigmoid_2Sigmoid%lstm_509/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_509/lstm_cell_149/Relu_1Relu lstm_509/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mul_2Mul$lstm_509/lstm_cell_149/Sigmoid_2:y:0+lstm_509/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_509/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_509/TensorArrayV2_1TensorListReserve/lstm_509/TensorArrayV2_1/element_shape:output:0!lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_509/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_509/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_509/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_509/whileWhile$lstm_509/while/loop_counter:output:0*lstm_509/while/maximum_iterations:output:0lstm_509/time:output:0!lstm_509/TensorArrayV2_1:handle:0lstm_509/zeros:output:0lstm_509/zeros_1:output:0!lstm_509/strided_slice_1:output:0@lstm_509/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_509_lstm_cell_149_matmul_readvariableop_resource7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource6lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
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
lstm_509_while_body_904617*&
condR
lstm_509_while_cond_904616*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_509/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_509/TensorArrayV2Stack/TensorListStackTensorListStacklstm_509/while:output:3Blstm_509/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_509/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_509/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_3StridedSlice4lstm_509/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_509/strided_slice_3/stack:output:0)lstm_509/strided_slice_3/stack_1:output:0)lstm_509/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_509/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_509/transpose_1	Transpose4lstm_509/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_509/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_509/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_169/MatMulMatMul!lstm_509/strided_slice_3:output:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_169/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp.^lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp-^lstm_507/lstm_cell_147/MatMul/ReadVariableOp/^lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp^lstm_507/while.^lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp-^lstm_508/lstm_cell_148/MatMul/ReadVariableOp/^lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp^lstm_508/while.^lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp-^lstm_509/lstm_cell_149/MatMul/ReadVariableOp/^lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp^lstm_509/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp2^
-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp2\
,lstm_507/lstm_cell_147/MatMul/ReadVariableOp,lstm_507/lstm_cell_147/MatMul/ReadVariableOp2`
.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp2 
lstm_507/whilelstm_507/while2^
-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp2\
,lstm_508/lstm_cell_148/MatMul/ReadVariableOp,lstm_508/lstm_cell_148/MatMul/ReadVariableOp2`
.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp2 
lstm_508/whilelstm_508/while2^
-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp2\
,lstm_509/lstm_cell_149/MatMul/ReadVariableOp,lstm_509/lstm_cell_149/MatMul/ReadVariableOp2`
.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp2 
lstm_509/whilelstm_509/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_508_layer_call_and_return_conditional_losses_902230

inputs'
lstm_cell_148_902148:	d?'
lstm_cell_148_902150:	2?#
lstm_cell_148_902152:	?
identity??%lstm_cell_148/StatefulPartitionedCall?while;
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
%lstm_cell_148/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_148_902148lstm_cell_148_902150lstm_cell_148_902152*
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_902102n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_148_902148lstm_cell_148_902150lstm_cell_148_902152*
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
while_body_902161*
condR
while_cond_902160*K
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
NoOpNoOp&^lstm_cell_148/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_148/StatefulPartitionedCall%lstm_cell_148/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_507_layer_call_and_return_conditional_losses_905323

inputs?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_905239*
condR
while_cond_905238*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_507_layer_call_fn_904751

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
D__inference_lstm_507_layer_call_and_return_conditional_losses_903584s
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
)__inference_lstm_508_layer_call_fn_905356

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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902888s
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
while_body_903335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_906471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903764
lstm_507_input"
lstm_507_903737:	?"
lstm_507_903739:	d?
lstm_507_903741:	?"
lstm_508_903744:	d?"
lstm_508_903746:	2?
lstm_508_903748:	?!
lstm_509_903751:2(!
lstm_509_903753:
(
lstm_509_903755:("
dense_169_903758:

dense_169_903760:
identity??!dense_169/StatefulPartitionedCall? lstm_507/StatefulPartitionedCall? lstm_508/StatefulPartitionedCall? lstm_509/StatefulPartitionedCall?
 lstm_507/StatefulPartitionedCallStatefulPartitionedCalllstm_507_inputlstm_507_903737lstm_507_903739lstm_507_903741*
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_903584?
 lstm_508/StatefulPartitionedCallStatefulPartitionedCall)lstm_507/StatefulPartitionedCall:output:0lstm_508_903744lstm_508_903746lstm_508_903748*
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_903419?
 lstm_509/StatefulPartitionedCallStatefulPartitionedCall)lstm_508/StatefulPartitionedCall:output:0lstm_509_903751lstm_509_903753lstm_509_903755*
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903254?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_509/StatefulPartitionedCall:output:0dense_169_903758dense_169_903760*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056y
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_169/StatefulPartitionedCall!^lstm_507/StatefulPartitionedCall!^lstm_508/StatefulPartitionedCall!^lstm_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2D
 lstm_507/StatefulPartitionedCall lstm_507/StatefulPartitionedCall2D
 lstm_508/StatefulPartitionedCall lstm_508/StatefulPartitionedCall2D
 lstm_509/StatefulPartitionedCall lstm_509/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_507_input
?
?
)__inference_lstm_507_layer_call_fn_904718
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_901689|
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_903419

inputs?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_903335*
condR
while_cond_903334*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_169_layer_call_fn_903704
lstm_507_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903652o
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
_user_specified_namelstm_507_input
?
?
while_cond_906327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_906327___redundant_placeholder04
0while_while_cond_906327___redundant_placeholder14
0while_while_cond_906327___redundant_placeholder24
0while_while_cond_906327___redundant_placeholder3
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905653
inputs_0?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_905569*
condR
while_cond_905568*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_508_while_cond_904050.
*lstm_508_while_lstm_508_while_loop_counter4
0lstm_508_while_lstm_508_while_maximum_iterations
lstm_508_while_placeholder 
lstm_508_while_placeholder_1 
lstm_508_while_placeholder_2 
lstm_508_while_placeholder_30
,lstm_508_while_less_lstm_508_strided_slice_1F
Blstm_508_while_lstm_508_while_cond_904050___redundant_placeholder0F
Blstm_508_while_lstm_508_while_cond_904050___redundant_placeholder1F
Blstm_508_while_lstm_508_while_cond_904050___redundant_placeholder2F
Blstm_508_while_lstm_508_while_cond_904050___redundant_placeholder3
lstm_508_while_identity
?
lstm_508/while/LessLesslstm_508_while_placeholder,lstm_508_while_less_lstm_508_strided_slice_1*
T0*
_output_shapes
: ]
lstm_508/while/IdentityIdentitylstm_508/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_508_while_identity lstm_508/while/Identity:output:0*(
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
?"
?
while_body_902320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_149_902344_0:2(.
while_lstm_cell_149_902346_0:
(*
while_lstm_cell_149_902348_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_149_902344:2(,
while_lstm_cell_149_902346:
((
while_lstm_cell_149_902348:(??+while/lstm_cell_149/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_149/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_149_902344_0while_lstm_cell_149_902346_0while_lstm_cell_149_902348_0*
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902306?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_149/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_149/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_149/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_149/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_149_902344while_lstm_cell_149_902344_0":
while_lstm_cell_149_902346while_lstm_cell_149_902346_0":
while_lstm_cell_149_902348while_lstm_cell_149_902348_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_149/StatefulPartitionedCall+while/lstm_cell_149/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_902653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902653___redundant_placeholder04
0while_while_cond_902653___redundant_placeholder14
0while_while_cond_902653___redundant_placeholder24
0while_while_cond_902653___redundant_placeholder3
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906770

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
??
?
"__inference__traced_restore_907141
file_prefix3
!assignvariableop_dense_169_kernel:
/
!assignvariableop_1_dense_169_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_507_lstm_cell_507_kernel:	?M
:assignvariableop_8_lstm_507_lstm_cell_507_recurrent_kernel:	d?=
.assignvariableop_9_lstm_507_lstm_cell_507_bias:	?D
1assignvariableop_10_lstm_508_lstm_cell_508_kernel:	d?N
;assignvariableop_11_lstm_508_lstm_cell_508_recurrent_kernel:	2?>
/assignvariableop_12_lstm_508_lstm_cell_508_bias:	?C
1assignvariableop_13_lstm_509_lstm_cell_509_kernel:2(M
;assignvariableop_14_lstm_509_lstm_cell_509_recurrent_kernel:
(=
/assignvariableop_15_lstm_509_lstm_cell_509_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_169_kernel_m:
7
)assignvariableop_19_adam_dense_169_bias_m:K
8assignvariableop_20_adam_lstm_507_lstm_cell_507_kernel_m:	?U
Bassignvariableop_21_adam_lstm_507_lstm_cell_507_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_507_lstm_cell_507_bias_m:	?K
8assignvariableop_23_adam_lstm_508_lstm_cell_508_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_508_lstm_cell_508_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_508_lstm_cell_508_bias_m:	?J
8assignvariableop_26_adam_lstm_509_lstm_cell_509_kernel_m:2(T
Bassignvariableop_27_adam_lstm_509_lstm_cell_509_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_509_lstm_cell_509_bias_m:(=
+assignvariableop_29_adam_dense_169_kernel_v:
7
)assignvariableop_30_adam_dense_169_bias_v:K
8assignvariableop_31_adam_lstm_507_lstm_cell_507_kernel_v:	?U
Bassignvariableop_32_adam_lstm_507_lstm_cell_507_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_507_lstm_cell_507_bias_v:	?K
8assignvariableop_34_adam_lstm_508_lstm_cell_508_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_508_lstm_cell_508_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_508_lstm_cell_508_bias_v:	?J
8assignvariableop_37_adam_lstm_509_lstm_cell_509_kernel_v:2(T
Bassignvariableop_38_adam_lstm_509_lstm_cell_509_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_509_lstm_cell_509_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_169_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_169_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_507_lstm_cell_507_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_507_lstm_cell_507_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_507_lstm_cell_507_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_508_lstm_cell_508_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_508_lstm_cell_508_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_508_lstm_cell_508_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_509_lstm_cell_509_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_509_lstm_cell_509_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_509_lstm_cell_509_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_169_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_169_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_507_lstm_cell_507_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_507_lstm_cell_507_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_507_lstm_cell_507_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_508_lstm_cell_508_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_508_lstm_cell_508_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_508_lstm_cell_508_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_509_lstm_cell_509_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_509_lstm_cell_509_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_509_lstm_cell_509_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_169_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_169_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_507_lstm_cell_507_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_507_lstm_cell_507_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_507_lstm_cell_507_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_508_lstm_cell_508_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_508_lstm_cell_508_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_508_lstm_cell_508_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_509_lstm_cell_509_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_509_lstm_cell_509_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_509_lstm_cell_509_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_902319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902319___redundant_placeholder04
0while_while_cond_902319___redundant_placeholder14
0while_while_cond_902319___redundant_placeholder24
0while_while_cond_902319___redundant_placeholder3
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
)__inference_lstm_508_layer_call_fn_905334
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902039|
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
while_cond_905425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905425___redundant_placeholder04
0while_while_cond_905425___redundant_placeholder14
0while_while_cond_905425___redundant_placeholder24
0while_while_cond_905425___redundant_placeholder3
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
while_body_902804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_905238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905238___redundant_placeholder04
0while_while_cond_905238___redundant_placeholder14
0while_while_cond_905238___redundant_placeholder24
0while_while_cond_905238___redundant_placeholder3
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906412

inputs>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_906328*
condR
while_cond_906327*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_902654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_905096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_901970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_148_901994_0:	d?/
while_lstm_cell_148_901996_0:	2?+
while_lstm_cell_148_901998_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_148_901994:	d?-
while_lstm_cell_148_901996:	2?)
while_lstm_cell_148_901998:	???+while/lstm_cell_148/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_148/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_148_901994_0while_lstm_cell_148_901996_0while_lstm_cell_148_901998_0*
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_901956?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_148/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_148/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_148/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_148/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_148_901994while_lstm_cell_148_901994_0":
while_lstm_cell_148_901996while_lstm_cell_148_901996_0":
while_lstm_cell_148_901998while_lstm_cell_148_901998_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_148/StatefulPartitionedCall+while/lstm_cell_148/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_148_layer_call_fn_906689

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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_901956o
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
while_body_902954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_902160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902160___redundant_placeholder04
0while_while_cond_902160___redundant_placeholder14
0while_while_cond_902160___redundant_placeholder24
0while_while_cond_902160___redundant_placeholder3
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
)sequential_169_lstm_508_while_cond_901309L
Hsequential_169_lstm_508_while_sequential_169_lstm_508_while_loop_counterR
Nsequential_169_lstm_508_while_sequential_169_lstm_508_while_maximum_iterations-
)sequential_169_lstm_508_while_placeholder/
+sequential_169_lstm_508_while_placeholder_1/
+sequential_169_lstm_508_while_placeholder_2/
+sequential_169_lstm_508_while_placeholder_3N
Jsequential_169_lstm_508_while_less_sequential_169_lstm_508_strided_slice_1d
`sequential_169_lstm_508_while_sequential_169_lstm_508_while_cond_901309___redundant_placeholder0d
`sequential_169_lstm_508_while_sequential_169_lstm_508_while_cond_901309___redundant_placeholder1d
`sequential_169_lstm_508_while_sequential_169_lstm_508_while_cond_901309___redundant_placeholder2d
`sequential_169_lstm_508_while_sequential_169_lstm_508_while_cond_901309___redundant_placeholder3*
&sequential_169_lstm_508_while_identity
?
"sequential_169/lstm_508/while/LessLess)sequential_169_lstm_508_while_placeholderJsequential_169_lstm_508_while_less_sequential_169_lstm_508_strided_slice_1*
T0*
_output_shapes
: {
&sequential_169/lstm_508/while/IdentityIdentity&sequential_169/lstm_508/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_169_lstm_508_while_identity/sequential_169/lstm_508/while/Identity:output:0*(
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
?"
?
while_body_901811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_147_901835_0:	?/
while_lstm_cell_147_901837_0:	d?+
while_lstm_cell_147_901839_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_147_901835:	?-
while_lstm_cell_147_901837:	d?)
while_lstm_cell_147_901839:	???+while/lstm_cell_147/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_147/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_147_901835_0while_lstm_cell_147_901837_0while_lstm_cell_147_901839_0*
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901752?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_147/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_147/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_147/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_147/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_147_901835while_lstm_cell_147_901835_0":
while_lstm_cell_147_901837while_lstm_cell_147_901837_0":
while_lstm_cell_147_901839while_lstm_cell_147_901839_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_147/StatefulPartitionedCall+while/lstm_cell_147/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_905239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_147_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_147_matmul_readvariableop_resource:	?G
4while_lstm_cell_147_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_147_biasadd_readvariableop_resource:	???*while/lstm_cell_147/BiasAdd/ReadVariableOp?)while/lstm_cell_147/MatMul/ReadVariableOp?+while/lstm_cell_147/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_147/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_147/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_147/addAddV2$while/lstm_cell_147/MatMul:product:0&while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_147/BiasAddBiasAddwhile/lstm_cell_147/add:z:02while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_147/splitSplit,while/lstm_cell_147/split/split_dim:output:0$while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_147/SigmoidSigmoid"while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_1Sigmoid"while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mulMul!while/lstm_cell_147/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_147/ReluRelu"while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_1Mulwhile/lstm_cell_147/Sigmoid:y:0&while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/add_1AddV2while/lstm_cell_147/mul:z:0while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_147/Sigmoid_2Sigmoid"while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_147/Relu_1Reluwhile/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_147/mul_2Mul!while/lstm_cell_147/Sigmoid_2:y:0(while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_147/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_147/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_147/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_147/BiasAdd/ReadVariableOp*^while/lstm_cell_147/MatMul/ReadVariableOp,^while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_147_biasadd_readvariableop_resource5while_lstm_cell_147_biasadd_readvariableop_resource_0"n
4while_lstm_cell_147_matmul_1_readvariableop_resource6while_lstm_cell_147_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_147_matmul_readvariableop_resource4while_lstm_cell_147_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_147/BiasAdd/ReadVariableOp*while/lstm_cell_147/BiasAdd/ReadVariableOp2V
)while/lstm_cell_147/MatMul/ReadVariableOp)while/lstm_cell_147/MatMul/ReadVariableOp2Z
+while/lstm_cell_147/MatMul_1/ReadVariableOp+while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_904280

inputsH
5lstm_507_lstm_cell_147_matmul_readvariableop_resource:	?J
7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource:	d?E
6lstm_507_lstm_cell_147_biasadd_readvariableop_resource:	?H
5lstm_508_lstm_cell_148_matmul_readvariableop_resource:	d?J
7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource:	2?E
6lstm_508_lstm_cell_148_biasadd_readvariableop_resource:	?G
5lstm_509_lstm_cell_149_matmul_readvariableop_resource:2(I
7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource:
(D
6lstm_509_lstm_cell_149_biasadd_readvariableop_resource:(:
(dense_169_matmul_readvariableop_resource:
7
)dense_169_biasadd_readvariableop_resource:
identity?? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp?-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp?,lstm_507/lstm_cell_147/MatMul/ReadVariableOp?.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp?lstm_507/while?-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp?,lstm_508/lstm_cell_148/MatMul/ReadVariableOp?.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp?lstm_508/while?-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp?,lstm_509/lstm_cell_149/MatMul/ReadVariableOp?.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp?lstm_509/whileD
lstm_507/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_507/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_507/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_507/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_sliceStridedSlicelstm_507/Shape:output:0%lstm_507/strided_slice/stack:output:0'lstm_507/strided_slice/stack_1:output:0'lstm_507/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_507/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_507/zeros/packedPacklstm_507/strided_slice:output:0 lstm_507/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_507/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_507/zerosFilllstm_507/zeros/packed:output:0lstm_507/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_507/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_507/zeros_1/packedPacklstm_507/strided_slice:output:0"lstm_507/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_507/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_507/zeros_1Fill lstm_507/zeros_1/packed:output:0lstm_507/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_507/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_507/transpose	Transposeinputs lstm_507/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_507/Shape_1Shapelstm_507/transpose:y:0*
T0*
_output_shapes
:h
lstm_507/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_507/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_1StridedSlicelstm_507/Shape_1:output:0'lstm_507/strided_slice_1/stack:output:0)lstm_507/strided_slice_1/stack_1:output:0)lstm_507/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_507/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_507/TensorArrayV2TensorListReserve-lstm_507/TensorArrayV2/element_shape:output:0!lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_507/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_507/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_507/transpose:y:0Glstm_507/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_507/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_507/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_2StridedSlicelstm_507/transpose:y:0'lstm_507/strided_slice_2/stack:output:0)lstm_507/strided_slice_2/stack_1:output:0)lstm_507/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_507/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp5lstm_507_lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_507/lstm_cell_147/MatMulMatMul!lstm_507/strided_slice_2:output:04lstm_507/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_507/lstm_cell_147/MatMul_1MatMullstm_507/zeros:output:06lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_507/lstm_cell_147/addAddV2'lstm_507/lstm_cell_147/MatMul:product:0)lstm_507/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp6lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_507/lstm_cell_147/BiasAddBiasAddlstm_507/lstm_cell_147/add:z:05lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_507/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_507/lstm_cell_147/splitSplit/lstm_507/lstm_cell_147/split/split_dim:output:0'lstm_507/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_507/lstm_cell_147/SigmoidSigmoid%lstm_507/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_507/lstm_cell_147/Sigmoid_1Sigmoid%lstm_507/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mulMul$lstm_507/lstm_cell_147/Sigmoid_1:y:0lstm_507/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_507/lstm_cell_147/ReluRelu%lstm_507/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mul_1Mul"lstm_507/lstm_cell_147/Sigmoid:y:0)lstm_507/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/add_1AddV2lstm_507/lstm_cell_147/mul:z:0 lstm_507/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_507/lstm_cell_147/Sigmoid_2Sigmoid%lstm_507/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_507/lstm_cell_147/Relu_1Relu lstm_507/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_507/lstm_cell_147/mul_2Mul$lstm_507/lstm_cell_147/Sigmoid_2:y:0+lstm_507/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_507/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_507/TensorArrayV2_1TensorListReserve/lstm_507/TensorArrayV2_1/element_shape:output:0!lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_507/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_507/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_507/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_507/whileWhile$lstm_507/while/loop_counter:output:0*lstm_507/while/maximum_iterations:output:0lstm_507/time:output:0!lstm_507/TensorArrayV2_1:handle:0lstm_507/zeros:output:0lstm_507/zeros_1:output:0!lstm_507/strided_slice_1:output:0@lstm_507/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_507_lstm_cell_147_matmul_readvariableop_resource7lstm_507_lstm_cell_147_matmul_1_readvariableop_resource6lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
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
lstm_507_while_body_903912*&
condR
lstm_507_while_cond_903911*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_507/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_507/TensorArrayV2Stack/TensorListStackTensorListStacklstm_507/while:output:3Blstm_507/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_507/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_507/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_507/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_507/strided_slice_3StridedSlice4lstm_507/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_507/strided_slice_3/stack:output:0)lstm_507/strided_slice_3/stack_1:output:0)lstm_507/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_507/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_507/transpose_1	Transpose4lstm_507/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_507/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_507/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_508/ShapeShapelstm_507/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_508/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_508/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_508/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_sliceStridedSlicelstm_508/Shape:output:0%lstm_508/strided_slice/stack:output:0'lstm_508/strided_slice/stack_1:output:0'lstm_508/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_508/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_508/zeros/packedPacklstm_508/strided_slice:output:0 lstm_508/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_508/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_508/zerosFilllstm_508/zeros/packed:output:0lstm_508/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_508/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_508/zeros_1/packedPacklstm_508/strided_slice:output:0"lstm_508/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_508/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_508/zeros_1Fill lstm_508/zeros_1/packed:output:0lstm_508/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_508/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_508/transpose	Transposelstm_507/transpose_1:y:0 lstm_508/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_508/Shape_1Shapelstm_508/transpose:y:0*
T0*
_output_shapes
:h
lstm_508/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_508/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_1StridedSlicelstm_508/Shape_1:output:0'lstm_508/strided_slice_1/stack:output:0)lstm_508/strided_slice_1/stack_1:output:0)lstm_508/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_508/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_508/TensorArrayV2TensorListReserve-lstm_508/TensorArrayV2/element_shape:output:0!lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_508/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_508/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_508/transpose:y:0Glstm_508/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_508/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_508/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_2StridedSlicelstm_508/transpose:y:0'lstm_508/strided_slice_2/stack:output:0)lstm_508/strided_slice_2/stack_1:output:0)lstm_508/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_508/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp5lstm_508_lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_508/lstm_cell_148/MatMulMatMul!lstm_508/strided_slice_2:output:04lstm_508/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_508/lstm_cell_148/MatMul_1MatMullstm_508/zeros:output:06lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_508/lstm_cell_148/addAddV2'lstm_508/lstm_cell_148/MatMul:product:0)lstm_508/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp6lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_508/lstm_cell_148/BiasAddBiasAddlstm_508/lstm_cell_148/add:z:05lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_508/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_508/lstm_cell_148/splitSplit/lstm_508/lstm_cell_148/split/split_dim:output:0'lstm_508/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_508/lstm_cell_148/SigmoidSigmoid%lstm_508/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_508/lstm_cell_148/Sigmoid_1Sigmoid%lstm_508/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mulMul$lstm_508/lstm_cell_148/Sigmoid_1:y:0lstm_508/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_508/lstm_cell_148/ReluRelu%lstm_508/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mul_1Mul"lstm_508/lstm_cell_148/Sigmoid:y:0)lstm_508/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/add_1AddV2lstm_508/lstm_cell_148/mul:z:0 lstm_508/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_508/lstm_cell_148/Sigmoid_2Sigmoid%lstm_508/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_508/lstm_cell_148/Relu_1Relu lstm_508/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_508/lstm_cell_148/mul_2Mul$lstm_508/lstm_cell_148/Sigmoid_2:y:0+lstm_508/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_508/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_508/TensorArrayV2_1TensorListReserve/lstm_508/TensorArrayV2_1/element_shape:output:0!lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_508/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_508/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_508/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_508/whileWhile$lstm_508/while/loop_counter:output:0*lstm_508/while/maximum_iterations:output:0lstm_508/time:output:0!lstm_508/TensorArrayV2_1:handle:0lstm_508/zeros:output:0lstm_508/zeros_1:output:0!lstm_508/strided_slice_1:output:0@lstm_508/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_508_lstm_cell_148_matmul_readvariableop_resource7lstm_508_lstm_cell_148_matmul_1_readvariableop_resource6lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
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
lstm_508_while_body_904051*&
condR
lstm_508_while_cond_904050*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_508/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_508/TensorArrayV2Stack/TensorListStackTensorListStacklstm_508/while:output:3Blstm_508/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_508/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_508/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_508/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_508/strided_slice_3StridedSlice4lstm_508/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_508/strided_slice_3/stack:output:0)lstm_508/strided_slice_3/stack_1:output:0)lstm_508/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_508/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_508/transpose_1	Transpose4lstm_508/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_508/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_508/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_509/ShapeShapelstm_508/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_509/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_509/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_509/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_sliceStridedSlicelstm_509/Shape:output:0%lstm_509/strided_slice/stack:output:0'lstm_509/strided_slice/stack_1:output:0'lstm_509/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_509/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_509/zeros/packedPacklstm_509/strided_slice:output:0 lstm_509/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_509/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_509/zerosFilllstm_509/zeros/packed:output:0lstm_509/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_509/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_509/zeros_1/packedPacklstm_509/strided_slice:output:0"lstm_509/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_509/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_509/zeros_1Fill lstm_509/zeros_1/packed:output:0lstm_509/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_509/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_509/transpose	Transposelstm_508/transpose_1:y:0 lstm_509/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_509/Shape_1Shapelstm_509/transpose:y:0*
T0*
_output_shapes
:h
lstm_509/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_509/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_1StridedSlicelstm_509/Shape_1:output:0'lstm_509/strided_slice_1/stack:output:0)lstm_509/strided_slice_1/stack_1:output:0)lstm_509/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_509/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_509/TensorArrayV2TensorListReserve-lstm_509/TensorArrayV2/element_shape:output:0!lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_509/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_509/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_509/transpose:y:0Glstm_509/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_509/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_509/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_2StridedSlicelstm_509/transpose:y:0'lstm_509/strided_slice_2/stack:output:0)lstm_509/strided_slice_2/stack_1:output:0)lstm_509/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_509/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp5lstm_509_lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_509/lstm_cell_149/MatMulMatMul!lstm_509/strided_slice_2:output:04lstm_509/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_509/lstm_cell_149/MatMul_1MatMullstm_509/zeros:output:06lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_509/lstm_cell_149/addAddV2'lstm_509/lstm_cell_149/MatMul:product:0)lstm_509/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp6lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_509/lstm_cell_149/BiasAddBiasAddlstm_509/lstm_cell_149/add:z:05lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_509/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_509/lstm_cell_149/splitSplit/lstm_509/lstm_cell_149/split/split_dim:output:0'lstm_509/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_509/lstm_cell_149/SigmoidSigmoid%lstm_509/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_509/lstm_cell_149/Sigmoid_1Sigmoid%lstm_509/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mulMul$lstm_509/lstm_cell_149/Sigmoid_1:y:0lstm_509/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_509/lstm_cell_149/ReluRelu%lstm_509/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mul_1Mul"lstm_509/lstm_cell_149/Sigmoid:y:0)lstm_509/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/add_1AddV2lstm_509/lstm_cell_149/mul:z:0 lstm_509/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_509/lstm_cell_149/Sigmoid_2Sigmoid%lstm_509/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_509/lstm_cell_149/Relu_1Relu lstm_509/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_509/lstm_cell_149/mul_2Mul$lstm_509/lstm_cell_149/Sigmoid_2:y:0+lstm_509/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_509/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_509/TensorArrayV2_1TensorListReserve/lstm_509/TensorArrayV2_1/element_shape:output:0!lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_509/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_509/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_509/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_509/whileWhile$lstm_509/while/loop_counter:output:0*lstm_509/while/maximum_iterations:output:0lstm_509/time:output:0!lstm_509/TensorArrayV2_1:handle:0lstm_509/zeros:output:0lstm_509/zeros_1:output:0!lstm_509/strided_slice_1:output:0@lstm_509/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_509_lstm_cell_149_matmul_readvariableop_resource7lstm_509_lstm_cell_149_matmul_1_readvariableop_resource6lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
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
lstm_509_while_body_904190*&
condR
lstm_509_while_cond_904189*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_509/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_509/TensorArrayV2Stack/TensorListStackTensorListStacklstm_509/while:output:3Blstm_509/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_509/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_509/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_509/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_509/strided_slice_3StridedSlice4lstm_509/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_509/strided_slice_3/stack:output:0)lstm_509/strided_slice_3/stack_1:output:0)lstm_509/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_509/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_509/transpose_1	Transpose4lstm_509/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_509/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_509/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_169/MatMulMatMul!lstm_509/strided_slice_3:output:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_169/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp.^lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp-^lstm_507/lstm_cell_147/MatMul/ReadVariableOp/^lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp^lstm_507/while.^lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp-^lstm_508/lstm_cell_148/MatMul/ReadVariableOp/^lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp^lstm_508/while.^lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp-^lstm_509/lstm_cell_149/MatMul/ReadVariableOp/^lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp^lstm_509/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp2^
-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp-lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp2\
,lstm_507/lstm_cell_147/MatMul/ReadVariableOp,lstm_507/lstm_cell_147/MatMul/ReadVariableOp2`
.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp.lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp2 
lstm_507/whilelstm_507/while2^
-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp-lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp2\
,lstm_508/lstm_cell_148/MatMul/ReadVariableOp,lstm_508/lstm_cell_148/MatMul/ReadVariableOp2`
.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp.lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp2 
lstm_508/whilelstm_508/while2^
-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp-lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp2\
,lstm_509/lstm_cell_149/MatMul/ReadVariableOp,lstm_509/lstm_cell_149/MatMul/ReadVariableOp2`
.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp.lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp2 
lstm_509/whilelstm_509/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901752

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
while_cond_901810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_901810___redundant_placeholder04
0while_while_cond_901810___redundant_placeholder14
0while_while_cond_901810___redundant_placeholder24
0while_while_cond_901810___redundant_placeholder3
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
)__inference_lstm_508_layer_call_fn_905345
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902230|
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_904894
inputs_0?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_904810*
condR
while_cond_904809*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_902102

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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906836

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
while_body_902161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_148_902185_0:	d?/
while_lstm_cell_148_902187_0:	2?+
while_lstm_cell_148_902189_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_148_902185:	d?-
while_lstm_cell_148_902187:	2?)
while_lstm_cell_148_902189:	???+while/lstm_cell_148/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_148/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_148_902185_0while_lstm_cell_148_902187_0while_lstm_cell_148_902189_0*
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_902102?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_148/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_148/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_148/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_148/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_148_902185while_lstm_cell_148_902185_0":
while_lstm_cell_148_902187while_lstm_cell_148_902187_0":
while_lstm_cell_148_902189while_lstm_cell_148_902189_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_148/StatefulPartitionedCall+while/lstm_cell_148/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_905095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905095___redundant_placeholder04
0while_while_cond_905095___redundant_placeholder14
0while_while_cond_905095___redundant_placeholder24
0while_while_cond_905095___redundant_placeholder3
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902452

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
D__inference_lstm_507_layer_call_and_return_conditional_losses_901880

inputs'
lstm_cell_147_901798:	?'
lstm_cell_147_901800:	d?#
lstm_cell_147_901802:	?
identity??%lstm_cell_147/StatefulPartitionedCall?while;
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
%lstm_cell_147/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_147_901798lstm_cell_147_901800lstm_cell_147_901802*
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901752n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_147_901798lstm_cell_147_901800lstm_cell_147_901802*
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
while_body_901811*
condR
while_cond_901810*K
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
NoOpNoOp&^lstm_cell_147/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_147/StatefulPartitionedCall%lstm_cell_147/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?T
?
)sequential_169_lstm_507_while_body_901171L
Hsequential_169_lstm_507_while_sequential_169_lstm_507_while_loop_counterR
Nsequential_169_lstm_507_while_sequential_169_lstm_507_while_maximum_iterations-
)sequential_169_lstm_507_while_placeholder/
+sequential_169_lstm_507_while_placeholder_1/
+sequential_169_lstm_507_while_placeholder_2/
+sequential_169_lstm_507_while_placeholder_3K
Gsequential_169_lstm_507_while_sequential_169_lstm_507_strided_slice_1_0?
?sequential_169_lstm_507_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_507_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_169_lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0:	?a
Nsequential_169_lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?\
Msequential_169_lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0:	?*
&sequential_169_lstm_507_while_identity,
(sequential_169_lstm_507_while_identity_1,
(sequential_169_lstm_507_while_identity_2,
(sequential_169_lstm_507_while_identity_3,
(sequential_169_lstm_507_while_identity_4,
(sequential_169_lstm_507_while_identity_5I
Esequential_169_lstm_507_while_sequential_169_lstm_507_strided_slice_1?
?sequential_169_lstm_507_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_507_tensorarrayunstack_tensorlistfromtensor]
Jsequential_169_lstm_507_while_lstm_cell_147_matmul_readvariableop_resource:	?_
Lsequential_169_lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource:	d?Z
Ksequential_169_lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource:	???Bsequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp?Asequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp?Csequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp?
Osequential_169/lstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_169/lstm_507/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_169_lstm_507_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_507_tensorarrayunstack_tensorlistfromtensor_0)sequential_169_lstm_507_while_placeholderXsequential_169/lstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOpLsequential_169_lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_169/lstm_507/while/lstm_cell_147/MatMulMatMulHsequential_169/lstm_507/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOpNsequential_169_lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_169/lstm_507/while/lstm_cell_147/MatMul_1MatMul+sequential_169_lstm_507_while_placeholder_2Ksequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_169/lstm_507/while/lstm_cell_147/addAddV2<sequential_169/lstm_507/while/lstm_cell_147/MatMul:product:0>sequential_169/lstm_507/while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOpMsequential_169_lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_169/lstm_507/while/lstm_cell_147/BiasAddBiasAdd3sequential_169/lstm_507/while/lstm_cell_147/add:z:0Jsequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_169/lstm_507/while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_169/lstm_507/while/lstm_cell_147/splitSplitDsequential_169/lstm_507/while/lstm_cell_147/split/split_dim:output:0<sequential_169/lstm_507/while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_169/lstm_507/while/lstm_cell_147/SigmoidSigmoid:sequential_169/lstm_507/while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_169/lstm_507/while/lstm_cell_147/Sigmoid_1Sigmoid:sequential_169/lstm_507/while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_169/lstm_507/while/lstm_cell_147/mulMul9sequential_169/lstm_507/while/lstm_cell_147/Sigmoid_1:y:0+sequential_169_lstm_507_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_169/lstm_507/while/lstm_cell_147/ReluRelu:sequential_169/lstm_507/while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_169/lstm_507/while/lstm_cell_147/mul_1Mul7sequential_169/lstm_507/while/lstm_cell_147/Sigmoid:y:0>sequential_169/lstm_507/while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_169/lstm_507/while/lstm_cell_147/add_1AddV23sequential_169/lstm_507/while/lstm_cell_147/mul:z:05sequential_169/lstm_507/while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_169/lstm_507/while/lstm_cell_147/Sigmoid_2Sigmoid:sequential_169/lstm_507/while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_169/lstm_507/while/lstm_cell_147/Relu_1Relu5sequential_169/lstm_507/while/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_169/lstm_507/while/lstm_cell_147/mul_2Mul9sequential_169/lstm_507/while/lstm_cell_147/Sigmoid_2:y:0@sequential_169/lstm_507/while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_169/lstm_507/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_169_lstm_507_while_placeholder_1)sequential_169_lstm_507_while_placeholder5sequential_169/lstm_507/while/lstm_cell_147/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_169/lstm_507/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_169/lstm_507/while/addAddV2)sequential_169_lstm_507_while_placeholder,sequential_169/lstm_507/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_169/lstm_507/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_169/lstm_507/while/add_1AddV2Hsequential_169_lstm_507_while_sequential_169_lstm_507_while_loop_counter.sequential_169/lstm_507/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_169/lstm_507/while/IdentityIdentity'sequential_169/lstm_507/while/add_1:z:0#^sequential_169/lstm_507/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_507/while/Identity_1IdentityNsequential_169_lstm_507_while_sequential_169_lstm_507_while_maximum_iterations#^sequential_169/lstm_507/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_507/while/Identity_2Identity%sequential_169/lstm_507/while/add:z:0#^sequential_169/lstm_507/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_507/while/Identity_3IdentityRsequential_169/lstm_507/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_169/lstm_507/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_507/while/Identity_4Identity5sequential_169/lstm_507/while/lstm_cell_147/mul_2:z:0#^sequential_169/lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_169/lstm_507/while/Identity_5Identity5sequential_169/lstm_507/while/lstm_cell_147/add_1:z:0#^sequential_169/lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_169/lstm_507/while/NoOpNoOpC^sequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOpB^sequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOpD^sequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_169_lstm_507_while_identity/sequential_169/lstm_507/while/Identity:output:0"]
(sequential_169_lstm_507_while_identity_11sequential_169/lstm_507/while/Identity_1:output:0"]
(sequential_169_lstm_507_while_identity_21sequential_169/lstm_507/while/Identity_2:output:0"]
(sequential_169_lstm_507_while_identity_31sequential_169/lstm_507/while/Identity_3:output:0"]
(sequential_169_lstm_507_while_identity_41sequential_169/lstm_507/while/Identity_4:output:0"]
(sequential_169_lstm_507_while_identity_51sequential_169/lstm_507/while/Identity_5:output:0"?
Ksequential_169_lstm_507_while_lstm_cell_147_biasadd_readvariableop_resourceMsequential_169_lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0"?
Lsequential_169_lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resourceNsequential_169_lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0"?
Jsequential_169_lstm_507_while_lstm_cell_147_matmul_readvariableop_resourceLsequential_169_lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0"?
Esequential_169_lstm_507_while_sequential_169_lstm_507_strided_slice_1Gsequential_169_lstm_507_while_sequential_169_lstm_507_strided_slice_1_0"?
?sequential_169_lstm_507_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_507_tensorarrayunstack_tensorlistfromtensor?sequential_169_lstm_507_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_507_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOpBsequential_169/lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp2?
Asequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOpAsequential_169/lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp2?
Csequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOpCsequential_169/lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_902738

inputs?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_902654*
condR
while_cond_902653*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_169_layer_call_fn_906564

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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056o
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
)sequential_169_lstm_508_while_body_901310L
Hsequential_169_lstm_508_while_sequential_169_lstm_508_while_loop_counterR
Nsequential_169_lstm_508_while_sequential_169_lstm_508_while_maximum_iterations-
)sequential_169_lstm_508_while_placeholder/
+sequential_169_lstm_508_while_placeholder_1/
+sequential_169_lstm_508_while_placeholder_2/
+sequential_169_lstm_508_while_placeholder_3K
Gsequential_169_lstm_508_while_sequential_169_lstm_508_strided_slice_1_0?
?sequential_169_lstm_508_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_508_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_169_lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0:	d?a
Nsequential_169_lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?\
Msequential_169_lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0:	?*
&sequential_169_lstm_508_while_identity,
(sequential_169_lstm_508_while_identity_1,
(sequential_169_lstm_508_while_identity_2,
(sequential_169_lstm_508_while_identity_3,
(sequential_169_lstm_508_while_identity_4,
(sequential_169_lstm_508_while_identity_5I
Esequential_169_lstm_508_while_sequential_169_lstm_508_strided_slice_1?
?sequential_169_lstm_508_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_508_tensorarrayunstack_tensorlistfromtensor]
Jsequential_169_lstm_508_while_lstm_cell_148_matmul_readvariableop_resource:	d?_
Lsequential_169_lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource:	2?Z
Ksequential_169_lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource:	???Bsequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp?Asequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp?Csequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp?
Osequential_169/lstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_169/lstm_508/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_169_lstm_508_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_508_tensorarrayunstack_tensorlistfromtensor_0)sequential_169_lstm_508_while_placeholderXsequential_169/lstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOpLsequential_169_lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_169/lstm_508/while/lstm_cell_148/MatMulMatMulHsequential_169/lstm_508/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOpNsequential_169_lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_169/lstm_508/while/lstm_cell_148/MatMul_1MatMul+sequential_169_lstm_508_while_placeholder_2Ksequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_169/lstm_508/while/lstm_cell_148/addAddV2<sequential_169/lstm_508/while/lstm_cell_148/MatMul:product:0>sequential_169/lstm_508/while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOpMsequential_169_lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_169/lstm_508/while/lstm_cell_148/BiasAddBiasAdd3sequential_169/lstm_508/while/lstm_cell_148/add:z:0Jsequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_169/lstm_508/while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_169/lstm_508/while/lstm_cell_148/splitSplitDsequential_169/lstm_508/while/lstm_cell_148/split/split_dim:output:0<sequential_169/lstm_508/while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_169/lstm_508/while/lstm_cell_148/SigmoidSigmoid:sequential_169/lstm_508/while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_169/lstm_508/while/lstm_cell_148/Sigmoid_1Sigmoid:sequential_169/lstm_508/while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_169/lstm_508/while/lstm_cell_148/mulMul9sequential_169/lstm_508/while/lstm_cell_148/Sigmoid_1:y:0+sequential_169_lstm_508_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_169/lstm_508/while/lstm_cell_148/ReluRelu:sequential_169/lstm_508/while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_169/lstm_508/while/lstm_cell_148/mul_1Mul7sequential_169/lstm_508/while/lstm_cell_148/Sigmoid:y:0>sequential_169/lstm_508/while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_169/lstm_508/while/lstm_cell_148/add_1AddV23sequential_169/lstm_508/while/lstm_cell_148/mul:z:05sequential_169/lstm_508/while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_169/lstm_508/while/lstm_cell_148/Sigmoid_2Sigmoid:sequential_169/lstm_508/while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_169/lstm_508/while/lstm_cell_148/Relu_1Relu5sequential_169/lstm_508/while/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_169/lstm_508/while/lstm_cell_148/mul_2Mul9sequential_169/lstm_508/while/lstm_cell_148/Sigmoid_2:y:0@sequential_169/lstm_508/while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_169/lstm_508/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_169_lstm_508_while_placeholder_1)sequential_169_lstm_508_while_placeholder5sequential_169/lstm_508/while/lstm_cell_148/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_169/lstm_508/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_169/lstm_508/while/addAddV2)sequential_169_lstm_508_while_placeholder,sequential_169/lstm_508/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_169/lstm_508/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_169/lstm_508/while/add_1AddV2Hsequential_169_lstm_508_while_sequential_169_lstm_508_while_loop_counter.sequential_169/lstm_508/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_169/lstm_508/while/IdentityIdentity'sequential_169/lstm_508/while/add_1:z:0#^sequential_169/lstm_508/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_508/while/Identity_1IdentityNsequential_169_lstm_508_while_sequential_169_lstm_508_while_maximum_iterations#^sequential_169/lstm_508/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_508/while/Identity_2Identity%sequential_169/lstm_508/while/add:z:0#^sequential_169/lstm_508/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_508/while/Identity_3IdentityRsequential_169/lstm_508/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_169/lstm_508/while/NoOp*
T0*
_output_shapes
: ?
(sequential_169/lstm_508/while/Identity_4Identity5sequential_169/lstm_508/while/lstm_cell_148/mul_2:z:0#^sequential_169/lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_169/lstm_508/while/Identity_5Identity5sequential_169/lstm_508/while/lstm_cell_148/add_1:z:0#^sequential_169/lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_169/lstm_508/while/NoOpNoOpC^sequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOpB^sequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOpD^sequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_169_lstm_508_while_identity/sequential_169/lstm_508/while/Identity:output:0"]
(sequential_169_lstm_508_while_identity_11sequential_169/lstm_508/while/Identity_1:output:0"]
(sequential_169_lstm_508_while_identity_21sequential_169/lstm_508/while/Identity_2:output:0"]
(sequential_169_lstm_508_while_identity_31sequential_169/lstm_508/while/Identity_3:output:0"]
(sequential_169_lstm_508_while_identity_41sequential_169/lstm_508/while/Identity_4:output:0"]
(sequential_169_lstm_508_while_identity_51sequential_169/lstm_508/while/Identity_5:output:0"?
Ksequential_169_lstm_508_while_lstm_cell_148_biasadd_readvariableop_resourceMsequential_169_lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0"?
Lsequential_169_lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resourceNsequential_169_lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0"?
Jsequential_169_lstm_508_while_lstm_cell_148_matmul_readvariableop_resourceLsequential_169_lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0"?
Esequential_169_lstm_508_while_sequential_169_lstm_508_strided_slice_1Gsequential_169_lstm_508_while_sequential_169_lstm_508_strided_slice_1_0"?
?sequential_169_lstm_508_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_508_tensorarrayunstack_tensorlistfromtensor?sequential_169_lstm_508_while_tensorarrayv2read_tensorlistgetitem_sequential_169_lstm_508_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOpBsequential_169/lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp2?
Asequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOpAsequential_169/lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp2?
Csequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOpCsequential_169/lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_508_while_body_904478.
*lstm_508_while_lstm_508_while_loop_counter4
0lstm_508_while_lstm_508_while_maximum_iterations
lstm_508_while_placeholder 
lstm_508_while_placeholder_1 
lstm_508_while_placeholder_2 
lstm_508_while_placeholder_3-
)lstm_508_while_lstm_508_strided_slice_1_0i
elstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0:	d?R
?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?M
>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
lstm_508_while_identity
lstm_508_while_identity_1
lstm_508_while_identity_2
lstm_508_while_identity_3
lstm_508_while_identity_4
lstm_508_while_identity_5+
'lstm_508_while_lstm_508_strided_slice_1g
clstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensorN
;lstm_508_while_lstm_cell_148_matmul_readvariableop_resource:	d?P
=lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource:	2?K
<lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource:	???3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp?2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp?4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp?
@lstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_508/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0lstm_508_while_placeholderIlstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_508/while/lstm_cell_148/MatMulMatMul9lstm_508/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_508/while/lstm_cell_148/MatMul_1MatMullstm_508_while_placeholder_2<lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_508/while/lstm_cell_148/addAddV2-lstm_508/while/lstm_cell_148/MatMul:product:0/lstm_508/while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_508/while/lstm_cell_148/BiasAddBiasAdd$lstm_508/while/lstm_cell_148/add:z:0;lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_508/while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_508/while/lstm_cell_148/splitSplit5lstm_508/while/lstm_cell_148/split/split_dim:output:0-lstm_508/while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_508/while/lstm_cell_148/SigmoidSigmoid+lstm_508/while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_508/while/lstm_cell_148/Sigmoid_1Sigmoid+lstm_508/while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_508/while/lstm_cell_148/mulMul*lstm_508/while/lstm_cell_148/Sigmoid_1:y:0lstm_508_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_508/while/lstm_cell_148/ReluRelu+lstm_508/while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/mul_1Mul(lstm_508/while/lstm_cell_148/Sigmoid:y:0/lstm_508/while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/add_1AddV2$lstm_508/while/lstm_cell_148/mul:z:0&lstm_508/while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_508/while/lstm_cell_148/Sigmoid_2Sigmoid+lstm_508/while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_508/while/lstm_cell_148/Relu_1Relu&lstm_508/while/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/mul_2Mul*lstm_508/while/lstm_cell_148/Sigmoid_2:y:01lstm_508/while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_508/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_508_while_placeholder_1lstm_508_while_placeholder&lstm_508/while/lstm_cell_148/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_508/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_508/while/addAddV2lstm_508_while_placeholderlstm_508/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_508/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_508/while/add_1AddV2*lstm_508_while_lstm_508_while_loop_counterlstm_508/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_508/while/IdentityIdentitylstm_508/while/add_1:z:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_1Identity0lstm_508_while_lstm_508_while_maximum_iterations^lstm_508/while/NoOp*
T0*
_output_shapes
: t
lstm_508/while/Identity_2Identitylstm_508/while/add:z:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_3IdentityClstm_508/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_4Identity&lstm_508/while/lstm_cell_148/mul_2:z:0^lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_508/while/Identity_5Identity&lstm_508/while/lstm_cell_148/add_1:z:0^lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_508/while/NoOpNoOp4^lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp3^lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp5^lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_508_while_identity lstm_508/while/Identity:output:0"?
lstm_508_while_identity_1"lstm_508/while/Identity_1:output:0"?
lstm_508_while_identity_2"lstm_508/while/Identity_2:output:0"?
lstm_508_while_identity_3"lstm_508/while/Identity_3:output:0"?
lstm_508_while_identity_4"lstm_508/while/Identity_4:output:0"?
lstm_508_while_identity_5"lstm_508/while/Identity_5:output:0"T
'lstm_508_while_lstm_508_strided_slice_1)lstm_508_while_lstm_508_strided_slice_1_0"~
<lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0"?
=lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0"|
;lstm_508_while_lstm_cell_148_matmul_readvariableop_resource=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0"?
clstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensorelstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp2h
2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp2l
4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906640

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
while_cond_902953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902953___redundant_placeholder04
0while_while_cond_902953___redundant_placeholder14
0while_while_cond_902953___redundant_placeholder24
0while_while_cond_902953___redundant_placeholder3
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
lstm_509_while_cond_904616.
*lstm_509_while_lstm_509_while_loop_counter4
0lstm_509_while_lstm_509_while_maximum_iterations
lstm_509_while_placeholder 
lstm_509_while_placeholder_1 
lstm_509_while_placeholder_2 
lstm_509_while_placeholder_30
,lstm_509_while_less_lstm_509_strided_slice_1F
Blstm_509_while_lstm_509_while_cond_904616___redundant_placeholder0F
Blstm_509_while_lstm_509_while_cond_904616___redundant_placeholder1F
Blstm_509_while_lstm_509_while_cond_904616___redundant_placeholder2F
Blstm_509_while_lstm_509_while_cond_904616___redundant_placeholder3
lstm_509_while_identity
?
lstm_509/while/LessLesslstm_509_while_placeholder,lstm_509_while_less_lstm_509_strided_slice_1*
T0*
_output_shapes
: ]
lstm_509/while/IdentityIdentitylstm_509/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_509_while_identity lstm_509/while/Identity:output:0*(
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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056

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
while_body_906042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_905854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905854___redundant_placeholder04
0while_while_cond_905854___redundant_placeholder14
0while_while_cond_905854___redundant_placeholder24
0while_while_cond_905854___redundant_placeholder3
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902039

inputs'
lstm_cell_148_901957:	d?'
lstm_cell_148_901959:	2?#
lstm_cell_148_901961:	?
identity??%lstm_cell_148/StatefulPartitionedCall?while;
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
%lstm_cell_148/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_148_901957lstm_cell_148_901959lstm_cell_148_901961*
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_901956n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_148_901957lstm_cell_148_901959lstm_cell_148_901961*
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
while_body_901970*
condR
while_cond_901969*K
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
NoOpNoOp&^lstm_cell_148/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_148/StatefulPartitionedCall%lstm_cell_148/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_169_layer_call_and_return_conditional_losses_903063

inputs"
lstm_507_902739:	?"
lstm_507_902741:	d?
lstm_507_902743:	?"
lstm_508_902889:	d?"
lstm_508_902891:	2?
lstm_508_902893:	?!
lstm_509_903039:2(!
lstm_509_903041:
(
lstm_509_903043:("
dense_169_903057:

dense_169_903059:
identity??!dense_169/StatefulPartitionedCall? lstm_507/StatefulPartitionedCall? lstm_508/StatefulPartitionedCall? lstm_509/StatefulPartitionedCall?
 lstm_507/StatefulPartitionedCallStatefulPartitionedCallinputslstm_507_902739lstm_507_902741lstm_507_902743*
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_902738?
 lstm_508/StatefulPartitionedCallStatefulPartitionedCall)lstm_507/StatefulPartitionedCall:output:0lstm_508_902889lstm_508_902891lstm_508_902893*
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902888?
 lstm_509/StatefulPartitionedCallStatefulPartitionedCall)lstm_508/StatefulPartitionedCall:output:0lstm_509_903039lstm_509_903041lstm_509_903043*
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903038?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_509/StatefulPartitionedCall:output:0dense_169_903057dense_169_903059*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056y
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_169/StatefulPartitionedCall!^lstm_507/StatefulPartitionedCall!^lstm_508/StatefulPartitionedCall!^lstm_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2D
 lstm_507/StatefulPartitionedCall lstm_507/StatefulPartitionedCall2D
 lstm_508/StatefulPartitionedCall lstm_508/StatefulPartitionedCall2D
 lstm_509/StatefulPartitionedCall lstm_509/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_507_layer_call_and_return_conditional_losses_905180

inputs?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_905096*
condR
while_cond_905095*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_508_layer_call_fn_905367

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
D__inference_lstm_508_layer_call_and_return_conditional_losses_903419s
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
?
)__inference_lstm_509_layer_call_fn_905950
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_902389o
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
?"
?
while_body_901620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_147_901644_0:	?/
while_lstm_cell_147_901646_0:	d?+
while_lstm_cell_147_901648_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_147_901644:	?-
while_lstm_cell_147_901646:	d?)
while_lstm_cell_147_901648:	???+while/lstm_cell_147/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_147/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_147_901644_0while_lstm_cell_147_901646_0while_lstm_cell_147_901648_0*
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901606?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_147/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_147/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_147/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_147/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_147_901644while_lstm_cell_147_901644_0":
while_lstm_cell_147_901646while_lstm_cell_147_901646_0":
while_lstm_cell_147_901648while_lstm_cell_147_901648_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_147/StatefulPartitionedCall+while/lstm_cell_147/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_507_while_cond_904338.
*lstm_507_while_lstm_507_while_loop_counter4
0lstm_507_while_lstm_507_while_maximum_iterations
lstm_507_while_placeholder 
lstm_507_while_placeholder_1 
lstm_507_while_placeholder_2 
lstm_507_while_placeholder_30
,lstm_507_while_less_lstm_507_strided_slice_1F
Blstm_507_while_lstm_507_while_cond_904338___redundant_placeholder0F
Blstm_507_while_lstm_507_while_cond_904338___redundant_placeholder1F
Blstm_507_while_lstm_507_while_cond_904338___redundant_placeholder2F
Blstm_507_while_lstm_507_while_cond_904338___redundant_placeholder3
lstm_507_while_identity
?
lstm_507/while/LessLesslstm_507_while_placeholder,lstm_507_while_less_lstm_507_strided_slice_1*
T0*
_output_shapes
: ]
lstm_507/while/IdentityIdentitylstm_507/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_507_while_identity lstm_507/while/Identity:output:0*(
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
while_cond_903499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_903499___redundant_placeholder04
0while_while_cond_903499___redundant_placeholder14
0while_while_cond_903499___redundant_placeholder24
0while_while_cond_903499___redundant_placeholder3
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
lstm_508_while_cond_904477.
*lstm_508_while_lstm_508_while_loop_counter4
0lstm_508_while_lstm_508_while_maximum_iterations
lstm_508_while_placeholder 
lstm_508_while_placeholder_1 
lstm_508_while_placeholder_2 
lstm_508_while_placeholder_30
,lstm_508_while_less_lstm_508_strided_slice_1F
Blstm_508_while_lstm_508_while_cond_904477___redundant_placeholder0F
Blstm_508_while_lstm_508_while_cond_904477___redundant_placeholder1F
Blstm_508_while_lstm_508_while_cond_904477___redundant_placeholder2F
Blstm_508_while_lstm_508_while_cond_904477___redundant_placeholder3
lstm_508_while_identity
?
lstm_508/while/LessLesslstm_508_while_placeholder,lstm_508_while_less_lstm_508_strided_slice_1*
T0*
_output_shapes
: ]
lstm_508/while/IdentityIdentitylstm_508/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_508_while_identity lstm_508/while/Identity:output:0*(
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
while_body_905712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_169_lstm_507_while_cond_901170L
Hsequential_169_lstm_507_while_sequential_169_lstm_507_while_loop_counterR
Nsequential_169_lstm_507_while_sequential_169_lstm_507_while_maximum_iterations-
)sequential_169_lstm_507_while_placeholder/
+sequential_169_lstm_507_while_placeholder_1/
+sequential_169_lstm_507_while_placeholder_2/
+sequential_169_lstm_507_while_placeholder_3N
Jsequential_169_lstm_507_while_less_sequential_169_lstm_507_strided_slice_1d
`sequential_169_lstm_507_while_sequential_169_lstm_507_while_cond_901170___redundant_placeholder0d
`sequential_169_lstm_507_while_sequential_169_lstm_507_while_cond_901170___redundant_placeholder1d
`sequential_169_lstm_507_while_sequential_169_lstm_507_while_cond_901170___redundant_placeholder2d
`sequential_169_lstm_507_while_sequential_169_lstm_507_while_cond_901170___redundant_placeholder3*
&sequential_169_lstm_507_while_identity
?
"sequential_169/lstm_507/while/LessLess)sequential_169_lstm_507_while_placeholderJsequential_169_lstm_507_while_less_sequential_169_lstm_507_strided_slice_1*
T0*
_output_shapes
: {
&sequential_169/lstm_507/while/IdentityIdentity&sequential_169/lstm_507/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_169_lstm_507_while_identity/sequential_169/lstm_507/while/Identity:output:0*(
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
while_cond_901619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_901619___redundant_placeholder04
0while_while_cond_901619___redundant_placeholder14
0while_while_cond_901619___redundant_placeholder24
0while_while_cond_901619___redundant_placeholder3
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905796

inputs?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_905712*
condR
while_cond_905711*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_905426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_147_layer_call_fn_906608

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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901752o
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
.__inference_lstm_cell_149_layer_call_fn_906804

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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902452o
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
?
while_body_906328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_149_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_149_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_149_matmul_readvariableop_resource:2(F
4while_lstm_cell_149_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_149_biasadd_readvariableop_resource:(??*while/lstm_cell_149/BiasAdd/ReadVariableOp?)while/lstm_cell_149/MatMul/ReadVariableOp?+while/lstm_cell_149/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_149/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_149/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_149/addAddV2$while/lstm_cell_149/MatMul:product:0&while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_149/BiasAddBiasAddwhile/lstm_cell_149/add:z:02while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_149/splitSplit,while/lstm_cell_149/split/split_dim:output:0$while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_149/SigmoidSigmoid"while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_1Sigmoid"while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mulMul!while/lstm_cell_149/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_149/ReluRelu"while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_1Mulwhile/lstm_cell_149/Sigmoid:y:0&while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/add_1AddV2while/lstm_cell_149/mul:z:0while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_149/Sigmoid_2Sigmoid"while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_149/Relu_1Reluwhile/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_149/mul_2Mul!while/lstm_cell_149/Sigmoid_2:y:0(while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_149/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_149/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_149/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_149/BiasAdd/ReadVariableOp*^while/lstm_cell_149/MatMul/ReadVariableOp,^while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_149_biasadd_readvariableop_resource5while_lstm_cell_149_biasadd_readvariableop_resource_0"n
4while_lstm_cell_149_matmul_1_readvariableop_resource6while_lstm_cell_149_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_149_matmul_readvariableop_resource4while_lstm_cell_149_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_149/BiasAdd/ReadVariableOp*while/lstm_cell_149/BiasAdd/ReadVariableOp2V
)while/lstm_cell_149/MatMul/ReadVariableOp)while/lstm_cell_149/MatMul/ReadVariableOp2Z
+while/lstm_cell_149/MatMul_1/ReadVariableOp+while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_901689

inputs'
lstm_cell_147_901607:	?'
lstm_cell_147_901609:	d?#
lstm_cell_147_901611:	?
identity??%lstm_cell_147/StatefulPartitionedCall?while;
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
%lstm_cell_147/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_147_901607lstm_cell_147_901609lstm_cell_147_901611*
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_901606n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_147_901607lstm_cell_147_901609lstm_cell_147_901611*
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
while_body_901620*
condR
while_cond_901619*K
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
NoOpNoOp&^lstm_cell_147/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_147/StatefulPartitionedCall%lstm_cell_147/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_507_layer_call_fn_904729
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_901880|
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906269
inputs_0>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_906185*
condR
while_cond_906184*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_509_layer_call_fn_905961
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_902580o
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
?
?
J__inference_sequential_169_layer_call_and_return_conditional_losses_903734
lstm_507_input"
lstm_507_903707:	?"
lstm_507_903709:	d?
lstm_507_903711:	?"
lstm_508_903714:	d?"
lstm_508_903716:	2?
lstm_508_903718:	?!
lstm_509_903721:2(!
lstm_509_903723:
(
lstm_509_903725:("
dense_169_903728:

dense_169_903730:
identity??!dense_169/StatefulPartitionedCall? lstm_507/StatefulPartitionedCall? lstm_508/StatefulPartitionedCall? lstm_509/StatefulPartitionedCall?
 lstm_507/StatefulPartitionedCallStatefulPartitionedCalllstm_507_inputlstm_507_903707lstm_507_903709lstm_507_903711*
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_902738?
 lstm_508/StatefulPartitionedCallStatefulPartitionedCall)lstm_507/StatefulPartitionedCall:output:0lstm_508_903714lstm_508_903716lstm_508_903718*
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_902888?
 lstm_509/StatefulPartitionedCallStatefulPartitionedCall)lstm_508/StatefulPartitionedCall:output:0lstm_509_903721lstm_509_903723lstm_509_903725*
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903038?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_509/StatefulPartitionedCall:output:0dense_169_903728dense_169_903730*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_903056y
IdentityIdentity*dense_169/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_169/StatefulPartitionedCall!^lstm_507/StatefulPartitionedCall!^lstm_508/StatefulPartitionedCall!^lstm_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2D
 lstm_507/StatefulPartitionedCall lstm_507/StatefulPartitionedCall2D
 lstm_508/StatefulPartitionedCall lstm_508/StatefulPartitionedCall2D
 lstm_509/StatefulPartitionedCall lstm_509/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_507_input
?

?
/__inference_sequential_169_layer_call_fn_903826

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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903063o
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
while_cond_902510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_902510___redundant_placeholder04
0while_while_cond_902510___redundant_placeholder14
0while_while_cond_902510___redundant_placeholder24
0while_while_cond_902510___redundant_placeholder3
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903254

inputs>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_903170*
condR
while_cond_903169*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_508_layer_call_and_return_conditional_losses_905939

inputs?
,lstm_cell_148_matmul_readvariableop_resource:	d?A
.lstm_cell_148_matmul_1_readvariableop_resource:	2?<
-lstm_cell_148_biasadd_readvariableop_resource:	?
identity??$lstm_cell_148/BiasAdd/ReadVariableOp?#lstm_cell_148/MatMul/ReadVariableOp?%lstm_cell_148/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_148/MatMul/ReadVariableOpReadVariableOp,lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_148/MatMulMatMulstrided_slice_2:output:0+lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_148/MatMul_1MatMulzeros:output:0-lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_148/addAddV2lstm_cell_148/MatMul:product:0 lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_148/BiasAddBiasAddlstm_cell_148/add:z:0,lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_148/splitSplit&lstm_cell_148/split/split_dim:output:0lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_148/SigmoidSigmoidlstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_1Sigmoidlstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_148/mulMullstm_cell_148/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_148/ReluRelulstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_1Mullstm_cell_148/Sigmoid:y:0 lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_148/add_1AddV2lstm_cell_148/mul:z:0lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_148/Sigmoid_2Sigmoidlstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_148/Relu_1Relulstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_148/mul_2Mullstm_cell_148/Sigmoid_2:y:0"lstm_cell_148/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_148_matmul_readvariableop_resource.lstm_cell_148_matmul_1_readvariableop_resource-lstm_cell_148_biasadd_readvariableop_resource*
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
while_body_905855*
condR
while_cond_905854*K
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
NoOpNoOp%^lstm_cell_148/BiasAdd/ReadVariableOp$^lstm_cell_148/MatMul/ReadVariableOp&^lstm_cell_148/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_148/BiasAdd/ReadVariableOp$lstm_cell_148/BiasAdd/ReadVariableOp2J
#lstm_cell_148/MatMul/ReadVariableOp#lstm_cell_148/MatMul/ReadVariableOp2N
%lstm_cell_148/MatMul_1/ReadVariableOp%lstm_cell_148/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_901539
lstm_507_inputW
Dsequential_169_lstm_507_lstm_cell_147_matmul_readvariableop_resource:	?Y
Fsequential_169_lstm_507_lstm_cell_147_matmul_1_readvariableop_resource:	d?T
Esequential_169_lstm_507_lstm_cell_147_biasadd_readvariableop_resource:	?W
Dsequential_169_lstm_508_lstm_cell_148_matmul_readvariableop_resource:	d?Y
Fsequential_169_lstm_508_lstm_cell_148_matmul_1_readvariableop_resource:	2?T
Esequential_169_lstm_508_lstm_cell_148_biasadd_readvariableop_resource:	?V
Dsequential_169_lstm_509_lstm_cell_149_matmul_readvariableop_resource:2(X
Fsequential_169_lstm_509_lstm_cell_149_matmul_1_readvariableop_resource:
(S
Esequential_169_lstm_509_lstm_cell_149_biasadd_readvariableop_resource:(I
7sequential_169_dense_169_matmul_readvariableop_resource:
F
8sequential_169_dense_169_biasadd_readvariableop_resource:
identity??/sequential_169/dense_169/BiasAdd/ReadVariableOp?.sequential_169/dense_169/MatMul/ReadVariableOp?<sequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp?;sequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOp?=sequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp?sequential_169/lstm_507/while?<sequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp?;sequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOp?=sequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp?sequential_169/lstm_508/while?<sequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp?;sequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOp?=sequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp?sequential_169/lstm_509/while[
sequential_169/lstm_507/ShapeShapelstm_507_input*
T0*
_output_shapes
:u
+sequential_169/lstm_507/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_169/lstm_507/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_169/lstm_507/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_169/lstm_507/strided_sliceStridedSlice&sequential_169/lstm_507/Shape:output:04sequential_169/lstm_507/strided_slice/stack:output:06sequential_169/lstm_507/strided_slice/stack_1:output:06sequential_169/lstm_507/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_169/lstm_507/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_169/lstm_507/zeros/packedPack.sequential_169/lstm_507/strided_slice:output:0/sequential_169/lstm_507/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_169/lstm_507/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_507/zerosFill-sequential_169/lstm_507/zeros/packed:output:0,sequential_169/lstm_507/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_169/lstm_507/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_169/lstm_507/zeros_1/packedPack.sequential_169/lstm_507/strided_slice:output:01sequential_169/lstm_507/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_169/lstm_507/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_507/zeros_1Fill/sequential_169/lstm_507/zeros_1/packed:output:0.sequential_169/lstm_507/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_169/lstm_507/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_169/lstm_507/transpose	Transposelstm_507_input/sequential_169/lstm_507/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_169/lstm_507/Shape_1Shape%sequential_169/lstm_507/transpose:y:0*
T0*
_output_shapes
:w
-sequential_169/lstm_507/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_507/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_507/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_507/strided_slice_1StridedSlice(sequential_169/lstm_507/Shape_1:output:06sequential_169/lstm_507/strided_slice_1/stack:output:08sequential_169/lstm_507/strided_slice_1/stack_1:output:08sequential_169/lstm_507/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_169/lstm_507/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_169/lstm_507/TensorArrayV2TensorListReserve<sequential_169/lstm_507/TensorArrayV2/element_shape:output:00sequential_169/lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_169/lstm_507/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_169/lstm_507/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_169/lstm_507/transpose:y:0Vsequential_169/lstm_507/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_169/lstm_507/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_507/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_507/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_507/strided_slice_2StridedSlice%sequential_169/lstm_507/transpose:y:06sequential_169/lstm_507/strided_slice_2/stack:output:08sequential_169/lstm_507/strided_slice_2/stack_1:output:08sequential_169/lstm_507/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOpReadVariableOpDsequential_169_lstm_507_lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_169/lstm_507/lstm_cell_147/MatMulMatMul0sequential_169/lstm_507/strided_slice_2:output:0Csequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOpFsequential_169_lstm_507_lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_169/lstm_507/lstm_cell_147/MatMul_1MatMul&sequential_169/lstm_507/zeros:output:0Esequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_169/lstm_507/lstm_cell_147/addAddV26sequential_169/lstm_507/lstm_cell_147/MatMul:product:08sequential_169/lstm_507/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOpEsequential_169_lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_169/lstm_507/lstm_cell_147/BiasAddBiasAdd-sequential_169/lstm_507/lstm_cell_147/add:z:0Dsequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_169/lstm_507/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_169/lstm_507/lstm_cell_147/splitSplit>sequential_169/lstm_507/lstm_cell_147/split/split_dim:output:06sequential_169/lstm_507/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_169/lstm_507/lstm_cell_147/SigmoidSigmoid4sequential_169/lstm_507/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_169/lstm_507/lstm_cell_147/Sigmoid_1Sigmoid4sequential_169/lstm_507/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_169/lstm_507/lstm_cell_147/mulMul3sequential_169/lstm_507/lstm_cell_147/Sigmoid_1:y:0(sequential_169/lstm_507/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_169/lstm_507/lstm_cell_147/ReluRelu4sequential_169/lstm_507/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_169/lstm_507/lstm_cell_147/mul_1Mul1sequential_169/lstm_507/lstm_cell_147/Sigmoid:y:08sequential_169/lstm_507/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_169/lstm_507/lstm_cell_147/add_1AddV2-sequential_169/lstm_507/lstm_cell_147/mul:z:0/sequential_169/lstm_507/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_169/lstm_507/lstm_cell_147/Sigmoid_2Sigmoid4sequential_169/lstm_507/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_169/lstm_507/lstm_cell_147/Relu_1Relu/sequential_169/lstm_507/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_169/lstm_507/lstm_cell_147/mul_2Mul3sequential_169/lstm_507/lstm_cell_147/Sigmoid_2:y:0:sequential_169/lstm_507/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_169/lstm_507/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_169/lstm_507/TensorArrayV2_1TensorListReserve>sequential_169/lstm_507/TensorArrayV2_1/element_shape:output:00sequential_169/lstm_507/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_169/lstm_507/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_169/lstm_507/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_169/lstm_507/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_169/lstm_507/whileWhile3sequential_169/lstm_507/while/loop_counter:output:09sequential_169/lstm_507/while/maximum_iterations:output:0%sequential_169/lstm_507/time:output:00sequential_169/lstm_507/TensorArrayV2_1:handle:0&sequential_169/lstm_507/zeros:output:0(sequential_169/lstm_507/zeros_1:output:00sequential_169/lstm_507/strided_slice_1:output:0Osequential_169/lstm_507/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_169_lstm_507_lstm_cell_147_matmul_readvariableop_resourceFsequential_169_lstm_507_lstm_cell_147_matmul_1_readvariableop_resourceEsequential_169_lstm_507_lstm_cell_147_biasadd_readvariableop_resource*
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
)sequential_169_lstm_507_while_body_901171*5
cond-R+
)sequential_169_lstm_507_while_cond_901170*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_169/lstm_507/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_169/lstm_507/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_169/lstm_507/while:output:3Qsequential_169/lstm_507/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_169/lstm_507/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_169/lstm_507/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_507/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_507/strided_slice_3StridedSliceCsequential_169/lstm_507/TensorArrayV2Stack/TensorListStack:tensor:06sequential_169/lstm_507/strided_slice_3/stack:output:08sequential_169/lstm_507/strided_slice_3/stack_1:output:08sequential_169/lstm_507/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_169/lstm_507/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_169/lstm_507/transpose_1	TransposeCsequential_169/lstm_507/TensorArrayV2Stack/TensorListStack:tensor:01sequential_169/lstm_507/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_169/lstm_507/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_169/lstm_508/ShapeShape'sequential_169/lstm_507/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_169/lstm_508/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_169/lstm_508/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_169/lstm_508/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_169/lstm_508/strided_sliceStridedSlice&sequential_169/lstm_508/Shape:output:04sequential_169/lstm_508/strided_slice/stack:output:06sequential_169/lstm_508/strided_slice/stack_1:output:06sequential_169/lstm_508/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_169/lstm_508/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_169/lstm_508/zeros/packedPack.sequential_169/lstm_508/strided_slice:output:0/sequential_169/lstm_508/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_169/lstm_508/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_508/zerosFill-sequential_169/lstm_508/zeros/packed:output:0,sequential_169/lstm_508/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_169/lstm_508/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_169/lstm_508/zeros_1/packedPack.sequential_169/lstm_508/strided_slice:output:01sequential_169/lstm_508/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_169/lstm_508/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_508/zeros_1Fill/sequential_169/lstm_508/zeros_1/packed:output:0.sequential_169/lstm_508/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_169/lstm_508/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_169/lstm_508/transpose	Transpose'sequential_169/lstm_507/transpose_1:y:0/sequential_169/lstm_508/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_169/lstm_508/Shape_1Shape%sequential_169/lstm_508/transpose:y:0*
T0*
_output_shapes
:w
-sequential_169/lstm_508/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_508/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_508/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_508/strided_slice_1StridedSlice(sequential_169/lstm_508/Shape_1:output:06sequential_169/lstm_508/strided_slice_1/stack:output:08sequential_169/lstm_508/strided_slice_1/stack_1:output:08sequential_169/lstm_508/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_169/lstm_508/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_169/lstm_508/TensorArrayV2TensorListReserve<sequential_169/lstm_508/TensorArrayV2/element_shape:output:00sequential_169/lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_169/lstm_508/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_169/lstm_508/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_169/lstm_508/transpose:y:0Vsequential_169/lstm_508/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_169/lstm_508/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_508/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_508/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_508/strided_slice_2StridedSlice%sequential_169/lstm_508/transpose:y:06sequential_169/lstm_508/strided_slice_2/stack:output:08sequential_169/lstm_508/strided_slice_2/stack_1:output:08sequential_169/lstm_508/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOpReadVariableOpDsequential_169_lstm_508_lstm_cell_148_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_169/lstm_508/lstm_cell_148/MatMulMatMul0sequential_169/lstm_508/strided_slice_2:output:0Csequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOpFsequential_169_lstm_508_lstm_cell_148_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_169/lstm_508/lstm_cell_148/MatMul_1MatMul&sequential_169/lstm_508/zeros:output:0Esequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_169/lstm_508/lstm_cell_148/addAddV26sequential_169/lstm_508/lstm_cell_148/MatMul:product:08sequential_169/lstm_508/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOpEsequential_169_lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_169/lstm_508/lstm_cell_148/BiasAddBiasAdd-sequential_169/lstm_508/lstm_cell_148/add:z:0Dsequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_169/lstm_508/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_169/lstm_508/lstm_cell_148/splitSplit>sequential_169/lstm_508/lstm_cell_148/split/split_dim:output:06sequential_169/lstm_508/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_169/lstm_508/lstm_cell_148/SigmoidSigmoid4sequential_169/lstm_508/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_169/lstm_508/lstm_cell_148/Sigmoid_1Sigmoid4sequential_169/lstm_508/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_169/lstm_508/lstm_cell_148/mulMul3sequential_169/lstm_508/lstm_cell_148/Sigmoid_1:y:0(sequential_169/lstm_508/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_169/lstm_508/lstm_cell_148/ReluRelu4sequential_169/lstm_508/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_169/lstm_508/lstm_cell_148/mul_1Mul1sequential_169/lstm_508/lstm_cell_148/Sigmoid:y:08sequential_169/lstm_508/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_169/lstm_508/lstm_cell_148/add_1AddV2-sequential_169/lstm_508/lstm_cell_148/mul:z:0/sequential_169/lstm_508/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_169/lstm_508/lstm_cell_148/Sigmoid_2Sigmoid4sequential_169/lstm_508/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_169/lstm_508/lstm_cell_148/Relu_1Relu/sequential_169/lstm_508/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_169/lstm_508/lstm_cell_148/mul_2Mul3sequential_169/lstm_508/lstm_cell_148/Sigmoid_2:y:0:sequential_169/lstm_508/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_169/lstm_508/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_169/lstm_508/TensorArrayV2_1TensorListReserve>sequential_169/lstm_508/TensorArrayV2_1/element_shape:output:00sequential_169/lstm_508/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_169/lstm_508/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_169/lstm_508/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_169/lstm_508/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_169/lstm_508/whileWhile3sequential_169/lstm_508/while/loop_counter:output:09sequential_169/lstm_508/while/maximum_iterations:output:0%sequential_169/lstm_508/time:output:00sequential_169/lstm_508/TensorArrayV2_1:handle:0&sequential_169/lstm_508/zeros:output:0(sequential_169/lstm_508/zeros_1:output:00sequential_169/lstm_508/strided_slice_1:output:0Osequential_169/lstm_508/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_169_lstm_508_lstm_cell_148_matmul_readvariableop_resourceFsequential_169_lstm_508_lstm_cell_148_matmul_1_readvariableop_resourceEsequential_169_lstm_508_lstm_cell_148_biasadd_readvariableop_resource*
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
)sequential_169_lstm_508_while_body_901310*5
cond-R+
)sequential_169_lstm_508_while_cond_901309*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_169/lstm_508/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_169/lstm_508/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_169/lstm_508/while:output:3Qsequential_169/lstm_508/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_169/lstm_508/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_169/lstm_508/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_508/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_508/strided_slice_3StridedSliceCsequential_169/lstm_508/TensorArrayV2Stack/TensorListStack:tensor:06sequential_169/lstm_508/strided_slice_3/stack:output:08sequential_169/lstm_508/strided_slice_3/stack_1:output:08sequential_169/lstm_508/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_169/lstm_508/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_169/lstm_508/transpose_1	TransposeCsequential_169/lstm_508/TensorArrayV2Stack/TensorListStack:tensor:01sequential_169/lstm_508/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_169/lstm_508/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_169/lstm_509/ShapeShape'sequential_169/lstm_508/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_169/lstm_509/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_169/lstm_509/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_169/lstm_509/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_169/lstm_509/strided_sliceStridedSlice&sequential_169/lstm_509/Shape:output:04sequential_169/lstm_509/strided_slice/stack:output:06sequential_169/lstm_509/strided_slice/stack_1:output:06sequential_169/lstm_509/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_169/lstm_509/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_169/lstm_509/zeros/packedPack.sequential_169/lstm_509/strided_slice:output:0/sequential_169/lstm_509/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_169/lstm_509/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_509/zerosFill-sequential_169/lstm_509/zeros/packed:output:0,sequential_169/lstm_509/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_169/lstm_509/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_169/lstm_509/zeros_1/packedPack.sequential_169/lstm_509/strided_slice:output:01sequential_169/lstm_509/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_169/lstm_509/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_169/lstm_509/zeros_1Fill/sequential_169/lstm_509/zeros_1/packed:output:0.sequential_169/lstm_509/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_169/lstm_509/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_169/lstm_509/transpose	Transpose'sequential_169/lstm_508/transpose_1:y:0/sequential_169/lstm_509/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_169/lstm_509/Shape_1Shape%sequential_169/lstm_509/transpose:y:0*
T0*
_output_shapes
:w
-sequential_169/lstm_509/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_509/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_509/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_509/strided_slice_1StridedSlice(sequential_169/lstm_509/Shape_1:output:06sequential_169/lstm_509/strided_slice_1/stack:output:08sequential_169/lstm_509/strided_slice_1/stack_1:output:08sequential_169/lstm_509/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_169/lstm_509/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_169/lstm_509/TensorArrayV2TensorListReserve<sequential_169/lstm_509/TensorArrayV2/element_shape:output:00sequential_169/lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_169/lstm_509/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_169/lstm_509/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_169/lstm_509/transpose:y:0Vsequential_169/lstm_509/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_169/lstm_509/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_509/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_169/lstm_509/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_509/strided_slice_2StridedSlice%sequential_169/lstm_509/transpose:y:06sequential_169/lstm_509/strided_slice_2/stack:output:08sequential_169/lstm_509/strided_slice_2/stack_1:output:08sequential_169/lstm_509/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOpReadVariableOpDsequential_169_lstm_509_lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_169/lstm_509/lstm_cell_149/MatMulMatMul0sequential_169/lstm_509/strided_slice_2:output:0Csequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOpFsequential_169_lstm_509_lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_169/lstm_509/lstm_cell_149/MatMul_1MatMul&sequential_169/lstm_509/zeros:output:0Esequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_169/lstm_509/lstm_cell_149/addAddV26sequential_169/lstm_509/lstm_cell_149/MatMul:product:08sequential_169/lstm_509/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOpEsequential_169_lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_169/lstm_509/lstm_cell_149/BiasAddBiasAdd-sequential_169/lstm_509/lstm_cell_149/add:z:0Dsequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_169/lstm_509/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_169/lstm_509/lstm_cell_149/splitSplit>sequential_169/lstm_509/lstm_cell_149/split/split_dim:output:06sequential_169/lstm_509/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_169/lstm_509/lstm_cell_149/SigmoidSigmoid4sequential_169/lstm_509/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_169/lstm_509/lstm_cell_149/Sigmoid_1Sigmoid4sequential_169/lstm_509/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_169/lstm_509/lstm_cell_149/mulMul3sequential_169/lstm_509/lstm_cell_149/Sigmoid_1:y:0(sequential_169/lstm_509/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_169/lstm_509/lstm_cell_149/ReluRelu4sequential_169/lstm_509/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_169/lstm_509/lstm_cell_149/mul_1Mul1sequential_169/lstm_509/lstm_cell_149/Sigmoid:y:08sequential_169/lstm_509/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_169/lstm_509/lstm_cell_149/add_1AddV2-sequential_169/lstm_509/lstm_cell_149/mul:z:0/sequential_169/lstm_509/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_169/lstm_509/lstm_cell_149/Sigmoid_2Sigmoid4sequential_169/lstm_509/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_169/lstm_509/lstm_cell_149/Relu_1Relu/sequential_169/lstm_509/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_169/lstm_509/lstm_cell_149/mul_2Mul3sequential_169/lstm_509/lstm_cell_149/Sigmoid_2:y:0:sequential_169/lstm_509/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_169/lstm_509/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_169/lstm_509/TensorArrayV2_1TensorListReserve>sequential_169/lstm_509/TensorArrayV2_1/element_shape:output:00sequential_169/lstm_509/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_169/lstm_509/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_169/lstm_509/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_169/lstm_509/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_169/lstm_509/whileWhile3sequential_169/lstm_509/while/loop_counter:output:09sequential_169/lstm_509/while/maximum_iterations:output:0%sequential_169/lstm_509/time:output:00sequential_169/lstm_509/TensorArrayV2_1:handle:0&sequential_169/lstm_509/zeros:output:0(sequential_169/lstm_509/zeros_1:output:00sequential_169/lstm_509/strided_slice_1:output:0Osequential_169/lstm_509/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_169_lstm_509_lstm_cell_149_matmul_readvariableop_resourceFsequential_169_lstm_509_lstm_cell_149_matmul_1_readvariableop_resourceEsequential_169_lstm_509_lstm_cell_149_biasadd_readvariableop_resource*
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
)sequential_169_lstm_509_while_body_901449*5
cond-R+
)sequential_169_lstm_509_while_cond_901448*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_169/lstm_509/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_169/lstm_509/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_169/lstm_509/while:output:3Qsequential_169/lstm_509/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_169/lstm_509/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_169/lstm_509/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_169/lstm_509/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_169/lstm_509/strided_slice_3StridedSliceCsequential_169/lstm_509/TensorArrayV2Stack/TensorListStack:tensor:06sequential_169/lstm_509/strided_slice_3/stack:output:08sequential_169/lstm_509/strided_slice_3/stack_1:output:08sequential_169/lstm_509/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_169/lstm_509/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_169/lstm_509/transpose_1	TransposeCsequential_169/lstm_509/TensorArrayV2Stack/TensorListStack:tensor:01sequential_169/lstm_509/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_169/lstm_509/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_169/dense_169/MatMul/ReadVariableOpReadVariableOp7sequential_169_dense_169_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_169/dense_169/MatMulMatMul0sequential_169/lstm_509/strided_slice_3:output:06sequential_169/dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_169/dense_169/BiasAdd/ReadVariableOpReadVariableOp8sequential_169_dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_169/dense_169/BiasAddBiasAdd)sequential_169/dense_169/MatMul:product:07sequential_169/dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_169/dense_169/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_169/dense_169/BiasAdd/ReadVariableOp/^sequential_169/dense_169/MatMul/ReadVariableOp=^sequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp<^sequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOp>^sequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp^sequential_169/lstm_507/while=^sequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp<^sequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOp>^sequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp^sequential_169/lstm_508/while=^sequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp<^sequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOp>^sequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp^sequential_169/lstm_509/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_169/dense_169/BiasAdd/ReadVariableOp/sequential_169/dense_169/BiasAdd/ReadVariableOp2`
.sequential_169/dense_169/MatMul/ReadVariableOp.sequential_169/dense_169/MatMul/ReadVariableOp2|
<sequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp<sequential_169/lstm_507/lstm_cell_147/BiasAdd/ReadVariableOp2z
;sequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOp;sequential_169/lstm_507/lstm_cell_147/MatMul/ReadVariableOp2~
=sequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp=sequential_169/lstm_507/lstm_cell_147/MatMul_1/ReadVariableOp2>
sequential_169/lstm_507/whilesequential_169/lstm_507/while2|
<sequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp<sequential_169/lstm_508/lstm_cell_148/BiasAdd/ReadVariableOp2z
;sequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOp;sequential_169/lstm_508/lstm_cell_148/MatMul/ReadVariableOp2~
=sequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp=sequential_169/lstm_508/lstm_cell_148/MatMul_1/ReadVariableOp2>
sequential_169/lstm_508/whilesequential_169/lstm_508/while2|
<sequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp<sequential_169/lstm_509/lstm_cell_149/BiasAdd/ReadVariableOp2z
;sequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOp;sequential_169/lstm_509/lstm_cell_149/MatMul/ReadVariableOp2~
=sequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp=sequential_169/lstm_509/lstm_cell_149/MatMul_1/ReadVariableOp2>
sequential_169/lstm_509/whilesequential_169/lstm_509/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_507_input
?8
?
while_body_905569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_169_layer_call_fn_903853

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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903652o
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906555

inputs>
,lstm_cell_149_matmul_readvariableop_resource:2(@
.lstm_cell_149_matmul_1_readvariableop_resource:
(;
-lstm_cell_149_biasadd_readvariableop_resource:(
identity??$lstm_cell_149/BiasAdd/ReadVariableOp?#lstm_cell_149/MatMul/ReadVariableOp?%lstm_cell_149/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_149/MatMul/ReadVariableOpReadVariableOp,lstm_cell_149_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_149/MatMulMatMulstrided_slice_2:output:0+lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_149_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_149/MatMul_1MatMulzeros:output:0-lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_149/addAddV2lstm_cell_149/MatMul:product:0 lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_149_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_149/BiasAddBiasAddlstm_cell_149/add:z:0,lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_149/splitSplit&lstm_cell_149/split/split_dim:output:0lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_149/SigmoidSigmoidlstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_1Sigmoidlstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_149/mulMullstm_cell_149/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_149/ReluRelulstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_1Mullstm_cell_149/Sigmoid:y:0 lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_149/add_1AddV2lstm_cell_149/mul:z:0lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_149/Sigmoid_2Sigmoidlstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_149/Relu_1Relulstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_149/mul_2Mullstm_cell_149/Sigmoid_2:y:0"lstm_cell_149/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_149_matmul_readvariableop_resource.lstm_cell_149_matmul_1_readvariableop_resource-lstm_cell_149_biasadd_readvariableop_resource*
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
while_body_906471*
condR
while_cond_906470*K
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
NoOpNoOp%^lstm_cell_149/BiasAdd/ReadVariableOp$^lstm_cell_149/MatMul/ReadVariableOp&^lstm_cell_149/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_149/BiasAdd/ReadVariableOp$lstm_cell_149/BiasAdd/ReadVariableOp2J
#lstm_cell_149/MatMul/ReadVariableOp#lstm_cell_149/MatMul/ReadVariableOp2N
%lstm_cell_149/MatMul_1/ReadVariableOp%lstm_cell_149/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_508_while_body_904051.
*lstm_508_while_lstm_508_while_loop_counter4
0lstm_508_while_lstm_508_while_maximum_iterations
lstm_508_while_placeholder 
lstm_508_while_placeholder_1 
lstm_508_while_placeholder_2 
lstm_508_while_placeholder_3-
)lstm_508_while_lstm_508_strided_slice_1_0i
elstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0:	d?R
?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?M
>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
lstm_508_while_identity
lstm_508_while_identity_1
lstm_508_while_identity_2
lstm_508_while_identity_3
lstm_508_while_identity_4
lstm_508_while_identity_5+
'lstm_508_while_lstm_508_strided_slice_1g
clstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensorN
;lstm_508_while_lstm_cell_148_matmul_readvariableop_resource:	d?P
=lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource:	2?K
<lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource:	???3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp?2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp?4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp?
@lstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_508/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0lstm_508_while_placeholderIlstm_508/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_508/while/lstm_cell_148/MatMulMatMul9lstm_508/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_508/while/lstm_cell_148/MatMul_1MatMullstm_508_while_placeholder_2<lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_508/while/lstm_cell_148/addAddV2-lstm_508/while/lstm_cell_148/MatMul:product:0/lstm_508/while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_508/while/lstm_cell_148/BiasAddBiasAdd$lstm_508/while/lstm_cell_148/add:z:0;lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_508/while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_508/while/lstm_cell_148/splitSplit5lstm_508/while/lstm_cell_148/split/split_dim:output:0-lstm_508/while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_508/while/lstm_cell_148/SigmoidSigmoid+lstm_508/while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_508/while/lstm_cell_148/Sigmoid_1Sigmoid+lstm_508/while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_508/while/lstm_cell_148/mulMul*lstm_508/while/lstm_cell_148/Sigmoid_1:y:0lstm_508_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_508/while/lstm_cell_148/ReluRelu+lstm_508/while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/mul_1Mul(lstm_508/while/lstm_cell_148/Sigmoid:y:0/lstm_508/while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/add_1AddV2$lstm_508/while/lstm_cell_148/mul:z:0&lstm_508/while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_508/while/lstm_cell_148/Sigmoid_2Sigmoid+lstm_508/while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_508/while/lstm_cell_148/Relu_1Relu&lstm_508/while/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_508/while/lstm_cell_148/mul_2Mul*lstm_508/while/lstm_cell_148/Sigmoid_2:y:01lstm_508/while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_508/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_508_while_placeholder_1lstm_508_while_placeholder&lstm_508/while/lstm_cell_148/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_508/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_508/while/addAddV2lstm_508_while_placeholderlstm_508/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_508/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_508/while/add_1AddV2*lstm_508_while_lstm_508_while_loop_counterlstm_508/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_508/while/IdentityIdentitylstm_508/while/add_1:z:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_1Identity0lstm_508_while_lstm_508_while_maximum_iterations^lstm_508/while/NoOp*
T0*
_output_shapes
: t
lstm_508/while/Identity_2Identitylstm_508/while/add:z:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_3IdentityClstm_508/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_508/while/NoOp*
T0*
_output_shapes
: ?
lstm_508/while/Identity_4Identity&lstm_508/while/lstm_cell_148/mul_2:z:0^lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_508/while/Identity_5Identity&lstm_508/while/lstm_cell_148/add_1:z:0^lstm_508/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_508/while/NoOpNoOp4^lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp3^lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp5^lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_508_while_identity lstm_508/while/Identity:output:0"?
lstm_508_while_identity_1"lstm_508/while/Identity_1:output:0"?
lstm_508_while_identity_2"lstm_508/while/Identity_2:output:0"?
lstm_508_while_identity_3"lstm_508/while/Identity_3:output:0"?
lstm_508_while_identity_4"lstm_508/while/Identity_4:output:0"?
lstm_508_while_identity_5"lstm_508/while/Identity_5:output:0"T
'lstm_508_while_lstm_508_strided_slice_1)lstm_508_while_lstm_508_strided_slice_1_0"~
<lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource>lstm_508_while_lstm_cell_148_biasadd_readvariableop_resource_0"?
=lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource?lstm_508_while_lstm_cell_148_matmul_1_readvariableop_resource_0"|
;lstm_508_while_lstm_cell_148_matmul_readvariableop_resource=lstm_508_while_lstm_cell_148_matmul_readvariableop_resource_0"?
clstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensorelstm_508_while_tensorarrayv2read_tensorlistgetitem_lstm_508_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp3lstm_508/while/lstm_cell_148/BiasAdd/ReadVariableOp2h
2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp2lstm_508/while/lstm_cell_148/MatMul/ReadVariableOp2l
4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp4lstm_508/while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_905568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_905568___redundant_placeholder04
0while_while_cond_905568___redundant_placeholder14
0while_while_cond_905568___redundant_placeholder24
0while_while_cond_905568___redundant_placeholder3
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
while_body_905855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_148_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_148_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_148_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_148_matmul_readvariableop_resource:	d?G
4while_lstm_cell_148_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_148_biasadd_readvariableop_resource:	???*while/lstm_cell_148/BiasAdd/ReadVariableOp?)while/lstm_cell_148/MatMul/ReadVariableOp?+while/lstm_cell_148/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_148/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_148_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_148/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_148/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_148/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_148_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_148/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_148/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_148/addAddV2$while/lstm_cell_148/MatMul:product:0&while/lstm_cell_148/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_148/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_148_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_148/BiasAddBiasAddwhile/lstm_cell_148/add:z:02while/lstm_cell_148/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_148/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_148/splitSplit,while/lstm_cell_148/split/split_dim:output:0$while/lstm_cell_148/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_148/SigmoidSigmoid"while/lstm_cell_148/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_1Sigmoid"while/lstm_cell_148/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mulMul!while/lstm_cell_148/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_148/ReluRelu"while/lstm_cell_148/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_1Mulwhile/lstm_cell_148/Sigmoid:y:0&while/lstm_cell_148/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/add_1AddV2while/lstm_cell_148/mul:z:0while/lstm_cell_148/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_148/Sigmoid_2Sigmoid"while/lstm_cell_148/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_148/Relu_1Reluwhile/lstm_cell_148/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_148/mul_2Mul!while/lstm_cell_148/Sigmoid_2:y:0(while/lstm_cell_148/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_148/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_148/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_148/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_148/BiasAdd/ReadVariableOp*^while/lstm_cell_148/MatMul/ReadVariableOp,^while/lstm_cell_148/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_148_biasadd_readvariableop_resource5while_lstm_cell_148_biasadd_readvariableop_resource_0"n
4while_lstm_cell_148_matmul_1_readvariableop_resource6while_lstm_cell_148_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_148_matmul_readvariableop_resource4while_lstm_cell_148_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_148/BiasAdd/ReadVariableOp*while/lstm_cell_148/BiasAdd/ReadVariableOp2V
)while/lstm_cell_148/MatMul/ReadVariableOp)while/lstm_cell_148/MatMul/ReadVariableOp2Z
+while/lstm_cell_148/MatMul_1/ReadVariableOp+while/lstm_cell_148/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_901956

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

lstm_509_while_body_904190.
*lstm_509_while_lstm_509_while_loop_counter4
0lstm_509_while_lstm_509_while_maximum_iterations
lstm_509_while_placeholder 
lstm_509_while_placeholder_1 
lstm_509_while_placeholder_2 
lstm_509_while_placeholder_3-
)lstm_509_while_lstm_509_strided_slice_1_0i
elstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0:2(Q
?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0:
(L
>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0:(
lstm_509_while_identity
lstm_509_while_identity_1
lstm_509_while_identity_2
lstm_509_while_identity_3
lstm_509_while_identity_4
lstm_509_while_identity_5+
'lstm_509_while_lstm_509_strided_slice_1g
clstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensorM
;lstm_509_while_lstm_cell_149_matmul_readvariableop_resource:2(O
=lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource:
(J
<lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource:(??3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp?2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp?4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp?
@lstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_509/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0lstm_509_while_placeholderIlstm_509/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOpReadVariableOp=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_509/while/lstm_cell_149/MatMulMatMul9lstm_509/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOpReadVariableOp?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_509/while/lstm_cell_149/MatMul_1MatMullstm_509_while_placeholder_2<lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_509/while/lstm_cell_149/addAddV2-lstm_509/while/lstm_cell_149/MatMul:product:0/lstm_509/while/lstm_cell_149/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOpReadVariableOp>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_509/while/lstm_cell_149/BiasAddBiasAdd$lstm_509/while/lstm_cell_149/add:z:0;lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_509/while/lstm_cell_149/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_509/while/lstm_cell_149/splitSplit5lstm_509/while/lstm_cell_149/split/split_dim:output:0-lstm_509/while/lstm_cell_149/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_509/while/lstm_cell_149/SigmoidSigmoid+lstm_509/while/lstm_cell_149/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_509/while/lstm_cell_149/Sigmoid_1Sigmoid+lstm_509/while/lstm_cell_149/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_509/while/lstm_cell_149/mulMul*lstm_509/while/lstm_cell_149/Sigmoid_1:y:0lstm_509_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_509/while/lstm_cell_149/ReluRelu+lstm_509/while/lstm_cell_149/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/mul_1Mul(lstm_509/while/lstm_cell_149/Sigmoid:y:0/lstm_509/while/lstm_cell_149/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/add_1AddV2$lstm_509/while/lstm_cell_149/mul:z:0&lstm_509/while/lstm_cell_149/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_509/while/lstm_cell_149/Sigmoid_2Sigmoid+lstm_509/while/lstm_cell_149/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_509/while/lstm_cell_149/Relu_1Relu&lstm_509/while/lstm_cell_149/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_509/while/lstm_cell_149/mul_2Mul*lstm_509/while/lstm_cell_149/Sigmoid_2:y:01lstm_509/while/lstm_cell_149/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_509/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_509_while_placeholder_1lstm_509_while_placeholder&lstm_509/while/lstm_cell_149/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_509/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_509/while/addAddV2lstm_509_while_placeholderlstm_509/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_509/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_509/while/add_1AddV2*lstm_509_while_lstm_509_while_loop_counterlstm_509/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_509/while/IdentityIdentitylstm_509/while/add_1:z:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_1Identity0lstm_509_while_lstm_509_while_maximum_iterations^lstm_509/while/NoOp*
T0*
_output_shapes
: t
lstm_509/while/Identity_2Identitylstm_509/while/add:z:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_3IdentityClstm_509/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_509/while/NoOp*
T0*
_output_shapes
: ?
lstm_509/while/Identity_4Identity&lstm_509/while/lstm_cell_149/mul_2:z:0^lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_509/while/Identity_5Identity&lstm_509/while/lstm_cell_149/add_1:z:0^lstm_509/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_509/while/NoOpNoOp4^lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp3^lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp5^lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_509_while_identity lstm_509/while/Identity:output:0"?
lstm_509_while_identity_1"lstm_509/while/Identity_1:output:0"?
lstm_509_while_identity_2"lstm_509/while/Identity_2:output:0"?
lstm_509_while_identity_3"lstm_509/while/Identity_3:output:0"?
lstm_509_while_identity_4"lstm_509/while/Identity_4:output:0"?
lstm_509_while_identity_5"lstm_509/while/Identity_5:output:0"T
'lstm_509_while_lstm_509_strided_slice_1)lstm_509_while_lstm_509_strided_slice_1_0"~
<lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource>lstm_509_while_lstm_cell_149_biasadd_readvariableop_resource_0"?
=lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource?lstm_509_while_lstm_cell_149_matmul_1_readvariableop_resource_0"|
;lstm_509_while_lstm_cell_149_matmul_readvariableop_resource=lstm_509_while_lstm_cell_149_matmul_readvariableop_resource_0"?
clstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensorelstm_509_while_tensorarrayv2read_tensorlistgetitem_lstm_509_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp3lstm_509/while/lstm_cell_149/BiasAdd/ReadVariableOp2h
2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp2lstm_509/while/lstm_cell_149/MatMul/ReadVariableOp2l
4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp4lstm_509/while/lstm_cell_149/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_507_while_body_904339.
*lstm_507_while_lstm_507_while_loop_counter4
0lstm_507_while_lstm_507_while_maximum_iterations
lstm_507_while_placeholder 
lstm_507_while_placeholder_1 
lstm_507_while_placeholder_2 
lstm_507_while_placeholder_3-
)lstm_507_while_lstm_507_strided_slice_1_0i
elstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0:	?R
?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?M
>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
lstm_507_while_identity
lstm_507_while_identity_1
lstm_507_while_identity_2
lstm_507_while_identity_3
lstm_507_while_identity_4
lstm_507_while_identity_5+
'lstm_507_while_lstm_507_strided_slice_1g
clstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensorN
;lstm_507_while_lstm_cell_147_matmul_readvariableop_resource:	?P
=lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource:	d?K
<lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource:	???3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp?2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp?4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp?
@lstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_507/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0lstm_507_while_placeholderIlstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_507/while/lstm_cell_147/MatMulMatMul9lstm_507/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_507/while/lstm_cell_147/MatMul_1MatMullstm_507_while_placeholder_2<lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_507/while/lstm_cell_147/addAddV2-lstm_507/while/lstm_cell_147/MatMul:product:0/lstm_507/while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_507/while/lstm_cell_147/BiasAddBiasAdd$lstm_507/while/lstm_cell_147/add:z:0;lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_507/while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_507/while/lstm_cell_147/splitSplit5lstm_507/while/lstm_cell_147/split/split_dim:output:0-lstm_507/while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_507/while/lstm_cell_147/SigmoidSigmoid+lstm_507/while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_507/while/lstm_cell_147/Sigmoid_1Sigmoid+lstm_507/while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_507/while/lstm_cell_147/mulMul*lstm_507/while/lstm_cell_147/Sigmoid_1:y:0lstm_507_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_507/while/lstm_cell_147/ReluRelu+lstm_507/while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/mul_1Mul(lstm_507/while/lstm_cell_147/Sigmoid:y:0/lstm_507/while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/add_1AddV2$lstm_507/while/lstm_cell_147/mul:z:0&lstm_507/while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_507/while/lstm_cell_147/Sigmoid_2Sigmoid+lstm_507/while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_507/while/lstm_cell_147/Relu_1Relu&lstm_507/while/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/mul_2Mul*lstm_507/while/lstm_cell_147/Sigmoid_2:y:01lstm_507/while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_507/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_507_while_placeholder_1lstm_507_while_placeholder&lstm_507/while/lstm_cell_147/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_507/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_507/while/addAddV2lstm_507_while_placeholderlstm_507/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_507/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_507/while/add_1AddV2*lstm_507_while_lstm_507_while_loop_counterlstm_507/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_507/while/IdentityIdentitylstm_507/while/add_1:z:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_1Identity0lstm_507_while_lstm_507_while_maximum_iterations^lstm_507/while/NoOp*
T0*
_output_shapes
: t
lstm_507/while/Identity_2Identitylstm_507/while/add:z:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_3IdentityClstm_507/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_4Identity&lstm_507/while/lstm_cell_147/mul_2:z:0^lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_507/while/Identity_5Identity&lstm_507/while/lstm_cell_147/add_1:z:0^lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_507/while/NoOpNoOp4^lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp3^lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp5^lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_507_while_identity lstm_507/while/Identity:output:0"?
lstm_507_while_identity_1"lstm_507/while/Identity_1:output:0"?
lstm_507_while_identity_2"lstm_507/while/Identity_2:output:0"?
lstm_507_while_identity_3"lstm_507/while/Identity_3:output:0"?
lstm_507_while_identity_4"lstm_507/while/Identity_4:output:0"?
lstm_507_while_identity_5"lstm_507/while/Identity_5:output:0"T
'lstm_507_while_lstm_507_strided_slice_1)lstm_507_while_lstm_507_strided_slice_1_0"~
<lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0"?
=lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0"|
;lstm_507_while_lstm_cell_147_matmul_readvariableop_resource=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0"?
clstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensorelstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp2h
2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp2l
4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_906470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_906470___redundant_placeholder04
0while_while_cond_906470___redundant_placeholder14
0while_while_cond_906470___redundant_placeholder24
0while_while_cond_906470___redundant_placeholder3
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
while_cond_901969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_901969___redundant_placeholder04
0while_while_cond_901969___redundant_placeholder14
0while_while_cond_901969___redundant_placeholder24
0while_while_cond_901969___redundant_placeholder3
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

lstm_507_while_body_903912.
*lstm_507_while_lstm_507_while_loop_counter4
0lstm_507_while_lstm_507_while_maximum_iterations
lstm_507_while_placeholder 
lstm_507_while_placeholder_1 
lstm_507_while_placeholder_2 
lstm_507_while_placeholder_3-
)lstm_507_while_lstm_507_strided_slice_1_0i
elstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0:	?R
?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0:	d?M
>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0:	?
lstm_507_while_identity
lstm_507_while_identity_1
lstm_507_while_identity_2
lstm_507_while_identity_3
lstm_507_while_identity_4
lstm_507_while_identity_5+
'lstm_507_while_lstm_507_strided_slice_1g
clstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensorN
;lstm_507_while_lstm_cell_147_matmul_readvariableop_resource:	?P
=lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource:	d?K
<lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource:	???3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp?2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp?4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp?
@lstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_507/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0lstm_507_while_placeholderIlstm_507/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOpReadVariableOp=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_507/while/lstm_cell_147/MatMulMatMul9lstm_507/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_507/while/lstm_cell_147/MatMul_1MatMullstm_507_while_placeholder_2<lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_507/while/lstm_cell_147/addAddV2-lstm_507/while/lstm_cell_147/MatMul:product:0/lstm_507/while/lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_507/while/lstm_cell_147/BiasAddBiasAdd$lstm_507/while/lstm_cell_147/add:z:0;lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_507/while/lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_507/while/lstm_cell_147/splitSplit5lstm_507/while/lstm_cell_147/split/split_dim:output:0-lstm_507/while/lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_507/while/lstm_cell_147/SigmoidSigmoid+lstm_507/while/lstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_507/while/lstm_cell_147/Sigmoid_1Sigmoid+lstm_507/while/lstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_507/while/lstm_cell_147/mulMul*lstm_507/while/lstm_cell_147/Sigmoid_1:y:0lstm_507_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_507/while/lstm_cell_147/ReluRelu+lstm_507/while/lstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/mul_1Mul(lstm_507/while/lstm_cell_147/Sigmoid:y:0/lstm_507/while/lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/add_1AddV2$lstm_507/while/lstm_cell_147/mul:z:0&lstm_507/while/lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_507/while/lstm_cell_147/Sigmoid_2Sigmoid+lstm_507/while/lstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_507/while/lstm_cell_147/Relu_1Relu&lstm_507/while/lstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_507/while/lstm_cell_147/mul_2Mul*lstm_507/while/lstm_cell_147/Sigmoid_2:y:01lstm_507/while/lstm_cell_147/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_507/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_507_while_placeholder_1lstm_507_while_placeholder&lstm_507/while/lstm_cell_147/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_507/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_507/while/addAddV2lstm_507_while_placeholderlstm_507/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_507/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_507/while/add_1AddV2*lstm_507_while_lstm_507_while_loop_counterlstm_507/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_507/while/IdentityIdentitylstm_507/while/add_1:z:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_1Identity0lstm_507_while_lstm_507_while_maximum_iterations^lstm_507/while/NoOp*
T0*
_output_shapes
: t
lstm_507/while/Identity_2Identitylstm_507/while/add:z:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_3IdentityClstm_507/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_507/while/NoOp*
T0*
_output_shapes
: ?
lstm_507/while/Identity_4Identity&lstm_507/while/lstm_cell_147/mul_2:z:0^lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_507/while/Identity_5Identity&lstm_507/while/lstm_cell_147/add_1:z:0^lstm_507/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_507/while/NoOpNoOp4^lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp3^lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp5^lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_507_while_identity lstm_507/while/Identity:output:0"?
lstm_507_while_identity_1"lstm_507/while/Identity_1:output:0"?
lstm_507_while_identity_2"lstm_507/while/Identity_2:output:0"?
lstm_507_while_identity_3"lstm_507/while/Identity_3:output:0"?
lstm_507_while_identity_4"lstm_507/while/Identity_4:output:0"?
lstm_507_while_identity_5"lstm_507/while/Identity_5:output:0"T
'lstm_507_while_lstm_507_strided_slice_1)lstm_507_while_lstm_507_strided_slice_1_0"~
<lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource>lstm_507_while_lstm_cell_147_biasadd_readvariableop_resource_0"?
=lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource?lstm_507_while_lstm_cell_147_matmul_1_readvariableop_resource_0"|
;lstm_507_while_lstm_cell_147_matmul_readvariableop_resource=lstm_507_while_lstm_cell_147_matmul_readvariableop_resource_0"?
clstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensorelstm_507_while_tensorarrayv2read_tensorlistgetitem_lstm_507_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp3lstm_507/while/lstm_cell_147/BiasAdd/ReadVariableOp2h
2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp2lstm_507/while/lstm_cell_147/MatMul/ReadVariableOp2l
4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp4lstm_507/while/lstm_cell_147/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_902389

inputs&
lstm_cell_149_902307:2(&
lstm_cell_149_902309:
("
lstm_cell_149_902311:(
identity??%lstm_cell_149/StatefulPartitionedCall?while;
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
%lstm_cell_149/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_149_902307lstm_cell_149_902309lstm_cell_149_902311*
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902306n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_149_902307lstm_cell_149_902309lstm_cell_149_902311*
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
while_body_902320*
condR
while_cond_902319*K
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
NoOpNoOp&^lstm_cell_149/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_149/StatefulPartitionedCall%lstm_cell_149/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_509_while_cond_904189.
*lstm_509_while_lstm_509_while_loop_counter4
0lstm_509_while_lstm_509_while_maximum_iterations
lstm_509_while_placeholder 
lstm_509_while_placeholder_1 
lstm_509_while_placeholder_2 
lstm_509_while_placeholder_30
,lstm_509_while_less_lstm_509_strided_slice_1F
Blstm_509_while_lstm_509_while_cond_904189___redundant_placeholder0F
Blstm_509_while_lstm_509_while_cond_904189___redundant_placeholder1F
Blstm_509_while_lstm_509_while_cond_904189___redundant_placeholder2F
Blstm_509_while_lstm_509_while_cond_904189___redundant_placeholder3
lstm_509_while_identity
?
lstm_509/while/LessLesslstm_509_while_placeholder,lstm_509_while_less_lstm_509_strided_slice_1*
T0*
_output_shapes
: ]
lstm_509/while/IdentityIdentitylstm_509/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_509_while_identity lstm_509/while/Identity:output:0*(
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_903584

inputs?
,lstm_cell_147_matmul_readvariableop_resource:	?A
.lstm_cell_147_matmul_1_readvariableop_resource:	d?<
-lstm_cell_147_biasadd_readvariableop_resource:	?
identity??$lstm_cell_147/BiasAdd/ReadVariableOp?#lstm_cell_147/MatMul/ReadVariableOp?%lstm_cell_147/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_147/MatMul/ReadVariableOpReadVariableOp,lstm_cell_147_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_147/MatMulMatMulstrided_slice_2:output:0+lstm_cell_147/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_147/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_147_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_147/MatMul_1MatMulzeros:output:0-lstm_cell_147/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_147/addAddV2lstm_cell_147/MatMul:product:0 lstm_cell_147/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_147/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_147_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_147/BiasAddBiasAddlstm_cell_147/add:z:0,lstm_cell_147/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_147/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_147/splitSplit&lstm_cell_147/split/split_dim:output:0lstm_cell_147/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_147/SigmoidSigmoidlstm_cell_147/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_1Sigmoidlstm_cell_147/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_147/mulMullstm_cell_147/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_147/ReluRelulstm_cell_147/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_1Mullstm_cell_147/Sigmoid:y:0 lstm_cell_147/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_147/add_1AddV2lstm_cell_147/mul:z:0lstm_cell_147/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_147/Sigmoid_2Sigmoidlstm_cell_147/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_147/Relu_1Relulstm_cell_147/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_147/mul_2Mullstm_cell_147/Sigmoid_2:y:0"lstm_cell_147/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_147_matmul_readvariableop_resource.lstm_cell_147_matmul_1_readvariableop_resource-lstm_cell_147_biasadd_readvariableop_resource*
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
while_body_903500*
condR
while_cond_903499*K
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
NoOpNoOp%^lstm_cell_147/BiasAdd/ReadVariableOp$^lstm_cell_147/MatMul/ReadVariableOp&^lstm_cell_147/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_147/BiasAdd/ReadVariableOp$lstm_cell_147/BiasAdd/ReadVariableOp2J
#lstm_cell_147/MatMul/ReadVariableOp#lstm_cell_147/MatMul/ReadVariableOp2N
%lstm_cell_147/MatMul_1/ReadVariableOp%lstm_cell_147/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_509_layer_call_fn_905983

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
D__inference_lstm_509_layer_call_and_return_conditional_losses_903254o
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
while_cond_903334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_903334___redundant_placeholder04
0while_while_cond_903334___redundant_placeholder14
0while_while_cond_903334___redundant_placeholder24
0while_while_cond_903334___redundant_placeholder3
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906868

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
?
.__inference_lstm_cell_148_layer_call_fn_906706

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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_902102o
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

?
/__inference_sequential_169_layer_call_fn_903088
lstm_507_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903063o
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
_user_specified_namelstm_507_input
?"
?
while_body_902511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_149_902535_0:2(.
while_lstm_cell_149_902537_0:
(*
while_lstm_cell_149_902539_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_149_902535:2(,
while_lstm_cell_149_902537:
((
while_lstm_cell_149_902539:(??+while/lstm_cell_149/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_149/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_149_902535_0while_lstm_cell_149_902537_0while_lstm_cell_149_902539_0*
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_902452?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_149/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_149/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_149/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_149/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_149_902535while_lstm_cell_149_902535_0":
while_lstm_cell_149_902537while_lstm_cell_149_902537_0":
while_lstm_cell_149_902539while_lstm_cell_149_902539_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_149/StatefulPartitionedCall+while/lstm_cell_149/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_507_input;
 serving_default_lstm_507_input:0?????????=
	dense_1690
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
2dense_169/kernel
:2dense_169/bias
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
0:.	?2lstm_507/lstm_cell_507/kernel
::8	d?2'lstm_507/lstm_cell_507/recurrent_kernel
*:(?2lstm_507/lstm_cell_507/bias
0:.	d?2lstm_508/lstm_cell_508/kernel
::8	2?2'lstm_508/lstm_cell_508/recurrent_kernel
*:(?2lstm_508/lstm_cell_508/bias
/:-2(2lstm_509/lstm_cell_509/kernel
9:7
(2'lstm_509/lstm_cell_509/recurrent_kernel
):'(2lstm_509/lstm_cell_509/bias
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
2Adam/dense_169/kernel/m
!:2Adam/dense_169/bias/m
5:3	?2$Adam/lstm_507/lstm_cell_507/kernel/m
?:=	d?2.Adam/lstm_507/lstm_cell_507/recurrent_kernel/m
/:-?2"Adam/lstm_507/lstm_cell_507/bias/m
5:3	d?2$Adam/lstm_508/lstm_cell_508/kernel/m
?:=	2?2.Adam/lstm_508/lstm_cell_508/recurrent_kernel/m
/:-?2"Adam/lstm_508/lstm_cell_508/bias/m
4:22(2$Adam/lstm_509/lstm_cell_509/kernel/m
>:<
(2.Adam/lstm_509/lstm_cell_509/recurrent_kernel/m
.:,(2"Adam/lstm_509/lstm_cell_509/bias/m
':%
2Adam/dense_169/kernel/v
!:2Adam/dense_169/bias/v
5:3	?2$Adam/lstm_507/lstm_cell_507/kernel/v
?:=	d?2.Adam/lstm_507/lstm_cell_507/recurrent_kernel/v
/:-?2"Adam/lstm_507/lstm_cell_507/bias/v
5:3	d?2$Adam/lstm_508/lstm_cell_508/kernel/v
?:=	2?2.Adam/lstm_508/lstm_cell_508/recurrent_kernel/v
/:-?2"Adam/lstm_508/lstm_cell_508/bias/v
4:22(2$Adam/lstm_509/lstm_cell_509/kernel/v
>:<
(2.Adam/lstm_509/lstm_cell_509/recurrent_kernel/v
.:,(2"Adam/lstm_509/lstm_cell_509/bias/v
?2?
/__inference_sequential_169_layer_call_fn_903088
/__inference_sequential_169_layer_call_fn_903826
/__inference_sequential_169_layer_call_fn_903853
/__inference_sequential_169_layer_call_fn_903704?
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_904280
J__inference_sequential_169_layer_call_and_return_conditional_losses_904707
J__inference_sequential_169_layer_call_and_return_conditional_losses_903734
J__inference_sequential_169_layer_call_and_return_conditional_losses_903764?
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
!__inference__wrapped_model_901539lstm_507_input"?
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
)__inference_lstm_507_layer_call_fn_904718
)__inference_lstm_507_layer_call_fn_904729
)__inference_lstm_507_layer_call_fn_904740
)__inference_lstm_507_layer_call_fn_904751?
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_904894
D__inference_lstm_507_layer_call_and_return_conditional_losses_905037
D__inference_lstm_507_layer_call_and_return_conditional_losses_905180
D__inference_lstm_507_layer_call_and_return_conditional_losses_905323?
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
)__inference_lstm_508_layer_call_fn_905334
)__inference_lstm_508_layer_call_fn_905345
)__inference_lstm_508_layer_call_fn_905356
)__inference_lstm_508_layer_call_fn_905367?
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905510
D__inference_lstm_508_layer_call_and_return_conditional_losses_905653
D__inference_lstm_508_layer_call_and_return_conditional_losses_905796
D__inference_lstm_508_layer_call_and_return_conditional_losses_905939?
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
)__inference_lstm_509_layer_call_fn_905950
)__inference_lstm_509_layer_call_fn_905961
)__inference_lstm_509_layer_call_fn_905972
)__inference_lstm_509_layer_call_fn_905983?
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906126
D__inference_lstm_509_layer_call_and_return_conditional_losses_906269
D__inference_lstm_509_layer_call_and_return_conditional_losses_906412
D__inference_lstm_509_layer_call_and_return_conditional_losses_906555?
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
*__inference_dense_169_layer_call_fn_906564?
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
E__inference_dense_169_layer_call_and_return_conditional_losses_906574?
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
$__inference_signature_wrapper_903799lstm_507_input"?
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
.__inference_lstm_cell_147_layer_call_fn_906591
.__inference_lstm_cell_147_layer_call_fn_906608?
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906640
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906672?
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
.__inference_lstm_cell_148_layer_call_fn_906689
.__inference_lstm_cell_148_layer_call_fn_906706?
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906738
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906770?
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
.__inference_lstm_cell_149_layer_call_fn_906787
.__inference_lstm_cell_149_layer_call_fn_906804?
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906836
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906868?
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
!__inference__wrapped_model_901539?-./012345!";?8
1?.
,?)
lstm_507_input?????????
? "5?2
0
	dense_169#? 
	dense_169??????????
E__inference_dense_169_layer_call_and_return_conditional_losses_906574\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_169_layer_call_fn_906564O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_507_layer_call_and_return_conditional_losses_904894?-./O?L
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_905037?-./O?L
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_905180q-./??<
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
D__inference_lstm_507_layer_call_and_return_conditional_losses_905323q-./??<
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
)__inference_lstm_507_layer_call_fn_904718}-./O?L
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
)__inference_lstm_507_layer_call_fn_904729}-./O?L
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
)__inference_lstm_507_layer_call_fn_904740d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_507_layer_call_fn_904751d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_508_layer_call_and_return_conditional_losses_905510?012O?L
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905653?012O?L
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905796q012??<
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
D__inference_lstm_508_layer_call_and_return_conditional_losses_905939q012??<
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
)__inference_lstm_508_layer_call_fn_905334}012O?L
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
)__inference_lstm_508_layer_call_fn_905345}012O?L
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
)__inference_lstm_508_layer_call_fn_905356d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_508_layer_call_fn_905367d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_509_layer_call_and_return_conditional_losses_906126}345O?L
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906269}345O?L
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906412m345??<
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
D__inference_lstm_509_layer_call_and_return_conditional_losses_906555m345??<
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
)__inference_lstm_509_layer_call_fn_905950p345O?L
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
)__inference_lstm_509_layer_call_fn_905961p345O?L
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
)__inference_lstm_509_layer_call_fn_905972`345??<
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
)__inference_lstm_509_layer_call_fn_905983`345??<
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906640?-./??}
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
I__inference_lstm_cell_147_layer_call_and_return_conditional_losses_906672?-./??}
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
.__inference_lstm_cell_147_layer_call_fn_906591?-./??}
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
.__inference_lstm_cell_147_layer_call_fn_906608?-./??}
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906738?012??}
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
I__inference_lstm_cell_148_layer_call_and_return_conditional_losses_906770?012??}
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
.__inference_lstm_cell_148_layer_call_fn_906689?012??}
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
.__inference_lstm_cell_148_layer_call_fn_906706?012??}
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906836?345??}
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
I__inference_lstm_cell_149_layer_call_and_return_conditional_losses_906868?345??}
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
.__inference_lstm_cell_149_layer_call_fn_906787?345??}
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
.__inference_lstm_cell_149_layer_call_fn_906804?345??}
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_903734y-./012345!"C?@
9?6
,?)
lstm_507_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_169_layer_call_and_return_conditional_losses_903764y-./012345!"C?@
9?6
,?)
lstm_507_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_169_layer_call_and_return_conditional_losses_904280q-./012345!";?8
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
J__inference_sequential_169_layer_call_and_return_conditional_losses_904707q-./012345!";?8
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
/__inference_sequential_169_layer_call_fn_903088l-./012345!"C?@
9?6
,?)
lstm_507_input?????????
p 

 
? "???????????
/__inference_sequential_169_layer_call_fn_903704l-./012345!"C?@
9?6
,?)
lstm_507_input?????????
p

 
? "???????????
/__inference_sequential_169_layer_call_fn_903826d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_169_layer_call_fn_903853d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_903799?-./012345!"M?J
? 
C?@
>
lstm_507_input,?)
lstm_507_input?????????"5?2
0
	dense_169#? 
	dense_169?????????