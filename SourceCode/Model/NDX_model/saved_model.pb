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
dense_148/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_148/kernel
u
$dense_148/kernel/Read/ReadVariableOpReadVariableOpdense_148/kernel*
_output_shapes

:
*
dtype0
t
dense_148/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_148/bias
m
"dense_148/bias/Read/ReadVariableOpReadVariableOpdense_148/bias*
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
lstm_444/lstm_cell_444/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_444/lstm_cell_444/kernel
?
1lstm_444/lstm_cell_444/kernel/Read/ReadVariableOpReadVariableOplstm_444/lstm_cell_444/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_444/lstm_cell_444/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_444/lstm_cell_444/recurrent_kernel
?
;lstm_444/lstm_cell_444/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_444/lstm_cell_444/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_444/lstm_cell_444/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_444/lstm_cell_444/bias
?
/lstm_444/lstm_cell_444/bias/Read/ReadVariableOpReadVariableOplstm_444/lstm_cell_444/bias*
_output_shapes	
:?*
dtype0
?
lstm_445/lstm_cell_445/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_445/lstm_cell_445/kernel
?
1lstm_445/lstm_cell_445/kernel/Read/ReadVariableOpReadVariableOplstm_445/lstm_cell_445/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_445/lstm_cell_445/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_445/lstm_cell_445/recurrent_kernel
?
;lstm_445/lstm_cell_445/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_445/lstm_cell_445/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_445/lstm_cell_445/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_445/lstm_cell_445/bias
?
/lstm_445/lstm_cell_445/bias/Read/ReadVariableOpReadVariableOplstm_445/lstm_cell_445/bias*
_output_shapes	
:?*
dtype0
?
lstm_446/lstm_cell_446/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_446/lstm_cell_446/kernel
?
1lstm_446/lstm_cell_446/kernel/Read/ReadVariableOpReadVariableOplstm_446/lstm_cell_446/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_446/lstm_cell_446/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_446/lstm_cell_446/recurrent_kernel
?
;lstm_446/lstm_cell_446/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_446/lstm_cell_446/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_446/lstm_cell_446/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_446/lstm_cell_446/bias
?
/lstm_446/lstm_cell_446/bias/Read/ReadVariableOpReadVariableOplstm_446/lstm_cell_446/bias*
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
Adam/dense_148/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_148/kernel/m
?
+Adam/dense_148/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_148/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_148/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_148/bias/m
{
)Adam/dense_148/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_148/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_444/lstm_cell_444/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_444/lstm_cell_444/kernel/m
?
8Adam/lstm_444/lstm_cell_444/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_444/lstm_cell_444/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_444/lstm_cell_444/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_444/lstm_cell_444/recurrent_kernel/m
?
BAdam/lstm_444/lstm_cell_444/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_444/lstm_cell_444/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_444/lstm_cell_444/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_444/lstm_cell_444/bias/m
?
6Adam/lstm_444/lstm_cell_444/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_444/lstm_cell_444/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_445/lstm_cell_445/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_445/lstm_cell_445/kernel/m
?
8Adam/lstm_445/lstm_cell_445/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_445/lstm_cell_445/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_445/lstm_cell_445/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_445/lstm_cell_445/recurrent_kernel/m
?
BAdam/lstm_445/lstm_cell_445/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_445/lstm_cell_445/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_445/lstm_cell_445/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_445/lstm_cell_445/bias/m
?
6Adam/lstm_445/lstm_cell_445/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_445/lstm_cell_445/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_446/lstm_cell_446/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_446/lstm_cell_446/kernel/m
?
8Adam/lstm_446/lstm_cell_446/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_446/lstm_cell_446/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_446/lstm_cell_446/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_446/lstm_cell_446/recurrent_kernel/m
?
BAdam/lstm_446/lstm_cell_446/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_446/lstm_cell_446/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_446/lstm_cell_446/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_446/lstm_cell_446/bias/m
?
6Adam/lstm_446/lstm_cell_446/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_446/lstm_cell_446/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_148/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_148/kernel/v
?
+Adam/dense_148/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_148/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_148/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_148/bias/v
{
)Adam/dense_148/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_148/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_444/lstm_cell_444/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_444/lstm_cell_444/kernel/v
?
8Adam/lstm_444/lstm_cell_444/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_444/lstm_cell_444/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_444/lstm_cell_444/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_444/lstm_cell_444/recurrent_kernel/v
?
BAdam/lstm_444/lstm_cell_444/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_444/lstm_cell_444/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_444/lstm_cell_444/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_444/lstm_cell_444/bias/v
?
6Adam/lstm_444/lstm_cell_444/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_444/lstm_cell_444/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_445/lstm_cell_445/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_445/lstm_cell_445/kernel/v
?
8Adam/lstm_445/lstm_cell_445/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_445/lstm_cell_445/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_445/lstm_cell_445/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_445/lstm_cell_445/recurrent_kernel/v
?
BAdam/lstm_445/lstm_cell_445/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_445/lstm_cell_445/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_445/lstm_cell_445/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_445/lstm_cell_445/bias/v
?
6Adam/lstm_445/lstm_cell_445/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_445/lstm_cell_445/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_446/lstm_cell_446/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_446/lstm_cell_446/kernel/v
?
8Adam/lstm_446/lstm_cell_446/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_446/lstm_cell_446/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_446/lstm_cell_446/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_446/lstm_cell_446/recurrent_kernel/v
?
BAdam/lstm_446/lstm_cell_446/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_446/lstm_cell_446/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_446/lstm_cell_446/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_446/lstm_cell_446/bias/v
?
6Adam/lstm_446/lstm_cell_446/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_446/lstm_cell_446/bias/v*
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
VARIABLE_VALUEdense_148/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_148/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_444/lstm_cell_444/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_444/lstm_cell_444/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_444/lstm_cell_444/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_445/lstm_cell_445/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_445/lstm_cell_445/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_445/lstm_cell_445/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_446/lstm_cell_446/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_446/lstm_cell_446/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_446/lstm_cell_446/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_148/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_148/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_444/lstm_cell_444/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_444/lstm_cell_444/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_444/lstm_cell_444/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_445/lstm_cell_445/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_445/lstm_cell_445/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_445/lstm_cell_445/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_446/lstm_cell_446/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_446/lstm_cell_446/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_446/lstm_cell_446/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_148/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_148/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_444/lstm_cell_444/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_444/lstm_cell_444/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_444/lstm_cell_444/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_445/lstm_cell_445/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_445/lstm_cell_445/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_445/lstm_cell_445/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_446/lstm_cell_446/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_446/lstm_cell_446/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_446/lstm_cell_446/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_444_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_444_inputlstm_444/lstm_cell_444/kernel'lstm_444/lstm_cell_444/recurrent_kernellstm_444/lstm_cell_444/biaslstm_445/lstm_cell_445/kernel'lstm_445/lstm_cell_445/recurrent_kernellstm_445/lstm_cell_445/biaslstm_446/lstm_cell_446/kernel'lstm_446/lstm_cell_446/recurrent_kernellstm_446/lstm_cell_446/biasdense_148/kerneldense_148/bias*
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
%__inference_signature_wrapper_3408478
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_148/kernel/Read/ReadVariableOp"dense_148/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_444/lstm_cell_444/kernel/Read/ReadVariableOp;lstm_444/lstm_cell_444/recurrent_kernel/Read/ReadVariableOp/lstm_444/lstm_cell_444/bias/Read/ReadVariableOp1lstm_445/lstm_cell_445/kernel/Read/ReadVariableOp;lstm_445/lstm_cell_445/recurrent_kernel/Read/ReadVariableOp/lstm_445/lstm_cell_445/bias/Read/ReadVariableOp1lstm_446/lstm_cell_446/kernel/Read/ReadVariableOp;lstm_446/lstm_cell_446/recurrent_kernel/Read/ReadVariableOp/lstm_446/lstm_cell_446/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_148/kernel/m/Read/ReadVariableOp)Adam/dense_148/bias/m/Read/ReadVariableOp8Adam/lstm_444/lstm_cell_444/kernel/m/Read/ReadVariableOpBAdam/lstm_444/lstm_cell_444/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_444/lstm_cell_444/bias/m/Read/ReadVariableOp8Adam/lstm_445/lstm_cell_445/kernel/m/Read/ReadVariableOpBAdam/lstm_445/lstm_cell_445/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_445/lstm_cell_445/bias/m/Read/ReadVariableOp8Adam/lstm_446/lstm_cell_446/kernel/m/Read/ReadVariableOpBAdam/lstm_446/lstm_cell_446/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_446/lstm_cell_446/bias/m/Read/ReadVariableOp+Adam/dense_148/kernel/v/Read/ReadVariableOp)Adam/dense_148/bias/v/Read/ReadVariableOp8Adam/lstm_444/lstm_cell_444/kernel/v/Read/ReadVariableOpBAdam/lstm_444/lstm_cell_444/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_444/lstm_cell_444/bias/v/Read/ReadVariableOp8Adam/lstm_445/lstm_cell_445/kernel/v/Read/ReadVariableOpBAdam/lstm_445/lstm_cell_445/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_445/lstm_cell_445/bias/v/Read/ReadVariableOp8Adam/lstm_446/lstm_cell_446/kernel/v/Read/ReadVariableOpBAdam/lstm_446/lstm_cell_446/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_446/lstm_cell_446/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3411690
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_148/kerneldense_148/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_444/lstm_cell_444/kernel'lstm_444/lstm_cell_444/recurrent_kernellstm_444/lstm_cell_444/biaslstm_445/lstm_cell_445/kernel'lstm_445/lstm_cell_445/recurrent_kernellstm_445/lstm_cell_445/biaslstm_446/lstm_cell_446/kernel'lstm_446/lstm_cell_446/recurrent_kernellstm_446/lstm_cell_446/biastotalcountAdam/dense_148/kernel/mAdam/dense_148/bias/m$Adam/lstm_444/lstm_cell_444/kernel/m.Adam/lstm_444/lstm_cell_444/recurrent_kernel/m"Adam/lstm_444/lstm_cell_444/bias/m$Adam/lstm_445/lstm_cell_445/kernel/m.Adam/lstm_445/lstm_cell_445/recurrent_kernel/m"Adam/lstm_445/lstm_cell_445/bias/m$Adam/lstm_446/lstm_cell_446/kernel/m.Adam/lstm_446/lstm_cell_446/recurrent_kernel/m"Adam/lstm_446/lstm_cell_446/bias/mAdam/dense_148/kernel/vAdam/dense_148/bias/v$Adam/lstm_444/lstm_cell_444/kernel/v.Adam/lstm_444/lstm_cell_444/recurrent_kernel/v"Adam/lstm_444/lstm_cell_444/bias/v$Adam/lstm_445/lstm_cell_445/kernel/v.Adam/lstm_445/lstm_cell_445/recurrent_kernel/v"Adam/lstm_445/lstm_cell_445/bias/v$Adam/lstm_446/lstm_cell_446/kernel/v.Adam/lstm_446/lstm_cell_446/recurrent_kernel/v"Adam/lstm_446/lstm_cell_446/bias/v*4
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
#__inference__traced_restore_3411820??+
?

?
0__inference_sequential_148_layer_call_fn_3408383
lstm_444_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_444_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408331o
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
_user_specified_namelstm_444_input
?

?
0__inference_sequential_148_layer_call_fn_3407767
lstm_444_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_444_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3407742o
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
_user_specified_namelstm_444_input
?8
?
while_body_3407849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3406840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_562_3406864_0:	d?0
while_lstm_cell_562_3406866_0:	2?,
while_lstm_cell_562_3406868_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_562_3406864:	d?.
while_lstm_cell_562_3406866:	2?*
while_lstm_cell_562_3406868:	???+while/lstm_cell_562/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_562/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_562_3406864_0while_lstm_cell_562_3406866_0while_lstm_cell_562_3406868_0*
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406781?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_562/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_562/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_562/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_562/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_562_3406864while_lstm_cell_562_3406864_0"<
while_lstm_cell_562_3406866while_lstm_cell_562_3406866_0"<
while_lstm_cell_562_3406868while_lstm_cell_562_3406868_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_562/StatefulPartitionedCall+while/lstm_cell_562/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_445_layer_call_fn_3410046

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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3408098s
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
??
?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3409386

