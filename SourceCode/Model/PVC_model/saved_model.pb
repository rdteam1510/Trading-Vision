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
dense_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_162/kernel
u
$dense_162/kernel/Read/ReadVariableOpReadVariableOpdense_162/kernel*
_output_shapes

:
*
dtype0
t
dense_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_162/bias
m
"dense_162/bias/Read/ReadVariableOpReadVariableOpdense_162/bias*
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
lstm_486/lstm_cell_486/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_486/lstm_cell_486/kernel
?
1lstm_486/lstm_cell_486/kernel/Read/ReadVariableOpReadVariableOplstm_486/lstm_cell_486/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_486/lstm_cell_486/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_486/lstm_cell_486/recurrent_kernel
?
;lstm_486/lstm_cell_486/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_486/lstm_cell_486/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_486/lstm_cell_486/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_486/lstm_cell_486/bias
?
/lstm_486/lstm_cell_486/bias/Read/ReadVariableOpReadVariableOplstm_486/lstm_cell_486/bias*
_output_shapes	
:?*
dtype0
?
lstm_487/lstm_cell_487/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_487/lstm_cell_487/kernel
?
1lstm_487/lstm_cell_487/kernel/Read/ReadVariableOpReadVariableOplstm_487/lstm_cell_487/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_487/lstm_cell_487/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_487/lstm_cell_487/recurrent_kernel
?
;lstm_487/lstm_cell_487/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_487/lstm_cell_487/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_487/lstm_cell_487/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_487/lstm_cell_487/bias
?
/lstm_487/lstm_cell_487/bias/Read/ReadVariableOpReadVariableOplstm_487/lstm_cell_487/bias*
_output_shapes	
:?*
dtype0
?
lstm_488/lstm_cell_488/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_488/lstm_cell_488/kernel
?
1lstm_488/lstm_cell_488/kernel/Read/ReadVariableOpReadVariableOplstm_488/lstm_cell_488/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_488/lstm_cell_488/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_488/lstm_cell_488/recurrent_kernel
?
;lstm_488/lstm_cell_488/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_488/lstm_cell_488/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_488/lstm_cell_488/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_488/lstm_cell_488/bias
?
/lstm_488/lstm_cell_488/bias/Read/ReadVariableOpReadVariableOplstm_488/lstm_cell_488/bias*
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
Adam/dense_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_162/kernel/m
?
+Adam/dense_162/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_162/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_162/bias/m
{
)Adam/dense_162/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_486/lstm_cell_486/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_486/lstm_cell_486/kernel/m
?
8Adam/lstm_486/lstm_cell_486/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_486/lstm_cell_486/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_486/lstm_cell_486/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_486/lstm_cell_486/recurrent_kernel/m
?
BAdam/lstm_486/lstm_cell_486/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_486/lstm_cell_486/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_486/lstm_cell_486/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_486/lstm_cell_486/bias/m
?
6Adam/lstm_486/lstm_cell_486/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_486/lstm_cell_486/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_487/lstm_cell_487/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_487/lstm_cell_487/kernel/m
?
8Adam/lstm_487/lstm_cell_487/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_487/lstm_cell_487/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_487/lstm_cell_487/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_487/lstm_cell_487/recurrent_kernel/m
?
BAdam/lstm_487/lstm_cell_487/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_487/lstm_cell_487/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_487/lstm_cell_487/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_487/lstm_cell_487/bias/m
?
6Adam/lstm_487/lstm_cell_487/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_487/lstm_cell_487/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_488/lstm_cell_488/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_488/lstm_cell_488/kernel/m
?
8Adam/lstm_488/lstm_cell_488/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_488/lstm_cell_488/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_488/lstm_cell_488/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_488/lstm_cell_488/recurrent_kernel/m
?
BAdam/lstm_488/lstm_cell_488/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_488/lstm_cell_488/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_488/lstm_cell_488/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_488/lstm_cell_488/bias/m
?
6Adam/lstm_488/lstm_cell_488/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_488/lstm_cell_488/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_162/kernel/v
?
+Adam/dense_162/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_162/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_162/bias/v
{
)Adam/dense_162/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_486/lstm_cell_486/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_486/lstm_cell_486/kernel/v
?
8Adam/lstm_486/lstm_cell_486/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_486/lstm_cell_486/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_486/lstm_cell_486/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_486/lstm_cell_486/recurrent_kernel/v
?
BAdam/lstm_486/lstm_cell_486/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_486/lstm_cell_486/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_486/lstm_cell_486/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_486/lstm_cell_486/bias/v
?
6Adam/lstm_486/lstm_cell_486/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_486/lstm_cell_486/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_487/lstm_cell_487/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_487/lstm_cell_487/kernel/v
?
8Adam/lstm_487/lstm_cell_487/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_487/lstm_cell_487/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_487/lstm_cell_487/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_487/lstm_cell_487/recurrent_kernel/v
?
BAdam/lstm_487/lstm_cell_487/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_487/lstm_cell_487/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_487/lstm_cell_487/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_487/lstm_cell_487/bias/v
?
6Adam/lstm_487/lstm_cell_487/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_487/lstm_cell_487/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_488/lstm_cell_488/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_488/lstm_cell_488/kernel/v
?
8Adam/lstm_488/lstm_cell_488/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_488/lstm_cell_488/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_488/lstm_cell_488/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_488/lstm_cell_488/recurrent_kernel/v
?
BAdam/lstm_488/lstm_cell_488/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_488/lstm_cell_488/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_488/lstm_cell_488/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_488/lstm_cell_488/bias/v
?
6Adam/lstm_488/lstm_cell_488/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_488/lstm_cell_488/bias/v*
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
VARIABLE_VALUEdense_162/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_162/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_486/lstm_cell_486/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_486/lstm_cell_486/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_486/lstm_cell_486/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_487/lstm_cell_487/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_487/lstm_cell_487/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_487/lstm_cell_487/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_488/lstm_cell_488/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_488/lstm_cell_488/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_488/lstm_cell_488/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_162/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_486/lstm_cell_486/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_486/lstm_cell_486/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_486/lstm_cell_486/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_487/lstm_cell_487/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_487/lstm_cell_487/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_487/lstm_cell_487/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_488/lstm_cell_488/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_488/lstm_cell_488/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_488/lstm_cell_488/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_162/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_486/lstm_cell_486/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_486/lstm_cell_486/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_486/lstm_cell_486/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_487/lstm_cell_487/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_487/lstm_cell_487/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_487/lstm_cell_487/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_488/lstm_cell_488/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_488/lstm_cell_488/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_488/lstm_cell_488/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_486_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_486_inputlstm_486/lstm_cell_486/kernel'lstm_486/lstm_cell_486/recurrent_kernellstm_486/lstm_cell_486/biaslstm_487/lstm_cell_487/kernel'lstm_487/lstm_cell_487/recurrent_kernellstm_487/lstm_cell_487/biaslstm_488/lstm_cell_488/kernel'lstm_488/lstm_cell_488/recurrent_kernellstm_488/lstm_cell_488/biasdense_162/kerneldense_162/bias*
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
%__inference_signature_wrapper_2553817
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_162/kernel/Read/ReadVariableOp"dense_162/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_486/lstm_cell_486/kernel/Read/ReadVariableOp;lstm_486/lstm_cell_486/recurrent_kernel/Read/ReadVariableOp/lstm_486/lstm_cell_486/bias/Read/ReadVariableOp1lstm_487/lstm_cell_487/kernel/Read/ReadVariableOp;lstm_487/lstm_cell_487/recurrent_kernel/Read/ReadVariableOp/lstm_487/lstm_cell_487/bias/Read/ReadVariableOp1lstm_488/lstm_cell_488/kernel/Read/ReadVariableOp;lstm_488/lstm_cell_488/recurrent_kernel/Read/ReadVariableOp/lstm_488/lstm_cell_488/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_162/kernel/m/Read/ReadVariableOp)Adam/dense_162/bias/m/Read/ReadVariableOp8Adam/lstm_486/lstm_cell_486/kernel/m/Read/ReadVariableOpBAdam/lstm_486/lstm_cell_486/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_486/lstm_cell_486/bias/m/Read/ReadVariableOp8Adam/lstm_487/lstm_cell_487/kernel/m/Read/ReadVariableOpBAdam/lstm_487/lstm_cell_487/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_487/lstm_cell_487/bias/m/Read/ReadVariableOp8Adam/lstm_488/lstm_cell_488/kernel/m/Read/ReadVariableOpBAdam/lstm_488/lstm_cell_488/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_488/lstm_cell_488/bias/m/Read/ReadVariableOp+Adam/dense_162/kernel/v/Read/ReadVariableOp)Adam/dense_162/bias/v/Read/ReadVariableOp8Adam/lstm_486/lstm_cell_486/kernel/v/Read/ReadVariableOpBAdam/lstm_486/lstm_cell_486/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_486/lstm_cell_486/bias/v/Read/ReadVariableOp8Adam/lstm_487/lstm_cell_487/kernel/v/Read/ReadVariableOpBAdam/lstm_487/lstm_cell_487/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_487/lstm_cell_487/bias/v/Read/ReadVariableOp8Adam/lstm_488/lstm_cell_488/kernel/v/Read/ReadVariableOpBAdam/lstm_488/lstm_cell_488/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_488/lstm_cell_488/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2557029
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_162/kerneldense_162/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_486/lstm_cell_486/kernel'lstm_486/lstm_cell_486/recurrent_kernellstm_486/lstm_cell_486/biaslstm_487/lstm_cell_487/kernel'lstm_487/lstm_cell_487/recurrent_kernellstm_487/lstm_cell_487/biaslstm_488/lstm_cell_488/kernel'lstm_488/lstm_cell_488/recurrent_kernellstm_488/lstm_cell_488/biastotalcountAdam/dense_162/kernel/mAdam/dense_162/bias/m$Adam/lstm_486/lstm_cell_486/kernel/m.Adam/lstm_486/lstm_cell_486/recurrent_kernel/m"Adam/lstm_486/lstm_cell_486/bias/m$Adam/lstm_487/lstm_cell_487/kernel/m.Adam/lstm_487/lstm_cell_487/recurrent_kernel/m"Adam/lstm_487/lstm_cell_487/bias/m$Adam/lstm_488/lstm_cell_488/kernel/m.Adam/lstm_488/lstm_cell_488/recurrent_kernel/m"Adam/lstm_488/lstm_cell_488/bias/mAdam/dense_162/kernel/vAdam/dense_162/bias/v$Adam/lstm_486/lstm_cell_486/kernel/v.Adam/lstm_486/lstm_cell_486/recurrent_kernel/v"Adam/lstm_486/lstm_cell_486/bias/v$Adam/lstm_487/lstm_cell_487/kernel/v.Adam/lstm_487/lstm_cell_487/recurrent_kernel/v"Adam/lstm_487/lstm_cell_487/bias/v$Adam/lstm_488/lstm_cell_488/kernel/v.Adam/lstm_488/lstm_cell_488/recurrent_kernel/v"Adam/lstm_488/lstm_cell_488/bias/v*4
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
#__inference__traced_restore_2557159??+
?J
?
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553272