inputsH
5lstm_444_lstm_cell_561_matmul_readvariableop_resource:	?J
7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource:	d?E
6lstm_444_lstm_cell_561_biasadd_readvariableop_resource:	?H
5lstm_445_lstm_cell_562_matmul_readvariableop_resource:	d?J
7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource:	2?E
6lstm_445_lstm_cell_562_biasadd_readvariableop_resource:	?G
5lstm_446_lstm_cell_563_matmul_readvariableop_resource:2(I
7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource:
(D
6lstm_446_lstm_cell_563_biasadd_readvariableop_resource:(:
(dense_148_matmul_readvariableop_resource:
7
)dense_148_biasadd_readvariableop_resource:
identity?? dense_148/BiasAdd/ReadVariableOp?dense_148/MatMul/ReadVariableOp?-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp?,lstm_444/lstm_cell_561/MatMul/ReadVariableOp?.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp?lstm_444/while?-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp?,lstm_445/lstm_cell_562/MatMul/ReadVariableOp?.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp?lstm_445/while?-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp?,lstm_446/lstm_cell_563/MatMul/ReadVariableOp?.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp?lstm_446/whileD
lstm_444/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_sliceStridedSlicelstm_444/Shape:output:0%lstm_444/strided_slice/stack:output:0'lstm_444/strided_slice/stack_1:output:0'lstm_444/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_444/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_444/zeros/packedPacklstm_444/strided_slice:output:0 lstm_444/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_444/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_444/zerosFilllstm_444/zeros/packed:output:0lstm_444/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_444/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_444/zeros_1/packedPacklstm_444/strided_slice:output:0"lstm_444/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_444/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_444/zeros_1Fill lstm_444/zeros_1/packed:output:0lstm_444/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_444/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_444/transpose	Transposeinputs lstm_444/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_444/Shape_1Shapelstm_444/transpose:y:0*
T0*
_output_shapes
:h
lstm_444/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_444/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_1StridedSlicelstm_444/Shape_1:output:0'lstm_444/strided_slice_1/stack:output:0)lstm_444/strided_slice_1/stack_1:output:0)lstm_444/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_444/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_444/TensorArrayV2TensorListReserve-lstm_444/TensorArrayV2/element_shape:output:0!lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_444/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_444/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_444/transpose:y:0Glstm_444/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_444/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_444/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_2StridedSlicelstm_444/transpose:y:0'lstm_444/strided_slice_2/stack:output:0)lstm_444/strided_slice_2/stack_1:output:0)lstm_444/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_444/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp5lstm_444_lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_444/lstm_cell_561/MatMulMatMul!lstm_444/strided_slice_2:output:04lstm_444/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_444/lstm_cell_561/MatMul_1MatMullstm_444/zeros:output:06lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_444/lstm_cell_561/addAddV2'lstm_444/lstm_cell_561/MatMul:product:0)lstm_444/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp6lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_444/lstm_cell_561/BiasAddBiasAddlstm_444/lstm_cell_561/add:z:05lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_444/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_444/lstm_cell_561/splitSplit/lstm_444/lstm_cell_561/split/split_dim:output:0'lstm_444/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_444/lstm_cell_561/SigmoidSigmoid%lstm_444/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_444/lstm_cell_561/Sigmoid_1Sigmoid%lstm_444/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mulMul$lstm_444/lstm_cell_561/Sigmoid_1:y:0lstm_444/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_444/lstm_cell_561/ReluRelu%lstm_444/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mul_1Mul"lstm_444/lstm_cell_561/Sigmoid:y:0)lstm_444/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/add_1AddV2lstm_444/lstm_cell_561/mul:z:0 lstm_444/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_444/lstm_cell_561/Sigmoid_2Sigmoid%lstm_444/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_444/lstm_cell_561/Relu_1Relu lstm_444/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mul_2Mul$lstm_444/lstm_cell_561/Sigmoid_2:y:0+lstm_444/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_444/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_444/TensorArrayV2_1TensorListReserve/lstm_444/TensorArrayV2_1/element_shape:output:0!lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_444/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_444/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_444/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_444/whileWhile$lstm_444/while/loop_counter:output:0*lstm_444/while/maximum_iterations:output:0lstm_444/time:output:0!lstm_444/TensorArrayV2_1:handle:0lstm_444/zeros:output:0lstm_444/zeros_1:output:0!lstm_444/strided_slice_1:output:0@lstm_444/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_444_lstm_cell_561_matmul_readvariableop_resource7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource6lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
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
lstm_444_while_body_3409018*'
condR
lstm_444_while_cond_3409017*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_444/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_444/TensorArrayV2Stack/TensorListStackTensorListStacklstm_444/while:output:3Blstm_444/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_444/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_444/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_3StridedSlice4lstm_444/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_444/strided_slice_3/stack:output:0)lstm_444/strided_slice_3/stack_1:output:0)lstm_444/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_444/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_444/transpose_1	Transpose4lstm_444/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_444/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_444/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_445/ShapeShapelstm_444/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_sliceStridedSlicelstm_445/Shape:output:0%lstm_445/strided_slice/stack:output:0'lstm_445/strided_slice/stack_1:output:0'lstm_445/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_445/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_445/zeros/packedPacklstm_445/strided_slice:output:0 lstm_445/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_445/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_445/zerosFilllstm_445/zeros/packed:output:0lstm_445/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_445/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_445/zeros_1/packedPacklstm_445/strided_slice:output:0"lstm_445/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_445/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_445/zeros_1Fill lstm_445/zeros_1/packed:output:0lstm_445/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_445/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_445/transpose	Transposelstm_444/transpose_1:y:0 lstm_445/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_445/Shape_1Shapelstm_445/transpose:y:0*
T0*
_output_shapes
:h
lstm_445/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_445/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_1StridedSlicelstm_445/Shape_1:output:0'lstm_445/strided_slice_1/stack:output:0)lstm_445/strided_slice_1/stack_1:output:0)lstm_445/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_445/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_445/TensorArrayV2TensorListReserve-lstm_445/TensorArrayV2/element_shape:output:0!lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_445/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_445/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_445/transpose:y:0Glstm_445/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_445/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_445/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_2StridedSlicelstm_445/transpose:y:0'lstm_445/strided_slice_2/stack:output:0)lstm_445/strided_slice_2/stack_1:output:0)lstm_445/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_445/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp5lstm_445_lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_445/lstm_cell_562/MatMulMatMul!lstm_445/strided_slice_2:output:04lstm_445/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_445/lstm_cell_562/MatMul_1MatMullstm_445/zeros:output:06lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_445/lstm_cell_562/addAddV2'lstm_445/lstm_cell_562/MatMul:product:0)lstm_445/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp6lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_445/lstm_cell_562/BiasAddBiasAddlstm_445/lstm_cell_562/add:z:05lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_445/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_445/lstm_cell_562/splitSplit/lstm_445/lstm_cell_562/split/split_dim:output:0'lstm_445/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_445/lstm_cell_562/SigmoidSigmoid%lstm_445/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_445/lstm_cell_562/Sigmoid_1Sigmoid%lstm_445/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mulMul$lstm_445/lstm_cell_562/Sigmoid_1:y:0lstm_445/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_445/lstm_cell_562/ReluRelu%lstm_445/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mul_1Mul"lstm_445/lstm_cell_562/Sigmoid:y:0)lstm_445/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/add_1AddV2lstm_445/lstm_cell_562/mul:z:0 lstm_445/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_445/lstm_cell_562/Sigmoid_2Sigmoid%lstm_445/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_445/lstm_cell_562/Relu_1Relu lstm_445/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mul_2Mul$lstm_445/lstm_cell_562/Sigmoid_2:y:0+lstm_445/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_445/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_445/TensorArrayV2_1TensorListReserve/lstm_445/TensorArrayV2_1/element_shape:output:0!lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_445/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_445/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_445/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_445/whileWhile$lstm_445/while/loop_counter:output:0*lstm_445/while/maximum_iterations:output:0lstm_445/time:output:0!lstm_445/TensorArrayV2_1:handle:0lstm_445/zeros:output:0lstm_445/zeros_1:output:0!lstm_445/strided_slice_1:output:0@lstm_445/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_445_lstm_cell_562_matmul_readvariableop_resource7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource6lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
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
lstm_445_while_body_3409157*'
condR
lstm_445_while_cond_3409156*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_445/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_445/TensorArrayV2Stack/TensorListStackTensorListStacklstm_445/while:output:3Blstm_445/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_445/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_445/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_3StridedSlice4lstm_445/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_445/strided_slice_3/stack:output:0)lstm_445/strided_slice_3/stack_1:output:0)lstm_445/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_445/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_445/transpose_1	Transpose4lstm_445/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_445/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_445/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_446/ShapeShapelstm_445/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_446/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_446/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_446/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_sliceStridedSlicelstm_446/Shape:output:0%lstm_446/strided_slice/stack:output:0'lstm_446/strided_slice/stack_1:output:0'lstm_446/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_446/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_446/zeros/packedPacklstm_446/strided_slice:output:0 lstm_446/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_446/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_446/zerosFilllstm_446/zeros/packed:output:0lstm_446/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_446/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_446/zeros_1/packedPacklstm_446/strided_slice:output:0"lstm_446/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_446/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_446/zeros_1Fill lstm_446/zeros_1/packed:output:0lstm_446/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_446/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_446/transpose	Transposelstm_445/transpose_1:y:0 lstm_446/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_446/Shape_1Shapelstm_446/transpose:y:0*
T0*
_output_shapes
:h
lstm_446/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_446/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_1StridedSlicelstm_446/Shape_1:output:0'lstm_446/strided_slice_1/stack:output:0)lstm_446/strided_slice_1/stack_1:output:0)lstm_446/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_446/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_446/TensorArrayV2TensorListReserve-lstm_446/TensorArrayV2/element_shape:output:0!lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_446/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_446/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_446/transpose:y:0Glstm_446/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_446/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_446/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_2StridedSlicelstm_446/transpose:y:0'lstm_446/strided_slice_2/stack:output:0)lstm_446/strided_slice_2/stack_1:output:0)lstm_446/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_446/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp5lstm_446_lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_446/lstm_cell_563/MatMulMatMul!lstm_446/strided_slice_2:output:04lstm_446/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_446/lstm_cell_563/MatMul_1MatMullstm_446/zeros:output:06lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_446/lstm_cell_563/addAddV2'lstm_446/lstm_cell_563/MatMul:product:0)lstm_446/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp6lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_446/lstm_cell_563/BiasAddBiasAddlstm_446/lstm_cell_563/add:z:05lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_446/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_446/lstm_cell_563/splitSplit/lstm_446/lstm_cell_563/split/split_dim:output:0'lstm_446/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_446/lstm_cell_563/SigmoidSigmoid%lstm_446/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_446/lstm_cell_563/Sigmoid_1Sigmoid%lstm_446/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mulMul$lstm_446/lstm_cell_563/Sigmoid_1:y:0lstm_446/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_446/lstm_cell_563/ReluRelu%lstm_446/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mul_1Mul"lstm_446/lstm_cell_563/Sigmoid:y:0)lstm_446/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/add_1AddV2lstm_446/lstm_cell_563/mul:z:0 lstm_446/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_446/lstm_cell_563/Sigmoid_2Sigmoid%lstm_446/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_446/lstm_cell_563/Relu_1Relu lstm_446/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mul_2Mul$lstm_446/lstm_cell_563/Sigmoid_2:y:0+lstm_446/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_446/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_446/TensorArrayV2_1TensorListReserve/lstm_446/TensorArrayV2_1/element_shape:output:0!lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_446/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_446/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_446/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_446/whileWhile$lstm_446/while/loop_counter:output:0*lstm_446/while/maximum_iterations:output:0lstm_446/time:output:0!lstm_446/TensorArrayV2_1:handle:0lstm_446/zeros:output:0lstm_446/zeros_1:output:0!lstm_446/strided_slice_1:output:0@lstm_446/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_446_lstm_cell_563_matmul_readvariableop_resource7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource6lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
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
lstm_446_while_body_3409296*'
condR
lstm_446_while_cond_3409295*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_446/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_446/TensorArrayV2Stack/TensorListStackTensorListStacklstm_446/while:output:3Blstm_446/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_446/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_446/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_3StridedSlice4lstm_446/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_446/strided_slice_3/stack:output:0)lstm_446/strided_slice_3/stack_1:output:0)lstm_446/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_446/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_446/transpose_1	Transpose4lstm_446/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_446/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_446/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_148/MatMul/ReadVariableOpReadVariableOp(dense_148_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_148/MatMulMatMul!lstm_446/strided_slice_3:output:0'dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_148/BiasAdd/ReadVariableOpReadVariableOp)dense_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_148/BiasAddBiasAdddense_148/MatMul:product:0(dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_148/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_148/BiasAdd/ReadVariableOp ^dense_148/MatMul/ReadVariableOp.^lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp-^lstm_444/lstm_cell_561/MatMul/ReadVariableOp/^lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp^lstm_444/while.^lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp-^lstm_445/lstm_cell_562/MatMul/ReadVariableOp/^lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp^lstm_445/while.^lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp-^lstm_446/lstm_cell_563/MatMul/ReadVariableOp/^lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp^lstm_446/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_148/BiasAdd/ReadVariableOp dense_148/BiasAdd/ReadVariableOp2B
dense_148/MatMul/ReadVariableOpdense_148/MatMul/ReadVariableOp2^
-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp2\
,lstm_444/lstm_cell_561/MatMul/ReadVariableOp,lstm_444/lstm_cell_561/MatMul/ReadVariableOp2`
.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp2 
lstm_444/whilelstm_444/while2^
-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp2\
,lstm_445/lstm_cell_562/MatMul/ReadVariableOp,lstm_445/lstm_cell_562/MatMul/ReadVariableOp2`
.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp2 
lstm_445/whilelstm_445/while2^
-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp2\
,lstm_446/lstm_cell_563/MatMul/ReadVariableOp,lstm_446/lstm_cell_563/MatMul/ReadVariableOp2`
.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp2 
lstm_446/whilelstm_446/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3407333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_148_lstm_445_while_body_3405989L
Hsequential_148_lstm_445_while_sequential_148_lstm_445_while_loop_counterR
Nsequential_148_lstm_445_while_sequential_148_lstm_445_while_maximum_iterations-
)sequential_148_lstm_445_while_placeholder/
+sequential_148_lstm_445_while_placeholder_1/
+sequential_148_lstm_445_while_placeholder_2/
+sequential_148_lstm_445_while_placeholder_3K
Gsequential_148_lstm_445_while_sequential_148_lstm_445_strided_slice_1_0?
?sequential_148_lstm_445_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_445_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_148_lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0:	d?a
Nsequential_148_lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?\
Msequential_148_lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0:	?*
&sequential_148_lstm_445_while_identity,
(sequential_148_lstm_445_while_identity_1,
(sequential_148_lstm_445_while_identity_2,
(sequential_148_lstm_445_while_identity_3,
(sequential_148_lstm_445_while_identity_4,
(sequential_148_lstm_445_while_identity_5I
Esequential_148_lstm_445_while_sequential_148_lstm_445_strided_slice_1?
?sequential_148_lstm_445_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_445_tensorarrayunstack_tensorlistfromtensor]
Jsequential_148_lstm_445_while_lstm_cell_562_matmul_readvariableop_resource:	d?_
Lsequential_148_lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource:	2?Z
Ksequential_148_lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource:	???Bsequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp?Asequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp?Csequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp?
Osequential_148/lstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_148/lstm_445/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_148_lstm_445_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_445_tensorarrayunstack_tensorlistfromtensor_0)sequential_148_lstm_445_while_placeholderXsequential_148/lstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOpLsequential_148_lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_148/lstm_445/while/lstm_cell_562/MatMulMatMulHsequential_148/lstm_445/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOpNsequential_148_lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_148/lstm_445/while/lstm_cell_562/MatMul_1MatMul+sequential_148_lstm_445_while_placeholder_2Ksequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_148/lstm_445/while/lstm_cell_562/addAddV2<sequential_148/lstm_445/while/lstm_cell_562/MatMul:product:0>sequential_148/lstm_445/while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOpMsequential_148_lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_148/lstm_445/while/lstm_cell_562/BiasAddBiasAdd3sequential_148/lstm_445/while/lstm_cell_562/add:z:0Jsequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_148/lstm_445/while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_148/lstm_445/while/lstm_cell_562/splitSplitDsequential_148/lstm_445/while/lstm_cell_562/split/split_dim:output:0<sequential_148/lstm_445/while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_148/lstm_445/while/lstm_cell_562/SigmoidSigmoid:sequential_148/lstm_445/while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_148/lstm_445/while/lstm_cell_562/Sigmoid_1Sigmoid:sequential_148/lstm_445/while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_148/lstm_445/while/lstm_cell_562/mulMul9sequential_148/lstm_445/while/lstm_cell_562/Sigmoid_1:y:0+sequential_148_lstm_445_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_148/lstm_445/while/lstm_cell_562/ReluRelu:sequential_148/lstm_445/while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_148/lstm_445/while/lstm_cell_562/mul_1Mul7sequential_148/lstm_445/while/lstm_cell_562/Sigmoid:y:0>sequential_148/lstm_445/while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_148/lstm_445/while/lstm_cell_562/add_1AddV23sequential_148/lstm_445/while/lstm_cell_562/mul:z:05sequential_148/lstm_445/while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_148/lstm_445/while/lstm_cell_562/Sigmoid_2Sigmoid:sequential_148/lstm_445/while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_148/lstm_445/while/lstm_cell_562/Relu_1Relu5sequential_148/lstm_445/while/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_148/lstm_445/while/lstm_cell_562/mul_2Mul9sequential_148/lstm_445/while/lstm_cell_562/Sigmoid_2:y:0@sequential_148/lstm_445/while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_148/lstm_445/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_148_lstm_445_while_placeholder_1)sequential_148_lstm_445_while_placeholder5sequential_148/lstm_445/while/lstm_cell_562/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_148/lstm_445/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_148/lstm_445/while/addAddV2)sequential_148_lstm_445_while_placeholder,sequential_148/lstm_445/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_148/lstm_445/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_148/lstm_445/while/add_1AddV2Hsequential_148_lstm_445_while_sequential_148_lstm_445_while_loop_counter.sequential_148/lstm_445/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_148/lstm_445/while/IdentityIdentity'sequential_148/lstm_445/while/add_1:z:0#^sequential_148/lstm_445/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_445/while/Identity_1IdentityNsequential_148_lstm_445_while_sequential_148_lstm_445_while_maximum_iterations#^sequential_148/lstm_445/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_445/while/Identity_2Identity%sequential_148/lstm_445/while/add:z:0#^sequential_148/lstm_445/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_445/while/Identity_3IdentityRsequential_148/lstm_445/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_148/lstm_445/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_445/while/Identity_4Identity5sequential_148/lstm_445/while/lstm_cell_562/mul_2:z:0#^sequential_148/lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_148/lstm_445/while/Identity_5Identity5sequential_148/lstm_445/while/lstm_cell_562/add_1:z:0#^sequential_148/lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_148/lstm_445/while/NoOpNoOpC^sequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOpB^sequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOpD^sequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_148_lstm_445_while_identity/sequential_148/lstm_445/while/Identity:output:0"]
(sequential_148_lstm_445_while_identity_11sequential_148/lstm_445/while/Identity_1:output:0"]
(sequential_148_lstm_445_while_identity_21sequential_148/lstm_445/while/Identity_2:output:0"]
(sequential_148_lstm_445_while_identity_31sequential_148/lstm_445/while/Identity_3:output:0"]
(sequential_148_lstm_445_while_identity_41sequential_148/lstm_445/while/Identity_4:output:0"]
(sequential_148_lstm_445_while_identity_51sequential_148/lstm_445/while/Identity_5:output:0"?
Ksequential_148_lstm_445_while_lstm_cell_562_biasadd_readvariableop_resourceMsequential_148_lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0"?
Lsequential_148_lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resourceNsequential_148_lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0"?
Jsequential_148_lstm_445_while_lstm_cell_562_matmul_readvariableop_resourceLsequential_148_lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0"?
Esequential_148_lstm_445_while_sequential_148_lstm_445_strided_slice_1Gsequential_148_lstm_445_while_sequential_148_lstm_445_strided_slice_1_0"?
?sequential_148_lstm_445_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_445_tensorarrayunstack_tensorlistfromtensor?sequential_148_lstm_445_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_445_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOpBsequential_148/lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp2?
Asequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOpAsequential_148/lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp2?
Csequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOpCsequential_148/lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3406998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3406998___redundant_placeholder05
1while_while_cond_3406998___redundant_placeholder15
1while_while_cond_3406998___redundant_placeholder25
1while_while_cond_3406998___redundant_placeholder3
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
?
*sequential_148_lstm_446_while_cond_3406127L
Hsequential_148_lstm_446_while_sequential_148_lstm_446_while_loop_counterR
Nsequential_148_lstm_446_while_sequential_148_lstm_446_while_maximum_iterations-
)sequential_148_lstm_446_while_placeholder/
+sequential_148_lstm_446_while_placeholder_1/
+sequential_148_lstm_446_while_placeholder_2/
+sequential_148_lstm_446_while_placeholder_3N
Jsequential_148_lstm_446_while_less_sequential_148_lstm_446_strided_slice_1e
asequential_148_lstm_446_while_sequential_148_lstm_446_while_cond_3406127___redundant_placeholder0e
asequential_148_lstm_446_while_sequential_148_lstm_446_while_cond_3406127___redundant_placeholder1e
asequential_148_lstm_446_while_sequential_148_lstm_446_while_cond_3406127___redundant_placeholder2e
asequential_148_lstm_446_while_sequential_148_lstm_446_while_cond_3406127___redundant_placeholder3*
&sequential_148_lstm_446_while_identity
?
"sequential_148/lstm_446/while/LessLess)sequential_148_lstm_446_while_placeholderJsequential_148_lstm_446_while_less_sequential_148_lstm_446_strided_slice_1*
T0*
_output_shapes
: {
&sequential_148/lstm_446/while/IdentityIdentity&sequential_148/lstm_446/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_148_lstm_446_while_identity/sequential_148/lstm_446/while/Identity:output:0*(
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409573
inputs_0?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3409489*
condR
while_cond_3409488*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
%__inference_signature_wrapper_3408478
lstm_444_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_444_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3406218o
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
_user_specified_namelstm_444_input
?
?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408331

inputs#
lstm_444_3408304:	?#
lstm_444_3408306:	d?
lstm_444_3408308:	?#
lstm_445_3408311:	d?#
lstm_445_3408313:	2?
lstm_445_3408315:	?"
lstm_446_3408318:2("
lstm_446_3408320:
(
lstm_446_3408322:(#
dense_148_3408325:

dense_148_3408327:
identity??!dense_148/StatefulPartitionedCall? lstm_444/StatefulPartitionedCall? lstm_445/StatefulPartitionedCall? lstm_446/StatefulPartitionedCall?
 lstm_444/StatefulPartitionedCallStatefulPartitionedCallinputslstm_444_3408304lstm_444_3408306lstm_444_3408308*
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3408263?
 lstm_445/StatefulPartitionedCallStatefulPartitionedCall)lstm_444/StatefulPartitionedCall:output:0lstm_445_3408311lstm_445_3408313lstm_445_3408315*
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3408098?
 lstm_446/StatefulPartitionedCallStatefulPartitionedCall)lstm_445/StatefulPartitionedCall:output:0lstm_446_3408318lstm_446_3408320lstm_446_3408322*
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407933?
!dense_148/StatefulPartitionedCallStatefulPartitionedCall)lstm_446/StatefulPartitionedCall:output:0dense_148_3408325dense_148_3408327*
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735y
IdentityIdentity*dense_148/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_148/StatefulPartitionedCall!^lstm_444/StatefulPartitionedCall!^lstm_445/StatefulPartitionedCall!^lstm_446/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2D
 lstm_444/StatefulPartitionedCall lstm_444/StatefulPartitionedCall2D
 lstm_445/StatefulPartitionedCall lstm_445/StatefulPartitionedCall2D
 lstm_446/StatefulPartitionedCall lstm_446/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_446_while_cond_3408868.
*lstm_446_while_lstm_446_while_loop_counter4
0lstm_446_while_lstm_446_while_maximum_iterations
lstm_446_while_placeholder 
lstm_446_while_placeholder_1 
lstm_446_while_placeholder_2 
lstm_446_while_placeholder_30
,lstm_446_while_less_lstm_446_strided_slice_1G
Clstm_446_while_lstm_446_while_cond_3408868___redundant_placeholder0G
Clstm_446_while_lstm_446_while_cond_3408868___redundant_placeholder1G
Clstm_446_while_lstm_446_while_cond_3408868___redundant_placeholder2G
Clstm_446_while_lstm_446_while_cond_3408868___redundant_placeholder3
lstm_446_while_identity
?
lstm_446/while/LessLesslstm_446_while_placeholder,lstm_446_while_less_lstm_446_strided_slice_1*
T0*
_output_shapes
: ]
lstm_446/while/IdentityIdentitylstm_446/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_446_while_identity lstm_446/while/Identity:output:0*(
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
*__inference_lstm_445_layer_call_fn_3410013
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3406718|
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
??
?
#__inference__traced_restore_3411820
file_prefix3
!assignvariableop_dense_148_kernel:
/
!assignvariableop_1_dense_148_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_444_lstm_cell_444_kernel:	?M
:assignvariableop_8_lstm_444_lstm_cell_444_recurrent_kernel:	d?=
.assignvariableop_9_lstm_444_lstm_cell_444_bias:	?D
1assignvariableop_10_lstm_445_lstm_cell_445_kernel:	d?N
;assignvariableop_11_lstm_445_lstm_cell_445_recurrent_kernel:	2?>
/assignvariableop_12_lstm_445_lstm_cell_445_bias:	?C
1assignvariableop_13_lstm_446_lstm_cell_446_kernel:2(M
;assignvariableop_14_lstm_446_lstm_cell_446_recurrent_kernel:
(=
/assignvariableop_15_lstm_446_lstm_cell_446_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_148_kernel_m:
7
)assignvariableop_19_adam_dense_148_bias_m:K
8assignvariableop_20_adam_lstm_444_lstm_cell_444_kernel_m:	?U
Bassignvariableop_21_adam_lstm_444_lstm_cell_444_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_444_lstm_cell_444_bias_m:	?K
8assignvariableop_23_adam_lstm_445_lstm_cell_445_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_445_lstm_cell_445_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_445_lstm_cell_445_bias_m:	?J
8assignvariableop_26_adam_lstm_446_lstm_cell_446_kernel_m:2(T
Bassignvariableop_27_adam_lstm_446_lstm_cell_446_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_446_lstm_cell_446_bias_m:(=
+assignvariableop_29_adam_dense_148_kernel_v:
7
)assignvariableop_30_adam_dense_148_bias_v:K
8assignvariableop_31_adam_lstm_444_lstm_cell_444_kernel_v:	?U
Bassignvariableop_32_adam_lstm_444_lstm_cell_444_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_444_lstm_cell_444_bias_v:	?K
8assignvariableop_34_adam_lstm_445_lstm_cell_445_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_445_lstm_cell_445_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_445_lstm_cell_445_bias_v:	?J
8assignvariableop_37_adam_lstm_446_lstm_cell_446_kernel_v:2(T
Bassignvariableop_38_adam_lstm_446_lstm_cell_446_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_446_lstm_cell_446_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_148_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_148_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_444_lstm_cell_444_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_444_lstm_cell_444_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_444_lstm_cell_444_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_445_lstm_cell_445_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_445_lstm_cell_445_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_445_lstm_cell_445_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_446_lstm_cell_446_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_446_lstm_cell_446_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_446_lstm_cell_446_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_148_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_148_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_444_lstm_cell_444_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_444_lstm_cell_444_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_444_lstm_cell_444_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_445_lstm_cell_445_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_445_lstm_cell_445_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_445_lstm_cell_445_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_446_lstm_cell_446_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_446_lstm_cell_446_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_446_lstm_cell_446_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_148_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_148_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_444_lstm_cell_444_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_444_lstm_cell_444_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_444_lstm_cell_444_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_445_lstm_cell_445_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_445_lstm_cell_445_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_445_lstm_cell_445_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_446_lstm_cell_446_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_446_lstm_cell_446_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_446_lstm_cell_446_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406635

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
?
/__inference_lstm_cell_562_layer_call_fn_3411385

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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406781o
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
while_body_3409775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408413
lstm_444_input#
lstm_444_3408386:	?#
lstm_444_3408388:	d?
lstm_444_3408390:	?#
lstm_445_3408393:	d?#
lstm_445_3408395:	2?
lstm_445_3408397:	?"
lstm_446_3408400:2("
lstm_446_3408402:
(
lstm_446_3408404:(#
dense_148_3408407:

dense_148_3408409:
identity??!dense_148/StatefulPartitionedCall? lstm_444/StatefulPartitionedCall? lstm_445/StatefulPartitionedCall? lstm_446/StatefulPartitionedCall?
 lstm_444/StatefulPartitionedCallStatefulPartitionedCalllstm_444_inputlstm_444_3408386lstm_444_3408388lstm_444_3408390*
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3407417?
 lstm_445/StatefulPartitionedCallStatefulPartitionedCall)lstm_444/StatefulPartitionedCall:output:0lstm_445_3408393lstm_445_3408395lstm_445_3408397*
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3407567?
 lstm_446/StatefulPartitionedCallStatefulPartitionedCall)lstm_445/StatefulPartitionedCall:output:0lstm_446_3408400lstm_446_3408402lstm_446_3408404*
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407717?
!dense_148/StatefulPartitionedCallStatefulPartitionedCall)lstm_446/StatefulPartitionedCall:output:0dense_148_3408407dense_148_3408409*
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735y
IdentityIdentity*dense_148/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_148/StatefulPartitionedCall!^lstm_444/StatefulPartitionedCall!^lstm_445/StatefulPartitionedCall!^lstm_446/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2D
 lstm_444/StatefulPartitionedCall lstm_444/StatefulPartitionedCall2D
 lstm_445/StatefulPartitionedCall lstm_445/StatefulPartitionedCall2D
 lstm_446/StatefulPartitionedCall lstm_446/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_444_input
?
?
while_cond_3406648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3406648___redundant_placeholder05
1while_while_cond_3406648___redundant_placeholder15
1while_while_cond_3406648___redundant_placeholder25
1while_while_cond_3406648___redundant_placeholder3
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
while_body_3410391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3410105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3406649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_562_3406673_0:	d?0
while_lstm_cell_562_3406675_0:	2?,
while_lstm_cell_562_3406677_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_562_3406673:	d?.
while_lstm_cell_562_3406675:	2?*
while_lstm_cell_562_3406677:	???+while/lstm_cell_562/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_562/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_562_3406673_0while_lstm_cell_562_3406675_0while_lstm_cell_562_3406677_0*
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406635?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_562/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_562/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_562/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_562/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_562_3406673while_lstm_cell_562_3406673_0"<
while_lstm_cell_562_3406675while_lstm_cell_562_3406675_0"<
while_lstm_cell_562_3406677while_lstm_cell_562_3406677_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_562/StatefulPartitionedCall+while/lstm_cell_562/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3410721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_561_layer_call_fn_3411287

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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406431o
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
while_cond_3409488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3409488___redundant_placeholder05
1while_while_cond_3409488___redundant_placeholder15
1while_while_cond_3409488___redundant_placeholder25
1while_while_cond_3409488___redundant_placeholder3
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411234

inputs>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3411150*
condR
while_cond_3411149*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_446_layer_call_fn_3410651

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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407717o
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411515

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
while_body_3408179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_445_while_body_3408730.
*lstm_445_while_lstm_445_while_loop_counter4
0lstm_445_while_lstm_445_while_maximum_iterations
lstm_445_while_placeholder 
lstm_445_while_placeholder_1 
lstm_445_while_placeholder_2 
lstm_445_while_placeholder_3-
)lstm_445_while_lstm_445_strided_slice_1_0i
elstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0:	d?R
?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?M
>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
lstm_445_while_identity
lstm_445_while_identity_1
lstm_445_while_identity_2
lstm_445_while_identity_3
lstm_445_while_identity_4
lstm_445_while_identity_5+
'lstm_445_while_lstm_445_strided_slice_1g
clstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensorN
;lstm_445_while_lstm_cell_562_matmul_readvariableop_resource:	d?P
=lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource:	2?K
<lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource:	???3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp?2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp?4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp?
@lstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_445/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0lstm_445_while_placeholderIlstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_445/while/lstm_cell_562/MatMulMatMul9lstm_445/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_445/while/lstm_cell_562/MatMul_1MatMullstm_445_while_placeholder_2<lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_445/while/lstm_cell_562/addAddV2-lstm_445/while/lstm_cell_562/MatMul:product:0/lstm_445/while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_445/while/lstm_cell_562/BiasAddBiasAdd$lstm_445/while/lstm_cell_562/add:z:0;lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_445/while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_445/while/lstm_cell_562/splitSplit5lstm_445/while/lstm_cell_562/split/split_dim:output:0-lstm_445/while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_445/while/lstm_cell_562/SigmoidSigmoid+lstm_445/while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_445/while/lstm_cell_562/Sigmoid_1Sigmoid+lstm_445/while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_445/while/lstm_cell_562/mulMul*lstm_445/while/lstm_cell_562/Sigmoid_1:y:0lstm_445_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_445/while/lstm_cell_562/ReluRelu+lstm_445/while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/mul_1Mul(lstm_445/while/lstm_cell_562/Sigmoid:y:0/lstm_445/while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/add_1AddV2$lstm_445/while/lstm_cell_562/mul:z:0&lstm_445/while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_445/while/lstm_cell_562/Sigmoid_2Sigmoid+lstm_445/while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_445/while/lstm_cell_562/Relu_1Relu&lstm_445/while/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/mul_2Mul*lstm_445/while/lstm_cell_562/Sigmoid_2:y:01lstm_445/while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_445/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_445_while_placeholder_1lstm_445_while_placeholder&lstm_445/while/lstm_cell_562/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_445/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_445/while/addAddV2lstm_445_while_placeholderlstm_445/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_445/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_445/while/add_1AddV2*lstm_445_while_lstm_445_while_loop_counterlstm_445/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_445/while/IdentityIdentitylstm_445/while/add_1:z:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_1Identity0lstm_445_while_lstm_445_while_maximum_iterations^lstm_445/while/NoOp*
T0*
_output_shapes
: t
lstm_445/while/Identity_2Identitylstm_445/while/add:z:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_3IdentityClstm_445/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_4Identity&lstm_445/while/lstm_cell_562/mul_2:z:0^lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_445/while/Identity_5Identity&lstm_445/while/lstm_cell_562/add_1:z:0^lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_445/while/NoOpNoOp4^lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp3^lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp5^lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_445_while_identity lstm_445/while/Identity:output:0"?
lstm_445_while_identity_1"lstm_445/while/Identity_1:output:0"?
lstm_445_while_identity_2"lstm_445/while/Identity_2:output:0"?
lstm_445_while_identity_3"lstm_445/while/Identity_3:output:0"?
lstm_445_while_identity_4"lstm_445/while/Identity_4:output:0"?
lstm_445_while_identity_5"lstm_445/while/Identity_5:output:0"T
'lstm_445_while_lstm_445_strided_slice_1)lstm_445_while_lstm_445_strided_slice_1_0"~
<lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0"?
=lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0"|
;lstm_445_while_lstm_cell_562_matmul_readvariableop_resource=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0"?
clstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensorelstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp2h
2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp2l
4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_444_while_cond_3408590.
*lstm_444_while_lstm_444_while_loop_counter4
0lstm_444_while_lstm_444_while_maximum_iterations
lstm_444_while_placeholder 
lstm_444_while_placeholder_1 
lstm_444_while_placeholder_2 
lstm_444_while_placeholder_30
,lstm_444_while_less_lstm_444_strided_slice_1G
Clstm_444_while_lstm_444_while_cond_3408590___redundant_placeholder0G
Clstm_444_while_lstm_444_while_cond_3408590___redundant_placeholder1G
Clstm_444_while_lstm_444_while_cond_3408590___redundant_placeholder2G
Clstm_444_while_lstm_444_while_cond_3408590___redundant_placeholder3
lstm_444_while_identity
?
lstm_444/while/LessLesslstm_444_while_placeholder,lstm_444_while_less_lstm_444_strided_slice_1*
T0*
_output_shapes
: ]
lstm_444/while/IdentityIdentitylstm_444/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_444_while_identity lstm_444/while/Identity:output:0*(
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
while_cond_3407632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3407632___redundant_placeholder05
1while_while_cond_3407632___redundant_placeholder15
1while_while_cond_3407632___redundant_placeholder25
1while_while_cond_3407632___redundant_placeholder3
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
while_cond_3409774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3409774___redundant_placeholder05
1while_while_cond_3409774___redundant_placeholder15
1while_while_cond_3409774___redundant_placeholder25
1while_while_cond_3409774___redundant_placeholder3
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411547

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
while_body_3407633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3410104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410104___redundant_placeholder05
1while_while_cond_3410104___redundant_placeholder15
1while_while_cond_3410104___redundant_placeholder25
1while_while_cond_3410104___redundant_placeholder3
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406431

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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411319

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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3408263

inputs?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3408179*
condR
while_cond_3408178*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_446_while_body_3408869.
*lstm_446_while_lstm_446_while_loop_counter4
0lstm_446_while_lstm_446_while_maximum_iterations
lstm_446_while_placeholder 
lstm_446_while_placeholder_1 
lstm_446_while_placeholder_2 
lstm_446_while_placeholder_3-
)lstm_446_while_lstm_446_strided_slice_1_0i
elstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0:2(Q
?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(L
>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0:(
lstm_446_while_identity
lstm_446_while_identity_1
lstm_446_while_identity_2
lstm_446_while_identity_3
lstm_446_while_identity_4
lstm_446_while_identity_5+
'lstm_446_while_lstm_446_strided_slice_1g
clstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensorM
;lstm_446_while_lstm_cell_563_matmul_readvariableop_resource:2(O
=lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource:
(J
<lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource:(??3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp?2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp?4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp?
@lstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_446/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0lstm_446_while_placeholderIlstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_446/while/lstm_cell_563/MatMulMatMul9lstm_446/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_446/while/lstm_cell_563/MatMul_1MatMullstm_446_while_placeholder_2<lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_446/while/lstm_cell_563/addAddV2-lstm_446/while/lstm_cell_563/MatMul:product:0/lstm_446/while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_446/while/lstm_cell_563/BiasAddBiasAdd$lstm_446/while/lstm_cell_563/add:z:0;lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_446/while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_446/while/lstm_cell_563/splitSplit5lstm_446/while/lstm_cell_563/split/split_dim:output:0-lstm_446/while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_446/while/lstm_cell_563/SigmoidSigmoid+lstm_446/while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_446/while/lstm_cell_563/Sigmoid_1Sigmoid+lstm_446/while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_446/while/lstm_cell_563/mulMul*lstm_446/while/lstm_cell_563/Sigmoid_1:y:0lstm_446_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_446/while/lstm_cell_563/ReluRelu+lstm_446/while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/mul_1Mul(lstm_446/while/lstm_cell_563/Sigmoid:y:0/lstm_446/while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/add_1AddV2$lstm_446/while/lstm_cell_563/mul:z:0&lstm_446/while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_446/while/lstm_cell_563/Sigmoid_2Sigmoid+lstm_446/while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_446/while/lstm_cell_563/Relu_1Relu&lstm_446/while/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/mul_2Mul*lstm_446/while/lstm_cell_563/Sigmoid_2:y:01lstm_446/while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_446/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_446_while_placeholder_1lstm_446_while_placeholder&lstm_446/while/lstm_cell_563/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_446/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_446/while/addAddV2lstm_446_while_placeholderlstm_446/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_446/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_446/while/add_1AddV2*lstm_446_while_lstm_446_while_loop_counterlstm_446/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_446/while/IdentityIdentitylstm_446/while/add_1:z:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_1Identity0lstm_446_while_lstm_446_while_maximum_iterations^lstm_446/while/NoOp*
T0*
_output_shapes
: t
lstm_446/while/Identity_2Identitylstm_446/while/add:z:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_3IdentityClstm_446/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_4Identity&lstm_446/while/lstm_cell_563/mul_2:z:0^lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_446/while/Identity_5Identity&lstm_446/while/lstm_cell_563/add_1:z:0^lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_446/while/NoOpNoOp4^lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp3^lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp5^lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_446_while_identity lstm_446/while/Identity:output:0"?
lstm_446_while_identity_1"lstm_446/while/Identity_1:output:0"?
lstm_446_while_identity_2"lstm_446/while/Identity_2:output:0"?
lstm_446_while_identity_3"lstm_446/while/Identity_3:output:0"?
lstm_446_while_identity_4"lstm_446/while/Identity_4:output:0"?
lstm_446_while_identity_5"lstm_446/while/Identity_5:output:0"T
'lstm_446_while_lstm_446_strided_slice_1)lstm_446_while_lstm_446_strided_slice_1_0"~
<lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0"?
=lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0"|
;lstm_446_while_lstm_cell_563_matmul_readvariableop_resource=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0"?
clstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensorelstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp2h
2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp2l
4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3409917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3409917___redundant_placeholder05
1while_while_cond_3409917___redundant_placeholder15
1while_while_cond_3409917___redundant_placeholder25
1while_while_cond_3409917___redundant_placeholder3
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410805
inputs_0>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3410721*
condR
while_cond_3410720*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3411150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3410533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410533___redundant_placeholder05
1while_while_cond_3410533___redundant_placeholder15
1while_while_cond_3410533___redundant_placeholder25
1while_while_cond_3410533___redundant_placeholder3
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407259

inputs'
lstm_cell_563_3407177:2('
lstm_cell_563_3407179:
(#
lstm_cell_563_3407181:(
identity??%lstm_cell_563/StatefulPartitionedCall?while;
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
%lstm_cell_563/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_563_3407177lstm_cell_563_3407179lstm_cell_563_3407181*
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3407131n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_563_3407177lstm_cell_563_3407179lstm_cell_563_3407181*
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
while_body_3407190*
condR
while_cond_3407189*K
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
NoOpNoOp&^lstm_cell_563/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_563/StatefulPartitionedCall%lstm_cell_563/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3410864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_148_lstm_446_while_body_3406128L
Hsequential_148_lstm_446_while_sequential_148_lstm_446_while_loop_counterR
Nsequential_148_lstm_446_while_sequential_148_lstm_446_while_maximum_iterations-
)sequential_148_lstm_446_while_placeholder/
+sequential_148_lstm_446_while_placeholder_1/
+sequential_148_lstm_446_while_placeholder_2/
+sequential_148_lstm_446_while_placeholder_3K
Gsequential_148_lstm_446_while_sequential_148_lstm_446_strided_slice_1_0?
?sequential_148_lstm_446_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_446_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_148_lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0:2(`
Nsequential_148_lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0:
([
Msequential_148_lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0:(*
&sequential_148_lstm_446_while_identity,
(sequential_148_lstm_446_while_identity_1,
(sequential_148_lstm_446_while_identity_2,
(sequential_148_lstm_446_while_identity_3,
(sequential_148_lstm_446_while_identity_4,
(sequential_148_lstm_446_while_identity_5I
Esequential_148_lstm_446_while_sequential_148_lstm_446_strided_slice_1?
?sequential_148_lstm_446_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_446_tensorarrayunstack_tensorlistfromtensor\
Jsequential_148_lstm_446_while_lstm_cell_563_matmul_readvariableop_resource:2(^
Lsequential_148_lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource:
(Y
Ksequential_148_lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource:(??Bsequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp?Asequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp?Csequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp?
Osequential_148/lstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_148/lstm_446/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_148_lstm_446_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_446_tensorarrayunstack_tensorlistfromtensor_0)sequential_148_lstm_446_while_placeholderXsequential_148/lstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOpLsequential_148_lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_148/lstm_446/while/lstm_cell_563/MatMulMatMulHsequential_148/lstm_446/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOpNsequential_148_lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_148/lstm_446/while/lstm_cell_563/MatMul_1MatMul+sequential_148_lstm_446_while_placeholder_2Ksequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_148/lstm_446/while/lstm_cell_563/addAddV2<sequential_148/lstm_446/while/lstm_cell_563/MatMul:product:0>sequential_148/lstm_446/while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOpMsequential_148_lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_148/lstm_446/while/lstm_cell_563/BiasAddBiasAdd3sequential_148/lstm_446/while/lstm_cell_563/add:z:0Jsequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_148/lstm_446/while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_148/lstm_446/while/lstm_cell_563/splitSplitDsequential_148/lstm_446/while/lstm_cell_563/split/split_dim:output:0<sequential_148/lstm_446/while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_148/lstm_446/while/lstm_cell_563/SigmoidSigmoid:sequential_148/lstm_446/while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_148/lstm_446/while/lstm_cell_563/Sigmoid_1Sigmoid:sequential_148/lstm_446/while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_148/lstm_446/while/lstm_cell_563/mulMul9sequential_148/lstm_446/while/lstm_cell_563/Sigmoid_1:y:0+sequential_148_lstm_446_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_148/lstm_446/while/lstm_cell_563/ReluRelu:sequential_148/lstm_446/while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_148/lstm_446/while/lstm_cell_563/mul_1Mul7sequential_148/lstm_446/while/lstm_cell_563/Sigmoid:y:0>sequential_148/lstm_446/while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_148/lstm_446/while/lstm_cell_563/add_1AddV23sequential_148/lstm_446/while/lstm_cell_563/mul:z:05sequential_148/lstm_446/while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_148/lstm_446/while/lstm_cell_563/Sigmoid_2Sigmoid:sequential_148/lstm_446/while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_148/lstm_446/while/lstm_cell_563/Relu_1Relu5sequential_148/lstm_446/while/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_148/lstm_446/while/lstm_cell_563/mul_2Mul9sequential_148/lstm_446/while/lstm_cell_563/Sigmoid_2:y:0@sequential_148/lstm_446/while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_148/lstm_446/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_148_lstm_446_while_placeholder_1)sequential_148_lstm_446_while_placeholder5sequential_148/lstm_446/while/lstm_cell_563/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_148/lstm_446/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_148/lstm_446/while/addAddV2)sequential_148_lstm_446_while_placeholder,sequential_148/lstm_446/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_148/lstm_446/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_148/lstm_446/while/add_1AddV2Hsequential_148_lstm_446_while_sequential_148_lstm_446_while_loop_counter.sequential_148/lstm_446/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_148/lstm_446/while/IdentityIdentity'sequential_148/lstm_446/while/add_1:z:0#^sequential_148/lstm_446/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_446/while/Identity_1IdentityNsequential_148_lstm_446_while_sequential_148_lstm_446_while_maximum_iterations#^sequential_148/lstm_446/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_446/while/Identity_2Identity%sequential_148/lstm_446/while/add:z:0#^sequential_148/lstm_446/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_446/while/Identity_3IdentityRsequential_148/lstm_446/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_148/lstm_446/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_446/while/Identity_4Identity5sequential_148/lstm_446/while/lstm_cell_563/mul_2:z:0#^sequential_148/lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_148/lstm_446/while/Identity_5Identity5sequential_148/lstm_446/while/lstm_cell_563/add_1:z:0#^sequential_148/lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_148/lstm_446/while/NoOpNoOpC^sequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOpB^sequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOpD^sequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_148_lstm_446_while_identity/sequential_148/lstm_446/while/Identity:output:0"]
(sequential_148_lstm_446_while_identity_11sequential_148/lstm_446/while/Identity_1:output:0"]
(sequential_148_lstm_446_while_identity_21sequential_148/lstm_446/while/Identity_2:output:0"]
(sequential_148_lstm_446_while_identity_31sequential_148/lstm_446/while/Identity_3:output:0"]
(sequential_148_lstm_446_while_identity_41sequential_148/lstm_446/while/Identity_4:output:0"]
(sequential_148_lstm_446_while_identity_51sequential_148/lstm_446/while/Identity_5:output:0"?
Ksequential_148_lstm_446_while_lstm_cell_563_biasadd_readvariableop_resourceMsequential_148_lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0"?
Lsequential_148_lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resourceNsequential_148_lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0"?
Jsequential_148_lstm_446_while_lstm_cell_563_matmul_readvariableop_resourceLsequential_148_lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0"?
Esequential_148_lstm_446_while_sequential_148_lstm_446_strided_slice_1Gsequential_148_lstm_446_while_sequential_148_lstm_446_strided_slice_1_0"?
?sequential_148_lstm_446_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_446_tensorarrayunstack_tensorlistfromtensor?sequential_148_lstm_446_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_446_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOpBsequential_148/lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp2?
Asequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOpAsequential_148/lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp2?
Csequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOpCsequential_148/lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3406909

inputs(
lstm_cell_562_3406827:	d?(
lstm_cell_562_3406829:	2?$
lstm_cell_562_3406831:	?
identity??%lstm_cell_562/StatefulPartitionedCall?while;
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
%lstm_cell_562/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_562_3406827lstm_cell_562_3406829lstm_cell_562_3406831*
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406781n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_562_3406827lstm_cell_562_3406829lstm_cell_562_3406831*
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
while_body_3406840*
condR
while_cond_3406839*K
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
NoOpNoOp&^lstm_cell_562/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_562/StatefulPartitionedCall%lstm_cell_562/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_444_layer_call_fn_3409419

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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3407417s
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
?
E__inference_lstm_444_layer_call_and_return_conditional_losses_3406368

inputs(
lstm_cell_561_3406286:	?(
lstm_cell_561_3406288:	d?$
lstm_cell_561_3406290:	?
identity??%lstm_cell_561/StatefulPartitionedCall?while;
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
%lstm_cell_561/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_561_3406286lstm_cell_561_3406288lstm_cell_561_3406290*
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406285n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_561_3406286lstm_cell_561_3406288lstm_cell_561_3406290*
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
while_body_3406299*
condR
while_cond_3406298*K
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
NoOpNoOp&^lstm_cell_561/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_561/StatefulPartitionedCall%lstm_cell_561/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3410863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410863___redundant_placeholder05
1while_while_cond_3410863___redundant_placeholder15
1while_while_cond_3410863___redundant_placeholder25
1while_while_cond_3410863___redundant_placeholder3
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
while_cond_3410390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410390___redundant_placeholder05
1while_while_cond_3410390___redundant_placeholder15
1while_while_cond_3410390___redundant_placeholder25
1while_while_cond_3410390___redundant_placeholder3
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
while_cond_3410720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410720___redundant_placeholder05
1while_while_cond_3410720___redundant_placeholder15
1while_while_cond_3410720___redundant_placeholder25
1while_while_cond_3410720___redundant_placeholder3
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3407131

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
lstm_445_while_cond_3408729.
*lstm_445_while_lstm_445_while_loop_counter4
0lstm_445_while_lstm_445_while_maximum_iterations
lstm_445_while_placeholder 
lstm_445_while_placeholder_1 
lstm_445_while_placeholder_2 
lstm_445_while_placeholder_30
,lstm_445_while_less_lstm_445_strided_slice_1G
Clstm_445_while_lstm_445_while_cond_3408729___redundant_placeholder0G
Clstm_445_while_lstm_445_while_cond_3408729___redundant_placeholder1G
Clstm_445_while_lstm_445_while_cond_3408729___redundant_placeholder2G
Clstm_445_while_lstm_445_while_cond_3408729___redundant_placeholder3
lstm_445_while_identity
?
lstm_445/while/LessLesslstm_445_while_placeholder,lstm_445_while_less_lstm_445_strided_slice_1*
T0*
_output_shapes
: ]
lstm_445/while/IdentityIdentitylstm_445/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_445_while_identity lstm_445/while/Identity:output:0*(
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
0__inference_sequential_148_layer_call_fn_3408505

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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3407742o
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
while_body_3408014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_445_while_cond_3409156.
*lstm_445_while_lstm_445_while_loop_counter4
0lstm_445_while_lstm_445_while_maximum_iterations
lstm_445_while_placeholder 
lstm_445_while_placeholder_1 
lstm_445_while_placeholder_2 
lstm_445_while_placeholder_30
,lstm_445_while_less_lstm_445_strided_slice_1G
Clstm_445_while_lstm_445_while_cond_3409156___redundant_placeholder0G
Clstm_445_while_lstm_445_while_cond_3409156___redundant_placeholder1G
Clstm_445_while_lstm_445_while_cond_3409156___redundant_placeholder2G
Clstm_445_while_lstm_445_while_cond_3409156___redundant_placeholder3
lstm_445_while_identity
?
lstm_445/while/LessLesslstm_445_while_placeholder,lstm_445_while_less_lstm_445_strided_slice_1*
T0*
_output_shapes
: ]
lstm_445/while/IdentityIdentitylstm_445/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_445_while_identity lstm_445/while/Identity:output:0*(
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407933

inputs>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3407849*
condR
while_cond_3407848*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408443
lstm_444_input#
lstm_444_3408416:	?#
lstm_444_3408418:	d?
lstm_444_3408420:	?#
lstm_445_3408423:	d?#
lstm_445_3408425:	2?
lstm_445_3408427:	?"
lstm_446_3408430:2("
lstm_446_3408432:
(
lstm_446_3408434:(#
dense_148_3408437:

dense_148_3408439:
identity??!dense_148/StatefulPartitionedCall? lstm_444/StatefulPartitionedCall? lstm_445/StatefulPartitionedCall? lstm_446/StatefulPartitionedCall?
 lstm_444/StatefulPartitionedCallStatefulPartitionedCalllstm_444_inputlstm_444_3408416lstm_444_3408418lstm_444_3408420*
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3408263?
 lstm_445/StatefulPartitionedCallStatefulPartitionedCall)lstm_444/StatefulPartitionedCall:output:0lstm_445_3408423lstm_445_3408425lstm_445_3408427*
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3408098?
 lstm_446/StatefulPartitionedCallStatefulPartitionedCall)lstm_445/StatefulPartitionedCall:output:0lstm_446_3408430lstm_446_3408432lstm_446_3408434*
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407933?
!dense_148/StatefulPartitionedCallStatefulPartitionedCall)lstm_446/StatefulPartitionedCall:output:0dense_148_3408437dense_148_3408439*
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735y
IdentityIdentity*dense_148/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_148/StatefulPartitionedCall!^lstm_444/StatefulPartitionedCall!^lstm_445/StatefulPartitionedCall!^lstm_446/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2D
 lstm_444/StatefulPartitionedCall lstm_444/StatefulPartitionedCall2D
 lstm_445/StatefulPartitionedCall lstm_445/StatefulPartitionedCall2D
 lstm_446/StatefulPartitionedCall lstm_446/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_444_input
?K
?
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410948
inputs_0>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3410864*
condR
while_cond_3410863*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410618

inputs?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3410534*
condR
while_cond_3410533*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3406718

inputs(
lstm_cell_562_3406636:	d?(
lstm_cell_562_3406638:	2?$
lstm_cell_562_3406640:	?
identity??%lstm_cell_562/StatefulPartitionedCall?while;
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
%lstm_cell_562/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_562_3406636lstm_cell_562_3406638lstm_cell_562_3406640*
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406635n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_562_3406636lstm_cell_562_3406638lstm_cell_562_3406640*
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
while_body_3406649*
condR
while_cond_3406648*K
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
NoOpNoOp&^lstm_cell_562/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_562/StatefulPartitionedCall%lstm_cell_562/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_446_while_cond_3409295.
*lstm_446_while_lstm_446_while_loop_counter4
0lstm_446_while_lstm_446_while_maximum_iterations
lstm_446_while_placeholder 
lstm_446_while_placeholder_1 
lstm_446_while_placeholder_2 
lstm_446_while_placeholder_30
,lstm_446_while_less_lstm_446_strided_slice_1G
Clstm_446_while_lstm_446_while_cond_3409295___redundant_placeholder0G
Clstm_446_while_lstm_446_while_cond_3409295___redundant_placeholder1G
Clstm_446_while_lstm_446_while_cond_3409295___redundant_placeholder2G
Clstm_446_while_lstm_446_while_cond_3409295___redundant_placeholder3
lstm_446_while_identity
?
lstm_446/while/LessLesslstm_446_while_placeholder,lstm_446_while_less_lstm_446_strided_slice_1*
T0*
_output_shapes
: ]
lstm_446/while/IdentityIdentitylstm_446/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_446_while_identity lstm_446/while/Identity:output:0*(
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
while_body_3409918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409859

inputs?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3409775*
condR
while_cond_3409774*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_444_while_cond_3409017.
*lstm_444_while_lstm_444_while_loop_counter4
0lstm_444_while_lstm_444_while_maximum_iterations
lstm_444_while_placeholder 
lstm_444_while_placeholder_1 
lstm_444_while_placeholder_2 
lstm_444_while_placeholder_30
,lstm_444_while_less_lstm_444_strided_slice_1G
Clstm_444_while_lstm_444_while_cond_3409017___redundant_placeholder0G
Clstm_444_while_lstm_444_while_cond_3409017___redundant_placeholder1G
Clstm_444_while_lstm_444_while_cond_3409017___redundant_placeholder2G
Clstm_444_while_lstm_444_while_cond_3409017___redundant_placeholder3
lstm_444_while_identity
?
lstm_444/while/LessLesslstm_444_while_placeholder,lstm_444_while_less_lstm_444_strided_slice_1*
T0*
_output_shapes
: ]
lstm_444/while/IdentityIdentitylstm_444/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_444_while_identity lstm_444/while/Identity:output:0*(
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
*__inference_lstm_445_layer_call_fn_3410024
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3406909|
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3406985

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
?#
?
while_body_3406999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_563_3407023_0:2(/
while_lstm_cell_563_3407025_0:
(+
while_lstm_cell_563_3407027_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_563_3407023:2(-
while_lstm_cell_563_3407025:
()
while_lstm_cell_563_3407027:(??+while/lstm_cell_563/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_563/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_563_3407023_0while_lstm_cell_563_3407025_0while_lstm_cell_563_3407027_0*
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3406985?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_563/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_563/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_563/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_563_3407023while_lstm_cell_563_3407023_0"<
while_lstm_cell_563_3407025while_lstm_cell_563_3407025_0"<
while_lstm_cell_563_3407027while_lstm_cell_563_3407027_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_563/StatefulPartitionedCall+while/lstm_cell_563/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3408013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3408013___redundant_placeholder05
1while_while_cond_3408013___redundant_placeholder15
1while_while_cond_3408013___redundant_placeholder25
1while_while_cond_3408013___redundant_placeholder3
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
/__inference_lstm_cell_562_layer_call_fn_3411368

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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406635o
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
?
while_cond_3406298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3406298___redundant_placeholder05
1while_while_cond_3406298___redundant_placeholder15
1while_while_cond_3406298___redundant_placeholder25
1while_while_cond_3406298___redundant_placeholder3
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

lstm_445_while_body_3409157.
*lstm_445_while_lstm_445_while_loop_counter4
0lstm_445_while_lstm_445_while_maximum_iterations
lstm_445_while_placeholder 
lstm_445_while_placeholder_1 
lstm_445_while_placeholder_2 
lstm_445_while_placeholder_3-
)lstm_445_while_lstm_445_strided_slice_1_0i
elstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0:	d?R
?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?M
>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
lstm_445_while_identity
lstm_445_while_identity_1
lstm_445_while_identity_2
lstm_445_while_identity_3
lstm_445_while_identity_4
lstm_445_while_identity_5+
'lstm_445_while_lstm_445_strided_slice_1g
clstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensorN
;lstm_445_while_lstm_cell_562_matmul_readvariableop_resource:	d?P
=lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource:	2?K
<lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource:	???3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp?2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp?4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp?
@lstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_445/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0lstm_445_while_placeholderIlstm_445/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_445/while/lstm_cell_562/MatMulMatMul9lstm_445/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_445/while/lstm_cell_562/MatMul_1MatMullstm_445_while_placeholder_2<lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_445/while/lstm_cell_562/addAddV2-lstm_445/while/lstm_cell_562/MatMul:product:0/lstm_445/while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_445/while/lstm_cell_562/BiasAddBiasAdd$lstm_445/while/lstm_cell_562/add:z:0;lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_445/while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_445/while/lstm_cell_562/splitSplit5lstm_445/while/lstm_cell_562/split/split_dim:output:0-lstm_445/while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_445/while/lstm_cell_562/SigmoidSigmoid+lstm_445/while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_445/while/lstm_cell_562/Sigmoid_1Sigmoid+lstm_445/while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_445/while/lstm_cell_562/mulMul*lstm_445/while/lstm_cell_562/Sigmoid_1:y:0lstm_445_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_445/while/lstm_cell_562/ReluRelu+lstm_445/while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/mul_1Mul(lstm_445/while/lstm_cell_562/Sigmoid:y:0/lstm_445/while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/add_1AddV2$lstm_445/while/lstm_cell_562/mul:z:0&lstm_445/while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_445/while/lstm_cell_562/Sigmoid_2Sigmoid+lstm_445/while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_445/while/lstm_cell_562/Relu_1Relu&lstm_445/while/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_445/while/lstm_cell_562/mul_2Mul*lstm_445/while/lstm_cell_562/Sigmoid_2:y:01lstm_445/while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_445/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_445_while_placeholder_1lstm_445_while_placeholder&lstm_445/while/lstm_cell_562/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_445/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_445/while/addAddV2lstm_445_while_placeholderlstm_445/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_445/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_445/while/add_1AddV2*lstm_445_while_lstm_445_while_loop_counterlstm_445/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_445/while/IdentityIdentitylstm_445/while/add_1:z:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_1Identity0lstm_445_while_lstm_445_while_maximum_iterations^lstm_445/while/NoOp*
T0*
_output_shapes
: t
lstm_445/while/Identity_2Identitylstm_445/while/add:z:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_3IdentityClstm_445/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_445/while/NoOp*
T0*
_output_shapes
: ?
lstm_445/while/Identity_4Identity&lstm_445/while/lstm_cell_562/mul_2:z:0^lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_445/while/Identity_5Identity&lstm_445/while/lstm_cell_562/add_1:z:0^lstm_445/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_445/while/NoOpNoOp4^lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp3^lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp5^lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_445_while_identity lstm_445/while/Identity:output:0"?
lstm_445_while_identity_1"lstm_445/while/Identity_1:output:0"?
lstm_445_while_identity_2"lstm_445/while/Identity_2:output:0"?
lstm_445_while_identity_3"lstm_445/while/Identity_3:output:0"?
lstm_445_while_identity_4"lstm_445/while/Identity_4:output:0"?
lstm_445_while_identity_5"lstm_445/while/Identity_5:output:0"T
'lstm_445_while_lstm_445_strided_slice_1)lstm_445_while_lstm_445_strided_slice_1_0"~
<lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource>lstm_445_while_lstm_cell_562_biasadd_readvariableop_resource_0"?
=lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource?lstm_445_while_lstm_cell_562_matmul_1_readvariableop_resource_0"|
;lstm_445_while_lstm_cell_562_matmul_readvariableop_resource=lstm_445_while_lstm_cell_562_matmul_readvariableop_resource_0"?
clstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensorelstm_445_while_tensorarrayv2read_tensorlistgetitem_lstm_445_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp3lstm_445/while/lstm_cell_562/BiasAdd/ReadVariableOp2h
2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp2lstm_445/while/lstm_cell_562/MatMul/ReadVariableOp2l
4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp4lstm_445/while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_444_layer_call_fn_3409397
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3406368|
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
while_cond_3408178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3408178___redundant_placeholder05
1while_while_cond_3408178___redundant_placeholder15
1while_while_cond_3408178___redundant_placeholder25
1while_while_cond_3408178___redundant_placeholder3
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
while_cond_3407189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3407189___redundant_placeholder05
1while_while_cond_3407189___redundant_placeholder15
1while_while_cond_3407189___redundant_placeholder25
1while_while_cond_3407189___redundant_placeholder3
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3407742

inputs#
lstm_444_3407418:	?#
lstm_444_3407420:	d?
lstm_444_3407422:	?#
lstm_445_3407568:	d?#
lstm_445_3407570:	2?
lstm_445_3407572:	?"
lstm_446_3407718:2("
lstm_446_3407720:
(
lstm_446_3407722:(#
dense_148_3407736:

dense_148_3407738:
identity??!dense_148/StatefulPartitionedCall? lstm_444/StatefulPartitionedCall? lstm_445/StatefulPartitionedCall? lstm_446/StatefulPartitionedCall?
 lstm_444/StatefulPartitionedCallStatefulPartitionedCallinputslstm_444_3407418lstm_444_3407420lstm_444_3407422*
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3407417?
 lstm_445/StatefulPartitionedCallStatefulPartitionedCall)lstm_444/StatefulPartitionedCall:output:0lstm_445_3407568lstm_445_3407570lstm_445_3407572*
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3407567?
 lstm_446/StatefulPartitionedCallStatefulPartitionedCall)lstm_445/StatefulPartitionedCall:output:0lstm_446_3407718lstm_446_3407720lstm_446_3407722*
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407717?
!dense_148/StatefulPartitionedCallStatefulPartitionedCall)lstm_446/StatefulPartitionedCall:output:0dense_148_3407736dense_148_3407738*
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735y
IdentityIdentity*dense_148/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_148/StatefulPartitionedCall!^lstm_444/StatefulPartitionedCall!^lstm_445/StatefulPartitionedCall!^lstm_446/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_148/StatefulPartitionedCall!dense_148/StatefulPartitionedCall2D
 lstm_444/StatefulPartitionedCall lstm_444/StatefulPartitionedCall2D
 lstm_445/StatefulPartitionedCall lstm_445/StatefulPartitionedCall2D
 lstm_446/StatefulPartitionedCall lstm_446/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3407567

inputs?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3407483*
condR
while_cond_3407482*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3409489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3406839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3406839___redundant_placeholder05
1while_while_cond_3406839___redundant_placeholder15
1while_while_cond_3406839___redundant_placeholder25
1while_while_cond_3406839___redundant_placeholder3
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410189
inputs_0?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3410105*
condR
while_cond_3410104*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408959

inputsH
5lstm_444_lstm_cell_561_matmul_readvariableop_resource:	?J
7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource:	d?E
6lstm_444_lstm_cell_561_biasadd_readvariableop_resource:	?H
5lstm_445_lstm_cell_562_matmul_readvariableop_resource:	d?J
7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource:	2?E
6lstm_445_lstm_cell_562_biasadd_readvariableop_resource:	?G
5lstm_446_lstm_cell_563_matmul_readvariableop_resource:2(I
7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource:
(D
6lstm_446_lstm_cell_563_biasadd_readvariableop_resource:(:
(dense_148_matmul_readvariableop_resource:
7
)dense_148_biasadd_readvariableop_resource:
identity?? dense_148/BiasAdd/ReadVariableOp?dense_148/MatMul/ReadVariableOp?-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp?,lstm_444/lstm_cell_561/MatMul/ReadVariableOp?.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp?lstm_444/while?-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp?,lstm_445/lstm_cell_562/MatMul/ReadVariableOp?.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp?lstm_445/while?-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp?,lstm_446/lstm_cell_563/MatMul/ReadVariableOp?.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp?lstm_446/whileD
lstm_444/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_sliceStridedSlicelstm_444/Shape:output:0%lstm_444/strided_slice/stack:output:0'lstm_444/strided_slice/stack_1:output:0'lstm_444/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_444/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_444/zeros/packedPacklstm_444/strided_slice:output:0 lstm_444/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_444/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_444/zerosFilllstm_444/zeros/packed:output:0lstm_444/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_444/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_444/zeros_1/packedPacklstm_444/strided_slice:output:0"lstm_444/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_444/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_444/zeros_1Fill lstm_444/zeros_1/packed:output:0lstm_444/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_444/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_444/transpose	Transposeinputs lstm_444/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_444/Shape_1Shapelstm_444/transpose:y:0*
T0*
_output_shapes
:h
lstm_444/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_444/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_1StridedSlicelstm_444/Shape_1:output:0'lstm_444/strided_slice_1/stack:output:0)lstm_444/strided_slice_1/stack_1:output:0)lstm_444/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_444/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_444/TensorArrayV2TensorListReserve-lstm_444/TensorArrayV2/element_shape:output:0!lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_444/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_444/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_444/transpose:y:0Glstm_444/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_444/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_444/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_2StridedSlicelstm_444/transpose:y:0'lstm_444/strided_slice_2/stack:output:0)lstm_444/strided_slice_2/stack_1:output:0)lstm_444/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_444/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp5lstm_444_lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_444/lstm_cell_561/MatMulMatMul!lstm_444/strided_slice_2:output:04lstm_444/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_444/lstm_cell_561/MatMul_1MatMullstm_444/zeros:output:06lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_444/lstm_cell_561/addAddV2'lstm_444/lstm_cell_561/MatMul:product:0)lstm_444/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp6lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_444/lstm_cell_561/BiasAddBiasAddlstm_444/lstm_cell_561/add:z:05lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_444/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_444/lstm_cell_561/splitSplit/lstm_444/lstm_cell_561/split/split_dim:output:0'lstm_444/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_444/lstm_cell_561/SigmoidSigmoid%lstm_444/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_444/lstm_cell_561/Sigmoid_1Sigmoid%lstm_444/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mulMul$lstm_444/lstm_cell_561/Sigmoid_1:y:0lstm_444/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_444/lstm_cell_561/ReluRelu%lstm_444/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mul_1Mul"lstm_444/lstm_cell_561/Sigmoid:y:0)lstm_444/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/add_1AddV2lstm_444/lstm_cell_561/mul:z:0 lstm_444/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_444/lstm_cell_561/Sigmoid_2Sigmoid%lstm_444/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_444/lstm_cell_561/Relu_1Relu lstm_444/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_444/lstm_cell_561/mul_2Mul$lstm_444/lstm_cell_561/Sigmoid_2:y:0+lstm_444/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_444/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_444/TensorArrayV2_1TensorListReserve/lstm_444/TensorArrayV2_1/element_shape:output:0!lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_444/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_444/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_444/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_444/whileWhile$lstm_444/while/loop_counter:output:0*lstm_444/while/maximum_iterations:output:0lstm_444/time:output:0!lstm_444/TensorArrayV2_1:handle:0lstm_444/zeros:output:0lstm_444/zeros_1:output:0!lstm_444/strided_slice_1:output:0@lstm_444/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_444_lstm_cell_561_matmul_readvariableop_resource7lstm_444_lstm_cell_561_matmul_1_readvariableop_resource6lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
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
lstm_444_while_body_3408591*'
condR
lstm_444_while_cond_3408590*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_444/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_444/TensorArrayV2Stack/TensorListStackTensorListStacklstm_444/while:output:3Blstm_444/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_444/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_444/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_444/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_444/strided_slice_3StridedSlice4lstm_444/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_444/strided_slice_3/stack:output:0)lstm_444/strided_slice_3/stack_1:output:0)lstm_444/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_444/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_444/transpose_1	Transpose4lstm_444/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_444/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_444/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_445/ShapeShapelstm_444/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_sliceStridedSlicelstm_445/Shape:output:0%lstm_445/strided_slice/stack:output:0'lstm_445/strided_slice/stack_1:output:0'lstm_445/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_445/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_445/zeros/packedPacklstm_445/strided_slice:output:0 lstm_445/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_445/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_445/zerosFilllstm_445/zeros/packed:output:0lstm_445/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_445/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_445/zeros_1/packedPacklstm_445/strided_slice:output:0"lstm_445/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_445/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_445/zeros_1Fill lstm_445/zeros_1/packed:output:0lstm_445/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_445/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_445/transpose	Transposelstm_444/transpose_1:y:0 lstm_445/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_445/Shape_1Shapelstm_445/transpose:y:0*
T0*
_output_shapes
:h
lstm_445/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_445/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_1StridedSlicelstm_445/Shape_1:output:0'lstm_445/strided_slice_1/stack:output:0)lstm_445/strided_slice_1/stack_1:output:0)lstm_445/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_445/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_445/TensorArrayV2TensorListReserve-lstm_445/TensorArrayV2/element_shape:output:0!lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_445/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_445/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_445/transpose:y:0Glstm_445/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_445/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_445/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_2StridedSlicelstm_445/transpose:y:0'lstm_445/strided_slice_2/stack:output:0)lstm_445/strided_slice_2/stack_1:output:0)lstm_445/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_445/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp5lstm_445_lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_445/lstm_cell_562/MatMulMatMul!lstm_445/strided_slice_2:output:04lstm_445/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_445/lstm_cell_562/MatMul_1MatMullstm_445/zeros:output:06lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_445/lstm_cell_562/addAddV2'lstm_445/lstm_cell_562/MatMul:product:0)lstm_445/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp6lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_445/lstm_cell_562/BiasAddBiasAddlstm_445/lstm_cell_562/add:z:05lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_445/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_445/lstm_cell_562/splitSplit/lstm_445/lstm_cell_562/split/split_dim:output:0'lstm_445/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_445/lstm_cell_562/SigmoidSigmoid%lstm_445/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_445/lstm_cell_562/Sigmoid_1Sigmoid%lstm_445/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mulMul$lstm_445/lstm_cell_562/Sigmoid_1:y:0lstm_445/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_445/lstm_cell_562/ReluRelu%lstm_445/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mul_1Mul"lstm_445/lstm_cell_562/Sigmoid:y:0)lstm_445/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/add_1AddV2lstm_445/lstm_cell_562/mul:z:0 lstm_445/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_445/lstm_cell_562/Sigmoid_2Sigmoid%lstm_445/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_445/lstm_cell_562/Relu_1Relu lstm_445/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_445/lstm_cell_562/mul_2Mul$lstm_445/lstm_cell_562/Sigmoid_2:y:0+lstm_445/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_445/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_445/TensorArrayV2_1TensorListReserve/lstm_445/TensorArrayV2_1/element_shape:output:0!lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_445/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_445/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_445/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_445/whileWhile$lstm_445/while/loop_counter:output:0*lstm_445/while/maximum_iterations:output:0lstm_445/time:output:0!lstm_445/TensorArrayV2_1:handle:0lstm_445/zeros:output:0lstm_445/zeros_1:output:0!lstm_445/strided_slice_1:output:0@lstm_445/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_445_lstm_cell_562_matmul_readvariableop_resource7lstm_445_lstm_cell_562_matmul_1_readvariableop_resource6lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
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
lstm_445_while_body_3408730*'
condR
lstm_445_while_cond_3408729*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_445/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_445/TensorArrayV2Stack/TensorListStackTensorListStacklstm_445/while:output:3Blstm_445/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_445/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_445/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_445/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_445/strided_slice_3StridedSlice4lstm_445/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_445/strided_slice_3/stack:output:0)lstm_445/strided_slice_3/stack_1:output:0)lstm_445/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_445/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_445/transpose_1	Transpose4lstm_445/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_445/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_445/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_446/ShapeShapelstm_445/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_446/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_446/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_446/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_sliceStridedSlicelstm_446/Shape:output:0%lstm_446/strided_slice/stack:output:0'lstm_446/strided_slice/stack_1:output:0'lstm_446/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_446/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_446/zeros/packedPacklstm_446/strided_slice:output:0 lstm_446/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_446/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_446/zerosFilllstm_446/zeros/packed:output:0lstm_446/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_446/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_446/zeros_1/packedPacklstm_446/strided_slice:output:0"lstm_446/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_446/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_446/zeros_1Fill lstm_446/zeros_1/packed:output:0lstm_446/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_446/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_446/transpose	Transposelstm_445/transpose_1:y:0 lstm_446/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_446/Shape_1Shapelstm_446/transpose:y:0*
T0*
_output_shapes
:h
lstm_446/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_446/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_1StridedSlicelstm_446/Shape_1:output:0'lstm_446/strided_slice_1/stack:output:0)lstm_446/strided_slice_1/stack_1:output:0)lstm_446/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_446/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_446/TensorArrayV2TensorListReserve-lstm_446/TensorArrayV2/element_shape:output:0!lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_446/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_446/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_446/transpose:y:0Glstm_446/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_446/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_446/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_2StridedSlicelstm_446/transpose:y:0'lstm_446/strided_slice_2/stack:output:0)lstm_446/strided_slice_2/stack_1:output:0)lstm_446/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_446/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp5lstm_446_lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_446/lstm_cell_563/MatMulMatMul!lstm_446/strided_slice_2:output:04lstm_446/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_446/lstm_cell_563/MatMul_1MatMullstm_446/zeros:output:06lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_446/lstm_cell_563/addAddV2'lstm_446/lstm_cell_563/MatMul:product:0)lstm_446/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp6lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_446/lstm_cell_563/BiasAddBiasAddlstm_446/lstm_cell_563/add:z:05lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_446/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_446/lstm_cell_563/splitSplit/lstm_446/lstm_cell_563/split/split_dim:output:0'lstm_446/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_446/lstm_cell_563/SigmoidSigmoid%lstm_446/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_446/lstm_cell_563/Sigmoid_1Sigmoid%lstm_446/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mulMul$lstm_446/lstm_cell_563/Sigmoid_1:y:0lstm_446/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_446/lstm_cell_563/ReluRelu%lstm_446/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mul_1Mul"lstm_446/lstm_cell_563/Sigmoid:y:0)lstm_446/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/add_1AddV2lstm_446/lstm_cell_563/mul:z:0 lstm_446/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_446/lstm_cell_563/Sigmoid_2Sigmoid%lstm_446/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_446/lstm_cell_563/Relu_1Relu lstm_446/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_446/lstm_cell_563/mul_2Mul$lstm_446/lstm_cell_563/Sigmoid_2:y:0+lstm_446/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_446/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_446/TensorArrayV2_1TensorListReserve/lstm_446/TensorArrayV2_1/element_shape:output:0!lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_446/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_446/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_446/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_446/whileWhile$lstm_446/while/loop_counter:output:0*lstm_446/while/maximum_iterations:output:0lstm_446/time:output:0!lstm_446/TensorArrayV2_1:handle:0lstm_446/zeros:output:0lstm_446/zeros_1:output:0!lstm_446/strided_slice_1:output:0@lstm_446/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_446_lstm_cell_563_matmul_readvariableop_resource7lstm_446_lstm_cell_563_matmul_1_readvariableop_resource6lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
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
lstm_446_while_body_3408869*'
condR
lstm_446_while_cond_3408868*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_446/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_446/TensorArrayV2Stack/TensorListStackTensorListStacklstm_446/while:output:3Blstm_446/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_446/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_446/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_446/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_446/strided_slice_3StridedSlice4lstm_446/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_446/strided_slice_3/stack:output:0)lstm_446/strided_slice_3/stack_1:output:0)lstm_446/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_446/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_446/transpose_1	Transpose4lstm_446/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_446/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_446/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_148/MatMul/ReadVariableOpReadVariableOp(dense_148_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_148/MatMulMatMul!lstm_446/strided_slice_3:output:0'dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_148/BiasAdd/ReadVariableOpReadVariableOp)dense_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_148/BiasAddBiasAdddense_148/MatMul:product:0(dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_148/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_148/BiasAdd/ReadVariableOp ^dense_148/MatMul/ReadVariableOp.^lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp-^lstm_444/lstm_cell_561/MatMul/ReadVariableOp/^lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp^lstm_444/while.^lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp-^lstm_445/lstm_cell_562/MatMul/ReadVariableOp/^lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp^lstm_445/while.^lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp-^lstm_446/lstm_cell_563/MatMul/ReadVariableOp/^lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp^lstm_446/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_148/BiasAdd/ReadVariableOp dense_148/BiasAdd/ReadVariableOp2B
dense_148/MatMul/ReadVariableOpdense_148/MatMul/ReadVariableOp2^
-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp-lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp2\
,lstm_444/lstm_cell_561/MatMul/ReadVariableOp,lstm_444/lstm_cell_561/MatMul/ReadVariableOp2`
.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp.lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp2 
lstm_444/whilelstm_444/while2^
-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp-lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp2\
,lstm_445/lstm_cell_562/MatMul/ReadVariableOp,lstm_445/lstm_cell_562/MatMul/ReadVariableOp2`
.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp.lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp2 
lstm_445/whilelstm_445/while2^
-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp-lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp2\
,lstm_446/lstm_cell_563/MatMul/ReadVariableOp,lstm_446/lstm_cell_563/MatMul/ReadVariableOp2`
.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp.lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp2 
lstm_446/whilelstm_446/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_446_while_body_3409296.
*lstm_446_while_lstm_446_while_loop_counter4
0lstm_446_while_lstm_446_while_maximum_iterations
lstm_446_while_placeholder 
lstm_446_while_placeholder_1 
lstm_446_while_placeholder_2 
lstm_446_while_placeholder_3-
)lstm_446_while_lstm_446_strided_slice_1_0i
elstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0:2(Q
?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(L
>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0:(
lstm_446_while_identity
lstm_446_while_identity_1
lstm_446_while_identity_2
lstm_446_while_identity_3
lstm_446_while_identity_4
lstm_446_while_identity_5+
'lstm_446_while_lstm_446_strided_slice_1g
clstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensorM
;lstm_446_while_lstm_cell_563_matmul_readvariableop_resource:2(O
=lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource:
(J
<lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource:(??3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp?2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp?4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp?
@lstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_446/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0lstm_446_while_placeholderIlstm_446/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_446/while/lstm_cell_563/MatMulMatMul9lstm_446/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_446/while/lstm_cell_563/MatMul_1MatMullstm_446_while_placeholder_2<lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_446/while/lstm_cell_563/addAddV2-lstm_446/while/lstm_cell_563/MatMul:product:0/lstm_446/while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_446/while/lstm_cell_563/BiasAddBiasAdd$lstm_446/while/lstm_cell_563/add:z:0;lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_446/while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_446/while/lstm_cell_563/splitSplit5lstm_446/while/lstm_cell_563/split/split_dim:output:0-lstm_446/while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_446/while/lstm_cell_563/SigmoidSigmoid+lstm_446/while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_446/while/lstm_cell_563/Sigmoid_1Sigmoid+lstm_446/while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_446/while/lstm_cell_563/mulMul*lstm_446/while/lstm_cell_563/Sigmoid_1:y:0lstm_446_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_446/while/lstm_cell_563/ReluRelu+lstm_446/while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/mul_1Mul(lstm_446/while/lstm_cell_563/Sigmoid:y:0/lstm_446/while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/add_1AddV2$lstm_446/while/lstm_cell_563/mul:z:0&lstm_446/while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_446/while/lstm_cell_563/Sigmoid_2Sigmoid+lstm_446/while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_446/while/lstm_cell_563/Relu_1Relu&lstm_446/while/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_446/while/lstm_cell_563/mul_2Mul*lstm_446/while/lstm_cell_563/Sigmoid_2:y:01lstm_446/while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_446/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_446_while_placeholder_1lstm_446_while_placeholder&lstm_446/while/lstm_cell_563/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_446/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_446/while/addAddV2lstm_446_while_placeholderlstm_446/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_446/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_446/while/add_1AddV2*lstm_446_while_lstm_446_while_loop_counterlstm_446/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_446/while/IdentityIdentitylstm_446/while/add_1:z:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_1Identity0lstm_446_while_lstm_446_while_maximum_iterations^lstm_446/while/NoOp*
T0*
_output_shapes
: t
lstm_446/while/Identity_2Identitylstm_446/while/add:z:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_3IdentityClstm_446/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_446/while/NoOp*
T0*
_output_shapes
: ?
lstm_446/while/Identity_4Identity&lstm_446/while/lstm_cell_563/mul_2:z:0^lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_446/while/Identity_5Identity&lstm_446/while/lstm_cell_563/add_1:z:0^lstm_446/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_446/while/NoOpNoOp4^lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp3^lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp5^lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_446_while_identity lstm_446/while/Identity:output:0"?
lstm_446_while_identity_1"lstm_446/while/Identity_1:output:0"?
lstm_446_while_identity_2"lstm_446/while/Identity_2:output:0"?
lstm_446_while_identity_3"lstm_446/while/Identity_3:output:0"?
lstm_446_while_identity_4"lstm_446/while/Identity_4:output:0"?
lstm_446_while_identity_5"lstm_446/while/Identity_5:output:0"T
'lstm_446_while_lstm_446_strided_slice_1)lstm_446_while_lstm_446_strided_slice_1_0"~
<lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource>lstm_446_while_lstm_cell_563_biasadd_readvariableop_resource_0"?
=lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource?lstm_446_while_lstm_cell_563_matmul_1_readvariableop_resource_0"|
;lstm_446_while_lstm_cell_563_matmul_readvariableop_resource=lstm_446_while_lstm_cell_563_matmul_readvariableop_resource_0"?
clstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensorelstm_446_while_tensorarrayv2read_tensorlistgetitem_lstm_446_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp3lstm_446/while/lstm_cell_563/BiasAdd/ReadVariableOp2h
2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp2lstm_446/while/lstm_cell_563/MatMul/ReadVariableOp2l
4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp4lstm_446/while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3410247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3410247___redundant_placeholder05
1while_while_cond_3410247___redundant_placeholder15
1while_while_cond_3410247___redundant_placeholder25
1while_while_cond_3410247___redundant_placeholder3
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
while_body_3410248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_444_while_body_3408591.
*lstm_444_while_lstm_444_while_loop_counter4
0lstm_444_while_lstm_444_while_maximum_iterations
lstm_444_while_placeholder 
lstm_444_while_placeholder_1 
lstm_444_while_placeholder_2 
lstm_444_while_placeholder_3-
)lstm_444_while_lstm_444_strided_slice_1_0i
elstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0:	?R
?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?M
>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
lstm_444_while_identity
lstm_444_while_identity_1
lstm_444_while_identity_2
lstm_444_while_identity_3
lstm_444_while_identity_4
lstm_444_while_identity_5+
'lstm_444_while_lstm_444_strided_slice_1g
clstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensorN
;lstm_444_while_lstm_cell_561_matmul_readvariableop_resource:	?P
=lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource:	d?K
<lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource:	???3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp?2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp?4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp?
@lstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_444/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0lstm_444_while_placeholderIlstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_444/while/lstm_cell_561/MatMulMatMul9lstm_444/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_444/while/lstm_cell_561/MatMul_1MatMullstm_444_while_placeholder_2<lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_444/while/lstm_cell_561/addAddV2-lstm_444/while/lstm_cell_561/MatMul:product:0/lstm_444/while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_444/while/lstm_cell_561/BiasAddBiasAdd$lstm_444/while/lstm_cell_561/add:z:0;lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_444/while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_444/while/lstm_cell_561/splitSplit5lstm_444/while/lstm_cell_561/split/split_dim:output:0-lstm_444/while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_444/while/lstm_cell_561/SigmoidSigmoid+lstm_444/while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_444/while/lstm_cell_561/Sigmoid_1Sigmoid+lstm_444/while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_444/while/lstm_cell_561/mulMul*lstm_444/while/lstm_cell_561/Sigmoid_1:y:0lstm_444_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_444/while/lstm_cell_561/ReluRelu+lstm_444/while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/mul_1Mul(lstm_444/while/lstm_cell_561/Sigmoid:y:0/lstm_444/while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/add_1AddV2$lstm_444/while/lstm_cell_561/mul:z:0&lstm_444/while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_444/while/lstm_cell_561/Sigmoid_2Sigmoid+lstm_444/while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_444/while/lstm_cell_561/Relu_1Relu&lstm_444/while/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/mul_2Mul*lstm_444/while/lstm_cell_561/Sigmoid_2:y:01lstm_444/while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_444/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_444_while_placeholder_1lstm_444_while_placeholder&lstm_444/while/lstm_cell_561/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_444/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_444/while/addAddV2lstm_444_while_placeholderlstm_444/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_444/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_444/while/add_1AddV2*lstm_444_while_lstm_444_while_loop_counterlstm_444/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_444/while/IdentityIdentitylstm_444/while/add_1:z:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_1Identity0lstm_444_while_lstm_444_while_maximum_iterations^lstm_444/while/NoOp*
T0*
_output_shapes
: t
lstm_444/while/Identity_2Identitylstm_444/while/add:z:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_3IdentityClstm_444/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_4Identity&lstm_444/while/lstm_cell_561/mul_2:z:0^lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_444/while/Identity_5Identity&lstm_444/while/lstm_cell_561/add_1:z:0^lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_444/while/NoOpNoOp4^lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp3^lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp5^lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_444_while_identity lstm_444/while/Identity:output:0"?
lstm_444_while_identity_1"lstm_444/while/Identity_1:output:0"?
lstm_444_while_identity_2"lstm_444/while/Identity_2:output:0"?
lstm_444_while_identity_3"lstm_444/while/Identity_3:output:0"?
lstm_444_while_identity_4"lstm_444/while/Identity_4:output:0"?
lstm_444_while_identity_5"lstm_444/while/Identity_5:output:0"T
'lstm_444_while_lstm_444_strided_slice_1)lstm_444_while_lstm_444_strided_slice_1_0"~
<lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0"?
=lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0"|
;lstm_444_while_lstm_cell_561_matmul_readvariableop_resource=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0"?
clstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensorelstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp2h
2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp2l
4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3407190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_563_3407214_0:2(/
while_lstm_cell_563_3407216_0:
(+
while_lstm_cell_563_3407218_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_563_3407214:2(-
while_lstm_cell_563_3407216:
()
while_lstm_cell_563_3407218:(??+while/lstm_cell_563/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_563/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_563_3407214_0while_lstm_cell_563_3407216_0while_lstm_cell_563_3407218_0*
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3407131?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_563/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_563/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_563/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_563/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_563_3407214while_lstm_cell_563_3407214_0"<
while_lstm_cell_563_3407216while_lstm_cell_563_3407216_0"<
while_lstm_cell_563_3407218while_lstm_cell_563_3407218_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_563/StatefulPartitionedCall+while/lstm_cell_563/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_148_lstm_445_while_cond_3405988L
Hsequential_148_lstm_445_while_sequential_148_lstm_445_while_loop_counterR
Nsequential_148_lstm_445_while_sequential_148_lstm_445_while_maximum_iterations-
)sequential_148_lstm_445_while_placeholder/
+sequential_148_lstm_445_while_placeholder_1/
+sequential_148_lstm_445_while_placeholder_2/
+sequential_148_lstm_445_while_placeholder_3N
Jsequential_148_lstm_445_while_less_sequential_148_lstm_445_strided_slice_1e
asequential_148_lstm_445_while_sequential_148_lstm_445_while_cond_3405988___redundant_placeholder0e
asequential_148_lstm_445_while_sequential_148_lstm_445_while_cond_3405988___redundant_placeholder1e
asequential_148_lstm_445_while_sequential_148_lstm_445_while_cond_3405988___redundant_placeholder2e
asequential_148_lstm_445_while_sequential_148_lstm_445_while_cond_3405988___redundant_placeholder3*
&sequential_148_lstm_445_while_identity
?
"sequential_148/lstm_445/while/LessLess)sequential_148_lstm_445_while_placeholderJsequential_148_lstm_445_while_less_sequential_148_lstm_445_strided_slice_1*
T0*
_output_shapes
: {
&sequential_148/lstm_445/while/IdentityIdentity&sequential_148/lstm_445/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_148_lstm_445_while_identity/sequential_148/lstm_445/while/Identity:output:0*(
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
*__inference_lstm_445_layer_call_fn_3410035

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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3407567s
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411351

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
F__inference_dense_148_layer_call_and_return_conditional_losses_3411253

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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411449

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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3410002

inputs?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3409918*
condR
while_cond_3409917*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_148_lstm_444_while_cond_3405849L
Hsequential_148_lstm_444_while_sequential_148_lstm_444_while_loop_counterR
Nsequential_148_lstm_444_while_sequential_148_lstm_444_while_maximum_iterations-
)sequential_148_lstm_444_while_placeholder/
+sequential_148_lstm_444_while_placeholder_1/
+sequential_148_lstm_444_while_placeholder_2/
+sequential_148_lstm_444_while_placeholder_3N
Jsequential_148_lstm_444_while_less_sequential_148_lstm_444_strided_slice_1e
asequential_148_lstm_444_while_sequential_148_lstm_444_while_cond_3405849___redundant_placeholder0e
asequential_148_lstm_444_while_sequential_148_lstm_444_while_cond_3405849___redundant_placeholder1e
asequential_148_lstm_444_while_sequential_148_lstm_444_while_cond_3405849___redundant_placeholder2e
asequential_148_lstm_444_while_sequential_148_lstm_444_while_cond_3405849___redundant_placeholder3*
&sequential_148_lstm_444_while_identity
?
"sequential_148/lstm_444/while/LessLess)sequential_148_lstm_444_while_placeholderJsequential_148_lstm_444_while_less_sequential_148_lstm_444_strided_slice_1*
T0*
_output_shapes
: {
&sequential_148/lstm_444/while/IdentityIdentity&sequential_148/lstm_444/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_148_lstm_444_while_identity/sequential_148/lstm_444/while/Identity:output:0*(
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
while_cond_3411006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3411006___redundant_placeholder05
1while_while_cond_3411006___redundant_placeholder15
1while_while_cond_3411006___redundant_placeholder25
1while_while_cond_3411006___redundant_placeholder3
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
+__inference_dense_148_layer_call_fn_3411243

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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735o
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
?C
?

lstm_444_while_body_3409018.
*lstm_444_while_lstm_444_while_loop_counter4
0lstm_444_while_lstm_444_while_maximum_iterations
lstm_444_while_placeholder 
lstm_444_while_placeholder_1 
lstm_444_while_placeholder_2 
lstm_444_while_placeholder_3-
)lstm_444_while_lstm_444_strided_slice_1_0i
elstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0:	?R
?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?M
>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
lstm_444_while_identity
lstm_444_while_identity_1
lstm_444_while_identity_2
lstm_444_while_identity_3
lstm_444_while_identity_4
lstm_444_while_identity_5+
'lstm_444_while_lstm_444_strided_slice_1g
clstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensorN
;lstm_444_while_lstm_cell_561_matmul_readvariableop_resource:	?P
=lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource:	d?K
<lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource:	???3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp?2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp?4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp?
@lstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_444/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0lstm_444_while_placeholderIlstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_444/while/lstm_cell_561/MatMulMatMul9lstm_444/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_444/while/lstm_cell_561/MatMul_1MatMullstm_444_while_placeholder_2<lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_444/while/lstm_cell_561/addAddV2-lstm_444/while/lstm_cell_561/MatMul:product:0/lstm_444/while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_444/while/lstm_cell_561/BiasAddBiasAdd$lstm_444/while/lstm_cell_561/add:z:0;lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_444/while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_444/while/lstm_cell_561/splitSplit5lstm_444/while/lstm_cell_561/split/split_dim:output:0-lstm_444/while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_444/while/lstm_cell_561/SigmoidSigmoid+lstm_444/while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_444/while/lstm_cell_561/Sigmoid_1Sigmoid+lstm_444/while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_444/while/lstm_cell_561/mulMul*lstm_444/while/lstm_cell_561/Sigmoid_1:y:0lstm_444_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_444/while/lstm_cell_561/ReluRelu+lstm_444/while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/mul_1Mul(lstm_444/while/lstm_cell_561/Sigmoid:y:0/lstm_444/while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/add_1AddV2$lstm_444/while/lstm_cell_561/mul:z:0&lstm_444/while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_444/while/lstm_cell_561/Sigmoid_2Sigmoid+lstm_444/while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_444/while/lstm_cell_561/Relu_1Relu&lstm_444/while/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_444/while/lstm_cell_561/mul_2Mul*lstm_444/while/lstm_cell_561/Sigmoid_2:y:01lstm_444/while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_444/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_444_while_placeholder_1lstm_444_while_placeholder&lstm_444/while/lstm_cell_561/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_444/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_444/while/addAddV2lstm_444_while_placeholderlstm_444/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_444/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_444/while/add_1AddV2*lstm_444_while_lstm_444_while_loop_counterlstm_444/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_444/while/IdentityIdentitylstm_444/while/add_1:z:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_1Identity0lstm_444_while_lstm_444_while_maximum_iterations^lstm_444/while/NoOp*
T0*
_output_shapes
: t
lstm_444/while/Identity_2Identitylstm_444/while/add:z:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_3IdentityClstm_444/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_444/while/NoOp*
T0*
_output_shapes
: ?
lstm_444/while/Identity_4Identity&lstm_444/while/lstm_cell_561/mul_2:z:0^lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_444/while/Identity_5Identity&lstm_444/while/lstm_cell_561/add_1:z:0^lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_444/while/NoOpNoOp4^lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp3^lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp5^lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_444_while_identity lstm_444/while/Identity:output:0"?
lstm_444_while_identity_1"lstm_444/while/Identity_1:output:0"?
lstm_444_while_identity_2"lstm_444/while/Identity_2:output:0"?
lstm_444_while_identity_3"lstm_444/while/Identity_3:output:0"?
lstm_444_while_identity_4"lstm_444/while/Identity_4:output:0"?
lstm_444_while_identity_5"lstm_444/while/Identity_5:output:0"T
'lstm_444_while_lstm_444_strided_slice_1)lstm_444_while_lstm_444_strided_slice_1_0"~
<lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource>lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0"?
=lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource?lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0"|
;lstm_444_while_lstm_cell_561_matmul_readvariableop_resource=lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0"?
clstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensorelstm_444_while_tensorarrayv2read_tensorlistgetitem_lstm_444_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp3lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp2h
2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp2lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp2l
4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp4lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_444_layer_call_fn_3409408
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3406559|
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
?W
?
 __inference__traced_save_3411690
file_prefix/
+savev2_dense_148_kernel_read_readvariableop-
)savev2_dense_148_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_444_lstm_cell_444_kernel_read_readvariableopF
Bsavev2_lstm_444_lstm_cell_444_recurrent_kernel_read_readvariableop:
6savev2_lstm_444_lstm_cell_444_bias_read_readvariableop<
8savev2_lstm_445_lstm_cell_445_kernel_read_readvariableopF
Bsavev2_lstm_445_lstm_cell_445_recurrent_kernel_read_readvariableop:
6savev2_lstm_445_lstm_cell_445_bias_read_readvariableop<
8savev2_lstm_446_lstm_cell_446_kernel_read_readvariableopF
Bsavev2_lstm_446_lstm_cell_446_recurrent_kernel_read_readvariableop:
6savev2_lstm_446_lstm_cell_446_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_148_kernel_m_read_readvariableop4
0savev2_adam_dense_148_bias_m_read_readvariableopC
?savev2_adam_lstm_444_lstm_cell_444_kernel_m_read_readvariableopM
Isavev2_adam_lstm_444_lstm_cell_444_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_444_lstm_cell_444_bias_m_read_readvariableopC
?savev2_adam_lstm_445_lstm_cell_445_kernel_m_read_readvariableopM
Isavev2_adam_lstm_445_lstm_cell_445_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_445_lstm_cell_445_bias_m_read_readvariableopC
?savev2_adam_lstm_446_lstm_cell_446_kernel_m_read_readvariableopM
Isavev2_adam_lstm_446_lstm_cell_446_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_446_lstm_cell_446_bias_m_read_readvariableop6
2savev2_adam_dense_148_kernel_v_read_readvariableop4
0savev2_adam_dense_148_bias_v_read_readvariableopC
?savev2_adam_lstm_444_lstm_cell_444_kernel_v_read_readvariableopM
Isavev2_adam_lstm_444_lstm_cell_444_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_444_lstm_cell_444_bias_v_read_readvariableopC
?savev2_adam_lstm_445_lstm_cell_445_kernel_v_read_readvariableopM
Isavev2_adam_lstm_445_lstm_cell_445_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_445_lstm_cell_445_bias_v_read_readvariableopC
?savev2_adam_lstm_446_lstm_cell_446_kernel_v_read_readvariableopM
Isavev2_adam_lstm_446_lstm_cell_446_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_446_lstm_cell_446_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_148_kernel_read_readvariableop)savev2_dense_148_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_444_lstm_cell_444_kernel_read_readvariableopBsavev2_lstm_444_lstm_cell_444_recurrent_kernel_read_readvariableop6savev2_lstm_444_lstm_cell_444_bias_read_readvariableop8savev2_lstm_445_lstm_cell_445_kernel_read_readvariableopBsavev2_lstm_445_lstm_cell_445_recurrent_kernel_read_readvariableop6savev2_lstm_445_lstm_cell_445_bias_read_readvariableop8savev2_lstm_446_lstm_cell_446_kernel_read_readvariableopBsavev2_lstm_446_lstm_cell_446_recurrent_kernel_read_readvariableop6savev2_lstm_446_lstm_cell_446_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_148_kernel_m_read_readvariableop0savev2_adam_dense_148_bias_m_read_readvariableop?savev2_adam_lstm_444_lstm_cell_444_kernel_m_read_readvariableopIsavev2_adam_lstm_444_lstm_cell_444_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_444_lstm_cell_444_bias_m_read_readvariableop?savev2_adam_lstm_445_lstm_cell_445_kernel_m_read_readvariableopIsavev2_adam_lstm_445_lstm_cell_445_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_445_lstm_cell_445_bias_m_read_readvariableop?savev2_adam_lstm_446_lstm_cell_446_kernel_m_read_readvariableopIsavev2_adam_lstm_446_lstm_cell_446_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_446_lstm_cell_446_bias_m_read_readvariableop2savev2_adam_dense_148_kernel_v_read_readvariableop0savev2_adam_dense_148_bias_v_read_readvariableop?savev2_adam_lstm_444_lstm_cell_444_kernel_v_read_readvariableopIsavev2_adam_lstm_444_lstm_cell_444_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_444_lstm_cell_444_bias_v_read_readvariableop?savev2_adam_lstm_445_lstm_cell_445_kernel_v_read_readvariableopIsavev2_adam_lstm_445_lstm_cell_445_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_445_lstm_cell_445_bias_v_read_readvariableop?savev2_adam_lstm_446_lstm_cell_446_kernel_v_read_readvariableopIsavev2_adam_lstm_446_lstm_cell_446_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_446_lstm_cell_446_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3409632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_561_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_561_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_561_matmul_readvariableop_resource:	?G
4while_lstm_cell_561_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_561_biasadd_readvariableop_resource:	???*while/lstm_cell_561/BiasAdd/ReadVariableOp?)while/lstm_cell_561/MatMul/ReadVariableOp?+while/lstm_cell_561/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_561/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_561/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_561/addAddV2$while/lstm_cell_561/MatMul:product:0&while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_561/BiasAddBiasAddwhile/lstm_cell_561/add:z:02while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_561/splitSplit,while/lstm_cell_561/split/split_dim:output:0$while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_561/SigmoidSigmoid"while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_1Sigmoid"while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mulMul!while/lstm_cell_561/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_561/ReluRelu"while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_1Mulwhile/lstm_cell_561/Sigmoid:y:0&while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/add_1AddV2while/lstm_cell_561/mul:z:0while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_561/Sigmoid_2Sigmoid"while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_561/Relu_1Reluwhile/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_561/mul_2Mul!while/lstm_cell_561/Sigmoid_2:y:0(while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_561/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_561/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_561/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_561/BiasAdd/ReadVariableOp*^while/lstm_cell_561/MatMul/ReadVariableOp,^while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_561_biasadd_readvariableop_resource5while_lstm_cell_561_biasadd_readvariableop_resource_0"n
4while_lstm_cell_561_matmul_1_readvariableop_resource6while_lstm_cell_561_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_561_matmul_readvariableop_resource4while_lstm_cell_561_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_561/BiasAdd/ReadVariableOp*while/lstm_cell_561/BiasAdd/ReadVariableOp2V
)while/lstm_cell_561/MatMul/ReadVariableOp)while/lstm_cell_561/MatMul/ReadVariableOp2Z
+while/lstm_cell_561/MatMul_1/ReadVariableOp+while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410332
inputs_0?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3410248*
condR
while_cond_3410247*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3406781

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
while_cond_3411149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3411149___redundant_placeholder05
1while_while_cond_3411149___redundant_placeholder15
1while_while_cond_3411149___redundant_placeholder25
1while_while_cond_3411149___redundant_placeholder3
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411417

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
*__inference_lstm_446_layer_call_fn_3410662

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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407933o
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3407417

inputs?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3407333*
condR
while_cond_3407332*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406285

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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409716
inputs_0?
,lstm_cell_561_matmul_readvariableop_resource:	?A
.lstm_cell_561_matmul_1_readvariableop_resource:	d?<
-lstm_cell_561_biasadd_readvariableop_resource:	?
identity??$lstm_cell_561/BiasAdd/ReadVariableOp?#lstm_cell_561/MatMul/ReadVariableOp?%lstm_cell_561/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_561/MatMul/ReadVariableOpReadVariableOp,lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_561/MatMulMatMulstrided_slice_2:output:0+lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_561/MatMul_1MatMulzeros:output:0-lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_561/addAddV2lstm_cell_561/MatMul:product:0 lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_561/BiasAddBiasAddlstm_cell_561/add:z:0,lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_561/splitSplit&lstm_cell_561/split/split_dim:output:0lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_561/SigmoidSigmoidlstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_1Sigmoidlstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_561/mulMullstm_cell_561/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_561/ReluRelulstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_1Mullstm_cell_561/Sigmoid:y:0 lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_561/add_1AddV2lstm_cell_561/mul:z:0lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_561/Sigmoid_2Sigmoidlstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_561/Relu_1Relulstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_561/mul_2Mullstm_cell_561/Sigmoid_2:y:0"lstm_cell_561/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_561_matmul_readvariableop_resource.lstm_cell_561_matmul_1_readvariableop_resource-lstm_cell_561_biasadd_readvariableop_resource*
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
while_body_3409632*
condR
while_cond_3409631*K
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
NoOpNoOp%^lstm_cell_561/BiasAdd/ReadVariableOp$^lstm_cell_561/MatMul/ReadVariableOp&^lstm_cell_561/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_561/BiasAdd/ReadVariableOp$lstm_cell_561/BiasAdd/ReadVariableOp2J
#lstm_cell_561/MatMul/ReadVariableOp#lstm_cell_561/MatMul/ReadVariableOp2N
%lstm_cell_561/MatMul_1/ReadVariableOp%lstm_cell_561/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3408098

inputs?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3408014*
condR
while_cond_3408013*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410475

inputs?
,lstm_cell_562_matmul_readvariableop_resource:	d?A
.lstm_cell_562_matmul_1_readvariableop_resource:	2?<
-lstm_cell_562_biasadd_readvariableop_resource:	?
identity??$lstm_cell_562/BiasAdd/ReadVariableOp?#lstm_cell_562/MatMul/ReadVariableOp?%lstm_cell_562/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_562/MatMul/ReadVariableOpReadVariableOp,lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_562/MatMulMatMulstrided_slice_2:output:0+lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_562/MatMul_1MatMulzeros:output:0-lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_562/addAddV2lstm_cell_562/MatMul:product:0 lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_562/BiasAddBiasAddlstm_cell_562/add:z:0,lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_562/splitSplit&lstm_cell_562/split/split_dim:output:0lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_562/SigmoidSigmoidlstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_1Sigmoidlstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_562/mulMullstm_cell_562/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_562/ReluRelulstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_1Mullstm_cell_562/Sigmoid:y:0 lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_562/add_1AddV2lstm_cell_562/mul:z:0lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_562/Sigmoid_2Sigmoidlstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_562/Relu_1Relulstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_562/mul_2Mullstm_cell_562/Sigmoid_2:y:0"lstm_cell_562/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_562_matmul_readvariableop_resource.lstm_cell_562_matmul_1_readvariableop_resource-lstm_cell_562_biasadd_readvariableop_resource*
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
while_body_3410391*
condR
while_cond_3410390*K
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
NoOpNoOp%^lstm_cell_562/BiasAdd/ReadVariableOp$^lstm_cell_562/MatMul/ReadVariableOp&^lstm_cell_562/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_562/BiasAdd/ReadVariableOp$lstm_cell_562/BiasAdd/ReadVariableOp2J
#lstm_cell_562/MatMul/ReadVariableOp#lstm_cell_562/MatMul/ReadVariableOp2N
%lstm_cell_562/MatMul_1/ReadVariableOp%lstm_cell_562/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_563_layer_call_fn_3411483

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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3407131o
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
while_cond_3407482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3407482___redundant_placeholder05
1while_while_cond_3407482___redundant_placeholder15
1while_while_cond_3407482___redundant_placeholder25
1while_while_cond_3407482___redundant_placeholder3
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
*__inference_lstm_446_layer_call_fn_3410629
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407068o
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
??
?
"__inference__wrapped_model_3406218
lstm_444_inputW
Dsequential_148_lstm_444_lstm_cell_561_matmul_readvariableop_resource:	?Y
Fsequential_148_lstm_444_lstm_cell_561_matmul_1_readvariableop_resource:	d?T
Esequential_148_lstm_444_lstm_cell_561_biasadd_readvariableop_resource:	?W
Dsequential_148_lstm_445_lstm_cell_562_matmul_readvariableop_resource:	d?Y
Fsequential_148_lstm_445_lstm_cell_562_matmul_1_readvariableop_resource:	2?T
Esequential_148_lstm_445_lstm_cell_562_biasadd_readvariableop_resource:	?V
Dsequential_148_lstm_446_lstm_cell_563_matmul_readvariableop_resource:2(X
Fsequential_148_lstm_446_lstm_cell_563_matmul_1_readvariableop_resource:
(S
Esequential_148_lstm_446_lstm_cell_563_biasadd_readvariableop_resource:(I
7sequential_148_dense_148_matmul_readvariableop_resource:
F
8sequential_148_dense_148_biasadd_readvariableop_resource:
identity??/sequential_148/dense_148/BiasAdd/ReadVariableOp?.sequential_148/dense_148/MatMul/ReadVariableOp?<sequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp?;sequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOp?=sequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp?sequential_148/lstm_444/while?<sequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp?;sequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOp?=sequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp?sequential_148/lstm_445/while?<sequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp?;sequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOp?=sequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp?sequential_148/lstm_446/while[
sequential_148/lstm_444/ShapeShapelstm_444_input*
T0*
_output_shapes
:u
+sequential_148/lstm_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_148/lstm_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_148/lstm_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_148/lstm_444/strided_sliceStridedSlice&sequential_148/lstm_444/Shape:output:04sequential_148/lstm_444/strided_slice/stack:output:06sequential_148/lstm_444/strided_slice/stack_1:output:06sequential_148/lstm_444/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_148/lstm_444/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_148/lstm_444/zeros/packedPack.sequential_148/lstm_444/strided_slice:output:0/sequential_148/lstm_444/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_148/lstm_444/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_444/zerosFill-sequential_148/lstm_444/zeros/packed:output:0,sequential_148/lstm_444/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_148/lstm_444/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_148/lstm_444/zeros_1/packedPack.sequential_148/lstm_444/strided_slice:output:01sequential_148/lstm_444/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_148/lstm_444/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_444/zeros_1Fill/sequential_148/lstm_444/zeros_1/packed:output:0.sequential_148/lstm_444/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_148/lstm_444/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_148/lstm_444/transpose	Transposelstm_444_input/sequential_148/lstm_444/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_148/lstm_444/Shape_1Shape%sequential_148/lstm_444/transpose:y:0*
T0*
_output_shapes
:w
-sequential_148/lstm_444/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_444/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_444/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_444/strided_slice_1StridedSlice(sequential_148/lstm_444/Shape_1:output:06sequential_148/lstm_444/strided_slice_1/stack:output:08sequential_148/lstm_444/strided_slice_1/stack_1:output:08sequential_148/lstm_444/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_148/lstm_444/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_148/lstm_444/TensorArrayV2TensorListReserve<sequential_148/lstm_444/TensorArrayV2/element_shape:output:00sequential_148/lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_148/lstm_444/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_148/lstm_444/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_148/lstm_444/transpose:y:0Vsequential_148/lstm_444/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_148/lstm_444/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_444/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_444/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_444/strided_slice_2StridedSlice%sequential_148/lstm_444/transpose:y:06sequential_148/lstm_444/strided_slice_2/stack:output:08sequential_148/lstm_444/strided_slice_2/stack_1:output:08sequential_148/lstm_444/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOpReadVariableOpDsequential_148_lstm_444_lstm_cell_561_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_148/lstm_444/lstm_cell_561/MatMulMatMul0sequential_148/lstm_444/strided_slice_2:output:0Csequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOpFsequential_148_lstm_444_lstm_cell_561_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_148/lstm_444/lstm_cell_561/MatMul_1MatMul&sequential_148/lstm_444/zeros:output:0Esequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_148/lstm_444/lstm_cell_561/addAddV26sequential_148/lstm_444/lstm_cell_561/MatMul:product:08sequential_148/lstm_444/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOpEsequential_148_lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_148/lstm_444/lstm_cell_561/BiasAddBiasAdd-sequential_148/lstm_444/lstm_cell_561/add:z:0Dsequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_148/lstm_444/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_148/lstm_444/lstm_cell_561/splitSplit>sequential_148/lstm_444/lstm_cell_561/split/split_dim:output:06sequential_148/lstm_444/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_148/lstm_444/lstm_cell_561/SigmoidSigmoid4sequential_148/lstm_444/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_148/lstm_444/lstm_cell_561/Sigmoid_1Sigmoid4sequential_148/lstm_444/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_148/lstm_444/lstm_cell_561/mulMul3sequential_148/lstm_444/lstm_cell_561/Sigmoid_1:y:0(sequential_148/lstm_444/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_148/lstm_444/lstm_cell_561/ReluRelu4sequential_148/lstm_444/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_148/lstm_444/lstm_cell_561/mul_1Mul1sequential_148/lstm_444/lstm_cell_561/Sigmoid:y:08sequential_148/lstm_444/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_148/lstm_444/lstm_cell_561/add_1AddV2-sequential_148/lstm_444/lstm_cell_561/mul:z:0/sequential_148/lstm_444/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_148/lstm_444/lstm_cell_561/Sigmoid_2Sigmoid4sequential_148/lstm_444/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_148/lstm_444/lstm_cell_561/Relu_1Relu/sequential_148/lstm_444/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_148/lstm_444/lstm_cell_561/mul_2Mul3sequential_148/lstm_444/lstm_cell_561/Sigmoid_2:y:0:sequential_148/lstm_444/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_148/lstm_444/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_148/lstm_444/TensorArrayV2_1TensorListReserve>sequential_148/lstm_444/TensorArrayV2_1/element_shape:output:00sequential_148/lstm_444/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_148/lstm_444/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_148/lstm_444/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_148/lstm_444/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_148/lstm_444/whileWhile3sequential_148/lstm_444/while/loop_counter:output:09sequential_148/lstm_444/while/maximum_iterations:output:0%sequential_148/lstm_444/time:output:00sequential_148/lstm_444/TensorArrayV2_1:handle:0&sequential_148/lstm_444/zeros:output:0(sequential_148/lstm_444/zeros_1:output:00sequential_148/lstm_444/strided_slice_1:output:0Osequential_148/lstm_444/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_148_lstm_444_lstm_cell_561_matmul_readvariableop_resourceFsequential_148_lstm_444_lstm_cell_561_matmul_1_readvariableop_resourceEsequential_148_lstm_444_lstm_cell_561_biasadd_readvariableop_resource*
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
*sequential_148_lstm_444_while_body_3405850*6
cond.R,
*sequential_148_lstm_444_while_cond_3405849*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_148/lstm_444/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_148/lstm_444/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_148/lstm_444/while:output:3Qsequential_148/lstm_444/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_148/lstm_444/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_148/lstm_444/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_444/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_444/strided_slice_3StridedSliceCsequential_148/lstm_444/TensorArrayV2Stack/TensorListStack:tensor:06sequential_148/lstm_444/strided_slice_3/stack:output:08sequential_148/lstm_444/strided_slice_3/stack_1:output:08sequential_148/lstm_444/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_148/lstm_444/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_148/lstm_444/transpose_1	TransposeCsequential_148/lstm_444/TensorArrayV2Stack/TensorListStack:tensor:01sequential_148/lstm_444/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_148/lstm_444/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_148/lstm_445/ShapeShape'sequential_148/lstm_444/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_148/lstm_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_148/lstm_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_148/lstm_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_148/lstm_445/strided_sliceStridedSlice&sequential_148/lstm_445/Shape:output:04sequential_148/lstm_445/strided_slice/stack:output:06sequential_148/lstm_445/strided_slice/stack_1:output:06sequential_148/lstm_445/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_148/lstm_445/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_148/lstm_445/zeros/packedPack.sequential_148/lstm_445/strided_slice:output:0/sequential_148/lstm_445/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_148/lstm_445/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_445/zerosFill-sequential_148/lstm_445/zeros/packed:output:0,sequential_148/lstm_445/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_148/lstm_445/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_148/lstm_445/zeros_1/packedPack.sequential_148/lstm_445/strided_slice:output:01sequential_148/lstm_445/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_148/lstm_445/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_445/zeros_1Fill/sequential_148/lstm_445/zeros_1/packed:output:0.sequential_148/lstm_445/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_148/lstm_445/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_148/lstm_445/transpose	Transpose'sequential_148/lstm_444/transpose_1:y:0/sequential_148/lstm_445/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_148/lstm_445/Shape_1Shape%sequential_148/lstm_445/transpose:y:0*
T0*
_output_shapes
:w
-sequential_148/lstm_445/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_445/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_445/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_445/strided_slice_1StridedSlice(sequential_148/lstm_445/Shape_1:output:06sequential_148/lstm_445/strided_slice_1/stack:output:08sequential_148/lstm_445/strided_slice_1/stack_1:output:08sequential_148/lstm_445/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_148/lstm_445/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_148/lstm_445/TensorArrayV2TensorListReserve<sequential_148/lstm_445/TensorArrayV2/element_shape:output:00sequential_148/lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_148/lstm_445/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_148/lstm_445/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_148/lstm_445/transpose:y:0Vsequential_148/lstm_445/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_148/lstm_445/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_445/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_445/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_445/strided_slice_2StridedSlice%sequential_148/lstm_445/transpose:y:06sequential_148/lstm_445/strided_slice_2/stack:output:08sequential_148/lstm_445/strided_slice_2/stack_1:output:08sequential_148/lstm_445/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOpReadVariableOpDsequential_148_lstm_445_lstm_cell_562_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_148/lstm_445/lstm_cell_562/MatMulMatMul0sequential_148/lstm_445/strided_slice_2:output:0Csequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOpFsequential_148_lstm_445_lstm_cell_562_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_148/lstm_445/lstm_cell_562/MatMul_1MatMul&sequential_148/lstm_445/zeros:output:0Esequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_148/lstm_445/lstm_cell_562/addAddV26sequential_148/lstm_445/lstm_cell_562/MatMul:product:08sequential_148/lstm_445/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOpEsequential_148_lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_148/lstm_445/lstm_cell_562/BiasAddBiasAdd-sequential_148/lstm_445/lstm_cell_562/add:z:0Dsequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_148/lstm_445/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_148/lstm_445/lstm_cell_562/splitSplit>sequential_148/lstm_445/lstm_cell_562/split/split_dim:output:06sequential_148/lstm_445/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_148/lstm_445/lstm_cell_562/SigmoidSigmoid4sequential_148/lstm_445/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_148/lstm_445/lstm_cell_562/Sigmoid_1Sigmoid4sequential_148/lstm_445/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_148/lstm_445/lstm_cell_562/mulMul3sequential_148/lstm_445/lstm_cell_562/Sigmoid_1:y:0(sequential_148/lstm_445/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_148/lstm_445/lstm_cell_562/ReluRelu4sequential_148/lstm_445/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_148/lstm_445/lstm_cell_562/mul_1Mul1sequential_148/lstm_445/lstm_cell_562/Sigmoid:y:08sequential_148/lstm_445/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_148/lstm_445/lstm_cell_562/add_1AddV2-sequential_148/lstm_445/lstm_cell_562/mul:z:0/sequential_148/lstm_445/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_148/lstm_445/lstm_cell_562/Sigmoid_2Sigmoid4sequential_148/lstm_445/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_148/lstm_445/lstm_cell_562/Relu_1Relu/sequential_148/lstm_445/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_148/lstm_445/lstm_cell_562/mul_2Mul3sequential_148/lstm_445/lstm_cell_562/Sigmoid_2:y:0:sequential_148/lstm_445/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_148/lstm_445/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_148/lstm_445/TensorArrayV2_1TensorListReserve>sequential_148/lstm_445/TensorArrayV2_1/element_shape:output:00sequential_148/lstm_445/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_148/lstm_445/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_148/lstm_445/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_148/lstm_445/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_148/lstm_445/whileWhile3sequential_148/lstm_445/while/loop_counter:output:09sequential_148/lstm_445/while/maximum_iterations:output:0%sequential_148/lstm_445/time:output:00sequential_148/lstm_445/TensorArrayV2_1:handle:0&sequential_148/lstm_445/zeros:output:0(sequential_148/lstm_445/zeros_1:output:00sequential_148/lstm_445/strided_slice_1:output:0Osequential_148/lstm_445/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_148_lstm_445_lstm_cell_562_matmul_readvariableop_resourceFsequential_148_lstm_445_lstm_cell_562_matmul_1_readvariableop_resourceEsequential_148_lstm_445_lstm_cell_562_biasadd_readvariableop_resource*
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
*sequential_148_lstm_445_while_body_3405989*6
cond.R,
*sequential_148_lstm_445_while_cond_3405988*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_148/lstm_445/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_148/lstm_445/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_148/lstm_445/while:output:3Qsequential_148/lstm_445/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_148/lstm_445/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_148/lstm_445/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_445/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_445/strided_slice_3StridedSliceCsequential_148/lstm_445/TensorArrayV2Stack/TensorListStack:tensor:06sequential_148/lstm_445/strided_slice_3/stack:output:08sequential_148/lstm_445/strided_slice_3/stack_1:output:08sequential_148/lstm_445/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_148/lstm_445/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_148/lstm_445/transpose_1	TransposeCsequential_148/lstm_445/TensorArrayV2Stack/TensorListStack:tensor:01sequential_148/lstm_445/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_148/lstm_445/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_148/lstm_446/ShapeShape'sequential_148/lstm_445/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_148/lstm_446/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_148/lstm_446/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_148/lstm_446/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_148/lstm_446/strided_sliceStridedSlice&sequential_148/lstm_446/Shape:output:04sequential_148/lstm_446/strided_slice/stack:output:06sequential_148/lstm_446/strided_slice/stack_1:output:06sequential_148/lstm_446/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_148/lstm_446/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_148/lstm_446/zeros/packedPack.sequential_148/lstm_446/strided_slice:output:0/sequential_148/lstm_446/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_148/lstm_446/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_446/zerosFill-sequential_148/lstm_446/zeros/packed:output:0,sequential_148/lstm_446/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_148/lstm_446/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_148/lstm_446/zeros_1/packedPack.sequential_148/lstm_446/strided_slice:output:01sequential_148/lstm_446/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_148/lstm_446/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_148/lstm_446/zeros_1Fill/sequential_148/lstm_446/zeros_1/packed:output:0.sequential_148/lstm_446/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_148/lstm_446/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_148/lstm_446/transpose	Transpose'sequential_148/lstm_445/transpose_1:y:0/sequential_148/lstm_446/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_148/lstm_446/Shape_1Shape%sequential_148/lstm_446/transpose:y:0*
T0*
_output_shapes
:w
-sequential_148/lstm_446/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_446/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_446/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_446/strided_slice_1StridedSlice(sequential_148/lstm_446/Shape_1:output:06sequential_148/lstm_446/strided_slice_1/stack:output:08sequential_148/lstm_446/strided_slice_1/stack_1:output:08sequential_148/lstm_446/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_148/lstm_446/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_148/lstm_446/TensorArrayV2TensorListReserve<sequential_148/lstm_446/TensorArrayV2/element_shape:output:00sequential_148/lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_148/lstm_446/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_148/lstm_446/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_148/lstm_446/transpose:y:0Vsequential_148/lstm_446/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_148/lstm_446/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_446/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_148/lstm_446/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_446/strided_slice_2StridedSlice%sequential_148/lstm_446/transpose:y:06sequential_148/lstm_446/strided_slice_2/stack:output:08sequential_148/lstm_446/strided_slice_2/stack_1:output:08sequential_148/lstm_446/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOpReadVariableOpDsequential_148_lstm_446_lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_148/lstm_446/lstm_cell_563/MatMulMatMul0sequential_148/lstm_446/strided_slice_2:output:0Csequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOpFsequential_148_lstm_446_lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_148/lstm_446/lstm_cell_563/MatMul_1MatMul&sequential_148/lstm_446/zeros:output:0Esequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_148/lstm_446/lstm_cell_563/addAddV26sequential_148/lstm_446/lstm_cell_563/MatMul:product:08sequential_148/lstm_446/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOpEsequential_148_lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_148/lstm_446/lstm_cell_563/BiasAddBiasAdd-sequential_148/lstm_446/lstm_cell_563/add:z:0Dsequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_148/lstm_446/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_148/lstm_446/lstm_cell_563/splitSplit>sequential_148/lstm_446/lstm_cell_563/split/split_dim:output:06sequential_148/lstm_446/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_148/lstm_446/lstm_cell_563/SigmoidSigmoid4sequential_148/lstm_446/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_148/lstm_446/lstm_cell_563/Sigmoid_1Sigmoid4sequential_148/lstm_446/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_148/lstm_446/lstm_cell_563/mulMul3sequential_148/lstm_446/lstm_cell_563/Sigmoid_1:y:0(sequential_148/lstm_446/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_148/lstm_446/lstm_cell_563/ReluRelu4sequential_148/lstm_446/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_148/lstm_446/lstm_cell_563/mul_1Mul1sequential_148/lstm_446/lstm_cell_563/Sigmoid:y:08sequential_148/lstm_446/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_148/lstm_446/lstm_cell_563/add_1AddV2-sequential_148/lstm_446/lstm_cell_563/mul:z:0/sequential_148/lstm_446/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_148/lstm_446/lstm_cell_563/Sigmoid_2Sigmoid4sequential_148/lstm_446/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_148/lstm_446/lstm_cell_563/Relu_1Relu/sequential_148/lstm_446/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_148/lstm_446/lstm_cell_563/mul_2Mul3sequential_148/lstm_446/lstm_cell_563/Sigmoid_2:y:0:sequential_148/lstm_446/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_148/lstm_446/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_148/lstm_446/TensorArrayV2_1TensorListReserve>sequential_148/lstm_446/TensorArrayV2_1/element_shape:output:00sequential_148/lstm_446/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_148/lstm_446/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_148/lstm_446/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_148/lstm_446/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_148/lstm_446/whileWhile3sequential_148/lstm_446/while/loop_counter:output:09sequential_148/lstm_446/while/maximum_iterations:output:0%sequential_148/lstm_446/time:output:00sequential_148/lstm_446/TensorArrayV2_1:handle:0&sequential_148/lstm_446/zeros:output:0(sequential_148/lstm_446/zeros_1:output:00sequential_148/lstm_446/strided_slice_1:output:0Osequential_148/lstm_446/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_148_lstm_446_lstm_cell_563_matmul_readvariableop_resourceFsequential_148_lstm_446_lstm_cell_563_matmul_1_readvariableop_resourceEsequential_148_lstm_446_lstm_cell_563_biasadd_readvariableop_resource*
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
*sequential_148_lstm_446_while_body_3406128*6
cond.R,
*sequential_148_lstm_446_while_cond_3406127*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_148/lstm_446/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_148/lstm_446/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_148/lstm_446/while:output:3Qsequential_148/lstm_446/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_148/lstm_446/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_148/lstm_446/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_148/lstm_446/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_148/lstm_446/strided_slice_3StridedSliceCsequential_148/lstm_446/TensorArrayV2Stack/TensorListStack:tensor:06sequential_148/lstm_446/strided_slice_3/stack:output:08sequential_148/lstm_446/strided_slice_3/stack_1:output:08sequential_148/lstm_446/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_148/lstm_446/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_148/lstm_446/transpose_1	TransposeCsequential_148/lstm_446/TensorArrayV2Stack/TensorListStack:tensor:01sequential_148/lstm_446/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_148/lstm_446/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_148/dense_148/MatMul/ReadVariableOpReadVariableOp7sequential_148_dense_148_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_148/dense_148/MatMulMatMul0sequential_148/lstm_446/strided_slice_3:output:06sequential_148/dense_148/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_148/dense_148/BiasAdd/ReadVariableOpReadVariableOp8sequential_148_dense_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_148/dense_148/BiasAddBiasAdd)sequential_148/dense_148/MatMul:product:07sequential_148/dense_148/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_148/dense_148/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_148/dense_148/BiasAdd/ReadVariableOp/^sequential_148/dense_148/MatMul/ReadVariableOp=^sequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp<^sequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOp>^sequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp^sequential_148/lstm_444/while=^sequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp<^sequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOp>^sequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp^sequential_148/lstm_445/while=^sequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp<^sequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOp>^sequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp^sequential_148/lstm_446/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_148/dense_148/BiasAdd/ReadVariableOp/sequential_148/dense_148/BiasAdd/ReadVariableOp2`
.sequential_148/dense_148/MatMul/ReadVariableOp.sequential_148/dense_148/MatMul/ReadVariableOp2|
<sequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp<sequential_148/lstm_444/lstm_cell_561/BiasAdd/ReadVariableOp2z
;sequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOp;sequential_148/lstm_444/lstm_cell_561/MatMul/ReadVariableOp2~
=sequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp=sequential_148/lstm_444/lstm_cell_561/MatMul_1/ReadVariableOp2>
sequential_148/lstm_444/whilesequential_148/lstm_444/while2|
<sequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp<sequential_148/lstm_445/lstm_cell_562/BiasAdd/ReadVariableOp2z
;sequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOp;sequential_148/lstm_445/lstm_cell_562/MatMul/ReadVariableOp2~
=sequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp=sequential_148/lstm_445/lstm_cell_562/MatMul_1/ReadVariableOp2>
sequential_148/lstm_445/whilesequential_148/lstm_445/while2|
<sequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp<sequential_148/lstm_446/lstm_cell_563/BiasAdd/ReadVariableOp2z
;sequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOp;sequential_148/lstm_446/lstm_cell_563/MatMul/ReadVariableOp2~
=sequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp=sequential_148/lstm_446/lstm_cell_563/MatMul_1/ReadVariableOp2>
sequential_148/lstm_446/whilesequential_148/lstm_446/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_444_input
?#
?
while_body_3406490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_561_3406514_0:	?0
while_lstm_cell_561_3406516_0:	d?,
while_lstm_cell_561_3406518_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_561_3406514:	?.
while_lstm_cell_561_3406516:	d?*
while_lstm_cell_561_3406518:	???+while/lstm_cell_561/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_561/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_561_3406514_0while_lstm_cell_561_3406516_0while_lstm_cell_561_3406518_0*
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406431?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_561/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_561/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_561/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_561/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_561_3406514while_lstm_cell_561_3406514_0"<
while_lstm_cell_561_3406516while_lstm_cell_561_3406516_0"<
while_lstm_cell_561_3406518while_lstm_cell_561_3406518_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_561/StatefulPartitionedCall+while/lstm_cell_561/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_446_layer_call_fn_3410640
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407259o
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
while_cond_3409631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3409631___redundant_placeholder05
1while_while_cond_3409631___redundant_placeholder15
1while_while_cond_3409631___redundant_placeholder25
1while_while_cond_3409631___redundant_placeholder3
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
while_body_3411007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_563_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_563_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_563_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_563_matmul_readvariableop_resource:2(F
4while_lstm_cell_563_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_563_biasadd_readvariableop_resource:(??*while/lstm_cell_563/BiasAdd/ReadVariableOp?)while/lstm_cell_563/MatMul/ReadVariableOp?+while/lstm_cell_563/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_563/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_563_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_563/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_563_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_563/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_563/addAddV2$while/lstm_cell_563/MatMul:product:0&while/lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_563_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_563/BiasAddBiasAddwhile/lstm_cell_563/add:z:02while/lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_563/splitSplit,while/lstm_cell_563/split/split_dim:output:0$while/lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_563/SigmoidSigmoid"while/lstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_1Sigmoid"while/lstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mulMul!while/lstm_cell_563/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_563/ReluRelu"while/lstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_1Mulwhile/lstm_cell_563/Sigmoid:y:0&while/lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/add_1AddV2while/lstm_cell_563/mul:z:0while/lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_563/Sigmoid_2Sigmoid"while/lstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_563/Relu_1Reluwhile/lstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_563/mul_2Mul!while/lstm_cell_563/Sigmoid_2:y:0(while/lstm_cell_563/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_563/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_563/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_563/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_563/BiasAdd/ReadVariableOp*^while/lstm_cell_563/MatMul/ReadVariableOp,^while/lstm_cell_563/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_563_biasadd_readvariableop_resource5while_lstm_cell_563_biasadd_readvariableop_resource_0"n
4while_lstm_cell_563_matmul_1_readvariableop_resource6while_lstm_cell_563_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_563_matmul_readvariableop_resource4while_lstm_cell_563_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_563/BiasAdd/ReadVariableOp*while/lstm_cell_563/BiasAdd/ReadVariableOp2V
)while/lstm_cell_563/MatMul/ReadVariableOp)while/lstm_cell_563/MatMul/ReadVariableOp2Z
+while/lstm_cell_563/MatMul_1/ReadVariableOp+while/lstm_cell_563/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_561_layer_call_fn_3411270

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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406285o
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
?
E__inference_lstm_444_layer_call_and_return_conditional_losses_3406559

inputs(
lstm_cell_561_3406477:	?(
lstm_cell_561_3406479:	d?$
lstm_cell_561_3406481:	?
identity??%lstm_cell_561/StatefulPartitionedCall?while;
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
%lstm_cell_561/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_561_3406477lstm_cell_561_3406479lstm_cell_561_3406481*
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406431n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_561_3406477lstm_cell_561_3406479lstm_cell_561_3406481*
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
while_body_3406490*
condR
while_cond_3406489*K
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
NoOpNoOp&^lstm_cell_561/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_561/StatefulPartitionedCall%lstm_cell_561/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407068

inputs'
lstm_cell_563_3406986:2('
lstm_cell_563_3406988:
(#
lstm_cell_563_3406990:(
identity??%lstm_cell_563/StatefulPartitionedCall?while;
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
%lstm_cell_563/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_563_3406986lstm_cell_563_3406988lstm_cell_563_3406990*
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3406985n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_563_3406986lstm_cell_563_3406988lstm_cell_563_3406990*
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
while_body_3406999*
condR
while_cond_3406998*K
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
NoOpNoOp&^lstm_cell_563/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_563/StatefulPartitionedCall%lstm_cell_563/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411091

inputs>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3411007*
condR
while_cond_3411006*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_446_layer_call_and_return_conditional_losses_3407717

inputs>
,lstm_cell_563_matmul_readvariableop_resource:2(@
.lstm_cell_563_matmul_1_readvariableop_resource:
(;
-lstm_cell_563_biasadd_readvariableop_resource:(
identity??$lstm_cell_563/BiasAdd/ReadVariableOp?#lstm_cell_563/MatMul/ReadVariableOp?%lstm_cell_563/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_563/MatMul/ReadVariableOpReadVariableOp,lstm_cell_563_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_563/MatMulMatMulstrided_slice_2:output:0+lstm_cell_563/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_563/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_563_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_563/MatMul_1MatMulzeros:output:0-lstm_cell_563/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_563/addAddV2lstm_cell_563/MatMul:product:0 lstm_cell_563/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_563/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_563_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_563/BiasAddBiasAddlstm_cell_563/add:z:0,lstm_cell_563/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_563/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_563/splitSplit&lstm_cell_563/split/split_dim:output:0lstm_cell_563/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_563/SigmoidSigmoidlstm_cell_563/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_1Sigmoidlstm_cell_563/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_563/mulMullstm_cell_563/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_563/ReluRelulstm_cell_563/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_1Mullstm_cell_563/Sigmoid:y:0 lstm_cell_563/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_563/add_1AddV2lstm_cell_563/mul:z:0lstm_cell_563/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_563/Sigmoid_2Sigmoidlstm_cell_563/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_563/Relu_1Relulstm_cell_563/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_563/mul_2Mullstm_cell_563/Sigmoid_2:y:0"lstm_cell_563/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_563_matmul_readvariableop_resource.lstm_cell_563_matmul_1_readvariableop_resource-lstm_cell_563_biasadd_readvariableop_resource*
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
while_body_3407633*
condR
while_cond_3407632*K
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
NoOpNoOp%^lstm_cell_563/BiasAdd/ReadVariableOp$^lstm_cell_563/MatMul/ReadVariableOp&^lstm_cell_563/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_563/BiasAdd/ReadVariableOp$lstm_cell_563/BiasAdd/ReadVariableOp2J
#lstm_cell_563/MatMul/ReadVariableOp#lstm_cell_563/MatMul/ReadVariableOp2N
%lstm_cell_563/MatMul_1/ReadVariableOp%lstm_cell_563/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_444_layer_call_fn_3409430

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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3408263s
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
while_body_3410534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3407483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_562_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_562_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_562_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_562_matmul_readvariableop_resource:	d?G
4while_lstm_cell_562_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_562_biasadd_readvariableop_resource:	???*while/lstm_cell_562/BiasAdd/ReadVariableOp?)while/lstm_cell_562/MatMul/ReadVariableOp?+while/lstm_cell_562/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_562/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_562_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_562/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_562/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_562/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_562_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_562/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_562/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_562/addAddV2$while/lstm_cell_562/MatMul:product:0&while/lstm_cell_562/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_562/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_562_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_562/BiasAddBiasAddwhile/lstm_cell_562/add:z:02while/lstm_cell_562/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_562/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_562/splitSplit,while/lstm_cell_562/split/split_dim:output:0$while/lstm_cell_562/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_562/SigmoidSigmoid"while/lstm_cell_562/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_1Sigmoid"while/lstm_cell_562/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mulMul!while/lstm_cell_562/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_562/ReluRelu"while/lstm_cell_562/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_1Mulwhile/lstm_cell_562/Sigmoid:y:0&while/lstm_cell_562/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/add_1AddV2while/lstm_cell_562/mul:z:0while/lstm_cell_562/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_562/Sigmoid_2Sigmoid"while/lstm_cell_562/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_562/Relu_1Reluwhile/lstm_cell_562/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_562/mul_2Mul!while/lstm_cell_562/Sigmoid_2:y:0(while/lstm_cell_562/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_562/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_562/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_562/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_562/BiasAdd/ReadVariableOp*^while/lstm_cell_562/MatMul/ReadVariableOp,^while/lstm_cell_562/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_562_biasadd_readvariableop_resource5while_lstm_cell_562_biasadd_readvariableop_resource_0"n
4while_lstm_cell_562_matmul_1_readvariableop_resource6while_lstm_cell_562_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_562_matmul_readvariableop_resource4while_lstm_cell_562_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_562/BiasAdd/ReadVariableOp*while/lstm_cell_562/BiasAdd/ReadVariableOp2V
)while/lstm_cell_562/MatMul/ReadVariableOp)while/lstm_cell_562/MatMul/ReadVariableOp2Z
+while/lstm_cell_562/MatMul_1/ReadVariableOp+while/lstm_cell_562/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_148_lstm_444_while_body_3405850L
Hsequential_148_lstm_444_while_sequential_148_lstm_444_while_loop_counterR
Nsequential_148_lstm_444_while_sequential_148_lstm_444_while_maximum_iterations-
)sequential_148_lstm_444_while_placeholder/
+sequential_148_lstm_444_while_placeholder_1/
+sequential_148_lstm_444_while_placeholder_2/
+sequential_148_lstm_444_while_placeholder_3K
Gsequential_148_lstm_444_while_sequential_148_lstm_444_strided_slice_1_0?
?sequential_148_lstm_444_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_444_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_148_lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0:	?a
Nsequential_148_lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0:	d?\
Msequential_148_lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0:	?*
&sequential_148_lstm_444_while_identity,
(sequential_148_lstm_444_while_identity_1,
(sequential_148_lstm_444_while_identity_2,
(sequential_148_lstm_444_while_identity_3,
(sequential_148_lstm_444_while_identity_4,
(sequential_148_lstm_444_while_identity_5I
Esequential_148_lstm_444_while_sequential_148_lstm_444_strided_slice_1?
?sequential_148_lstm_444_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_444_tensorarrayunstack_tensorlistfromtensor]
Jsequential_148_lstm_444_while_lstm_cell_561_matmul_readvariableop_resource:	?_
Lsequential_148_lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource:	d?Z
Ksequential_148_lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource:	???Bsequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp?Asequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp?Csequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp?
Osequential_148/lstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_148/lstm_444/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_148_lstm_444_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_444_tensorarrayunstack_tensorlistfromtensor_0)sequential_148_lstm_444_while_placeholderXsequential_148/lstm_444/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOpReadVariableOpLsequential_148_lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_148/lstm_444/while/lstm_cell_561/MatMulMatMulHsequential_148/lstm_444/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOpReadVariableOpNsequential_148_lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_148/lstm_444/while/lstm_cell_561/MatMul_1MatMul+sequential_148_lstm_444_while_placeholder_2Ksequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_148/lstm_444/while/lstm_cell_561/addAddV2<sequential_148/lstm_444/while/lstm_cell_561/MatMul:product:0>sequential_148/lstm_444/while/lstm_cell_561/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOpReadVariableOpMsequential_148_lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_148/lstm_444/while/lstm_cell_561/BiasAddBiasAdd3sequential_148/lstm_444/while/lstm_cell_561/add:z:0Jsequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_148/lstm_444/while/lstm_cell_561/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_148/lstm_444/while/lstm_cell_561/splitSplitDsequential_148/lstm_444/while/lstm_cell_561/split/split_dim:output:0<sequential_148/lstm_444/while/lstm_cell_561/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_148/lstm_444/while/lstm_cell_561/SigmoidSigmoid:sequential_148/lstm_444/while/lstm_cell_561/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_148/lstm_444/while/lstm_cell_561/Sigmoid_1Sigmoid:sequential_148/lstm_444/while/lstm_cell_561/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_148/lstm_444/while/lstm_cell_561/mulMul9sequential_148/lstm_444/while/lstm_cell_561/Sigmoid_1:y:0+sequential_148_lstm_444_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_148/lstm_444/while/lstm_cell_561/ReluRelu:sequential_148/lstm_444/while/lstm_cell_561/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_148/lstm_444/while/lstm_cell_561/mul_1Mul7sequential_148/lstm_444/while/lstm_cell_561/Sigmoid:y:0>sequential_148/lstm_444/while/lstm_cell_561/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_148/lstm_444/while/lstm_cell_561/add_1AddV23sequential_148/lstm_444/while/lstm_cell_561/mul:z:05sequential_148/lstm_444/while/lstm_cell_561/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_148/lstm_444/while/lstm_cell_561/Sigmoid_2Sigmoid:sequential_148/lstm_444/while/lstm_cell_561/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_148/lstm_444/while/lstm_cell_561/Relu_1Relu5sequential_148/lstm_444/while/lstm_cell_561/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_148/lstm_444/while/lstm_cell_561/mul_2Mul9sequential_148/lstm_444/while/lstm_cell_561/Sigmoid_2:y:0@sequential_148/lstm_444/while/lstm_cell_561/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_148/lstm_444/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_148_lstm_444_while_placeholder_1)sequential_148_lstm_444_while_placeholder5sequential_148/lstm_444/while/lstm_cell_561/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_148/lstm_444/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_148/lstm_444/while/addAddV2)sequential_148_lstm_444_while_placeholder,sequential_148/lstm_444/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_148/lstm_444/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_148/lstm_444/while/add_1AddV2Hsequential_148_lstm_444_while_sequential_148_lstm_444_while_loop_counter.sequential_148/lstm_444/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_148/lstm_444/while/IdentityIdentity'sequential_148/lstm_444/while/add_1:z:0#^sequential_148/lstm_444/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_444/while/Identity_1IdentityNsequential_148_lstm_444_while_sequential_148_lstm_444_while_maximum_iterations#^sequential_148/lstm_444/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_444/while/Identity_2Identity%sequential_148/lstm_444/while/add:z:0#^sequential_148/lstm_444/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_444/while/Identity_3IdentityRsequential_148/lstm_444/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_148/lstm_444/while/NoOp*
T0*
_output_shapes
: ?
(sequential_148/lstm_444/while/Identity_4Identity5sequential_148/lstm_444/while/lstm_cell_561/mul_2:z:0#^sequential_148/lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_148/lstm_444/while/Identity_5Identity5sequential_148/lstm_444/while/lstm_cell_561/add_1:z:0#^sequential_148/lstm_444/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_148/lstm_444/while/NoOpNoOpC^sequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOpB^sequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOpD^sequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_148_lstm_444_while_identity/sequential_148/lstm_444/while/Identity:output:0"]
(sequential_148_lstm_444_while_identity_11sequential_148/lstm_444/while/Identity_1:output:0"]
(sequential_148_lstm_444_while_identity_21sequential_148/lstm_444/while/Identity_2:output:0"]
(sequential_148_lstm_444_while_identity_31sequential_148/lstm_444/while/Identity_3:output:0"]
(sequential_148_lstm_444_while_identity_41sequential_148/lstm_444/while/Identity_4:output:0"]
(sequential_148_lstm_444_while_identity_51sequential_148/lstm_444/while/Identity_5:output:0"?
Ksequential_148_lstm_444_while_lstm_cell_561_biasadd_readvariableop_resourceMsequential_148_lstm_444_while_lstm_cell_561_biasadd_readvariableop_resource_0"?
Lsequential_148_lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resourceNsequential_148_lstm_444_while_lstm_cell_561_matmul_1_readvariableop_resource_0"?
Jsequential_148_lstm_444_while_lstm_cell_561_matmul_readvariableop_resourceLsequential_148_lstm_444_while_lstm_cell_561_matmul_readvariableop_resource_0"?
Esequential_148_lstm_444_while_sequential_148_lstm_444_strided_slice_1Gsequential_148_lstm_444_while_sequential_148_lstm_444_strided_slice_1_0"?
?sequential_148_lstm_444_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_444_tensorarrayunstack_tensorlistfromtensor?sequential_148_lstm_444_while_tensorarrayv2read_tensorlistgetitem_sequential_148_lstm_444_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOpBsequential_148/lstm_444/while/lstm_cell_561/BiasAdd/ReadVariableOp2?
Asequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOpAsequential_148/lstm_444/while/lstm_cell_561/MatMul/ReadVariableOp2?
Csequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOpCsequential_148/lstm_444/while/lstm_cell_561/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_563_layer_call_fn_3411466

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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3406985o
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
while_cond_3407848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3407848___redundant_placeholder05
1while_while_cond_3407848___redundant_placeholder15
1while_while_cond_3407848___redundant_placeholder25
1while_while_cond_3407848___redundant_placeholder3
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
while_body_3406299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_561_3406323_0:	?0
while_lstm_cell_561_3406325_0:	d?,
while_lstm_cell_561_3406327_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_561_3406323:	?.
while_lstm_cell_561_3406325:	d?*
while_lstm_cell_561_3406327:	???+while/lstm_cell_561/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_561/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_561_3406323_0while_lstm_cell_561_3406325_0while_lstm_cell_561_3406327_0*
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3406285?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_561/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_561/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_561/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_561/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_561_3406323while_lstm_cell_561_3406323_0"<
while_lstm_cell_561_3406325while_lstm_cell_561_3406325_0"<
while_lstm_cell_561_3406327while_lstm_cell_561_3406327_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_561/StatefulPartitionedCall+while/lstm_cell_561/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3406489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3406489___redundant_placeholder05
1while_while_cond_3406489___redundant_placeholder15
1while_while_cond_3406489___redundant_placeholder25
1while_while_cond_3406489___redundant_placeholder3
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3407735

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
0__inference_sequential_148_layer_call_fn_3408532

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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408331o
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
while_cond_3407332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3407332___redundant_placeholder05
1while_while_cond_3407332___redundant_placeholder15
1while_while_cond_3407332___redundant_placeholder25
1while_while_cond_3407332___redundant_placeholder3
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_444_input;
 serving_default_lstm_444_input:0?????????=
	dense_1480
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
2dense_148/kernel
:2dense_148/bias
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
0:.	?2lstm_444/lstm_cell_444/kernel
::8	d?2'lstm_444/lstm_cell_444/recurrent_kernel
*:(?2lstm_444/lstm_cell_444/bias
0:.	d?2lstm_445/lstm_cell_445/kernel
::8	2?2'lstm_445/lstm_cell_445/recurrent_kernel
*:(?2lstm_445/lstm_cell_445/bias
/:-2(2lstm_446/lstm_cell_446/kernel
9:7
(2'lstm_446/lstm_cell_446/recurrent_kernel
):'(2lstm_446/lstm_cell_446/bias
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
2Adam/dense_148/kernel/m
!:2Adam/dense_148/bias/m
5:3	?2$Adam/lstm_444/lstm_cell_444/kernel/m
?:=	d?2.Adam/lstm_444/lstm_cell_444/recurrent_kernel/m
/:-?2"Adam/lstm_444/lstm_cell_444/bias/m
5:3	d?2$Adam/lstm_445/lstm_cell_445/kernel/m
?:=	2?2.Adam/lstm_445/lstm_cell_445/recurrent_kernel/m
/:-?2"Adam/lstm_445/lstm_cell_445/bias/m
4:22(2$Adam/lstm_446/lstm_cell_446/kernel/m
>:<
(2.Adam/lstm_446/lstm_cell_446/recurrent_kernel/m
.:,(2"Adam/lstm_446/lstm_cell_446/bias/m
':%
2Adam/dense_148/kernel/v
!:2Adam/dense_148/bias/v
5:3	?2$Adam/lstm_444/lstm_cell_444/kernel/v
?:=	d?2.Adam/lstm_444/lstm_cell_444/recurrent_kernel/v
/:-?2"Adam/lstm_444/lstm_cell_444/bias/v
5:3	d?2$Adam/lstm_445/lstm_cell_445/kernel/v
?:=	2?2.Adam/lstm_445/lstm_cell_445/recurrent_kernel/v
/:-?2"Adam/lstm_445/lstm_cell_445/bias/v
4:22(2$Adam/lstm_446/lstm_cell_446/kernel/v
>:<
(2.Adam/lstm_446/lstm_cell_446/recurrent_kernel/v
.:,(2"Adam/lstm_446/lstm_cell_446/bias/v
?2?
0__inference_sequential_148_layer_call_fn_3407767
0__inference_sequential_148_layer_call_fn_3408505
0__inference_sequential_148_layer_call_fn_3408532
0__inference_sequential_148_layer_call_fn_3408383?
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408959
K__inference_sequential_148_layer_call_and_return_conditional_losses_3409386
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408413
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408443?
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
"__inference__wrapped_model_3406218lstm_444_input"?
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
*__inference_lstm_444_layer_call_fn_3409397
*__inference_lstm_444_layer_call_fn_3409408
*__inference_lstm_444_layer_call_fn_3409419
*__inference_lstm_444_layer_call_fn_3409430?
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409573
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409716
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409859
E__inference_lstm_444_layer_call_and_return_conditional_losses_3410002?
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
*__inference_lstm_445_layer_call_fn_3410013
*__inference_lstm_445_layer_call_fn_3410024
*__inference_lstm_445_layer_call_fn_3410035
*__inference_lstm_445_layer_call_fn_3410046?
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410189
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410332
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410475
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410618?
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
*__inference_lstm_446_layer_call_fn_3410629
*__inference_lstm_446_layer_call_fn_3410640
*__inference_lstm_446_layer_call_fn_3410651
*__inference_lstm_446_layer_call_fn_3410662?
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410805
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410948
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411091
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411234?
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
+__inference_dense_148_layer_call_fn_3411243?
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
F__inference_dense_148_layer_call_and_return_conditional_losses_3411253?
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
%__inference_signature_wrapper_3408478lstm_444_input"?
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
/__inference_lstm_cell_561_layer_call_fn_3411270
/__inference_lstm_cell_561_layer_call_fn_3411287?
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411319
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411351?
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
/__inference_lstm_cell_562_layer_call_fn_3411368
/__inference_lstm_cell_562_layer_call_fn_3411385?
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411417
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411449?
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
/__inference_lstm_cell_563_layer_call_fn_3411466
/__inference_lstm_cell_563_layer_call_fn_3411483?
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411515
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411547?
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
"__inference__wrapped_model_3406218?-./012345!";?8
1?.
,?)
lstm_444_input?????????
? "5?2
0
	dense_148#? 
	dense_148??????????
F__inference_dense_148_layer_call_and_return_conditional_losses_3411253\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_148_layer_call_fn_3411243O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409573?-./O?L
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409716?-./O?L
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3409859q-./??<
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
E__inference_lstm_444_layer_call_and_return_conditional_losses_3410002q-./??<
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
*__inference_lstm_444_layer_call_fn_3409397}-./O?L
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
*__inference_lstm_444_layer_call_fn_3409408}-./O?L
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
*__inference_lstm_444_layer_call_fn_3409419d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_444_layer_call_fn_3409430d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410189?012O?L
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410332?012O?L
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410475q012??<
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
E__inference_lstm_445_layer_call_and_return_conditional_losses_3410618q012??<
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
*__inference_lstm_445_layer_call_fn_3410013}012O?L
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
*__inference_lstm_445_layer_call_fn_3410024}012O?L
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
*__inference_lstm_445_layer_call_fn_3410035d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_445_layer_call_fn_3410046d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410805}345O?L
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3410948}345O?L
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411091m345??<
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
E__inference_lstm_446_layer_call_and_return_conditional_losses_3411234m345??<
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
*__inference_lstm_446_layer_call_fn_3410629p345O?L
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
*__inference_lstm_446_layer_call_fn_3410640p345O?L
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
*__inference_lstm_446_layer_call_fn_3410651`345??<
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
*__inference_lstm_446_layer_call_fn_3410662`345??<
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411319?-./??}
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
J__inference_lstm_cell_561_layer_call_and_return_conditional_losses_3411351?-./??}
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
/__inference_lstm_cell_561_layer_call_fn_3411270?-./??}
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
/__inference_lstm_cell_561_layer_call_fn_3411287?-./??}
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411417?012??}
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
J__inference_lstm_cell_562_layer_call_and_return_conditional_losses_3411449?012??}
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
/__inference_lstm_cell_562_layer_call_fn_3411368?012??}
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
/__inference_lstm_cell_562_layer_call_fn_3411385?012??}
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411515?345??}
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
J__inference_lstm_cell_563_layer_call_and_return_conditional_losses_3411547?345??}
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
/__inference_lstm_cell_563_layer_call_fn_3411466?345??}
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
/__inference_lstm_cell_563_layer_call_fn_3411483?345??}
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408413y-./012345!"C?@
9?6
,?)
lstm_444_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408443y-./012345!"C?@
9?6
,?)
lstm_444_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_148_layer_call_and_return_conditional_losses_3408959q-./012345!";?8
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
K__inference_sequential_148_layer_call_and_return_conditional_losses_3409386q-./012345!";?8
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
0__inference_sequential_148_layer_call_fn_3407767l-./012345!"C?@
9?6
,?)
lstm_444_input?????????
p 

 
? "???????????
0__inference_sequential_148_layer_call_fn_3408383l-./012345!"C?@
9?6
,?)
lstm_444_input?????????
p

 
? "???????????
0__inference_sequential_148_layer_call_fn_3408505d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_148_layer_call_fn_3408532d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3408478?-./012345!"M?J
? 
C?@
>
lstm_444_input,?)
lstm_444_input?????????"5?2
0
	dense_148#? 
	dense_148?????????