inputs>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2553188*
condR
while_cond_2553187*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_487_while_cond_2554068.
*lstm_487_while_lstm_487_while_loop_counter4
0lstm_487_while_lstm_487_while_maximum_iterations
lstm_487_while_placeholder 
lstm_487_while_placeholder_1 
lstm_487_while_placeholder_2 
lstm_487_while_placeholder_30
,lstm_487_while_less_lstm_487_strided_slice_1G
Clstm_487_while_lstm_487_while_cond_2554068___redundant_placeholder0G
Clstm_487_while_lstm_487_while_cond_2554068___redundant_placeholder1G
Clstm_487_while_lstm_487_while_cond_2554068___redundant_placeholder2G
Clstm_487_while_lstm_487_while_cond_2554068___redundant_placeholder3
lstm_487_while_identity
?
lstm_487/while/LessLesslstm_487_while_placeholder,lstm_487_while_less_lstm_487_strided_slice_1*
T0*
_output_shapes
: ]
lstm_487/while/IdentityIdentitylstm_487/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_487_while_identity lstm_487/while/Identity:output:0*(
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

lstm_488_while_body_2554635.
*lstm_488_while_lstm_488_while_loop_counter4
0lstm_488_while_lstm_488_while_maximum_iterations
lstm_488_while_placeholder 
lstm_488_while_placeholder_1 
lstm_488_while_placeholder_2 
lstm_488_while_placeholder_3-
)lstm_488_while_lstm_488_strided_slice_1_0i
elstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0:2(Q
?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(L
>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0:(
lstm_488_while_identity
lstm_488_while_identity_1
lstm_488_while_identity_2
lstm_488_while_identity_3
lstm_488_while_identity_4
lstm_488_while_identity_5+
'lstm_488_while_lstm_488_strided_slice_1g
clstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensorM
;lstm_488_while_lstm_cell_422_matmul_readvariableop_resource:2(O
=lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource:
(J
<lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource:(??3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp?2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp?4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp?
@lstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_488/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0lstm_488_while_placeholderIlstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_488/while/lstm_cell_422/MatMulMatMul9lstm_488/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_488/while/lstm_cell_422/MatMul_1MatMullstm_488_while_placeholder_2<lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_488/while/lstm_cell_422/addAddV2-lstm_488/while/lstm_cell_422/MatMul:product:0/lstm_488/while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_488/while/lstm_cell_422/BiasAddBiasAdd$lstm_488/while/lstm_cell_422/add:z:0;lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_488/while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_488/while/lstm_cell_422/splitSplit5lstm_488/while/lstm_cell_422/split/split_dim:output:0-lstm_488/while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_488/while/lstm_cell_422/SigmoidSigmoid+lstm_488/while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_488/while/lstm_cell_422/Sigmoid_1Sigmoid+lstm_488/while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_488/while/lstm_cell_422/mulMul*lstm_488/while/lstm_cell_422/Sigmoid_1:y:0lstm_488_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_488/while/lstm_cell_422/ReluRelu+lstm_488/while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/mul_1Mul(lstm_488/while/lstm_cell_422/Sigmoid:y:0/lstm_488/while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/add_1AddV2$lstm_488/while/lstm_cell_422/mul:z:0&lstm_488/while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_488/while/lstm_cell_422/Sigmoid_2Sigmoid+lstm_488/while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_488/while/lstm_cell_422/Relu_1Relu&lstm_488/while/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/mul_2Mul*lstm_488/while/lstm_cell_422/Sigmoid_2:y:01lstm_488/while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_488/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_488_while_placeholder_1lstm_488_while_placeholder&lstm_488/while/lstm_cell_422/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_488/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_488/while/addAddV2lstm_488_while_placeholderlstm_488/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_488/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_488/while/add_1AddV2*lstm_488_while_lstm_488_while_loop_counterlstm_488/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_488/while/IdentityIdentitylstm_488/while/add_1:z:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_1Identity0lstm_488_while_lstm_488_while_maximum_iterations^lstm_488/while/NoOp*
T0*
_output_shapes
: t
lstm_488/while/Identity_2Identitylstm_488/while/add:z:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_3IdentityClstm_488/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_4Identity&lstm_488/while/lstm_cell_422/mul_2:z:0^lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_488/while/Identity_5Identity&lstm_488/while/lstm_cell_422/add_1:z:0^lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_488/while/NoOpNoOp4^lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp3^lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp5^lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_488_while_identity lstm_488/while/Identity:output:0"?
lstm_488_while_identity_1"lstm_488/while/Identity_1:output:0"?
lstm_488_while_identity_2"lstm_488/while/Identity_2:output:0"?
lstm_488_while_identity_3"lstm_488/while/Identity_3:output:0"?
lstm_488_while_identity_4"lstm_488/while/Identity_4:output:0"?
lstm_488_while_identity_5"lstm_488/while/Identity_5:output:0"T
'lstm_488_while_lstm_488_strided_slice_1)lstm_488_while_lstm_488_strided_slice_1_0"~
<lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0"?
=lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0"|
;lstm_488_while_lstm_cell_422_matmul_readvariableop_resource=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0"?
clstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensorelstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp2h
2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp2l
4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554298

inputsH
5lstm_486_lstm_cell_420_matmul_readvariableop_resource:	?J
7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource:	d?E
6lstm_486_lstm_cell_420_biasadd_readvariableop_resource:	?H
5lstm_487_lstm_cell_421_matmul_readvariableop_resource:	d?J
7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource:	2?E
6lstm_487_lstm_cell_421_biasadd_readvariableop_resource:	?G
5lstm_488_lstm_cell_422_matmul_readvariableop_resource:2(I
7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource:
(D
6lstm_488_lstm_cell_422_biasadd_readvariableop_resource:(:
(dense_162_matmul_readvariableop_resource:
7
)dense_162_biasadd_readvariableop_resource:
identity?? dense_162/BiasAdd/ReadVariableOp?dense_162/MatMul/ReadVariableOp?-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp?,lstm_486/lstm_cell_420/MatMul/ReadVariableOp?.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp?lstm_486/while?-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp?,lstm_487/lstm_cell_421/MatMul/ReadVariableOp?.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp?lstm_487/while?-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp?,lstm_488/lstm_cell_422/MatMul/ReadVariableOp?.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp?lstm_488/whileD
lstm_486/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_486/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_486/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_486/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_sliceStridedSlicelstm_486/Shape:output:0%lstm_486/strided_slice/stack:output:0'lstm_486/strided_slice/stack_1:output:0'lstm_486/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_486/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_486/zeros/packedPacklstm_486/strided_slice:output:0 lstm_486/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_486/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_486/zerosFilllstm_486/zeros/packed:output:0lstm_486/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_486/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_486/zeros_1/packedPacklstm_486/strided_slice:output:0"lstm_486/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_486/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_486/zeros_1Fill lstm_486/zeros_1/packed:output:0lstm_486/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_486/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_486/transpose	Transposeinputs lstm_486/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_486/Shape_1Shapelstm_486/transpose:y:0*
T0*
_output_shapes
:h
lstm_486/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_486/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_1StridedSlicelstm_486/Shape_1:output:0'lstm_486/strided_slice_1/stack:output:0)lstm_486/strided_slice_1/stack_1:output:0)lstm_486/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_486/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_486/TensorArrayV2TensorListReserve-lstm_486/TensorArrayV2/element_shape:output:0!lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_486/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_486/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_486/transpose:y:0Glstm_486/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_486/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_486/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_2StridedSlicelstm_486/transpose:y:0'lstm_486/strided_slice_2/stack:output:0)lstm_486/strided_slice_2/stack_1:output:0)lstm_486/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_486/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp5lstm_486_lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_486/lstm_cell_420/MatMulMatMul!lstm_486/strided_slice_2:output:04lstm_486/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_486/lstm_cell_420/MatMul_1MatMullstm_486/zeros:output:06lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_486/lstm_cell_420/addAddV2'lstm_486/lstm_cell_420/MatMul:product:0)lstm_486/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp6lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_486/lstm_cell_420/BiasAddBiasAddlstm_486/lstm_cell_420/add:z:05lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_486/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_486/lstm_cell_420/splitSplit/lstm_486/lstm_cell_420/split/split_dim:output:0'lstm_486/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_486/lstm_cell_420/SigmoidSigmoid%lstm_486/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_486/lstm_cell_420/Sigmoid_1Sigmoid%lstm_486/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mulMul$lstm_486/lstm_cell_420/Sigmoid_1:y:0lstm_486/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_486/lstm_cell_420/ReluRelu%lstm_486/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mul_1Mul"lstm_486/lstm_cell_420/Sigmoid:y:0)lstm_486/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/add_1AddV2lstm_486/lstm_cell_420/mul:z:0 lstm_486/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_486/lstm_cell_420/Sigmoid_2Sigmoid%lstm_486/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_486/lstm_cell_420/Relu_1Relu lstm_486/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mul_2Mul$lstm_486/lstm_cell_420/Sigmoid_2:y:0+lstm_486/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_486/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_486/TensorArrayV2_1TensorListReserve/lstm_486/TensorArrayV2_1/element_shape:output:0!lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_486/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_486/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_486/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_486/whileWhile$lstm_486/while/loop_counter:output:0*lstm_486/while/maximum_iterations:output:0lstm_486/time:output:0!lstm_486/TensorArrayV2_1:handle:0lstm_486/zeros:output:0lstm_486/zeros_1:output:0!lstm_486/strided_slice_1:output:0@lstm_486/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_486_lstm_cell_420_matmul_readvariableop_resource7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource6lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
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
lstm_486_while_body_2553930*'
condR
lstm_486_while_cond_2553929*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_486/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_486/TensorArrayV2Stack/TensorListStackTensorListStacklstm_486/while:output:3Blstm_486/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_486/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_486/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_3StridedSlice4lstm_486/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_486/strided_slice_3/stack:output:0)lstm_486/strided_slice_3/stack_1:output:0)lstm_486/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_486/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_486/transpose_1	Transpose4lstm_486/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_486/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_486/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_487/ShapeShapelstm_486/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_487/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_487/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_487/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_sliceStridedSlicelstm_487/Shape:output:0%lstm_487/strided_slice/stack:output:0'lstm_487/strided_slice/stack_1:output:0'lstm_487/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_487/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_487/zeros/packedPacklstm_487/strided_slice:output:0 lstm_487/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_487/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_487/zerosFilllstm_487/zeros/packed:output:0lstm_487/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_487/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_487/zeros_1/packedPacklstm_487/strided_slice:output:0"lstm_487/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_487/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_487/zeros_1Fill lstm_487/zeros_1/packed:output:0lstm_487/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_487/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_487/transpose	Transposelstm_486/transpose_1:y:0 lstm_487/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_487/Shape_1Shapelstm_487/transpose:y:0*
T0*
_output_shapes
:h
lstm_487/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_487/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_1StridedSlicelstm_487/Shape_1:output:0'lstm_487/strided_slice_1/stack:output:0)lstm_487/strided_slice_1/stack_1:output:0)lstm_487/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_487/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_487/TensorArrayV2TensorListReserve-lstm_487/TensorArrayV2/element_shape:output:0!lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_487/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_487/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_487/transpose:y:0Glstm_487/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_487/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_487/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_2StridedSlicelstm_487/transpose:y:0'lstm_487/strided_slice_2/stack:output:0)lstm_487/strided_slice_2/stack_1:output:0)lstm_487/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_487/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp5lstm_487_lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_487/lstm_cell_421/MatMulMatMul!lstm_487/strided_slice_2:output:04lstm_487/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_487/lstm_cell_421/MatMul_1MatMullstm_487/zeros:output:06lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_487/lstm_cell_421/addAddV2'lstm_487/lstm_cell_421/MatMul:product:0)lstm_487/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp6lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_487/lstm_cell_421/BiasAddBiasAddlstm_487/lstm_cell_421/add:z:05lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_487/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_487/lstm_cell_421/splitSplit/lstm_487/lstm_cell_421/split/split_dim:output:0'lstm_487/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_487/lstm_cell_421/SigmoidSigmoid%lstm_487/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_487/lstm_cell_421/Sigmoid_1Sigmoid%lstm_487/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mulMul$lstm_487/lstm_cell_421/Sigmoid_1:y:0lstm_487/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_487/lstm_cell_421/ReluRelu%lstm_487/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mul_1Mul"lstm_487/lstm_cell_421/Sigmoid:y:0)lstm_487/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/add_1AddV2lstm_487/lstm_cell_421/mul:z:0 lstm_487/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_487/lstm_cell_421/Sigmoid_2Sigmoid%lstm_487/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_487/lstm_cell_421/Relu_1Relu lstm_487/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mul_2Mul$lstm_487/lstm_cell_421/Sigmoid_2:y:0+lstm_487/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_487/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_487/TensorArrayV2_1TensorListReserve/lstm_487/TensorArrayV2_1/element_shape:output:0!lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_487/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_487/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_487/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_487/whileWhile$lstm_487/while/loop_counter:output:0*lstm_487/while/maximum_iterations:output:0lstm_487/time:output:0!lstm_487/TensorArrayV2_1:handle:0lstm_487/zeros:output:0lstm_487/zeros_1:output:0!lstm_487/strided_slice_1:output:0@lstm_487/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_487_lstm_cell_421_matmul_readvariableop_resource7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource6lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
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
lstm_487_while_body_2554069*'
condR
lstm_487_while_cond_2554068*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_487/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_487/TensorArrayV2Stack/TensorListStackTensorListStacklstm_487/while:output:3Blstm_487/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_487/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_487/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_3StridedSlice4lstm_487/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_487/strided_slice_3/stack:output:0)lstm_487/strided_slice_3/stack_1:output:0)lstm_487/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_487/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_487/transpose_1	Transpose4lstm_487/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_487/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_487/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_488/ShapeShapelstm_487/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_488/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_488/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_488/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_sliceStridedSlicelstm_488/Shape:output:0%lstm_488/strided_slice/stack:output:0'lstm_488/strided_slice/stack_1:output:0'lstm_488/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_488/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_488/zeros/packedPacklstm_488/strided_slice:output:0 lstm_488/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_488/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_488/zerosFilllstm_488/zeros/packed:output:0lstm_488/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_488/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_488/zeros_1/packedPacklstm_488/strided_slice:output:0"lstm_488/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_488/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_488/zeros_1Fill lstm_488/zeros_1/packed:output:0lstm_488/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_488/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_488/transpose	Transposelstm_487/transpose_1:y:0 lstm_488/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_488/Shape_1Shapelstm_488/transpose:y:0*
T0*
_output_shapes
:h
lstm_488/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_488/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_1StridedSlicelstm_488/Shape_1:output:0'lstm_488/strided_slice_1/stack:output:0)lstm_488/strided_slice_1/stack_1:output:0)lstm_488/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_488/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_488/TensorArrayV2TensorListReserve-lstm_488/TensorArrayV2/element_shape:output:0!lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_488/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_488/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_488/transpose:y:0Glstm_488/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_488/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_488/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_2StridedSlicelstm_488/transpose:y:0'lstm_488/strided_slice_2/stack:output:0)lstm_488/strided_slice_2/stack_1:output:0)lstm_488/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_488/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp5lstm_488_lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_488/lstm_cell_422/MatMulMatMul!lstm_488/strided_slice_2:output:04lstm_488/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_488/lstm_cell_422/MatMul_1MatMullstm_488/zeros:output:06lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_488/lstm_cell_422/addAddV2'lstm_488/lstm_cell_422/MatMul:product:0)lstm_488/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp6lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_488/lstm_cell_422/BiasAddBiasAddlstm_488/lstm_cell_422/add:z:05lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_488/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_488/lstm_cell_422/splitSplit/lstm_488/lstm_cell_422/split/split_dim:output:0'lstm_488/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_488/lstm_cell_422/SigmoidSigmoid%lstm_488/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_488/lstm_cell_422/Sigmoid_1Sigmoid%lstm_488/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mulMul$lstm_488/lstm_cell_422/Sigmoid_1:y:0lstm_488/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_488/lstm_cell_422/ReluRelu%lstm_488/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mul_1Mul"lstm_488/lstm_cell_422/Sigmoid:y:0)lstm_488/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/add_1AddV2lstm_488/lstm_cell_422/mul:z:0 lstm_488/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_488/lstm_cell_422/Sigmoid_2Sigmoid%lstm_488/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_488/lstm_cell_422/Relu_1Relu lstm_488/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mul_2Mul$lstm_488/lstm_cell_422/Sigmoid_2:y:0+lstm_488/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_488/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_488/TensorArrayV2_1TensorListReserve/lstm_488/TensorArrayV2_1/element_shape:output:0!lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_488/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_488/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_488/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_488/whileWhile$lstm_488/while/loop_counter:output:0*lstm_488/while/maximum_iterations:output:0lstm_488/time:output:0!lstm_488/TensorArrayV2_1:handle:0lstm_488/zeros:output:0lstm_488/zeros_1:output:0!lstm_488/strided_slice_1:output:0@lstm_488/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_488_lstm_cell_422_matmul_readvariableop_resource7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource6lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
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
lstm_488_while_body_2554208*'
condR
lstm_488_while_cond_2554207*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_488/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_488/TensorArrayV2Stack/TensorListStackTensorListStacklstm_488/while:output:3Blstm_488/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_488/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_488/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_3StridedSlice4lstm_488/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_488/strided_slice_3/stack:output:0)lstm_488/strided_slice_3/stack_1:output:0)lstm_488/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_488/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_488/transpose_1	Transpose4lstm_488/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_488/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_488/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_162/MatMulMatMul!lstm_488/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_162/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp.^lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp-^lstm_486/lstm_cell_420/MatMul/ReadVariableOp/^lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp^lstm_486/while.^lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp-^lstm_487/lstm_cell_421/MatMul/ReadVariableOp/^lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp^lstm_487/while.^lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp-^lstm_488/lstm_cell_422/MatMul/ReadVariableOp/^lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp^lstm_488/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2^
-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp2\
,lstm_486/lstm_cell_420/MatMul/ReadVariableOp,lstm_486/lstm_cell_420/MatMul/ReadVariableOp2`
.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp2 
lstm_486/whilelstm_486/while2^
-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp2\
,lstm_487/lstm_cell_421/MatMul/ReadVariableOp,lstm_487/lstm_cell_421/MatMul/ReadVariableOp2`
.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp2 
lstm_487/whilelstm_487/while2^
-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp2\
,lstm_488/lstm_cell_422/MatMul/ReadVariableOp,lstm_488/lstm_cell_422/MatMul/ReadVariableOp2`
.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp2 
lstm_488/whilelstm_488/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2552529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_422_2552553_0:2(/
while_lstm_cell_422_2552555_0:
(+
while_lstm_cell_422_2552557_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_422_2552553:2(-
while_lstm_cell_422_2552555:
()
while_lstm_cell_422_2552557:(??+while/lstm_cell_422/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_422/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_422_2552553_0while_lstm_cell_422_2552555_0while_lstm_cell_422_2552557_0*
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552470?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_422/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_422/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_422/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_422_2552553while_lstm_cell_422_2552553_0"<
while_lstm_cell_422_2552555while_lstm_cell_422_2552555_0"<
while_lstm_cell_422_2552557while_lstm_cell_422_2552557_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_422/StatefulPartitionedCall+while/lstm_cell_422/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_487_layer_call_fn_2555385

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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2553437s
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
while_body_2555873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2556202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2556202___redundant_placeholder05
1while_while_cond_2556202___redundant_placeholder15
1while_while_cond_2556202___redundant_placeholder25
1while_while_cond_2556202___redundant_placeholder3
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
while_body_2554971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2555443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555443___redundant_placeholder05
1while_while_cond_2555443___redundant_placeholder15
1while_while_cond_2555443___redundant_placeholder25
1while_while_cond_2555443___redundant_placeholder3
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
/__inference_lstm_cell_420_layer_call_fn_2556626

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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551770o
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
?K
?
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556144
inputs_0>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2556060*
condR
while_cond_2556059*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2556060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2552822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555528
inputs_0?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2555444*
condR
while_cond_2555443*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2556346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_420_layer_call_fn_2556609

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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551624o
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
while_body_2556489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2552407

inputs'
lstm_cell_422_2552325:2('
lstm_cell_422_2552327:
(#
lstm_cell_422_2552329:(
identity??%lstm_cell_422/StatefulPartitionedCall?while;
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
%lstm_cell_422/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_422_2552325lstm_cell_422_2552327lstm_cell_422_2552329*
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552324n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_422_2552325lstm_cell_422_2552327lstm_cell_422_2552329*
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
while_body_2552338*
condR
while_cond_2552337*K
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
NoOpNoOp&^lstm_cell_422/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_422/StatefulPartitionedCall%lstm_cell_422/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_487_while_body_2554496.
*lstm_487_while_lstm_487_while_loop_counter4
0lstm_487_while_lstm_487_while_maximum_iterations
lstm_487_while_placeholder 
lstm_487_while_placeholder_1 
lstm_487_while_placeholder_2 
lstm_487_while_placeholder_3-
)lstm_487_while_lstm_487_strided_slice_1_0i
elstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0:	d?R
?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?M
>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
lstm_487_while_identity
lstm_487_while_identity_1
lstm_487_while_identity_2
lstm_487_while_identity_3
lstm_487_while_identity_4
lstm_487_while_identity_5+
'lstm_487_while_lstm_487_strided_slice_1g
clstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensorN
;lstm_487_while_lstm_cell_421_matmul_readvariableop_resource:	d?P
=lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource:	2?K
<lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource:	???3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp?2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp?4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp?
@lstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_487/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0lstm_487_while_placeholderIlstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_487/while/lstm_cell_421/MatMulMatMul9lstm_487/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_487/while/lstm_cell_421/MatMul_1MatMullstm_487_while_placeholder_2<lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_487/while/lstm_cell_421/addAddV2-lstm_487/while/lstm_cell_421/MatMul:product:0/lstm_487/while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_487/while/lstm_cell_421/BiasAddBiasAdd$lstm_487/while/lstm_cell_421/add:z:0;lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_487/while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_487/while/lstm_cell_421/splitSplit5lstm_487/while/lstm_cell_421/split/split_dim:output:0-lstm_487/while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_487/while/lstm_cell_421/SigmoidSigmoid+lstm_487/while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_487/while/lstm_cell_421/Sigmoid_1Sigmoid+lstm_487/while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_487/while/lstm_cell_421/mulMul*lstm_487/while/lstm_cell_421/Sigmoid_1:y:0lstm_487_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_487/while/lstm_cell_421/ReluRelu+lstm_487/while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/mul_1Mul(lstm_487/while/lstm_cell_421/Sigmoid:y:0/lstm_487/while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/add_1AddV2$lstm_487/while/lstm_cell_421/mul:z:0&lstm_487/while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_487/while/lstm_cell_421/Sigmoid_2Sigmoid+lstm_487/while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_487/while/lstm_cell_421/Relu_1Relu&lstm_487/while/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/mul_2Mul*lstm_487/while/lstm_cell_421/Sigmoid_2:y:01lstm_487/while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_487/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_487_while_placeholder_1lstm_487_while_placeholder&lstm_487/while/lstm_cell_421/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_487/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_487/while/addAddV2lstm_487_while_placeholderlstm_487/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_487/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_487/while/add_1AddV2*lstm_487_while_lstm_487_while_loop_counterlstm_487/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_487/while/IdentityIdentitylstm_487/while/add_1:z:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_1Identity0lstm_487_while_lstm_487_while_maximum_iterations^lstm_487/while/NoOp*
T0*
_output_shapes
: t
lstm_487/while/Identity_2Identitylstm_487/while/add:z:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_3IdentityClstm_487/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_4Identity&lstm_487/while/lstm_cell_421/mul_2:z:0^lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_487/while/Identity_5Identity&lstm_487/while/lstm_cell_421/add_1:z:0^lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_487/while/NoOpNoOp4^lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp3^lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp5^lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_487_while_identity lstm_487/while/Identity:output:0"?
lstm_487_while_identity_1"lstm_487/while/Identity_1:output:0"?
lstm_487_while_identity_2"lstm_487/while/Identity_2:output:0"?
lstm_487_while_identity_3"lstm_487/while/Identity_3:output:0"?
lstm_487_while_identity_4"lstm_487/while/Identity_4:output:0"?
lstm_487_while_identity_5"lstm_487/while/Identity_5:output:0"T
'lstm_487_while_lstm_487_strided_slice_1)lstm_487_while_lstm_487_strided_slice_1_0"~
<lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0"?
=lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0"|
;lstm_487_while_lstm_cell_421_matmul_readvariableop_resource=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0"?
clstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensorelstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp2h
2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp2l
4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556658

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
*sequential_162_lstm_486_while_body_2551189L
Hsequential_162_lstm_486_while_sequential_162_lstm_486_while_loop_counterR
Nsequential_162_lstm_486_while_sequential_162_lstm_486_while_maximum_iterations-
)sequential_162_lstm_486_while_placeholder/
+sequential_162_lstm_486_while_placeholder_1/
+sequential_162_lstm_486_while_placeholder_2/
+sequential_162_lstm_486_while_placeholder_3K
Gsequential_162_lstm_486_while_sequential_162_lstm_486_strided_slice_1_0?
?sequential_162_lstm_486_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_486_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_162_lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0:	?a
Nsequential_162_lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?\
Msequential_162_lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0:	?*
&sequential_162_lstm_486_while_identity,
(sequential_162_lstm_486_while_identity_1,
(sequential_162_lstm_486_while_identity_2,
(sequential_162_lstm_486_while_identity_3,
(sequential_162_lstm_486_while_identity_4,
(sequential_162_lstm_486_while_identity_5I
Esequential_162_lstm_486_while_sequential_162_lstm_486_strided_slice_1?
?sequential_162_lstm_486_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_486_tensorarrayunstack_tensorlistfromtensor]
Jsequential_162_lstm_486_while_lstm_cell_420_matmul_readvariableop_resource:	?_
Lsequential_162_lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource:	d?Z
Ksequential_162_lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource:	???Bsequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp?Asequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp?Csequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp?
Osequential_162/lstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_162/lstm_486/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_162_lstm_486_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_486_tensorarrayunstack_tensorlistfromtensor_0)sequential_162_lstm_486_while_placeholderXsequential_162/lstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOpLsequential_162_lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_162/lstm_486/while/lstm_cell_420/MatMulMatMulHsequential_162/lstm_486/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOpNsequential_162_lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_162/lstm_486/while/lstm_cell_420/MatMul_1MatMul+sequential_162_lstm_486_while_placeholder_2Ksequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_162/lstm_486/while/lstm_cell_420/addAddV2<sequential_162/lstm_486/while/lstm_cell_420/MatMul:product:0>sequential_162/lstm_486/while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOpMsequential_162_lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_162/lstm_486/while/lstm_cell_420/BiasAddBiasAdd3sequential_162/lstm_486/while/lstm_cell_420/add:z:0Jsequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_162/lstm_486/while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_162/lstm_486/while/lstm_cell_420/splitSplitDsequential_162/lstm_486/while/lstm_cell_420/split/split_dim:output:0<sequential_162/lstm_486/while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_162/lstm_486/while/lstm_cell_420/SigmoidSigmoid:sequential_162/lstm_486/while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_162/lstm_486/while/lstm_cell_420/Sigmoid_1Sigmoid:sequential_162/lstm_486/while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_162/lstm_486/while/lstm_cell_420/mulMul9sequential_162/lstm_486/while/lstm_cell_420/Sigmoid_1:y:0+sequential_162_lstm_486_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_162/lstm_486/while/lstm_cell_420/ReluRelu:sequential_162/lstm_486/while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_162/lstm_486/while/lstm_cell_420/mul_1Mul7sequential_162/lstm_486/while/lstm_cell_420/Sigmoid:y:0>sequential_162/lstm_486/while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_162/lstm_486/while/lstm_cell_420/add_1AddV23sequential_162/lstm_486/while/lstm_cell_420/mul:z:05sequential_162/lstm_486/while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_162/lstm_486/while/lstm_cell_420/Sigmoid_2Sigmoid:sequential_162/lstm_486/while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_162/lstm_486/while/lstm_cell_420/Relu_1Relu5sequential_162/lstm_486/while/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_162/lstm_486/while/lstm_cell_420/mul_2Mul9sequential_162/lstm_486/while/lstm_cell_420/Sigmoid_2:y:0@sequential_162/lstm_486/while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_162/lstm_486/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_162_lstm_486_while_placeholder_1)sequential_162_lstm_486_while_placeholder5sequential_162/lstm_486/while/lstm_cell_420/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_162/lstm_486/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_162/lstm_486/while/addAddV2)sequential_162_lstm_486_while_placeholder,sequential_162/lstm_486/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_162/lstm_486/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_162/lstm_486/while/add_1AddV2Hsequential_162_lstm_486_while_sequential_162_lstm_486_while_loop_counter.sequential_162/lstm_486/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_162/lstm_486/while/IdentityIdentity'sequential_162/lstm_486/while/add_1:z:0#^sequential_162/lstm_486/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_486/while/Identity_1IdentityNsequential_162_lstm_486_while_sequential_162_lstm_486_while_maximum_iterations#^sequential_162/lstm_486/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_486/while/Identity_2Identity%sequential_162/lstm_486/while/add:z:0#^sequential_162/lstm_486/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_486/while/Identity_3IdentityRsequential_162/lstm_486/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_162/lstm_486/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_486/while/Identity_4Identity5sequential_162/lstm_486/while/lstm_cell_420/mul_2:z:0#^sequential_162/lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_162/lstm_486/while/Identity_5Identity5sequential_162/lstm_486/while/lstm_cell_420/add_1:z:0#^sequential_162/lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_162/lstm_486/while/NoOpNoOpC^sequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOpB^sequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOpD^sequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_162_lstm_486_while_identity/sequential_162/lstm_486/while/Identity:output:0"]
(sequential_162_lstm_486_while_identity_11sequential_162/lstm_486/while/Identity_1:output:0"]
(sequential_162_lstm_486_while_identity_21sequential_162/lstm_486/while/Identity_2:output:0"]
(sequential_162_lstm_486_while_identity_31sequential_162/lstm_486/while/Identity_3:output:0"]
(sequential_162_lstm_486_while_identity_41sequential_162/lstm_486/while/Identity_4:output:0"]
(sequential_162_lstm_486_while_identity_51sequential_162/lstm_486/while/Identity_5:output:0"?
Ksequential_162_lstm_486_while_lstm_cell_420_biasadd_readvariableop_resourceMsequential_162_lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0"?
Lsequential_162_lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resourceNsequential_162_lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0"?
Jsequential_162_lstm_486_while_lstm_cell_420_matmul_readvariableop_resourceLsequential_162_lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0"?
Esequential_162_lstm_486_while_sequential_162_lstm_486_strided_slice_1Gsequential_162_lstm_486_while_sequential_162_lstm_486_strided_slice_1_0"?
?sequential_162_lstm_486_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_486_tensorarrayunstack_tensorlistfromtensor?sequential_162_lstm_486_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_486_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOpBsequential_162/lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp2?
Asequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOpAsequential_162/lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp2?
Csequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOpCsequential_162/lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555671
inputs_0?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2555587*
condR
while_cond_2555586*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_488_layer_call_fn_2555990

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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553056o
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556854

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
while_body_2552179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_421_2552203_0:	d?0
while_lstm_cell_421_2552205_0:	2?,
while_lstm_cell_421_2552207_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_421_2552203:	d?.
while_lstm_cell_421_2552205:	2?*
while_lstm_cell_421_2552207:	???+while/lstm_cell_421/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_421/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_421_2552203_0while_lstm_cell_421_2552205_0while_lstm_cell_421_2552207_0*
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2552120?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_421/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_421/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_421/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_421/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_421_2552203while_lstm_cell_421_2552203_0"<
while_lstm_cell_421_2552205while_lstm_cell_421_2552205_0"<
while_lstm_cell_421_2552207while_lstm_cell_421_2552207_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_421/StatefulPartitionedCall+while/lstm_cell_421/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_162_lstm_488_while_body_2551467L
Hsequential_162_lstm_488_while_sequential_162_lstm_488_while_loop_counterR
Nsequential_162_lstm_488_while_sequential_162_lstm_488_while_maximum_iterations-
)sequential_162_lstm_488_while_placeholder/
+sequential_162_lstm_488_while_placeholder_1/
+sequential_162_lstm_488_while_placeholder_2/
+sequential_162_lstm_488_while_placeholder_3K
Gsequential_162_lstm_488_while_sequential_162_lstm_488_strided_slice_1_0?
?sequential_162_lstm_488_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_488_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_162_lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0:2(`
Nsequential_162_lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0:
([
Msequential_162_lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0:(*
&sequential_162_lstm_488_while_identity,
(sequential_162_lstm_488_while_identity_1,
(sequential_162_lstm_488_while_identity_2,
(sequential_162_lstm_488_while_identity_3,
(sequential_162_lstm_488_while_identity_4,
(sequential_162_lstm_488_while_identity_5I
Esequential_162_lstm_488_while_sequential_162_lstm_488_strided_slice_1?
?sequential_162_lstm_488_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_488_tensorarrayunstack_tensorlistfromtensor\
Jsequential_162_lstm_488_while_lstm_cell_422_matmul_readvariableop_resource:2(^
Lsequential_162_lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource:
(Y
Ksequential_162_lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource:(??Bsequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp?Asequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp?Csequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp?
Osequential_162/lstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_162/lstm_488/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_162_lstm_488_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_488_tensorarrayunstack_tensorlistfromtensor_0)sequential_162_lstm_488_while_placeholderXsequential_162/lstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOpLsequential_162_lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_162/lstm_488/while/lstm_cell_422/MatMulMatMulHsequential_162/lstm_488/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOpNsequential_162_lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_162/lstm_488/while/lstm_cell_422/MatMul_1MatMul+sequential_162_lstm_488_while_placeholder_2Ksequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_162/lstm_488/while/lstm_cell_422/addAddV2<sequential_162/lstm_488/while/lstm_cell_422/MatMul:product:0>sequential_162/lstm_488/while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOpMsequential_162_lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_162/lstm_488/while/lstm_cell_422/BiasAddBiasAdd3sequential_162/lstm_488/while/lstm_cell_422/add:z:0Jsequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_162/lstm_488/while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_162/lstm_488/while/lstm_cell_422/splitSplitDsequential_162/lstm_488/while/lstm_cell_422/split/split_dim:output:0<sequential_162/lstm_488/while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_162/lstm_488/while/lstm_cell_422/SigmoidSigmoid:sequential_162/lstm_488/while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_162/lstm_488/while/lstm_cell_422/Sigmoid_1Sigmoid:sequential_162/lstm_488/while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_162/lstm_488/while/lstm_cell_422/mulMul9sequential_162/lstm_488/while/lstm_cell_422/Sigmoid_1:y:0+sequential_162_lstm_488_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_162/lstm_488/while/lstm_cell_422/ReluRelu:sequential_162/lstm_488/while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_162/lstm_488/while/lstm_cell_422/mul_1Mul7sequential_162/lstm_488/while/lstm_cell_422/Sigmoid:y:0>sequential_162/lstm_488/while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_162/lstm_488/while/lstm_cell_422/add_1AddV23sequential_162/lstm_488/while/lstm_cell_422/mul:z:05sequential_162/lstm_488/while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_162/lstm_488/while/lstm_cell_422/Sigmoid_2Sigmoid:sequential_162/lstm_488/while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_162/lstm_488/while/lstm_cell_422/Relu_1Relu5sequential_162/lstm_488/while/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_162/lstm_488/while/lstm_cell_422/mul_2Mul9sequential_162/lstm_488/while/lstm_cell_422/Sigmoid_2:y:0@sequential_162/lstm_488/while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_162/lstm_488/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_162_lstm_488_while_placeholder_1)sequential_162_lstm_488_while_placeholder5sequential_162/lstm_488/while/lstm_cell_422/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_162/lstm_488/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_162/lstm_488/while/addAddV2)sequential_162_lstm_488_while_placeholder,sequential_162/lstm_488/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_162/lstm_488/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_162/lstm_488/while/add_1AddV2Hsequential_162_lstm_488_while_sequential_162_lstm_488_while_loop_counter.sequential_162/lstm_488/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_162/lstm_488/while/IdentityIdentity'sequential_162/lstm_488/while/add_1:z:0#^sequential_162/lstm_488/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_488/while/Identity_1IdentityNsequential_162_lstm_488_while_sequential_162_lstm_488_while_maximum_iterations#^sequential_162/lstm_488/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_488/while/Identity_2Identity%sequential_162/lstm_488/while/add:z:0#^sequential_162/lstm_488/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_488/while/Identity_3IdentityRsequential_162/lstm_488/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_162/lstm_488/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_488/while/Identity_4Identity5sequential_162/lstm_488/while/lstm_cell_422/mul_2:z:0#^sequential_162/lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_162/lstm_488/while/Identity_5Identity5sequential_162/lstm_488/while/lstm_cell_422/add_1:z:0#^sequential_162/lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_162/lstm_488/while/NoOpNoOpC^sequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOpB^sequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOpD^sequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_162_lstm_488_while_identity/sequential_162/lstm_488/while/Identity:output:0"]
(sequential_162_lstm_488_while_identity_11sequential_162/lstm_488/while/Identity_1:output:0"]
(sequential_162_lstm_488_while_identity_21sequential_162/lstm_488/while/Identity_2:output:0"]
(sequential_162_lstm_488_while_identity_31sequential_162/lstm_488/while/Identity_3:output:0"]
(sequential_162_lstm_488_while_identity_41sequential_162/lstm_488/while/Identity_4:output:0"]
(sequential_162_lstm_488_while_identity_51sequential_162/lstm_488/while/Identity_5:output:0"?
Ksequential_162_lstm_488_while_lstm_cell_422_biasadd_readvariableop_resourceMsequential_162_lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0"?
Lsequential_162_lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resourceNsequential_162_lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0"?
Jsequential_162_lstm_488_while_lstm_cell_422_matmul_readvariableop_resourceLsequential_162_lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0"?
Esequential_162_lstm_488_while_sequential_162_lstm_488_strided_slice_1Gsequential_162_lstm_488_while_sequential_162_lstm_488_strided_slice_1_0"?
?sequential_162_lstm_488_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_488_tensorarrayunstack_tensorlistfromtensor?sequential_162_lstm_488_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_488_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOpBsequential_162/lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp2?
Asequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOpAsequential_162/lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp2?
Csequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOpCsequential_162/lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556886

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
?
?
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2552120

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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556756

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
?#
?
while_body_2551829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_420_2551853_0:	?0
while_lstm_cell_420_2551855_0:	d?,
while_lstm_cell_420_2551857_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_420_2551853:	?.
while_lstm_cell_420_2551855:	d?*
while_lstm_cell_420_2551857:	???+while/lstm_cell_420/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_420/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_420_2551853_0while_lstm_cell_420_2551855_0while_lstm_cell_420_2551857_0*
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551770?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_420/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_420/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_420/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_420/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_420_2551853while_lstm_cell_420_2551853_0"<
while_lstm_cell_420_2551855while_lstm_cell_420_2551855_0"<
while_lstm_cell_420_2551857while_lstm_cell_420_2551857_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_420/StatefulPartitionedCall+while/lstm_cell_420/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_488_while_body_2554208.
*lstm_488_while_lstm_488_while_loop_counter4
0lstm_488_while_lstm_488_while_maximum_iterations
lstm_488_while_placeholder 
lstm_488_while_placeholder_1 
lstm_488_while_placeholder_2 
lstm_488_while_placeholder_3-
)lstm_488_while_lstm_488_strided_slice_1_0i
elstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0:2(Q
?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(L
>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0:(
lstm_488_while_identity
lstm_488_while_identity_1
lstm_488_while_identity_2
lstm_488_while_identity_3
lstm_488_while_identity_4
lstm_488_while_identity_5+
'lstm_488_while_lstm_488_strided_slice_1g
clstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensorM
;lstm_488_while_lstm_cell_422_matmul_readvariableop_resource:2(O
=lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource:
(J
<lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource:(??3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp?2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp?4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp?
@lstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_488/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0lstm_488_while_placeholderIlstm_488/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_488/while/lstm_cell_422/MatMulMatMul9lstm_488/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_488/while/lstm_cell_422/MatMul_1MatMullstm_488_while_placeholder_2<lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_488/while/lstm_cell_422/addAddV2-lstm_488/while/lstm_cell_422/MatMul:product:0/lstm_488/while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_488/while/lstm_cell_422/BiasAddBiasAdd$lstm_488/while/lstm_cell_422/add:z:0;lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_488/while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_488/while/lstm_cell_422/splitSplit5lstm_488/while/lstm_cell_422/split/split_dim:output:0-lstm_488/while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_488/while/lstm_cell_422/SigmoidSigmoid+lstm_488/while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_488/while/lstm_cell_422/Sigmoid_1Sigmoid+lstm_488/while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_488/while/lstm_cell_422/mulMul*lstm_488/while/lstm_cell_422/Sigmoid_1:y:0lstm_488_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_488/while/lstm_cell_422/ReluRelu+lstm_488/while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/mul_1Mul(lstm_488/while/lstm_cell_422/Sigmoid:y:0/lstm_488/while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/add_1AddV2$lstm_488/while/lstm_cell_422/mul:z:0&lstm_488/while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_488/while/lstm_cell_422/Sigmoid_2Sigmoid+lstm_488/while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_488/while/lstm_cell_422/Relu_1Relu&lstm_488/while/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_488/while/lstm_cell_422/mul_2Mul*lstm_488/while/lstm_cell_422/Sigmoid_2:y:01lstm_488/while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_488/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_488_while_placeholder_1lstm_488_while_placeholder&lstm_488/while/lstm_cell_422/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_488/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_488/while/addAddV2lstm_488_while_placeholderlstm_488/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_488/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_488/while/add_1AddV2*lstm_488_while_lstm_488_while_loop_counterlstm_488/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_488/while/IdentityIdentitylstm_488/while/add_1:z:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_1Identity0lstm_488_while_lstm_488_while_maximum_iterations^lstm_488/while/NoOp*
T0*
_output_shapes
: t
lstm_488/while/Identity_2Identitylstm_488/while/add:z:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_3IdentityClstm_488/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_488/while/NoOp*
T0*
_output_shapes
: ?
lstm_488/while/Identity_4Identity&lstm_488/while/lstm_cell_422/mul_2:z:0^lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_488/while/Identity_5Identity&lstm_488/while/lstm_cell_422/add_1:z:0^lstm_488/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_488/while/NoOpNoOp4^lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp3^lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp5^lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_488_while_identity lstm_488/while/Identity:output:0"?
lstm_488_while_identity_1"lstm_488/while/Identity_1:output:0"?
lstm_488_while_identity_2"lstm_488/while/Identity_2:output:0"?
lstm_488_while_identity_3"lstm_488/while/Identity_3:output:0"?
lstm_488_while_identity_4"lstm_488/while/Identity_4:output:0"?
lstm_488_while_identity_5"lstm_488/while/Identity_5:output:0"T
'lstm_488_while_lstm_488_strided_slice_1)lstm_488_while_lstm_488_strided_slice_1_0"~
<lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource>lstm_488_while_lstm_cell_422_biasadd_readvariableop_resource_0"?
=lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource?lstm_488_while_lstm_cell_422_matmul_1_readvariableop_resource_0"|
;lstm_488_while_lstm_cell_422_matmul_readvariableop_resource=lstm_488_while_lstm_cell_422_matmul_readvariableop_resource_0"?
clstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensorelstm_488_while_tensorarrayv2read_tensorlistgetitem_lstm_488_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp3lstm_488/while/lstm_cell_422/BiasAdd/ReadVariableOp2h
2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp2lstm_488/while/lstm_cell_422/MatMul/ReadVariableOp2l
4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp4lstm_488/while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551770

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
*__inference_lstm_488_layer_call_fn_2555979
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2552598o
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556573

inputs>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2556489*
condR
while_cond_2556488*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552057

inputs(
lstm_cell_421_2551975:	d?(
lstm_cell_421_2551977:	2?$
lstm_cell_421_2551979:	?
identity??%lstm_cell_421/StatefulPartitionedCall?while;
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
%lstm_cell_421/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_421_2551975lstm_cell_421_2551977lstm_cell_421_2551979*
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2551974n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_421_2551975lstm_cell_421_2551977lstm_cell_421_2551979*
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
while_body_2551988*
condR
while_cond_2551987*K
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
NoOpNoOp&^lstm_cell_421/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_421/StatefulPartitionedCall%lstm_cell_421/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556788

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
?
E__inference_lstm_488_layer_call_and_return_conditional_losses_2552598

inputs'
lstm_cell_422_2552516:2('
lstm_cell_422_2552518:
(#
lstm_cell_422_2552520:(
identity??%lstm_cell_422/StatefulPartitionedCall?while;
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
%lstm_cell_422/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_422_2552516lstm_cell_422_2552518lstm_cell_422_2552520*
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552470n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_422_2552516lstm_cell_422_2552518lstm_cell_422_2552520*
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
while_body_2552529*
condR
while_cond_2552528*K
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
NoOpNoOp&^lstm_cell_422/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_422/StatefulPartitionedCall%lstm_cell_422/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553670

inputs#
lstm_486_2553643:	?#
lstm_486_2553645:	d?
lstm_486_2553647:	?#
lstm_487_2553650:	d?#
lstm_487_2553652:	2?
lstm_487_2553654:	?"
lstm_488_2553657:2("
lstm_488_2553659:
(
lstm_488_2553661:(#
dense_162_2553664:

dense_162_2553666:
identity??!dense_162/StatefulPartitionedCall? lstm_486/StatefulPartitionedCall? lstm_487/StatefulPartitionedCall? lstm_488/StatefulPartitionedCall?
 lstm_486/StatefulPartitionedCallStatefulPartitionedCallinputslstm_486_2553643lstm_486_2553645lstm_486_2553647*
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2553602?
 lstm_487/StatefulPartitionedCallStatefulPartitionedCall)lstm_486/StatefulPartitionedCall:output:0lstm_487_2553650lstm_487_2553652lstm_487_2553654*
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2553437?
 lstm_488/StatefulPartitionedCallStatefulPartitionedCall)lstm_487/StatefulPartitionedCall:output:0lstm_488_2553657lstm_488_2553659lstm_488_2553661*
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553272?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall)lstm_488/StatefulPartitionedCall:output:0dense_162_2553664dense_162_2553666*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074y
IdentityIdentity*dense_162/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_162/StatefulPartitionedCall!^lstm_486/StatefulPartitionedCall!^lstm_487/StatefulPartitionedCall!^lstm_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2D
 lstm_486/StatefulPartitionedCall lstm_486/StatefulPartitionedCall2D
 lstm_487/StatefulPartitionedCall lstm_487/StatefulPartitionedCall2D
 lstm_488/StatefulPartitionedCall lstm_488/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2552971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552971___redundant_placeholder05
1while_while_cond_2552971___redundant_placeholder15
1while_while_cond_2552971___redundant_placeholder25
1while_while_cond_2552971___redundant_placeholder3
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
while_body_2553353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_488_while_cond_2554207.
*lstm_488_while_lstm_488_while_loop_counter4
0lstm_488_while_lstm_488_while_maximum_iterations
lstm_488_while_placeholder 
lstm_488_while_placeholder_1 
lstm_488_while_placeholder_2 
lstm_488_while_placeholder_30
,lstm_488_while_less_lstm_488_strided_slice_1G
Clstm_488_while_lstm_488_while_cond_2554207___redundant_placeholder0G
Clstm_488_while_lstm_488_while_cond_2554207___redundant_placeholder1G
Clstm_488_while_lstm_488_while_cond_2554207___redundant_placeholder2G
Clstm_488_while_lstm_488_while_cond_2554207___redundant_placeholder3
lstm_488_while_identity
?
lstm_488/while/LessLesslstm_488_while_placeholder,lstm_488_while_less_lstm_488_strided_slice_1*
T0*
_output_shapes
: ]
lstm_488/while/IdentityIdentitylstm_488/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_488_while_identity lstm_488/while/Identity:output:0*(
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553782
lstm_486_input#
lstm_486_2553755:	?#
lstm_486_2553757:	d?
lstm_486_2553759:	?#
lstm_487_2553762:	d?#
lstm_487_2553764:	2?
lstm_487_2553766:	?"
lstm_488_2553769:2("
lstm_488_2553771:
(
lstm_488_2553773:(#
dense_162_2553776:

dense_162_2553778:
identity??!dense_162/StatefulPartitionedCall? lstm_486/StatefulPartitionedCall? lstm_487/StatefulPartitionedCall? lstm_488/StatefulPartitionedCall?
 lstm_486/StatefulPartitionedCallStatefulPartitionedCalllstm_486_inputlstm_486_2553755lstm_486_2553757lstm_486_2553759*
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2553602?
 lstm_487/StatefulPartitionedCallStatefulPartitionedCall)lstm_486/StatefulPartitionedCall:output:0lstm_487_2553762lstm_487_2553764lstm_487_2553766*
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2553437?
 lstm_488/StatefulPartitionedCallStatefulPartitionedCall)lstm_487/StatefulPartitionedCall:output:0lstm_488_2553769lstm_488_2553771lstm_488_2553773*
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553272?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall)lstm_488/StatefulPartitionedCall:output:0dense_162_2553776dense_162_2553778*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074y
IdentityIdentity*dense_162/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_162/StatefulPartitionedCall!^lstm_486/StatefulPartitionedCall!^lstm_487/StatefulPartitionedCall!^lstm_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2D
 lstm_486/StatefulPartitionedCall lstm_486/StatefulPartitionedCall2D
 lstm_487/StatefulPartitionedCall lstm_487/StatefulPartitionedCall2D
 lstm_488/StatefulPartitionedCall lstm_488/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_486_input
?
?
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2551974

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
while_cond_2552821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552821___redundant_placeholder05
1while_while_cond_2552821___redundant_placeholder15
1while_while_cond_2552821___redundant_placeholder25
1while_while_cond_2552821___redundant_placeholder3
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2552756

inputs?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2552672*
condR
while_cond_2552671*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2555730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2553437

inputs?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2553353*
condR
while_cond_2553352*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_2557029
file_prefix/
+savev2_dense_162_kernel_read_readvariableop-
)savev2_dense_162_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_486_lstm_cell_486_kernel_read_readvariableopF
Bsavev2_lstm_486_lstm_cell_486_recurrent_kernel_read_readvariableop:
6savev2_lstm_486_lstm_cell_486_bias_read_readvariableop<
8savev2_lstm_487_lstm_cell_487_kernel_read_readvariableopF
Bsavev2_lstm_487_lstm_cell_487_recurrent_kernel_read_readvariableop:
6savev2_lstm_487_lstm_cell_487_bias_read_readvariableop<
8savev2_lstm_488_lstm_cell_488_kernel_read_readvariableopF
Bsavev2_lstm_488_lstm_cell_488_recurrent_kernel_read_readvariableop:
6savev2_lstm_488_lstm_cell_488_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_162_kernel_m_read_readvariableop4
0savev2_adam_dense_162_bias_m_read_readvariableopC
?savev2_adam_lstm_486_lstm_cell_486_kernel_m_read_readvariableopM
Isavev2_adam_lstm_486_lstm_cell_486_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_486_lstm_cell_486_bias_m_read_readvariableopC
?savev2_adam_lstm_487_lstm_cell_487_kernel_m_read_readvariableopM
Isavev2_adam_lstm_487_lstm_cell_487_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_487_lstm_cell_487_bias_m_read_readvariableopC
?savev2_adam_lstm_488_lstm_cell_488_kernel_m_read_readvariableopM
Isavev2_adam_lstm_488_lstm_cell_488_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_488_lstm_cell_488_bias_m_read_readvariableop6
2savev2_adam_dense_162_kernel_v_read_readvariableop4
0savev2_adam_dense_162_bias_v_read_readvariableopC
?savev2_adam_lstm_486_lstm_cell_486_kernel_v_read_readvariableopM
Isavev2_adam_lstm_486_lstm_cell_486_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_486_lstm_cell_486_bias_v_read_readvariableopC
?savev2_adam_lstm_487_lstm_cell_487_kernel_v_read_readvariableopM
Isavev2_adam_lstm_487_lstm_cell_487_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_487_lstm_cell_487_bias_v_read_readvariableopC
?savev2_adam_lstm_488_lstm_cell_488_kernel_v_read_readvariableopM
Isavev2_adam_lstm_488_lstm_cell_488_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_488_lstm_cell_488_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_162_kernel_read_readvariableop)savev2_dense_162_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_486_lstm_cell_486_kernel_read_readvariableopBsavev2_lstm_486_lstm_cell_486_recurrent_kernel_read_readvariableop6savev2_lstm_486_lstm_cell_486_bias_read_readvariableop8savev2_lstm_487_lstm_cell_487_kernel_read_readvariableopBsavev2_lstm_487_lstm_cell_487_recurrent_kernel_read_readvariableop6savev2_lstm_487_lstm_cell_487_bias_read_readvariableop8savev2_lstm_488_lstm_cell_488_kernel_read_readvariableopBsavev2_lstm_488_lstm_cell_488_recurrent_kernel_read_readvariableop6savev2_lstm_488_lstm_cell_488_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_162_kernel_m_read_readvariableop0savev2_adam_dense_162_bias_m_read_readvariableop?savev2_adam_lstm_486_lstm_cell_486_kernel_m_read_readvariableopIsavev2_adam_lstm_486_lstm_cell_486_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_486_lstm_cell_486_bias_m_read_readvariableop?savev2_adam_lstm_487_lstm_cell_487_kernel_m_read_readvariableopIsavev2_adam_lstm_487_lstm_cell_487_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_487_lstm_cell_487_bias_m_read_readvariableop?savev2_adam_lstm_488_lstm_cell_488_kernel_m_read_readvariableopIsavev2_adam_lstm_488_lstm_cell_488_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_488_lstm_cell_488_bias_m_read_readvariableop2savev2_adam_dense_162_kernel_v_read_readvariableop0savev2_adam_dense_162_bias_v_read_readvariableop?savev2_adam_lstm_486_lstm_cell_486_kernel_v_read_readvariableopIsavev2_adam_lstm_486_lstm_cell_486_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_486_lstm_cell_486_bias_v_read_readvariableop?savev2_adam_lstm_487_lstm_cell_487_kernel_v_read_readvariableopIsavev2_adam_lstm_487_lstm_cell_487_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_487_lstm_cell_487_bias_v_read_readvariableop?savev2_adam_lstm_488_lstm_cell_488_kernel_v_read_readvariableopIsavev2_adam_lstm_488_lstm_cell_488_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_488_lstm_cell_488_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074

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
?#
?
while_body_2551638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_420_2551662_0:	?0
while_lstm_cell_420_2551664_0:	d?,
while_lstm_cell_420_2551666_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_420_2551662:	?.
while_lstm_cell_420_2551664:	d?*
while_lstm_cell_420_2551666:	???+while/lstm_cell_420/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_420/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_420_2551662_0while_lstm_cell_420_2551664_0while_lstm_cell_420_2551666_0*
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551624?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_420/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_420/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_420/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_420/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_420_2551662while_lstm_cell_420_2551662_0"<
while_lstm_cell_420_2551664while_lstm_cell_420_2551664_0"<
while_lstm_cell_420_2551666while_lstm_cell_420_2551666_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_420/StatefulPartitionedCall+while/lstm_cell_420/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_162_layer_call_fn_2553871

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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553670o
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
?
*sequential_162_lstm_486_while_cond_2551188L
Hsequential_162_lstm_486_while_sequential_162_lstm_486_while_loop_counterR
Nsequential_162_lstm_486_while_sequential_162_lstm_486_while_maximum_iterations-
)sequential_162_lstm_486_while_placeholder/
+sequential_162_lstm_486_while_placeholder_1/
+sequential_162_lstm_486_while_placeholder_2/
+sequential_162_lstm_486_while_placeholder_3N
Jsequential_162_lstm_486_while_less_sequential_162_lstm_486_strided_slice_1e
asequential_162_lstm_486_while_sequential_162_lstm_486_while_cond_2551188___redundant_placeholder0e
asequential_162_lstm_486_while_sequential_162_lstm_486_while_cond_2551188___redundant_placeholder1e
asequential_162_lstm_486_while_sequential_162_lstm_486_while_cond_2551188___redundant_placeholder2e
asequential_162_lstm_486_while_sequential_162_lstm_486_while_cond_2551188___redundant_placeholder3*
&sequential_162_lstm_486_while_identity
?
"sequential_162/lstm_486/while/LessLess)sequential_162_lstm_486_while_placeholderJsequential_162_lstm_486_while_less_sequential_162_lstm_486_strided_slice_1*
T0*
_output_shapes
: {
&sequential_162/lstm_486/while/IdentityIdentity&sequential_162/lstm_486/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_162_lstm_486_while_identity/sequential_162/lstm_486/while/Identity:output:0*(
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
while_body_2552972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_486_layer_call_fn_2554758

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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2552756s
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
?J
?
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555957

inputs?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2555873*
condR
while_cond_2555872*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_2557159
file_prefix3
!assignvariableop_dense_162_kernel:
/
!assignvariableop_1_dense_162_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_486_lstm_cell_486_kernel:	?M
:assignvariableop_8_lstm_486_lstm_cell_486_recurrent_kernel:	d?=
.assignvariableop_9_lstm_486_lstm_cell_486_bias:	?D
1assignvariableop_10_lstm_487_lstm_cell_487_kernel:	d?N
;assignvariableop_11_lstm_487_lstm_cell_487_recurrent_kernel:	2?>
/assignvariableop_12_lstm_487_lstm_cell_487_bias:	?C
1assignvariableop_13_lstm_488_lstm_cell_488_kernel:2(M
;assignvariableop_14_lstm_488_lstm_cell_488_recurrent_kernel:
(=
/assignvariableop_15_lstm_488_lstm_cell_488_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_162_kernel_m:
7
)assignvariableop_19_adam_dense_162_bias_m:K
8assignvariableop_20_adam_lstm_486_lstm_cell_486_kernel_m:	?U
Bassignvariableop_21_adam_lstm_486_lstm_cell_486_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_486_lstm_cell_486_bias_m:	?K
8assignvariableop_23_adam_lstm_487_lstm_cell_487_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_487_lstm_cell_487_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_487_lstm_cell_487_bias_m:	?J
8assignvariableop_26_adam_lstm_488_lstm_cell_488_kernel_m:2(T
Bassignvariableop_27_adam_lstm_488_lstm_cell_488_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_488_lstm_cell_488_bias_m:(=
+assignvariableop_29_adam_dense_162_kernel_v:
7
)assignvariableop_30_adam_dense_162_bias_v:K
8assignvariableop_31_adam_lstm_486_lstm_cell_486_kernel_v:	?U
Bassignvariableop_32_adam_lstm_486_lstm_cell_486_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_486_lstm_cell_486_bias_v:	?K
8assignvariableop_34_adam_lstm_487_lstm_cell_487_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_487_lstm_cell_487_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_487_lstm_cell_487_bias_v:	?J
8assignvariableop_37_adam_lstm_488_lstm_cell_488_kernel_v:2(T
Bassignvariableop_38_adam_lstm_488_lstm_cell_488_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_488_lstm_cell_488_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_162_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_162_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_486_lstm_cell_486_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_486_lstm_cell_486_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_486_lstm_cell_486_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_487_lstm_cell_487_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_487_lstm_cell_487_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_487_lstm_cell_487_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_488_lstm_cell_488_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_488_lstm_cell_488_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_488_lstm_cell_488_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_162_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_162_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_486_lstm_cell_486_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_486_lstm_cell_486_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_486_lstm_cell_486_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_487_lstm_cell_487_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_487_lstm_cell_487_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_487_lstm_cell_487_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_488_lstm_cell_488_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_488_lstm_cell_488_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_488_lstm_cell_488_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_162_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_162_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_486_lstm_cell_486_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_486_lstm_cell_486_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_486_lstm_cell_486_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_487_lstm_cell_487_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_487_lstm_cell_487_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_487_lstm_cell_487_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_488_lstm_cell_488_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_488_lstm_cell_488_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_488_lstm_cell_488_bias_vIdentity_39:output:0"/device:CPU:0*
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
?K
?
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556287
inputs_0>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2556203*
condR
while_cond_2556202*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554725

inputsH
5lstm_486_lstm_cell_420_matmul_readvariableop_resource:	?J
7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource:	d?E
6lstm_486_lstm_cell_420_biasadd_readvariableop_resource:	?H
5lstm_487_lstm_cell_421_matmul_readvariableop_resource:	d?J
7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource:	2?E
6lstm_487_lstm_cell_421_biasadd_readvariableop_resource:	?G
5lstm_488_lstm_cell_422_matmul_readvariableop_resource:2(I
7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource:
(D
6lstm_488_lstm_cell_422_biasadd_readvariableop_resource:(:
(dense_162_matmul_readvariableop_resource:
7
)dense_162_biasadd_readvariableop_resource:
identity?? dense_162/BiasAdd/ReadVariableOp?dense_162/MatMul/ReadVariableOp?-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp?,lstm_486/lstm_cell_420/MatMul/ReadVariableOp?.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp?lstm_486/while?-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp?,lstm_487/lstm_cell_421/MatMul/ReadVariableOp?.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp?lstm_487/while?-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp?,lstm_488/lstm_cell_422/MatMul/ReadVariableOp?.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp?lstm_488/whileD
lstm_486/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_486/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_486/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_486/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_sliceStridedSlicelstm_486/Shape:output:0%lstm_486/strided_slice/stack:output:0'lstm_486/strided_slice/stack_1:output:0'lstm_486/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_486/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_486/zeros/packedPacklstm_486/strided_slice:output:0 lstm_486/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_486/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_486/zerosFilllstm_486/zeros/packed:output:0lstm_486/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_486/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_486/zeros_1/packedPacklstm_486/strided_slice:output:0"lstm_486/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_486/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_486/zeros_1Fill lstm_486/zeros_1/packed:output:0lstm_486/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_486/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_486/transpose	Transposeinputs lstm_486/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_486/Shape_1Shapelstm_486/transpose:y:0*
T0*
_output_shapes
:h
lstm_486/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_486/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_1StridedSlicelstm_486/Shape_1:output:0'lstm_486/strided_slice_1/stack:output:0)lstm_486/strided_slice_1/stack_1:output:0)lstm_486/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_486/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_486/TensorArrayV2TensorListReserve-lstm_486/TensorArrayV2/element_shape:output:0!lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_486/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_486/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_486/transpose:y:0Glstm_486/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_486/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_486/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_2StridedSlicelstm_486/transpose:y:0'lstm_486/strided_slice_2/stack:output:0)lstm_486/strided_slice_2/stack_1:output:0)lstm_486/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_486/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp5lstm_486_lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_486/lstm_cell_420/MatMulMatMul!lstm_486/strided_slice_2:output:04lstm_486/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_486/lstm_cell_420/MatMul_1MatMullstm_486/zeros:output:06lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_486/lstm_cell_420/addAddV2'lstm_486/lstm_cell_420/MatMul:product:0)lstm_486/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp6lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_486/lstm_cell_420/BiasAddBiasAddlstm_486/lstm_cell_420/add:z:05lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_486/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_486/lstm_cell_420/splitSplit/lstm_486/lstm_cell_420/split/split_dim:output:0'lstm_486/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_486/lstm_cell_420/SigmoidSigmoid%lstm_486/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_486/lstm_cell_420/Sigmoid_1Sigmoid%lstm_486/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mulMul$lstm_486/lstm_cell_420/Sigmoid_1:y:0lstm_486/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_486/lstm_cell_420/ReluRelu%lstm_486/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mul_1Mul"lstm_486/lstm_cell_420/Sigmoid:y:0)lstm_486/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/add_1AddV2lstm_486/lstm_cell_420/mul:z:0 lstm_486/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_486/lstm_cell_420/Sigmoid_2Sigmoid%lstm_486/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_486/lstm_cell_420/Relu_1Relu lstm_486/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_486/lstm_cell_420/mul_2Mul$lstm_486/lstm_cell_420/Sigmoid_2:y:0+lstm_486/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_486/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_486/TensorArrayV2_1TensorListReserve/lstm_486/TensorArrayV2_1/element_shape:output:0!lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_486/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_486/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_486/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_486/whileWhile$lstm_486/while/loop_counter:output:0*lstm_486/while/maximum_iterations:output:0lstm_486/time:output:0!lstm_486/TensorArrayV2_1:handle:0lstm_486/zeros:output:0lstm_486/zeros_1:output:0!lstm_486/strided_slice_1:output:0@lstm_486/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_486_lstm_cell_420_matmul_readvariableop_resource7lstm_486_lstm_cell_420_matmul_1_readvariableop_resource6lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
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
lstm_486_while_body_2554357*'
condR
lstm_486_while_cond_2554356*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_486/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_486/TensorArrayV2Stack/TensorListStackTensorListStacklstm_486/while:output:3Blstm_486/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_486/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_486/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_486/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_486/strided_slice_3StridedSlice4lstm_486/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_486/strided_slice_3/stack:output:0)lstm_486/strided_slice_3/stack_1:output:0)lstm_486/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_486/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_486/transpose_1	Transpose4lstm_486/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_486/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_486/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_487/ShapeShapelstm_486/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_487/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_487/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_487/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_sliceStridedSlicelstm_487/Shape:output:0%lstm_487/strided_slice/stack:output:0'lstm_487/strided_slice/stack_1:output:0'lstm_487/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_487/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_487/zeros/packedPacklstm_487/strided_slice:output:0 lstm_487/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_487/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_487/zerosFilllstm_487/zeros/packed:output:0lstm_487/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_487/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_487/zeros_1/packedPacklstm_487/strided_slice:output:0"lstm_487/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_487/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_487/zeros_1Fill lstm_487/zeros_1/packed:output:0lstm_487/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_487/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_487/transpose	Transposelstm_486/transpose_1:y:0 lstm_487/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_487/Shape_1Shapelstm_487/transpose:y:0*
T0*
_output_shapes
:h
lstm_487/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_487/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_1StridedSlicelstm_487/Shape_1:output:0'lstm_487/strided_slice_1/stack:output:0)lstm_487/strided_slice_1/stack_1:output:0)lstm_487/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_487/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_487/TensorArrayV2TensorListReserve-lstm_487/TensorArrayV2/element_shape:output:0!lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_487/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_487/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_487/transpose:y:0Glstm_487/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_487/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_487/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_2StridedSlicelstm_487/transpose:y:0'lstm_487/strided_slice_2/stack:output:0)lstm_487/strided_slice_2/stack_1:output:0)lstm_487/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_487/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp5lstm_487_lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_487/lstm_cell_421/MatMulMatMul!lstm_487/strided_slice_2:output:04lstm_487/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_487/lstm_cell_421/MatMul_1MatMullstm_487/zeros:output:06lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_487/lstm_cell_421/addAddV2'lstm_487/lstm_cell_421/MatMul:product:0)lstm_487/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp6lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_487/lstm_cell_421/BiasAddBiasAddlstm_487/lstm_cell_421/add:z:05lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_487/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_487/lstm_cell_421/splitSplit/lstm_487/lstm_cell_421/split/split_dim:output:0'lstm_487/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_487/lstm_cell_421/SigmoidSigmoid%lstm_487/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_487/lstm_cell_421/Sigmoid_1Sigmoid%lstm_487/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mulMul$lstm_487/lstm_cell_421/Sigmoid_1:y:0lstm_487/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_487/lstm_cell_421/ReluRelu%lstm_487/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mul_1Mul"lstm_487/lstm_cell_421/Sigmoid:y:0)lstm_487/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/add_1AddV2lstm_487/lstm_cell_421/mul:z:0 lstm_487/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_487/lstm_cell_421/Sigmoid_2Sigmoid%lstm_487/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_487/lstm_cell_421/Relu_1Relu lstm_487/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_487/lstm_cell_421/mul_2Mul$lstm_487/lstm_cell_421/Sigmoid_2:y:0+lstm_487/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_487/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_487/TensorArrayV2_1TensorListReserve/lstm_487/TensorArrayV2_1/element_shape:output:0!lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_487/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_487/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_487/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_487/whileWhile$lstm_487/while/loop_counter:output:0*lstm_487/while/maximum_iterations:output:0lstm_487/time:output:0!lstm_487/TensorArrayV2_1:handle:0lstm_487/zeros:output:0lstm_487/zeros_1:output:0!lstm_487/strided_slice_1:output:0@lstm_487/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_487_lstm_cell_421_matmul_readvariableop_resource7lstm_487_lstm_cell_421_matmul_1_readvariableop_resource6lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
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
lstm_487_while_body_2554496*'
condR
lstm_487_while_cond_2554495*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_487/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_487/TensorArrayV2Stack/TensorListStackTensorListStacklstm_487/while:output:3Blstm_487/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_487/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_487/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_487/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_487/strided_slice_3StridedSlice4lstm_487/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_487/strided_slice_3/stack:output:0)lstm_487/strided_slice_3/stack_1:output:0)lstm_487/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_487/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_487/transpose_1	Transpose4lstm_487/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_487/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_487/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_488/ShapeShapelstm_487/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_488/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_488/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_488/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_sliceStridedSlicelstm_488/Shape:output:0%lstm_488/strided_slice/stack:output:0'lstm_488/strided_slice/stack_1:output:0'lstm_488/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_488/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_488/zeros/packedPacklstm_488/strided_slice:output:0 lstm_488/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_488/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_488/zerosFilllstm_488/zeros/packed:output:0lstm_488/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_488/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_488/zeros_1/packedPacklstm_488/strided_slice:output:0"lstm_488/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_488/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_488/zeros_1Fill lstm_488/zeros_1/packed:output:0lstm_488/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_488/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_488/transpose	Transposelstm_487/transpose_1:y:0 lstm_488/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_488/Shape_1Shapelstm_488/transpose:y:0*
T0*
_output_shapes
:h
lstm_488/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_488/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_1StridedSlicelstm_488/Shape_1:output:0'lstm_488/strided_slice_1/stack:output:0)lstm_488/strided_slice_1/stack_1:output:0)lstm_488/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_488/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_488/TensorArrayV2TensorListReserve-lstm_488/TensorArrayV2/element_shape:output:0!lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_488/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_488/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_488/transpose:y:0Glstm_488/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_488/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_488/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_2StridedSlicelstm_488/transpose:y:0'lstm_488/strided_slice_2/stack:output:0)lstm_488/strided_slice_2/stack_1:output:0)lstm_488/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_488/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp5lstm_488_lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_488/lstm_cell_422/MatMulMatMul!lstm_488/strided_slice_2:output:04lstm_488/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_488/lstm_cell_422/MatMul_1MatMullstm_488/zeros:output:06lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_488/lstm_cell_422/addAddV2'lstm_488/lstm_cell_422/MatMul:product:0)lstm_488/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp6lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_488/lstm_cell_422/BiasAddBiasAddlstm_488/lstm_cell_422/add:z:05lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_488/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_488/lstm_cell_422/splitSplit/lstm_488/lstm_cell_422/split/split_dim:output:0'lstm_488/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_488/lstm_cell_422/SigmoidSigmoid%lstm_488/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_488/lstm_cell_422/Sigmoid_1Sigmoid%lstm_488/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mulMul$lstm_488/lstm_cell_422/Sigmoid_1:y:0lstm_488/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_488/lstm_cell_422/ReluRelu%lstm_488/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mul_1Mul"lstm_488/lstm_cell_422/Sigmoid:y:0)lstm_488/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/add_1AddV2lstm_488/lstm_cell_422/mul:z:0 lstm_488/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_488/lstm_cell_422/Sigmoid_2Sigmoid%lstm_488/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_488/lstm_cell_422/Relu_1Relu lstm_488/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_488/lstm_cell_422/mul_2Mul$lstm_488/lstm_cell_422/Sigmoid_2:y:0+lstm_488/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_488/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_488/TensorArrayV2_1TensorListReserve/lstm_488/TensorArrayV2_1/element_shape:output:0!lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_488/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_488/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_488/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_488/whileWhile$lstm_488/while/loop_counter:output:0*lstm_488/while/maximum_iterations:output:0lstm_488/time:output:0!lstm_488/TensorArrayV2_1:handle:0lstm_488/zeros:output:0lstm_488/zeros_1:output:0!lstm_488/strided_slice_1:output:0@lstm_488/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_488_lstm_cell_422_matmul_readvariableop_resource7lstm_488_lstm_cell_422_matmul_1_readvariableop_resource6lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
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
lstm_488_while_body_2554635*'
condR
lstm_488_while_cond_2554634*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_488/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_488/TensorArrayV2Stack/TensorListStackTensorListStacklstm_488/while:output:3Blstm_488/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_488/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_488/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_488/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_488/strided_slice_3StridedSlice4lstm_488/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_488/strided_slice_3/stack:output:0)lstm_488/strided_slice_3/stack_1:output:0)lstm_488/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_488/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_488/transpose_1	Transpose4lstm_488/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_488/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_488/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_162/MatMulMatMul!lstm_488/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_162/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp.^lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp-^lstm_486/lstm_cell_420/MatMul/ReadVariableOp/^lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp^lstm_486/while.^lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp-^lstm_487/lstm_cell_421/MatMul/ReadVariableOp/^lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp^lstm_487/while.^lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp-^lstm_488/lstm_cell_422/MatMul/ReadVariableOp/^lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp^lstm_488/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2^
-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp-lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp2\
,lstm_486/lstm_cell_420/MatMul/ReadVariableOp,lstm_486/lstm_cell_420/MatMul/ReadVariableOp2`
.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp.lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp2 
lstm_486/whilelstm_486/while2^
-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp-lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp2\
,lstm_487/lstm_cell_421/MatMul/ReadVariableOp,lstm_487/lstm_cell_421/MatMul/ReadVariableOp2`
.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp.lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp2 
lstm_487/whilelstm_487/while2^
-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp-lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp2\
,lstm_488/lstm_cell_422/MatMul/ReadVariableOp,lstm_488/lstm_cell_422/MatMul/ReadVariableOp2`
.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp.lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp2 
lstm_488/whilelstm_488/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_486_layer_call_and_return_conditional_losses_2553602

inputs?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2553518*
condR
while_cond_2553517*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2555586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555586___redundant_placeholder05
1while_while_cond_2555586___redundant_placeholder15
1while_while_cond_2555586___redundant_placeholder25
1while_while_cond_2555586___redundant_placeholder3
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
"__inference__wrapped_model_2551557
lstm_486_inputW
Dsequential_162_lstm_486_lstm_cell_420_matmul_readvariableop_resource:	?Y
Fsequential_162_lstm_486_lstm_cell_420_matmul_1_readvariableop_resource:	d?T
Esequential_162_lstm_486_lstm_cell_420_biasadd_readvariableop_resource:	?W
Dsequential_162_lstm_487_lstm_cell_421_matmul_readvariableop_resource:	d?Y
Fsequential_162_lstm_487_lstm_cell_421_matmul_1_readvariableop_resource:	2?T
Esequential_162_lstm_487_lstm_cell_421_biasadd_readvariableop_resource:	?V
Dsequential_162_lstm_488_lstm_cell_422_matmul_readvariableop_resource:2(X
Fsequential_162_lstm_488_lstm_cell_422_matmul_1_readvariableop_resource:
(S
Esequential_162_lstm_488_lstm_cell_422_biasadd_readvariableop_resource:(I
7sequential_162_dense_162_matmul_readvariableop_resource:
F
8sequential_162_dense_162_biasadd_readvariableop_resource:
identity??/sequential_162/dense_162/BiasAdd/ReadVariableOp?.sequential_162/dense_162/MatMul/ReadVariableOp?<sequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp?;sequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOp?=sequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp?sequential_162/lstm_486/while?<sequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp?;sequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOp?=sequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp?sequential_162/lstm_487/while?<sequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp?;sequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOp?=sequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp?sequential_162/lstm_488/while[
sequential_162/lstm_486/ShapeShapelstm_486_input*
T0*
_output_shapes
:u
+sequential_162/lstm_486/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_162/lstm_486/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_162/lstm_486/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_162/lstm_486/strided_sliceStridedSlice&sequential_162/lstm_486/Shape:output:04sequential_162/lstm_486/strided_slice/stack:output:06sequential_162/lstm_486/strided_slice/stack_1:output:06sequential_162/lstm_486/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_162/lstm_486/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_162/lstm_486/zeros/packedPack.sequential_162/lstm_486/strided_slice:output:0/sequential_162/lstm_486/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_162/lstm_486/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_486/zerosFill-sequential_162/lstm_486/zeros/packed:output:0,sequential_162/lstm_486/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_162/lstm_486/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_162/lstm_486/zeros_1/packedPack.sequential_162/lstm_486/strided_slice:output:01sequential_162/lstm_486/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_162/lstm_486/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_486/zeros_1Fill/sequential_162/lstm_486/zeros_1/packed:output:0.sequential_162/lstm_486/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_162/lstm_486/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_162/lstm_486/transpose	Transposelstm_486_input/sequential_162/lstm_486/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_162/lstm_486/Shape_1Shape%sequential_162/lstm_486/transpose:y:0*
T0*
_output_shapes
:w
-sequential_162/lstm_486/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_486/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_486/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_486/strided_slice_1StridedSlice(sequential_162/lstm_486/Shape_1:output:06sequential_162/lstm_486/strided_slice_1/stack:output:08sequential_162/lstm_486/strided_slice_1/stack_1:output:08sequential_162/lstm_486/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_162/lstm_486/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_162/lstm_486/TensorArrayV2TensorListReserve<sequential_162/lstm_486/TensorArrayV2/element_shape:output:00sequential_162/lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_162/lstm_486/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_162/lstm_486/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_162/lstm_486/transpose:y:0Vsequential_162/lstm_486/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_162/lstm_486/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_486/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_486/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_486/strided_slice_2StridedSlice%sequential_162/lstm_486/transpose:y:06sequential_162/lstm_486/strided_slice_2/stack:output:08sequential_162/lstm_486/strided_slice_2/stack_1:output:08sequential_162/lstm_486/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOpReadVariableOpDsequential_162_lstm_486_lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_162/lstm_486/lstm_cell_420/MatMulMatMul0sequential_162/lstm_486/strided_slice_2:output:0Csequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOpFsequential_162_lstm_486_lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_162/lstm_486/lstm_cell_420/MatMul_1MatMul&sequential_162/lstm_486/zeros:output:0Esequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_162/lstm_486/lstm_cell_420/addAddV26sequential_162/lstm_486/lstm_cell_420/MatMul:product:08sequential_162/lstm_486/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOpEsequential_162_lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_162/lstm_486/lstm_cell_420/BiasAddBiasAdd-sequential_162/lstm_486/lstm_cell_420/add:z:0Dsequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_162/lstm_486/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_162/lstm_486/lstm_cell_420/splitSplit>sequential_162/lstm_486/lstm_cell_420/split/split_dim:output:06sequential_162/lstm_486/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_162/lstm_486/lstm_cell_420/SigmoidSigmoid4sequential_162/lstm_486/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_162/lstm_486/lstm_cell_420/Sigmoid_1Sigmoid4sequential_162/lstm_486/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_162/lstm_486/lstm_cell_420/mulMul3sequential_162/lstm_486/lstm_cell_420/Sigmoid_1:y:0(sequential_162/lstm_486/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_162/lstm_486/lstm_cell_420/ReluRelu4sequential_162/lstm_486/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_162/lstm_486/lstm_cell_420/mul_1Mul1sequential_162/lstm_486/lstm_cell_420/Sigmoid:y:08sequential_162/lstm_486/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_162/lstm_486/lstm_cell_420/add_1AddV2-sequential_162/lstm_486/lstm_cell_420/mul:z:0/sequential_162/lstm_486/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_162/lstm_486/lstm_cell_420/Sigmoid_2Sigmoid4sequential_162/lstm_486/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_162/lstm_486/lstm_cell_420/Relu_1Relu/sequential_162/lstm_486/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_162/lstm_486/lstm_cell_420/mul_2Mul3sequential_162/lstm_486/lstm_cell_420/Sigmoid_2:y:0:sequential_162/lstm_486/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_162/lstm_486/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_162/lstm_486/TensorArrayV2_1TensorListReserve>sequential_162/lstm_486/TensorArrayV2_1/element_shape:output:00sequential_162/lstm_486/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_162/lstm_486/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_162/lstm_486/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_162/lstm_486/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_162/lstm_486/whileWhile3sequential_162/lstm_486/while/loop_counter:output:09sequential_162/lstm_486/while/maximum_iterations:output:0%sequential_162/lstm_486/time:output:00sequential_162/lstm_486/TensorArrayV2_1:handle:0&sequential_162/lstm_486/zeros:output:0(sequential_162/lstm_486/zeros_1:output:00sequential_162/lstm_486/strided_slice_1:output:0Osequential_162/lstm_486/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_162_lstm_486_lstm_cell_420_matmul_readvariableop_resourceFsequential_162_lstm_486_lstm_cell_420_matmul_1_readvariableop_resourceEsequential_162_lstm_486_lstm_cell_420_biasadd_readvariableop_resource*
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
*sequential_162_lstm_486_while_body_2551189*6
cond.R,
*sequential_162_lstm_486_while_cond_2551188*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_162/lstm_486/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_162/lstm_486/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_162/lstm_486/while:output:3Qsequential_162/lstm_486/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_162/lstm_486/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_162/lstm_486/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_486/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_486/strided_slice_3StridedSliceCsequential_162/lstm_486/TensorArrayV2Stack/TensorListStack:tensor:06sequential_162/lstm_486/strided_slice_3/stack:output:08sequential_162/lstm_486/strided_slice_3/stack_1:output:08sequential_162/lstm_486/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_162/lstm_486/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_162/lstm_486/transpose_1	TransposeCsequential_162/lstm_486/TensorArrayV2Stack/TensorListStack:tensor:01sequential_162/lstm_486/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_162/lstm_486/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_162/lstm_487/ShapeShape'sequential_162/lstm_486/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_162/lstm_487/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_162/lstm_487/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_162/lstm_487/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_162/lstm_487/strided_sliceStridedSlice&sequential_162/lstm_487/Shape:output:04sequential_162/lstm_487/strided_slice/stack:output:06sequential_162/lstm_487/strided_slice/stack_1:output:06sequential_162/lstm_487/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_162/lstm_487/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_162/lstm_487/zeros/packedPack.sequential_162/lstm_487/strided_slice:output:0/sequential_162/lstm_487/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_162/lstm_487/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_487/zerosFill-sequential_162/lstm_487/zeros/packed:output:0,sequential_162/lstm_487/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_162/lstm_487/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_162/lstm_487/zeros_1/packedPack.sequential_162/lstm_487/strided_slice:output:01sequential_162/lstm_487/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_162/lstm_487/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_487/zeros_1Fill/sequential_162/lstm_487/zeros_1/packed:output:0.sequential_162/lstm_487/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_162/lstm_487/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_162/lstm_487/transpose	Transpose'sequential_162/lstm_486/transpose_1:y:0/sequential_162/lstm_487/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_162/lstm_487/Shape_1Shape%sequential_162/lstm_487/transpose:y:0*
T0*
_output_shapes
:w
-sequential_162/lstm_487/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_487/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_487/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_487/strided_slice_1StridedSlice(sequential_162/lstm_487/Shape_1:output:06sequential_162/lstm_487/strided_slice_1/stack:output:08sequential_162/lstm_487/strided_slice_1/stack_1:output:08sequential_162/lstm_487/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_162/lstm_487/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_162/lstm_487/TensorArrayV2TensorListReserve<sequential_162/lstm_487/TensorArrayV2/element_shape:output:00sequential_162/lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_162/lstm_487/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_162/lstm_487/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_162/lstm_487/transpose:y:0Vsequential_162/lstm_487/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_162/lstm_487/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_487/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_487/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_487/strided_slice_2StridedSlice%sequential_162/lstm_487/transpose:y:06sequential_162/lstm_487/strided_slice_2/stack:output:08sequential_162/lstm_487/strided_slice_2/stack_1:output:08sequential_162/lstm_487/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOpReadVariableOpDsequential_162_lstm_487_lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_162/lstm_487/lstm_cell_421/MatMulMatMul0sequential_162/lstm_487/strided_slice_2:output:0Csequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOpFsequential_162_lstm_487_lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_162/lstm_487/lstm_cell_421/MatMul_1MatMul&sequential_162/lstm_487/zeros:output:0Esequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_162/lstm_487/lstm_cell_421/addAddV26sequential_162/lstm_487/lstm_cell_421/MatMul:product:08sequential_162/lstm_487/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOpEsequential_162_lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_162/lstm_487/lstm_cell_421/BiasAddBiasAdd-sequential_162/lstm_487/lstm_cell_421/add:z:0Dsequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_162/lstm_487/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_162/lstm_487/lstm_cell_421/splitSplit>sequential_162/lstm_487/lstm_cell_421/split/split_dim:output:06sequential_162/lstm_487/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_162/lstm_487/lstm_cell_421/SigmoidSigmoid4sequential_162/lstm_487/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_162/lstm_487/lstm_cell_421/Sigmoid_1Sigmoid4sequential_162/lstm_487/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_162/lstm_487/lstm_cell_421/mulMul3sequential_162/lstm_487/lstm_cell_421/Sigmoid_1:y:0(sequential_162/lstm_487/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_162/lstm_487/lstm_cell_421/ReluRelu4sequential_162/lstm_487/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_162/lstm_487/lstm_cell_421/mul_1Mul1sequential_162/lstm_487/lstm_cell_421/Sigmoid:y:08sequential_162/lstm_487/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_162/lstm_487/lstm_cell_421/add_1AddV2-sequential_162/lstm_487/lstm_cell_421/mul:z:0/sequential_162/lstm_487/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_162/lstm_487/lstm_cell_421/Sigmoid_2Sigmoid4sequential_162/lstm_487/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_162/lstm_487/lstm_cell_421/Relu_1Relu/sequential_162/lstm_487/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_162/lstm_487/lstm_cell_421/mul_2Mul3sequential_162/lstm_487/lstm_cell_421/Sigmoid_2:y:0:sequential_162/lstm_487/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_162/lstm_487/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_162/lstm_487/TensorArrayV2_1TensorListReserve>sequential_162/lstm_487/TensorArrayV2_1/element_shape:output:00sequential_162/lstm_487/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_162/lstm_487/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_162/lstm_487/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_162/lstm_487/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_162/lstm_487/whileWhile3sequential_162/lstm_487/while/loop_counter:output:09sequential_162/lstm_487/while/maximum_iterations:output:0%sequential_162/lstm_487/time:output:00sequential_162/lstm_487/TensorArrayV2_1:handle:0&sequential_162/lstm_487/zeros:output:0(sequential_162/lstm_487/zeros_1:output:00sequential_162/lstm_487/strided_slice_1:output:0Osequential_162/lstm_487/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_162_lstm_487_lstm_cell_421_matmul_readvariableop_resourceFsequential_162_lstm_487_lstm_cell_421_matmul_1_readvariableop_resourceEsequential_162_lstm_487_lstm_cell_421_biasadd_readvariableop_resource*
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
*sequential_162_lstm_487_while_body_2551328*6
cond.R,
*sequential_162_lstm_487_while_cond_2551327*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_162/lstm_487/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_162/lstm_487/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_162/lstm_487/while:output:3Qsequential_162/lstm_487/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_162/lstm_487/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_162/lstm_487/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_487/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_487/strided_slice_3StridedSliceCsequential_162/lstm_487/TensorArrayV2Stack/TensorListStack:tensor:06sequential_162/lstm_487/strided_slice_3/stack:output:08sequential_162/lstm_487/strided_slice_3/stack_1:output:08sequential_162/lstm_487/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_162/lstm_487/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_162/lstm_487/transpose_1	TransposeCsequential_162/lstm_487/TensorArrayV2Stack/TensorListStack:tensor:01sequential_162/lstm_487/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_162/lstm_487/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_162/lstm_488/ShapeShape'sequential_162/lstm_487/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_162/lstm_488/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_162/lstm_488/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_162/lstm_488/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_162/lstm_488/strided_sliceStridedSlice&sequential_162/lstm_488/Shape:output:04sequential_162/lstm_488/strided_slice/stack:output:06sequential_162/lstm_488/strided_slice/stack_1:output:06sequential_162/lstm_488/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_162/lstm_488/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_162/lstm_488/zeros/packedPack.sequential_162/lstm_488/strided_slice:output:0/sequential_162/lstm_488/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_162/lstm_488/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_488/zerosFill-sequential_162/lstm_488/zeros/packed:output:0,sequential_162/lstm_488/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_162/lstm_488/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_162/lstm_488/zeros_1/packedPack.sequential_162/lstm_488/strided_slice:output:01sequential_162/lstm_488/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_162/lstm_488/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_162/lstm_488/zeros_1Fill/sequential_162/lstm_488/zeros_1/packed:output:0.sequential_162/lstm_488/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_162/lstm_488/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_162/lstm_488/transpose	Transpose'sequential_162/lstm_487/transpose_1:y:0/sequential_162/lstm_488/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_162/lstm_488/Shape_1Shape%sequential_162/lstm_488/transpose:y:0*
T0*
_output_shapes
:w
-sequential_162/lstm_488/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_488/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_488/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_488/strided_slice_1StridedSlice(sequential_162/lstm_488/Shape_1:output:06sequential_162/lstm_488/strided_slice_1/stack:output:08sequential_162/lstm_488/strided_slice_1/stack_1:output:08sequential_162/lstm_488/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_162/lstm_488/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_162/lstm_488/TensorArrayV2TensorListReserve<sequential_162/lstm_488/TensorArrayV2/element_shape:output:00sequential_162/lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_162/lstm_488/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_162/lstm_488/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_162/lstm_488/transpose:y:0Vsequential_162/lstm_488/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_162/lstm_488/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_488/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_162/lstm_488/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_488/strided_slice_2StridedSlice%sequential_162/lstm_488/transpose:y:06sequential_162/lstm_488/strided_slice_2/stack:output:08sequential_162/lstm_488/strided_slice_2/stack_1:output:08sequential_162/lstm_488/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOpReadVariableOpDsequential_162_lstm_488_lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_162/lstm_488/lstm_cell_422/MatMulMatMul0sequential_162/lstm_488/strided_slice_2:output:0Csequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOpFsequential_162_lstm_488_lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_162/lstm_488/lstm_cell_422/MatMul_1MatMul&sequential_162/lstm_488/zeros:output:0Esequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_162/lstm_488/lstm_cell_422/addAddV26sequential_162/lstm_488/lstm_cell_422/MatMul:product:08sequential_162/lstm_488/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOpEsequential_162_lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_162/lstm_488/lstm_cell_422/BiasAddBiasAdd-sequential_162/lstm_488/lstm_cell_422/add:z:0Dsequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_162/lstm_488/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_162/lstm_488/lstm_cell_422/splitSplit>sequential_162/lstm_488/lstm_cell_422/split/split_dim:output:06sequential_162/lstm_488/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_162/lstm_488/lstm_cell_422/SigmoidSigmoid4sequential_162/lstm_488/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_162/lstm_488/lstm_cell_422/Sigmoid_1Sigmoid4sequential_162/lstm_488/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_162/lstm_488/lstm_cell_422/mulMul3sequential_162/lstm_488/lstm_cell_422/Sigmoid_1:y:0(sequential_162/lstm_488/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_162/lstm_488/lstm_cell_422/ReluRelu4sequential_162/lstm_488/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_162/lstm_488/lstm_cell_422/mul_1Mul1sequential_162/lstm_488/lstm_cell_422/Sigmoid:y:08sequential_162/lstm_488/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_162/lstm_488/lstm_cell_422/add_1AddV2-sequential_162/lstm_488/lstm_cell_422/mul:z:0/sequential_162/lstm_488/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_162/lstm_488/lstm_cell_422/Sigmoid_2Sigmoid4sequential_162/lstm_488/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_162/lstm_488/lstm_cell_422/Relu_1Relu/sequential_162/lstm_488/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_162/lstm_488/lstm_cell_422/mul_2Mul3sequential_162/lstm_488/lstm_cell_422/Sigmoid_2:y:0:sequential_162/lstm_488/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_162/lstm_488/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_162/lstm_488/TensorArrayV2_1TensorListReserve>sequential_162/lstm_488/TensorArrayV2_1/element_shape:output:00sequential_162/lstm_488/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_162/lstm_488/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_162/lstm_488/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_162/lstm_488/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_162/lstm_488/whileWhile3sequential_162/lstm_488/while/loop_counter:output:09sequential_162/lstm_488/while/maximum_iterations:output:0%sequential_162/lstm_488/time:output:00sequential_162/lstm_488/TensorArrayV2_1:handle:0&sequential_162/lstm_488/zeros:output:0(sequential_162/lstm_488/zeros_1:output:00sequential_162/lstm_488/strided_slice_1:output:0Osequential_162/lstm_488/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_162_lstm_488_lstm_cell_422_matmul_readvariableop_resourceFsequential_162_lstm_488_lstm_cell_422_matmul_1_readvariableop_resourceEsequential_162_lstm_488_lstm_cell_422_biasadd_readvariableop_resource*
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
*sequential_162_lstm_488_while_body_2551467*6
cond.R,
*sequential_162_lstm_488_while_cond_2551466*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_162/lstm_488/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_162/lstm_488/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_162/lstm_488/while:output:3Qsequential_162/lstm_488/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_162/lstm_488/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_162/lstm_488/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_162/lstm_488/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_162/lstm_488/strided_slice_3StridedSliceCsequential_162/lstm_488/TensorArrayV2Stack/TensorListStack:tensor:06sequential_162/lstm_488/strided_slice_3/stack:output:08sequential_162/lstm_488/strided_slice_3/stack_1:output:08sequential_162/lstm_488/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_162/lstm_488/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_162/lstm_488/transpose_1	TransposeCsequential_162/lstm_488/TensorArrayV2Stack/TensorListStack:tensor:01sequential_162/lstm_488/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_162/lstm_488/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_162/dense_162/MatMul/ReadVariableOpReadVariableOp7sequential_162_dense_162_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_162/dense_162/MatMulMatMul0sequential_162/lstm_488/strided_slice_3:output:06sequential_162/dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_162/dense_162/BiasAdd/ReadVariableOpReadVariableOp8sequential_162_dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_162/dense_162/BiasAddBiasAdd)sequential_162/dense_162/MatMul:product:07sequential_162/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_162/dense_162/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_162/dense_162/BiasAdd/ReadVariableOp/^sequential_162/dense_162/MatMul/ReadVariableOp=^sequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp<^sequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOp>^sequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp^sequential_162/lstm_486/while=^sequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp<^sequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOp>^sequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp^sequential_162/lstm_487/while=^sequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp<^sequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOp>^sequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp^sequential_162/lstm_488/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_162/dense_162/BiasAdd/ReadVariableOp/sequential_162/dense_162/BiasAdd/ReadVariableOp2`
.sequential_162/dense_162/MatMul/ReadVariableOp.sequential_162/dense_162/MatMul/ReadVariableOp2|
<sequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp<sequential_162/lstm_486/lstm_cell_420/BiasAdd/ReadVariableOp2z
;sequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOp;sequential_162/lstm_486/lstm_cell_420/MatMul/ReadVariableOp2~
=sequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp=sequential_162/lstm_486/lstm_cell_420/MatMul_1/ReadVariableOp2>
sequential_162/lstm_486/whilesequential_162/lstm_486/while2|
<sequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp<sequential_162/lstm_487/lstm_cell_421/BiasAdd/ReadVariableOp2z
;sequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOp;sequential_162/lstm_487/lstm_cell_421/MatMul/ReadVariableOp2~
=sequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp=sequential_162/lstm_487/lstm_cell_421/MatMul_1/ReadVariableOp2>
sequential_162/lstm_487/whilesequential_162/lstm_487/while2|
<sequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp<sequential_162/lstm_488/lstm_cell_422/BiasAdd/ReadVariableOp2z
;sequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOp;sequential_162/lstm_488/lstm_cell_422/MatMul/ReadVariableOp2~
=sequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp=sequential_162/lstm_488/lstm_cell_422/MatMul_1/ReadVariableOp2>
sequential_162/lstm_488/whilesequential_162/lstm_488/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_486_input
?

?
lstm_486_while_cond_2554356.
*lstm_486_while_lstm_486_while_loop_counter4
0lstm_486_while_lstm_486_while_maximum_iterations
lstm_486_while_placeholder 
lstm_486_while_placeholder_1 
lstm_486_while_placeholder_2 
lstm_486_while_placeholder_30
,lstm_486_while_less_lstm_486_strided_slice_1G
Clstm_486_while_lstm_486_while_cond_2554356___redundant_placeholder0G
Clstm_486_while_lstm_486_while_cond_2554356___redundant_placeholder1G
Clstm_486_while_lstm_486_while_cond_2554356___redundant_placeholder2G
Clstm_486_while_lstm_486_while_cond_2554356___redundant_placeholder3
lstm_486_while_identity
?
lstm_486/while/LessLesslstm_486_while_placeholder,lstm_486_while_less_lstm_486_strided_slice_1*
T0*
_output_shapes
: ]
lstm_486/while/IdentityIdentitylstm_486/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_486_while_identity lstm_486/while/Identity:output:0*(
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
while_body_2552672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551624

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
while_cond_2551987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2551987___redundant_placeholder05
1while_while_cond_2551987___redundant_placeholder15
1while_while_cond_2551987___redundant_placeholder25
1while_while_cond_2551987___redundant_placeholder3
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
while_cond_2552528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552528___redundant_placeholder05
1while_while_cond_2552528___redundant_placeholder15
1while_while_cond_2552528___redundant_placeholder25
1while_while_cond_2552528___redundant_placeholder3
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
/__inference_lstm_cell_422_layer_call_fn_2556805

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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552324o
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2551898

inputs(
lstm_cell_420_2551816:	?(
lstm_cell_420_2551818:	d?$
lstm_cell_420_2551820:	?
identity??%lstm_cell_420/StatefulPartitionedCall?while;
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
%lstm_cell_420/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_420_2551816lstm_cell_420_2551818lstm_cell_420_2551820*
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551770n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_420_2551816lstm_cell_420_2551818lstm_cell_420_2551820*
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
while_body_2551829*
condR
while_cond_2551828*K
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
NoOpNoOp&^lstm_cell_420/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_420/StatefulPartitionedCall%lstm_cell_420/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556690

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
while_body_2555587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_487_while_body_2554069.
*lstm_487_while_lstm_487_while_loop_counter4
0lstm_487_while_lstm_487_while_maximum_iterations
lstm_487_while_placeholder 
lstm_487_while_placeholder_1 
lstm_487_while_placeholder_2 
lstm_487_while_placeholder_3-
)lstm_487_while_lstm_487_strided_slice_1_0i
elstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0:	d?R
?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?M
>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
lstm_487_while_identity
lstm_487_while_identity_1
lstm_487_while_identity_2
lstm_487_while_identity_3
lstm_487_while_identity_4
lstm_487_while_identity_5+
'lstm_487_while_lstm_487_strided_slice_1g
clstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensorN
;lstm_487_while_lstm_cell_421_matmul_readvariableop_resource:	d?P
=lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource:	2?K
<lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource:	???3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp?2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp?4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp?
@lstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_487/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0lstm_487_while_placeholderIlstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_487/while/lstm_cell_421/MatMulMatMul9lstm_487/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_487/while/lstm_cell_421/MatMul_1MatMullstm_487_while_placeholder_2<lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_487/while/lstm_cell_421/addAddV2-lstm_487/while/lstm_cell_421/MatMul:product:0/lstm_487/while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_487/while/lstm_cell_421/BiasAddBiasAdd$lstm_487/while/lstm_cell_421/add:z:0;lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_487/while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_487/while/lstm_cell_421/splitSplit5lstm_487/while/lstm_cell_421/split/split_dim:output:0-lstm_487/while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_487/while/lstm_cell_421/SigmoidSigmoid+lstm_487/while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_487/while/lstm_cell_421/Sigmoid_1Sigmoid+lstm_487/while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_487/while/lstm_cell_421/mulMul*lstm_487/while/lstm_cell_421/Sigmoid_1:y:0lstm_487_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_487/while/lstm_cell_421/ReluRelu+lstm_487/while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/mul_1Mul(lstm_487/while/lstm_cell_421/Sigmoid:y:0/lstm_487/while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/add_1AddV2$lstm_487/while/lstm_cell_421/mul:z:0&lstm_487/while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_487/while/lstm_cell_421/Sigmoid_2Sigmoid+lstm_487/while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_487/while/lstm_cell_421/Relu_1Relu&lstm_487/while/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_487/while/lstm_cell_421/mul_2Mul*lstm_487/while/lstm_cell_421/Sigmoid_2:y:01lstm_487/while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_487/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_487_while_placeholder_1lstm_487_while_placeholder&lstm_487/while/lstm_cell_421/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_487/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_487/while/addAddV2lstm_487_while_placeholderlstm_487/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_487/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_487/while/add_1AddV2*lstm_487_while_lstm_487_while_loop_counterlstm_487/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_487/while/IdentityIdentitylstm_487/while/add_1:z:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_1Identity0lstm_487_while_lstm_487_while_maximum_iterations^lstm_487/while/NoOp*
T0*
_output_shapes
: t
lstm_487/while/Identity_2Identitylstm_487/while/add:z:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_3IdentityClstm_487/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_487/while/NoOp*
T0*
_output_shapes
: ?
lstm_487/while/Identity_4Identity&lstm_487/while/lstm_cell_421/mul_2:z:0^lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_487/while/Identity_5Identity&lstm_487/while/lstm_cell_421/add_1:z:0^lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_487/while/NoOpNoOp4^lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp3^lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp5^lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_487_while_identity lstm_487/while/Identity:output:0"?
lstm_487_while_identity_1"lstm_487/while/Identity_1:output:0"?
lstm_487_while_identity_2"lstm_487/while/Identity_2:output:0"?
lstm_487_while_identity_3"lstm_487/while/Identity_3:output:0"?
lstm_487_while_identity_4"lstm_487/while/Identity_4:output:0"?
lstm_487_while_identity_5"lstm_487/while/Identity_5:output:0"T
'lstm_487_while_lstm_487_strided_slice_1)lstm_487_while_lstm_487_strided_slice_1_0"~
<lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource>lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0"?
=lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource?lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0"|
;lstm_487_while_lstm_cell_421_matmul_readvariableop_resource=lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0"?
clstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensorelstm_487_while_tensorarrayv2read_tensorlistgetitem_lstm_487_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp3lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp2h
2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp2lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp2l
4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp4lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_162_layer_call_fn_2553106
lstm_486_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_486_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553081o
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
_user_specified_namelstm_486_input
?
?
*__inference_lstm_487_layer_call_fn_2555374

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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552906s
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2554912
inputs_0?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2554828*
condR
while_cond_2554827*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2555113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555113___redundant_placeholder05
1while_while_cond_2555113___redundant_placeholder15
1while_while_cond_2555113___redundant_placeholder25
1while_while_cond_2555113___redundant_placeholder3
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
while_cond_2554827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2554827___redundant_placeholder05
1while_while_cond_2554827___redundant_placeholder15
1while_while_cond_2554827___redundant_placeholder25
1while_while_cond_2554827___redundant_placeholder3
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
?
?
+__inference_dense_162_layer_call_fn_2556582

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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074o
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
?
?
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553752
lstm_486_input#
lstm_486_2553725:	?#
lstm_486_2553727:	d?
lstm_486_2553729:	?#
lstm_487_2553732:	d?#
lstm_487_2553734:	2?
lstm_487_2553736:	?"
lstm_488_2553739:2("
lstm_488_2553741:
(
lstm_488_2553743:(#
dense_162_2553746:

dense_162_2553748:
identity??!dense_162/StatefulPartitionedCall? lstm_486/StatefulPartitionedCall? lstm_487/StatefulPartitionedCall? lstm_488/StatefulPartitionedCall?
 lstm_486/StatefulPartitionedCallStatefulPartitionedCalllstm_486_inputlstm_486_2553725lstm_486_2553727lstm_486_2553729*
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2552756?
 lstm_487/StatefulPartitionedCallStatefulPartitionedCall)lstm_486/StatefulPartitionedCall:output:0lstm_487_2553732lstm_487_2553734lstm_487_2553736*
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552906?
 lstm_488/StatefulPartitionedCallStatefulPartitionedCall)lstm_487/StatefulPartitionedCall:output:0lstm_488_2553739lstm_488_2553741lstm_488_2553743*
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553056?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall)lstm_488/StatefulPartitionedCall:output:0dense_162_2553746dense_162_2553748*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074y
IdentityIdentity*dense_162/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_162/StatefulPartitionedCall!^lstm_486/StatefulPartitionedCall!^lstm_487/StatefulPartitionedCall!^lstm_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2D
 lstm_486/StatefulPartitionedCall lstm_486/StatefulPartitionedCall2D
 lstm_487/StatefulPartitionedCall lstm_487/StatefulPartitionedCall2D
 lstm_488/StatefulPartitionedCall lstm_488/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_486_input
?8
?
while_body_2555114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_421_layer_call_fn_2556724

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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2552120o
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
while_cond_2555872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555872___redundant_placeholder05
1while_while_cond_2555872___redundant_placeholder15
1while_while_cond_2555872___redundant_placeholder25
1while_while_cond_2555872___redundant_placeholder3
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
while_body_2553518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2555257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_162_layer_call_fn_2553722
lstm_486_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_486_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553670o
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
_user_specified_namelstm_486_input
?

?
lstm_487_while_cond_2554495.
*lstm_487_while_lstm_487_while_loop_counter4
0lstm_487_while_lstm_487_while_maximum_iterations
lstm_487_while_placeholder 
lstm_487_while_placeholder_1 
lstm_487_while_placeholder_2 
lstm_487_while_placeholder_30
,lstm_487_while_less_lstm_487_strided_slice_1G
Clstm_487_while_lstm_487_while_cond_2554495___redundant_placeholder0G
Clstm_487_while_lstm_487_while_cond_2554495___redundant_placeholder1G
Clstm_487_while_lstm_487_while_cond_2554495___redundant_placeholder2G
Clstm_487_while_lstm_487_while_cond_2554495___redundant_placeholder3
lstm_487_while_identity
?
lstm_487/while/LessLesslstm_487_while_placeholder,lstm_487_while_less_lstm_487_strided_slice_1*
T0*
_output_shapes
: ]
lstm_487/while/IdentityIdentitylstm_487/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_487_while_identity lstm_487/while/Identity:output:0*(
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555055
inputs_0?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2554971*
condR
while_cond_2554970*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2555444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_421_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_421_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_421_matmul_readvariableop_resource:	d?G
4while_lstm_cell_421_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_421_biasadd_readvariableop_resource:	???*while/lstm_cell_421/BiasAdd/ReadVariableOp?)while/lstm_cell_421/MatMul/ReadVariableOp?+while/lstm_cell_421/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_421/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_421/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_421/addAddV2$while/lstm_cell_421/MatMul:product:0&while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_421/BiasAddBiasAddwhile/lstm_cell_421/add:z:02while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_421/splitSplit,while/lstm_cell_421/split/split_dim:output:0$while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_421/SigmoidSigmoid"while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_1Sigmoid"while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mulMul!while/lstm_cell_421/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_421/ReluRelu"while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_1Mulwhile/lstm_cell_421/Sigmoid:y:0&while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/add_1AddV2while/lstm_cell_421/mul:z:0while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_421/Sigmoid_2Sigmoid"while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_421/Relu_1Reluwhile/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_421/mul_2Mul!while/lstm_cell_421/Sigmoid_2:y:0(while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_421/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_421/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_421/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_421/BiasAdd/ReadVariableOp*^while/lstm_cell_421/MatMul/ReadVariableOp,^while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_421_biasadd_readvariableop_resource5while_lstm_cell_421_biasadd_readvariableop_resource_0"n
4while_lstm_cell_421_matmul_1_readvariableop_resource6while_lstm_cell_421_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_421_matmul_readvariableop_resource4while_lstm_cell_421_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_421/BiasAdd/ReadVariableOp*while/lstm_cell_421/BiasAdd/ReadVariableOp2V
)while/lstm_cell_421/MatMul/ReadVariableOp)while/lstm_cell_421/MatMul/ReadVariableOp2Z
+while/lstm_cell_421/MatMul_1/ReadVariableOp+while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2554828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_420_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_420_matmul_readvariableop_resource:	?G
4while_lstm_cell_420_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_420_biasadd_readvariableop_resource:	???*while/lstm_cell_420/BiasAdd/ReadVariableOp?)while/lstm_cell_420/MatMul/ReadVariableOp?+while/lstm_cell_420/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_420/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_420/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_420/addAddV2$while/lstm_cell_420/MatMul:product:0&while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_420/BiasAddBiasAddwhile/lstm_cell_420/add:z:02while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_420/splitSplit,while/lstm_cell_420/split/split_dim:output:0$while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_420/SigmoidSigmoid"while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_1Sigmoid"while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mulMul!while/lstm_cell_420/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_420/ReluRelu"while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_1Mulwhile/lstm_cell_420/Sigmoid:y:0&while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/add_1AddV2while/lstm_cell_420/mul:z:0while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_420/Sigmoid_2Sigmoid"while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_420/Relu_1Reluwhile/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_420/mul_2Mul!while/lstm_cell_420/Sigmoid_2:y:0(while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_420/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_420/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_420/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_420/BiasAdd/ReadVariableOp*^while/lstm_cell_420/MatMul/ReadVariableOp,^while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_420_biasadd_readvariableop_resource5while_lstm_cell_420_biasadd_readvariableop_resource_0"n
4while_lstm_cell_420_matmul_1_readvariableop_resource6while_lstm_cell_420_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_420_matmul_readvariableop_resource4while_lstm_cell_420_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_420/BiasAdd/ReadVariableOp*while/lstm_cell_420/BiasAdd/ReadVariableOp2V
)while/lstm_cell_420/MatMul/ReadVariableOp)while/lstm_cell_420/MatMul/ReadVariableOp2Z
+while/lstm_cell_420/MatMul_1/ReadVariableOp+while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_488_layer_call_fn_2556001

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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553272o
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
?
/__inference_lstm_cell_421_layer_call_fn_2556707

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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2551974o
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556430

inputs>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2556346*
condR
while_cond_2556345*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_162_layer_call_fn_2553844

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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553081o
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

?
%__inference_signature_wrapper_2553817
lstm_486_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_486_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2551557o
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
_user_specified_namelstm_486_input
?C
?

lstm_486_while_body_2554357.
*lstm_486_while_lstm_486_while_loop_counter4
0lstm_486_while_lstm_486_while_maximum_iterations
lstm_486_while_placeholder 
lstm_486_while_placeholder_1 
lstm_486_while_placeholder_2 
lstm_486_while_placeholder_3-
)lstm_486_while_lstm_486_strided_slice_1_0i
elstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0:	?R
?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?M
>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
lstm_486_while_identity
lstm_486_while_identity_1
lstm_486_while_identity_2
lstm_486_while_identity_3
lstm_486_while_identity_4
lstm_486_while_identity_5+
'lstm_486_while_lstm_486_strided_slice_1g
clstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensorN
;lstm_486_while_lstm_cell_420_matmul_readvariableop_resource:	?P
=lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource:	d?K
<lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource:	???3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp?2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp?4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp?
@lstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_486/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0lstm_486_while_placeholderIlstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_486/while/lstm_cell_420/MatMulMatMul9lstm_486/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_486/while/lstm_cell_420/MatMul_1MatMullstm_486_while_placeholder_2<lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_486/while/lstm_cell_420/addAddV2-lstm_486/while/lstm_cell_420/MatMul:product:0/lstm_486/while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_486/while/lstm_cell_420/BiasAddBiasAdd$lstm_486/while/lstm_cell_420/add:z:0;lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_486/while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_486/while/lstm_cell_420/splitSplit5lstm_486/while/lstm_cell_420/split/split_dim:output:0-lstm_486/while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_486/while/lstm_cell_420/SigmoidSigmoid+lstm_486/while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_486/while/lstm_cell_420/Sigmoid_1Sigmoid+lstm_486/while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_486/while/lstm_cell_420/mulMul*lstm_486/while/lstm_cell_420/Sigmoid_1:y:0lstm_486_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_486/while/lstm_cell_420/ReluRelu+lstm_486/while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/mul_1Mul(lstm_486/while/lstm_cell_420/Sigmoid:y:0/lstm_486/while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/add_1AddV2$lstm_486/while/lstm_cell_420/mul:z:0&lstm_486/while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_486/while/lstm_cell_420/Sigmoid_2Sigmoid+lstm_486/while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_486/while/lstm_cell_420/Relu_1Relu&lstm_486/while/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/mul_2Mul*lstm_486/while/lstm_cell_420/Sigmoid_2:y:01lstm_486/while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_486/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_486_while_placeholder_1lstm_486_while_placeholder&lstm_486/while/lstm_cell_420/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_486/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_486/while/addAddV2lstm_486_while_placeholderlstm_486/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_486/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_486/while/add_1AddV2*lstm_486_while_lstm_486_while_loop_counterlstm_486/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_486/while/IdentityIdentitylstm_486/while/add_1:z:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_1Identity0lstm_486_while_lstm_486_while_maximum_iterations^lstm_486/while/NoOp*
T0*
_output_shapes
: t
lstm_486/while/Identity_2Identitylstm_486/while/add:z:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_3IdentityClstm_486/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_4Identity&lstm_486/while/lstm_cell_420/mul_2:z:0^lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_486/while/Identity_5Identity&lstm_486/while/lstm_cell_420/add_1:z:0^lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_486/while/NoOpNoOp4^lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp3^lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp5^lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_486_while_identity lstm_486/while/Identity:output:0"?
lstm_486_while_identity_1"lstm_486/while/Identity_1:output:0"?
lstm_486_while_identity_2"lstm_486/while/Identity_2:output:0"?
lstm_486_while_identity_3"lstm_486/while/Identity_3:output:0"?
lstm_486_while_identity_4"lstm_486/while/Identity_4:output:0"?
lstm_486_while_identity_5"lstm_486/while/Identity_5:output:0"T
'lstm_486_while_lstm_486_strided_slice_1)lstm_486_while_lstm_486_strided_slice_1_0"~
<lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0"?
=lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0"|
;lstm_486_while_lstm_cell_420_matmul_readvariableop_resource=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0"?
clstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensorelstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp2h
2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp2l
4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553081

inputs#
lstm_486_2552757:	?#
lstm_486_2552759:	d?
lstm_486_2552761:	?#
lstm_487_2552907:	d?#
lstm_487_2552909:	2?
lstm_487_2552911:	?"
lstm_488_2553057:2("
lstm_488_2553059:
(
lstm_488_2553061:(#
dense_162_2553075:

dense_162_2553077:
identity??!dense_162/StatefulPartitionedCall? lstm_486/StatefulPartitionedCall? lstm_487/StatefulPartitionedCall? lstm_488/StatefulPartitionedCall?
 lstm_486/StatefulPartitionedCallStatefulPartitionedCallinputslstm_486_2552757lstm_486_2552759lstm_486_2552761*
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2552756?
 lstm_487/StatefulPartitionedCallStatefulPartitionedCall)lstm_486/StatefulPartitionedCall:output:0lstm_487_2552907lstm_487_2552909lstm_487_2552911*
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552906?
 lstm_488/StatefulPartitionedCallStatefulPartitionedCall)lstm_487/StatefulPartitionedCall:output:0lstm_488_2553057lstm_488_2553059lstm_488_2553061*
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553056?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall)lstm_488/StatefulPartitionedCall:output:0dense_162_2553075dense_162_2553077*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2553074y
IdentityIdentity*dense_162/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_162/StatefulPartitionedCall!^lstm_486/StatefulPartitionedCall!^lstm_487/StatefulPartitionedCall!^lstm_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2D
 lstm_486/StatefulPartitionedCall lstm_486/StatefulPartitionedCall2D
 lstm_487/StatefulPartitionedCall lstm_487/StatefulPartitionedCall2D
 lstm_488/StatefulPartitionedCall lstm_488/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_486_layer_call_fn_2554747
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2551898|
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
?C
?

lstm_486_while_body_2553930.
*lstm_486_while_lstm_486_while_loop_counter4
0lstm_486_while_lstm_486_while_maximum_iterations
lstm_486_while_placeholder 
lstm_486_while_placeholder_1 
lstm_486_while_placeholder_2 
lstm_486_while_placeholder_3-
)lstm_486_while_lstm_486_strided_slice_1_0i
elstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0:	?R
?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0:	d?M
>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0:	?
lstm_486_while_identity
lstm_486_while_identity_1
lstm_486_while_identity_2
lstm_486_while_identity_3
lstm_486_while_identity_4
lstm_486_while_identity_5+
'lstm_486_while_lstm_486_strided_slice_1g
clstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensorN
;lstm_486_while_lstm_cell_420_matmul_readvariableop_resource:	?P
=lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource:	d?K
<lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource:	???3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp?2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp?4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp?
@lstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_486/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0lstm_486_while_placeholderIlstm_486/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOpReadVariableOp=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_486/while/lstm_cell_420/MatMulMatMul9lstm_486/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_486/while/lstm_cell_420/MatMul_1MatMullstm_486_while_placeholder_2<lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_486/while/lstm_cell_420/addAddV2-lstm_486/while/lstm_cell_420/MatMul:product:0/lstm_486/while/lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_486/while/lstm_cell_420/BiasAddBiasAdd$lstm_486/while/lstm_cell_420/add:z:0;lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_486/while/lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_486/while/lstm_cell_420/splitSplit5lstm_486/while/lstm_cell_420/split/split_dim:output:0-lstm_486/while/lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_486/while/lstm_cell_420/SigmoidSigmoid+lstm_486/while/lstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_486/while/lstm_cell_420/Sigmoid_1Sigmoid+lstm_486/while/lstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_486/while/lstm_cell_420/mulMul*lstm_486/while/lstm_cell_420/Sigmoid_1:y:0lstm_486_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_486/while/lstm_cell_420/ReluRelu+lstm_486/while/lstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/mul_1Mul(lstm_486/while/lstm_cell_420/Sigmoid:y:0/lstm_486/while/lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/add_1AddV2$lstm_486/while/lstm_cell_420/mul:z:0&lstm_486/while/lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_486/while/lstm_cell_420/Sigmoid_2Sigmoid+lstm_486/while/lstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_486/while/lstm_cell_420/Relu_1Relu&lstm_486/while/lstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_486/while/lstm_cell_420/mul_2Mul*lstm_486/while/lstm_cell_420/Sigmoid_2:y:01lstm_486/while/lstm_cell_420/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_486/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_486_while_placeholder_1lstm_486_while_placeholder&lstm_486/while/lstm_cell_420/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_486/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_486/while/addAddV2lstm_486_while_placeholderlstm_486/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_486/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_486/while/add_1AddV2*lstm_486_while_lstm_486_while_loop_counterlstm_486/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_486/while/IdentityIdentitylstm_486/while/add_1:z:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_1Identity0lstm_486_while_lstm_486_while_maximum_iterations^lstm_486/while/NoOp*
T0*
_output_shapes
: t
lstm_486/while/Identity_2Identitylstm_486/while/add:z:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_3IdentityClstm_486/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_486/while/NoOp*
T0*
_output_shapes
: ?
lstm_486/while/Identity_4Identity&lstm_486/while/lstm_cell_420/mul_2:z:0^lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_486/while/Identity_5Identity&lstm_486/while/lstm_cell_420/add_1:z:0^lstm_486/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_486/while/NoOpNoOp4^lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp3^lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp5^lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_486_while_identity lstm_486/while/Identity:output:0"?
lstm_486_while_identity_1"lstm_486/while/Identity_1:output:0"?
lstm_486_while_identity_2"lstm_486/while/Identity_2:output:0"?
lstm_486_while_identity_3"lstm_486/while/Identity_3:output:0"?
lstm_486_while_identity_4"lstm_486/while/Identity_4:output:0"?
lstm_486_while_identity_5"lstm_486/while/Identity_5:output:0"T
'lstm_486_while_lstm_486_strided_slice_1)lstm_486_while_lstm_486_strided_slice_1_0"~
<lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource>lstm_486_while_lstm_cell_420_biasadd_readvariableop_resource_0"?
=lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource?lstm_486_while_lstm_cell_420_matmul_1_readvariableop_resource_0"|
;lstm_486_while_lstm_cell_420_matmul_readvariableop_resource=lstm_486_while_lstm_cell_420_matmul_readvariableop_resource_0"?
clstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensorelstm_486_while_tensorarrayv2read_tensorlistgetitem_lstm_486_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp3lstm_486/while/lstm_cell_420/BiasAdd/ReadVariableOp2h
2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp2lstm_486/while/lstm_cell_420/MatMul/ReadVariableOp2l
4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp4lstm_486/while/lstm_cell_420/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_486_layer_call_fn_2554769

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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2553602s
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2551707

inputs(
lstm_cell_420_2551625:	?(
lstm_cell_420_2551627:	d?$
lstm_cell_420_2551629:	?
identity??%lstm_cell_420/StatefulPartitionedCall?while;
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
%lstm_cell_420/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_420_2551625lstm_cell_420_2551627lstm_cell_420_2551629*
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2551624n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_420_2551625lstm_cell_420_2551627lstm_cell_420_2551629*
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
while_body_2551638*
condR
while_cond_2551637*K
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
NoOpNoOp&^lstm_cell_420/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_420/StatefulPartitionedCall%lstm_cell_420/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2555729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555729___redundant_placeholder05
1while_while_cond_2555729___redundant_placeholder15
1while_while_cond_2555729___redundant_placeholder25
1while_while_cond_2555729___redundant_placeholder3
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
while_body_2556203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552324

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
?
*sequential_162_lstm_487_while_cond_2551327L
Hsequential_162_lstm_487_while_sequential_162_lstm_487_while_loop_counterR
Nsequential_162_lstm_487_while_sequential_162_lstm_487_while_maximum_iterations-
)sequential_162_lstm_487_while_placeholder/
+sequential_162_lstm_487_while_placeholder_1/
+sequential_162_lstm_487_while_placeholder_2/
+sequential_162_lstm_487_while_placeholder_3N
Jsequential_162_lstm_487_while_less_sequential_162_lstm_487_strided_slice_1e
asequential_162_lstm_487_while_sequential_162_lstm_487_while_cond_2551327___redundant_placeholder0e
asequential_162_lstm_487_while_sequential_162_lstm_487_while_cond_2551327___redundant_placeholder1e
asequential_162_lstm_487_while_sequential_162_lstm_487_while_cond_2551327___redundant_placeholder2e
asequential_162_lstm_487_while_sequential_162_lstm_487_while_cond_2551327___redundant_placeholder3*
&sequential_162_lstm_487_while_identity
?
"sequential_162/lstm_487/while/LessLess)sequential_162_lstm_487_while_placeholderJsequential_162_lstm_487_while_less_sequential_162_lstm_487_strided_slice_1*
T0*
_output_shapes
: {
&sequential_162/lstm_487/while/IdentityIdentity&sequential_162/lstm_487/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_162_lstm_487_while_identity/sequential_162/lstm_487/while/Identity:output:0*(
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2553056

inputs>
,lstm_cell_422_matmul_readvariableop_resource:2(@
.lstm_cell_422_matmul_1_readvariableop_resource:
(;
-lstm_cell_422_biasadd_readvariableop_resource:(
identity??$lstm_cell_422/BiasAdd/ReadVariableOp?#lstm_cell_422/MatMul/ReadVariableOp?%lstm_cell_422/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_422/MatMul/ReadVariableOpReadVariableOp,lstm_cell_422_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_422/MatMulMatMulstrided_slice_2:output:0+lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_422_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_422/MatMul_1MatMulzeros:output:0-lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_422/addAddV2lstm_cell_422/MatMul:product:0 lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_422_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_422/BiasAddBiasAddlstm_cell_422/add:z:0,lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_422/splitSplit&lstm_cell_422/split/split_dim:output:0lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_422/SigmoidSigmoidlstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_1Sigmoidlstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_422/mulMullstm_cell_422/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_422/ReluRelulstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_1Mullstm_cell_422/Sigmoid:y:0 lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_422/add_1AddV2lstm_cell_422/mul:z:0lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_422/Sigmoid_2Sigmoidlstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_422/Relu_1Relulstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_422/mul_2Mullstm_cell_422/Sigmoid_2:y:0"lstm_cell_422/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_422_matmul_readvariableop_resource.lstm_cell_422_matmul_1_readvariableop_resource-lstm_cell_422_biasadd_readvariableop_resource*
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
while_body_2552972*
condR
while_cond_2552971*K
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
NoOpNoOp%^lstm_cell_422/BiasAdd/ReadVariableOp$^lstm_cell_422/MatMul/ReadVariableOp&^lstm_cell_422/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_422/BiasAdd/ReadVariableOp$lstm_cell_422/BiasAdd/ReadVariableOp2J
#lstm_cell_422/MatMul/ReadVariableOp#lstm_cell_422/MatMul/ReadVariableOp2N
%lstm_cell_422/MatMul_1/ReadVariableOp%lstm_cell_422/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_422_layer_call_fn_2556822

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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552470o
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
while_cond_2556488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2556488___redundant_placeholder05
1while_while_cond_2556488___redundant_placeholder15
1while_while_cond_2556488___redundant_placeholder25
1while_while_cond_2556488___redundant_placeholder3
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
while_cond_2554970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2554970___redundant_placeholder05
1while_while_cond_2554970___redundant_placeholder15
1while_while_cond_2554970___redundant_placeholder25
1while_while_cond_2554970___redundant_placeholder3
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
while_cond_2552178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552178___redundant_placeholder05
1while_while_cond_2552178___redundant_placeholder15
1while_while_cond_2552178___redundant_placeholder25
1while_while_cond_2552178___redundant_placeholder3
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2556592

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
?
*__inference_lstm_487_layer_call_fn_2555363
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552248|
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
*__inference_lstm_486_layer_call_fn_2554736
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2551707|
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
*__inference_lstm_488_layer_call_fn_2555968
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2552407o
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
while_cond_2553517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2553517___redundant_placeholder05
1while_while_cond_2553517___redundant_placeholder15
1while_while_cond_2553517___redundant_placeholder25
1while_while_cond_2553517___redundant_placeholder3
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
while_body_2553188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_422_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_422_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_422_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_422_matmul_readvariableop_resource:2(F
4while_lstm_cell_422_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_422_biasadd_readvariableop_resource:(??*while/lstm_cell_422/BiasAdd/ReadVariableOp?)while/lstm_cell_422/MatMul/ReadVariableOp?+while/lstm_cell_422/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_422/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_422_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_422/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_422/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_422_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_422/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_422/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_422/addAddV2$while/lstm_cell_422/MatMul:product:0&while/lstm_cell_422/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_422/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_422_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_422/BiasAddBiasAddwhile/lstm_cell_422/add:z:02while/lstm_cell_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_422/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_422/splitSplit,while/lstm_cell_422/split/split_dim:output:0$while/lstm_cell_422/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_422/SigmoidSigmoid"while/lstm_cell_422/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_1Sigmoid"while/lstm_cell_422/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mulMul!while/lstm_cell_422/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_422/ReluRelu"while/lstm_cell_422/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_1Mulwhile/lstm_cell_422/Sigmoid:y:0&while/lstm_cell_422/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/add_1AddV2while/lstm_cell_422/mul:z:0while/lstm_cell_422/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_422/Sigmoid_2Sigmoid"while/lstm_cell_422/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_422/Relu_1Reluwhile/lstm_cell_422/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_422/mul_2Mul!while/lstm_cell_422/Sigmoid_2:y:0(while/lstm_cell_422/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_422/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_422/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_422/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_422/BiasAdd/ReadVariableOp*^while/lstm_cell_422/MatMul/ReadVariableOp,^while/lstm_cell_422/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_422_biasadd_readvariableop_resource5while_lstm_cell_422_biasadd_readvariableop_resource_0"n
4while_lstm_cell_422_matmul_1_readvariableop_resource6while_lstm_cell_422_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_422_matmul_readvariableop_resource4while_lstm_cell_422_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_422/BiasAdd/ReadVariableOp*while/lstm_cell_422/BiasAdd/ReadVariableOp2V
)while/lstm_cell_422/MatMul/ReadVariableOp)while/lstm_cell_422/MatMul/ReadVariableOp2Z
+while/lstm_cell_422/MatMul_1/ReadVariableOp+while/lstm_cell_422/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555814

inputs?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2555730*
condR
while_cond_2555729*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2552671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552671___redundant_placeholder05
1while_while_cond_2552671___redundant_placeholder15
1while_while_cond_2552671___redundant_placeholder25
1while_while_cond_2552671___redundant_placeholder3
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
while_cond_2553352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2553352___redundant_placeholder05
1while_while_cond_2553352___redundant_placeholder15
1while_while_cond_2553352___redundant_placeholder25
1while_while_cond_2553352___redundant_placeholder3
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
*__inference_lstm_487_layer_call_fn_2555352
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552057|
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555198

inputs?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2555114*
condR
while_cond_2555113*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_162_lstm_488_while_cond_2551466L
Hsequential_162_lstm_488_while_sequential_162_lstm_488_while_loop_counterR
Nsequential_162_lstm_488_while_sequential_162_lstm_488_while_maximum_iterations-
)sequential_162_lstm_488_while_placeholder/
+sequential_162_lstm_488_while_placeholder_1/
+sequential_162_lstm_488_while_placeholder_2/
+sequential_162_lstm_488_while_placeholder_3N
Jsequential_162_lstm_488_while_less_sequential_162_lstm_488_strided_slice_1e
asequential_162_lstm_488_while_sequential_162_lstm_488_while_cond_2551466___redundant_placeholder0e
asequential_162_lstm_488_while_sequential_162_lstm_488_while_cond_2551466___redundant_placeholder1e
asequential_162_lstm_488_while_sequential_162_lstm_488_while_cond_2551466___redundant_placeholder2e
asequential_162_lstm_488_while_sequential_162_lstm_488_while_cond_2551466___redundant_placeholder3*
&sequential_162_lstm_488_while_identity
?
"sequential_162/lstm_488/while/LessLess)sequential_162_lstm_488_while_placeholderJsequential_162_lstm_488_while_less_sequential_162_lstm_488_strided_slice_1*
T0*
_output_shapes
: {
&sequential_162/lstm_488/while/IdentityIdentity&sequential_162/lstm_488/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_162_lstm_488_while_identity/sequential_162/lstm_488/while/Identity:output:0*(
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
while_cond_2552337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2552337___redundant_placeholder05
1while_while_cond_2552337___redundant_placeholder15
1while_while_cond_2552337___redundant_placeholder25
1while_while_cond_2552337___redundant_placeholder3
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
while_body_2551988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_421_2552012_0:	d?0
while_lstm_cell_421_2552014_0:	2?,
while_lstm_cell_421_2552016_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_421_2552012:	d?.
while_lstm_cell_421_2552014:	2?*
while_lstm_cell_421_2552016:	???+while/lstm_cell_421/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_421/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_421_2552012_0while_lstm_cell_421_2552014_0while_lstm_cell_421_2552016_0*
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2551974?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_421/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_421/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_421/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_421/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_421_2552012while_lstm_cell_421_2552012_0"<
while_lstm_cell_421_2552014while_lstm_cell_421_2552014_0"<
while_lstm_cell_421_2552016while_lstm_cell_421_2552016_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_421/StatefulPartitionedCall+while/lstm_cell_421/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2556345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2556345___redundant_placeholder05
1while_while_cond_2556345___redundant_placeholder15
1while_while_cond_2556345___redundant_placeholder25
1while_while_cond_2556345___redundant_placeholder3
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
while_cond_2556059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2556059___redundant_placeholder05
1while_while_cond_2556059___redundant_placeholder15
1while_while_cond_2556059___redundant_placeholder25
1while_while_cond_2556059___redundant_placeholder3
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552470

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
lstm_486_while_cond_2553929.
*lstm_486_while_lstm_486_while_loop_counter4
0lstm_486_while_lstm_486_while_maximum_iterations
lstm_486_while_placeholder 
lstm_486_while_placeholder_1 
lstm_486_while_placeholder_2 
lstm_486_while_placeholder_30
,lstm_486_while_less_lstm_486_strided_slice_1G
Clstm_486_while_lstm_486_while_cond_2553929___redundant_placeholder0G
Clstm_486_while_lstm_486_while_cond_2553929___redundant_placeholder1G
Clstm_486_while_lstm_486_while_cond_2553929___redundant_placeholder2G
Clstm_486_while_lstm_486_while_cond_2553929___redundant_placeholder3
lstm_486_while_identity
?
lstm_486/while/LessLesslstm_486_while_placeholder,lstm_486_while_less_lstm_486_strided_slice_1*
T0*
_output_shapes
: ]
lstm_486/while/IdentityIdentitylstm_486/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_486_while_identity lstm_486/while/Identity:output:0*(
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
while_cond_2551637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2551637___redundant_placeholder05
1while_while_cond_2551637___redundant_placeholder15
1while_while_cond_2551637___redundant_placeholder25
1while_while_cond_2551637___redundant_placeholder3
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
while_cond_2555256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2555256___redundant_placeholder05
1while_while_cond_2555256___redundant_placeholder15
1while_while_cond_2555256___redundant_placeholder25
1while_while_cond_2555256___redundant_placeholder3
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
while_body_2552338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_422_2552362_0:2(/
while_lstm_cell_422_2552364_0:
(+
while_lstm_cell_422_2552366_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_422_2552362:2(-
while_lstm_cell_422_2552364:
()
while_lstm_cell_422_2552366:(??+while/lstm_cell_422/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_422/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_422_2552362_0while_lstm_cell_422_2552364_0while_lstm_cell_422_2552366_0*
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2552324?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_422/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_422/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_422/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_422_2552362while_lstm_cell_422_2552362_0"<
while_lstm_cell_422_2552364while_lstm_cell_422_2552364_0"<
while_lstm_cell_422_2552366while_lstm_cell_422_2552366_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_422/StatefulPartitionedCall+while/lstm_cell_422/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552248

inputs(
lstm_cell_421_2552166:	d?(
lstm_cell_421_2552168:	2?$
lstm_cell_421_2552170:	?
identity??%lstm_cell_421/StatefulPartitionedCall?while;
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
%lstm_cell_421/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_421_2552166lstm_cell_421_2552168lstm_cell_421_2552170*
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2552120n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_421_2552166lstm_cell_421_2552168lstm_cell_421_2552170*
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
while_body_2552179*
condR
while_cond_2552178*K
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
NoOpNoOp&^lstm_cell_421/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_421/StatefulPartitionedCall%lstm_cell_421/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_488_while_cond_2554634.
*lstm_488_while_lstm_488_while_loop_counter4
0lstm_488_while_lstm_488_while_maximum_iterations
lstm_488_while_placeholder 
lstm_488_while_placeholder_1 
lstm_488_while_placeholder_2 
lstm_488_while_placeholder_30
,lstm_488_while_less_lstm_488_strided_slice_1G
Clstm_488_while_lstm_488_while_cond_2554634___redundant_placeholder0G
Clstm_488_while_lstm_488_while_cond_2554634___redundant_placeholder1G
Clstm_488_while_lstm_488_while_cond_2554634___redundant_placeholder2G
Clstm_488_while_lstm_488_while_cond_2554634___redundant_placeholder3
lstm_488_while_identity
?
lstm_488/while/LessLesslstm_488_while_placeholder,lstm_488_while_less_lstm_488_strided_slice_1*
T0*
_output_shapes
: ]
lstm_488/while/IdentityIdentitylstm_488/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_488_while_identity lstm_488/while/Identity:output:0*(
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
while_cond_2553187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2553187___redundant_placeholder05
1while_while_cond_2553187___redundant_placeholder15
1while_while_cond_2553187___redundant_placeholder25
1while_while_cond_2553187___redundant_placeholder3
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555341

inputs?
,lstm_cell_420_matmul_readvariableop_resource:	?A
.lstm_cell_420_matmul_1_readvariableop_resource:	d?<
-lstm_cell_420_biasadd_readvariableop_resource:	?
identity??$lstm_cell_420/BiasAdd/ReadVariableOp?#lstm_cell_420/MatMul/ReadVariableOp?%lstm_cell_420/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_420/MatMul/ReadVariableOpReadVariableOp,lstm_cell_420_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_420/MatMulMatMulstrided_slice_2:output:0+lstm_cell_420/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_420/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_420_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_420/MatMul_1MatMulzeros:output:0-lstm_cell_420/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_420/addAddV2lstm_cell_420/MatMul:product:0 lstm_cell_420/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_420/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_420_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_420/BiasAddBiasAddlstm_cell_420/add:z:0,lstm_cell_420/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_420/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_420/splitSplit&lstm_cell_420/split/split_dim:output:0lstm_cell_420/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_420/SigmoidSigmoidlstm_cell_420/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_1Sigmoidlstm_cell_420/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_420/mulMullstm_cell_420/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_420/ReluRelulstm_cell_420/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_1Mullstm_cell_420/Sigmoid:y:0 lstm_cell_420/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_420/add_1AddV2lstm_cell_420/mul:z:0lstm_cell_420/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_420/Sigmoid_2Sigmoidlstm_cell_420/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_420/Relu_1Relulstm_cell_420/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_420/mul_2Mullstm_cell_420/Sigmoid_2:y:0"lstm_cell_420/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_420_matmul_readvariableop_resource.lstm_cell_420_matmul_1_readvariableop_resource-lstm_cell_420_biasadd_readvariableop_resource*
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
while_body_2555257*
condR
while_cond_2555256*K
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
NoOpNoOp%^lstm_cell_420/BiasAdd/ReadVariableOp$^lstm_cell_420/MatMul/ReadVariableOp&^lstm_cell_420/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_420/BiasAdd/ReadVariableOp$lstm_cell_420/BiasAdd/ReadVariableOp2J
#lstm_cell_420/MatMul/ReadVariableOp#lstm_cell_420/MatMul/ReadVariableOp2N
%lstm_cell_420/MatMul_1/ReadVariableOp%lstm_cell_420/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_487_layer_call_and_return_conditional_losses_2552906

inputs?
,lstm_cell_421_matmul_readvariableop_resource:	d?A
.lstm_cell_421_matmul_1_readvariableop_resource:	2?<
-lstm_cell_421_biasadd_readvariableop_resource:	?
identity??$lstm_cell_421/BiasAdd/ReadVariableOp?#lstm_cell_421/MatMul/ReadVariableOp?%lstm_cell_421/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_421/MatMul/ReadVariableOpReadVariableOp,lstm_cell_421_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_421/MatMulMatMulstrided_slice_2:output:0+lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_421_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_421/MatMul_1MatMulzeros:output:0-lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_421/addAddV2lstm_cell_421/MatMul:product:0 lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_421_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_421/BiasAddBiasAddlstm_cell_421/add:z:0,lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_421/splitSplit&lstm_cell_421/split/split_dim:output:0lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_421/SigmoidSigmoidlstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_1Sigmoidlstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_421/mulMullstm_cell_421/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_421/ReluRelulstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_1Mullstm_cell_421/Sigmoid:y:0 lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_421/add_1AddV2lstm_cell_421/mul:z:0lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_421/Sigmoid_2Sigmoidlstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_421/Relu_1Relulstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_421/mul_2Mullstm_cell_421/Sigmoid_2:y:0"lstm_cell_421/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_421_matmul_readvariableop_resource.lstm_cell_421_matmul_1_readvariableop_resource-lstm_cell_421_biasadd_readvariableop_resource*
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
while_body_2552822*
condR
while_cond_2552821*K
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
NoOpNoOp%^lstm_cell_421/BiasAdd/ReadVariableOp$^lstm_cell_421/MatMul/ReadVariableOp&^lstm_cell_421/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_421/BiasAdd/ReadVariableOp$lstm_cell_421/BiasAdd/ReadVariableOp2J
#lstm_cell_421/MatMul/ReadVariableOp#lstm_cell_421/MatMul/ReadVariableOp2N
%lstm_cell_421/MatMul_1/ReadVariableOp%lstm_cell_421/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
*sequential_162_lstm_487_while_body_2551328L
Hsequential_162_lstm_487_while_sequential_162_lstm_487_while_loop_counterR
Nsequential_162_lstm_487_while_sequential_162_lstm_487_while_maximum_iterations-
)sequential_162_lstm_487_while_placeholder/
+sequential_162_lstm_487_while_placeholder_1/
+sequential_162_lstm_487_while_placeholder_2/
+sequential_162_lstm_487_while_placeholder_3K
Gsequential_162_lstm_487_while_sequential_162_lstm_487_strided_slice_1_0?
?sequential_162_lstm_487_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_487_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_162_lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0:	d?a
Nsequential_162_lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0:	2?\
Msequential_162_lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0:	?*
&sequential_162_lstm_487_while_identity,
(sequential_162_lstm_487_while_identity_1,
(sequential_162_lstm_487_while_identity_2,
(sequential_162_lstm_487_while_identity_3,
(sequential_162_lstm_487_while_identity_4,
(sequential_162_lstm_487_while_identity_5I
Esequential_162_lstm_487_while_sequential_162_lstm_487_strided_slice_1?
?sequential_162_lstm_487_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_487_tensorarrayunstack_tensorlistfromtensor]
Jsequential_162_lstm_487_while_lstm_cell_421_matmul_readvariableop_resource:	d?_
Lsequential_162_lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource:	2?Z
Ksequential_162_lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource:	???Bsequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp?Asequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp?Csequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp?
Osequential_162/lstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_162/lstm_487/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_162_lstm_487_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_487_tensorarrayunstack_tensorlistfromtensor_0)sequential_162_lstm_487_while_placeholderXsequential_162/lstm_487/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOpReadVariableOpLsequential_162_lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_162/lstm_487/while/lstm_cell_421/MatMulMatMulHsequential_162/lstm_487/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOpReadVariableOpNsequential_162_lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_162/lstm_487/while/lstm_cell_421/MatMul_1MatMul+sequential_162_lstm_487_while_placeholder_2Ksequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_162/lstm_487/while/lstm_cell_421/addAddV2<sequential_162/lstm_487/while/lstm_cell_421/MatMul:product:0>sequential_162/lstm_487/while/lstm_cell_421/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOpReadVariableOpMsequential_162_lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_162/lstm_487/while/lstm_cell_421/BiasAddBiasAdd3sequential_162/lstm_487/while/lstm_cell_421/add:z:0Jsequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_162/lstm_487/while/lstm_cell_421/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_162/lstm_487/while/lstm_cell_421/splitSplitDsequential_162/lstm_487/while/lstm_cell_421/split/split_dim:output:0<sequential_162/lstm_487/while/lstm_cell_421/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_162/lstm_487/while/lstm_cell_421/SigmoidSigmoid:sequential_162/lstm_487/while/lstm_cell_421/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_162/lstm_487/while/lstm_cell_421/Sigmoid_1Sigmoid:sequential_162/lstm_487/while/lstm_cell_421/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_162/lstm_487/while/lstm_cell_421/mulMul9sequential_162/lstm_487/while/lstm_cell_421/Sigmoid_1:y:0+sequential_162_lstm_487_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_162/lstm_487/while/lstm_cell_421/ReluRelu:sequential_162/lstm_487/while/lstm_cell_421/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_162/lstm_487/while/lstm_cell_421/mul_1Mul7sequential_162/lstm_487/while/lstm_cell_421/Sigmoid:y:0>sequential_162/lstm_487/while/lstm_cell_421/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_162/lstm_487/while/lstm_cell_421/add_1AddV23sequential_162/lstm_487/while/lstm_cell_421/mul:z:05sequential_162/lstm_487/while/lstm_cell_421/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_162/lstm_487/while/lstm_cell_421/Sigmoid_2Sigmoid:sequential_162/lstm_487/while/lstm_cell_421/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_162/lstm_487/while/lstm_cell_421/Relu_1Relu5sequential_162/lstm_487/while/lstm_cell_421/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_162/lstm_487/while/lstm_cell_421/mul_2Mul9sequential_162/lstm_487/while/lstm_cell_421/Sigmoid_2:y:0@sequential_162/lstm_487/while/lstm_cell_421/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_162/lstm_487/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_162_lstm_487_while_placeholder_1)sequential_162_lstm_487_while_placeholder5sequential_162/lstm_487/while/lstm_cell_421/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_162/lstm_487/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_162/lstm_487/while/addAddV2)sequential_162_lstm_487_while_placeholder,sequential_162/lstm_487/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_162/lstm_487/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_162/lstm_487/while/add_1AddV2Hsequential_162_lstm_487_while_sequential_162_lstm_487_while_loop_counter.sequential_162/lstm_487/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_162/lstm_487/while/IdentityIdentity'sequential_162/lstm_487/while/add_1:z:0#^sequential_162/lstm_487/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_487/while/Identity_1IdentityNsequential_162_lstm_487_while_sequential_162_lstm_487_while_maximum_iterations#^sequential_162/lstm_487/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_487/while/Identity_2Identity%sequential_162/lstm_487/while/add:z:0#^sequential_162/lstm_487/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_487/while/Identity_3IdentityRsequential_162/lstm_487/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_162/lstm_487/while/NoOp*
T0*
_output_shapes
: ?
(sequential_162/lstm_487/while/Identity_4Identity5sequential_162/lstm_487/while/lstm_cell_421/mul_2:z:0#^sequential_162/lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_162/lstm_487/while/Identity_5Identity5sequential_162/lstm_487/while/lstm_cell_421/add_1:z:0#^sequential_162/lstm_487/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_162/lstm_487/while/NoOpNoOpC^sequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOpB^sequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOpD^sequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_162_lstm_487_while_identity/sequential_162/lstm_487/while/Identity:output:0"]
(sequential_162_lstm_487_while_identity_11sequential_162/lstm_487/while/Identity_1:output:0"]
(sequential_162_lstm_487_while_identity_21sequential_162/lstm_487/while/Identity_2:output:0"]
(sequential_162_lstm_487_while_identity_31sequential_162/lstm_487/while/Identity_3:output:0"]
(sequential_162_lstm_487_while_identity_41sequential_162/lstm_487/while/Identity_4:output:0"]
(sequential_162_lstm_487_while_identity_51sequential_162/lstm_487/while/Identity_5:output:0"?
Ksequential_162_lstm_487_while_lstm_cell_421_biasadd_readvariableop_resourceMsequential_162_lstm_487_while_lstm_cell_421_biasadd_readvariableop_resource_0"?
Lsequential_162_lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resourceNsequential_162_lstm_487_while_lstm_cell_421_matmul_1_readvariableop_resource_0"?
Jsequential_162_lstm_487_while_lstm_cell_421_matmul_readvariableop_resourceLsequential_162_lstm_487_while_lstm_cell_421_matmul_readvariableop_resource_0"?
Esequential_162_lstm_487_while_sequential_162_lstm_487_strided_slice_1Gsequential_162_lstm_487_while_sequential_162_lstm_487_strided_slice_1_0"?
?sequential_162_lstm_487_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_487_tensorarrayunstack_tensorlistfromtensor?sequential_162_lstm_487_while_tensorarrayv2read_tensorlistgetitem_sequential_162_lstm_487_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOpBsequential_162/lstm_487/while/lstm_cell_421/BiasAdd/ReadVariableOp2?
Asequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOpAsequential_162/lstm_487/while/lstm_cell_421/MatMul/ReadVariableOp2?
Csequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOpCsequential_162/lstm_487/while/lstm_cell_421/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2551828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2551828___redundant_placeholder05
1while_while_cond_2551828___redundant_placeholder15
1while_while_cond_2551828___redundant_placeholder25
1while_while_cond_2551828___redundant_placeholder3
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
lstm_486_input;
 serving_default_lstm_486_input:0?????????=
	dense_1620
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
2dense_162/kernel
:2dense_162/bias
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
0:.	?2lstm_486/lstm_cell_486/kernel
::8	d?2'lstm_486/lstm_cell_486/recurrent_kernel
*:(?2lstm_486/lstm_cell_486/bias
0:.	d?2lstm_487/lstm_cell_487/kernel
::8	2?2'lstm_487/lstm_cell_487/recurrent_kernel
*:(?2lstm_487/lstm_cell_487/bias
/:-2(2lstm_488/lstm_cell_488/kernel
9:7
(2'lstm_488/lstm_cell_488/recurrent_kernel
):'(2lstm_488/lstm_cell_488/bias
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
2Adam/dense_162/kernel/m
!:2Adam/dense_162/bias/m
5:3	?2$Adam/lstm_486/lstm_cell_486/kernel/m
?:=	d?2.Adam/lstm_486/lstm_cell_486/recurrent_kernel/m
/:-?2"Adam/lstm_486/lstm_cell_486/bias/m
5:3	d?2$Adam/lstm_487/lstm_cell_487/kernel/m
?:=	2?2.Adam/lstm_487/lstm_cell_487/recurrent_kernel/m
/:-?2"Adam/lstm_487/lstm_cell_487/bias/m
4:22(2$Adam/lstm_488/lstm_cell_488/kernel/m
>:<
(2.Adam/lstm_488/lstm_cell_488/recurrent_kernel/m
.:,(2"Adam/lstm_488/lstm_cell_488/bias/m
':%
2Adam/dense_162/kernel/v
!:2Adam/dense_162/bias/v
5:3	?2$Adam/lstm_486/lstm_cell_486/kernel/v
?:=	d?2.Adam/lstm_486/lstm_cell_486/recurrent_kernel/v
/:-?2"Adam/lstm_486/lstm_cell_486/bias/v
5:3	d?2$Adam/lstm_487/lstm_cell_487/kernel/v
?:=	2?2.Adam/lstm_487/lstm_cell_487/recurrent_kernel/v
/:-?2"Adam/lstm_487/lstm_cell_487/bias/v
4:22(2$Adam/lstm_488/lstm_cell_488/kernel/v
>:<
(2.Adam/lstm_488/lstm_cell_488/recurrent_kernel/v
.:,(2"Adam/lstm_488/lstm_cell_488/bias/v
?2?
0__inference_sequential_162_layer_call_fn_2553106
0__inference_sequential_162_layer_call_fn_2553844
0__inference_sequential_162_layer_call_fn_2553871
0__inference_sequential_162_layer_call_fn_2553722?
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554298
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554725
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553752
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553782?
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
"__inference__wrapped_model_2551557lstm_486_input"?
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
*__inference_lstm_486_layer_call_fn_2554736
*__inference_lstm_486_layer_call_fn_2554747
*__inference_lstm_486_layer_call_fn_2554758
*__inference_lstm_486_layer_call_fn_2554769?
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2554912
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555055
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555198
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555341?
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
*__inference_lstm_487_layer_call_fn_2555352
*__inference_lstm_487_layer_call_fn_2555363
*__inference_lstm_487_layer_call_fn_2555374
*__inference_lstm_487_layer_call_fn_2555385?
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555528
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555671
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555814
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555957?
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
*__inference_lstm_488_layer_call_fn_2555968
*__inference_lstm_488_layer_call_fn_2555979
*__inference_lstm_488_layer_call_fn_2555990
*__inference_lstm_488_layer_call_fn_2556001?
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556144
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556287
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556430
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556573?
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
+__inference_dense_162_layer_call_fn_2556582?
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
F__inference_dense_162_layer_call_and_return_conditional_losses_2556592?
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
%__inference_signature_wrapper_2553817lstm_486_input"?
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
/__inference_lstm_cell_420_layer_call_fn_2556609
/__inference_lstm_cell_420_layer_call_fn_2556626?
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556658
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556690?
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
/__inference_lstm_cell_421_layer_call_fn_2556707
/__inference_lstm_cell_421_layer_call_fn_2556724?
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556756
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556788?
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
/__inference_lstm_cell_422_layer_call_fn_2556805
/__inference_lstm_cell_422_layer_call_fn_2556822?
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556854
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556886?
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
"__inference__wrapped_model_2551557?-./012345!";?8
1?.
,?)
lstm_486_input?????????
? "5?2
0
	dense_162#? 
	dense_162??????????
F__inference_dense_162_layer_call_and_return_conditional_losses_2556592\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_162_layer_call_fn_2556582O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_486_layer_call_and_return_conditional_losses_2554912?-./O?L
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555055?-./O?L
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555198q-./??<
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
E__inference_lstm_486_layer_call_and_return_conditional_losses_2555341q-./??<
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
*__inference_lstm_486_layer_call_fn_2554736}-./O?L
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
*__inference_lstm_486_layer_call_fn_2554747}-./O?L
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
*__inference_lstm_486_layer_call_fn_2554758d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_486_layer_call_fn_2554769d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555528?012O?L
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555671?012O?L
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555814q012??<
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
E__inference_lstm_487_layer_call_and_return_conditional_losses_2555957q012??<
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
*__inference_lstm_487_layer_call_fn_2555352}012O?L
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
*__inference_lstm_487_layer_call_fn_2555363}012O?L
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
*__inference_lstm_487_layer_call_fn_2555374d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_487_layer_call_fn_2555385d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556144}345O?L
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556287}345O?L
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556430m345??<
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
E__inference_lstm_488_layer_call_and_return_conditional_losses_2556573m345??<
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
*__inference_lstm_488_layer_call_fn_2555968p345O?L
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
*__inference_lstm_488_layer_call_fn_2555979p345O?L
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
*__inference_lstm_488_layer_call_fn_2555990`345??<
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
*__inference_lstm_488_layer_call_fn_2556001`345??<
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556658?-./??}
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
J__inference_lstm_cell_420_layer_call_and_return_conditional_losses_2556690?-./??}
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
/__inference_lstm_cell_420_layer_call_fn_2556609?-./??}
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
/__inference_lstm_cell_420_layer_call_fn_2556626?-./??}
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556756?012??}
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
J__inference_lstm_cell_421_layer_call_and_return_conditional_losses_2556788?012??}
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
/__inference_lstm_cell_421_layer_call_fn_2556707?012??}
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
/__inference_lstm_cell_421_layer_call_fn_2556724?012??}
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556854?345??}
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
J__inference_lstm_cell_422_layer_call_and_return_conditional_losses_2556886?345??}
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
/__inference_lstm_cell_422_layer_call_fn_2556805?345??}
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
/__inference_lstm_cell_422_layer_call_fn_2556822?345??}
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553752y-./012345!"C?@
9?6
,?)
lstm_486_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_162_layer_call_and_return_conditional_losses_2553782y-./012345!"C?@
9?6
,?)
lstm_486_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554298q-./012345!";?8
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
K__inference_sequential_162_layer_call_and_return_conditional_losses_2554725q-./012345!";?8
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
0__inference_sequential_162_layer_call_fn_2553106l-./012345!"C?@
9?6
,?)
lstm_486_input?????????
p 

 
? "???????????
0__inference_sequential_162_layer_call_fn_2553722l-./012345!"C?@
9?6
,?)
lstm_486_input?????????
p

 
? "???????????
0__inference_sequential_162_layer_call_fn_2553844d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_162_layer_call_fn_2553871d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2553817?-./012345!"M?J
? 
C?@
>
lstm_486_input,?)
lstm_486_input?????????"5?2
0
	dense_162#? 
	dense_162?????????