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
dense_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_141/kernel
u
$dense_141/kernel/Read/ReadVariableOpReadVariableOpdense_141/kernel*
_output_shapes

:
*
dtype0
t
dense_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_141/bias
m
"dense_141/bias/Read/ReadVariableOpReadVariableOpdense_141/bias*
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
lstm_423/lstm_cell_423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_423/lstm_cell_423/kernel
?
1lstm_423/lstm_cell_423/kernel/Read/ReadVariableOpReadVariableOplstm_423/lstm_cell_423/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_423/lstm_cell_423/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_423/lstm_cell_423/recurrent_kernel
?
;lstm_423/lstm_cell_423/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_423/lstm_cell_423/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_423/lstm_cell_423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_423/lstm_cell_423/bias
?
/lstm_423/lstm_cell_423/bias/Read/ReadVariableOpReadVariableOplstm_423/lstm_cell_423/bias*
_output_shapes	
:?*
dtype0
?
lstm_424/lstm_cell_424/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_424/lstm_cell_424/kernel
?
1lstm_424/lstm_cell_424/kernel/Read/ReadVariableOpReadVariableOplstm_424/lstm_cell_424/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_424/lstm_cell_424/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_424/lstm_cell_424/recurrent_kernel
?
;lstm_424/lstm_cell_424/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_424/lstm_cell_424/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_424/lstm_cell_424/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_424/lstm_cell_424/bias
?
/lstm_424/lstm_cell_424/bias/Read/ReadVariableOpReadVariableOplstm_424/lstm_cell_424/bias*
_output_shapes	
:?*
dtype0
?
lstm_425/lstm_cell_425/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_425/lstm_cell_425/kernel
?
1lstm_425/lstm_cell_425/kernel/Read/ReadVariableOpReadVariableOplstm_425/lstm_cell_425/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_425/lstm_cell_425/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_425/lstm_cell_425/recurrent_kernel
?
;lstm_425/lstm_cell_425/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_425/lstm_cell_425/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_425/lstm_cell_425/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_425/lstm_cell_425/bias
?
/lstm_425/lstm_cell_425/bias/Read/ReadVariableOpReadVariableOplstm_425/lstm_cell_425/bias*
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
Adam/dense_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_141/kernel/m
?
+Adam/dense_141/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_141/bias/m
{
)Adam/dense_141/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_423/lstm_cell_423/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_423/lstm_cell_423/kernel/m
?
8Adam/lstm_423/lstm_cell_423/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_423/lstm_cell_423/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_423/lstm_cell_423/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_423/lstm_cell_423/recurrent_kernel/m
?
BAdam/lstm_423/lstm_cell_423/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_423/lstm_cell_423/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_423/lstm_cell_423/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_423/lstm_cell_423/bias/m
?
6Adam/lstm_423/lstm_cell_423/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_423/lstm_cell_423/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_424/lstm_cell_424/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_424/lstm_cell_424/kernel/m
?
8Adam/lstm_424/lstm_cell_424/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_424/lstm_cell_424/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_424/lstm_cell_424/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_424/lstm_cell_424/recurrent_kernel/m
?
BAdam/lstm_424/lstm_cell_424/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_424/lstm_cell_424/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_424/lstm_cell_424/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_424/lstm_cell_424/bias/m
?
6Adam/lstm_424/lstm_cell_424/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_424/lstm_cell_424/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_425/lstm_cell_425/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_425/lstm_cell_425/kernel/m
?
8Adam/lstm_425/lstm_cell_425/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_425/lstm_cell_425/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_425/lstm_cell_425/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_425/lstm_cell_425/recurrent_kernel/m
?
BAdam/lstm_425/lstm_cell_425/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_425/lstm_cell_425/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_425/lstm_cell_425/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_425/lstm_cell_425/bias/m
?
6Adam/lstm_425/lstm_cell_425/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_425/lstm_cell_425/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_141/kernel/v
?
+Adam/dense_141/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_141/bias/v
{
)Adam/dense_141/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_423/lstm_cell_423/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_423/lstm_cell_423/kernel/v
?
8Adam/lstm_423/lstm_cell_423/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_423/lstm_cell_423/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_423/lstm_cell_423/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_423/lstm_cell_423/recurrent_kernel/v
?
BAdam/lstm_423/lstm_cell_423/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_423/lstm_cell_423/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_423/lstm_cell_423/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_423/lstm_cell_423/bias/v
?
6Adam/lstm_423/lstm_cell_423/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_423/lstm_cell_423/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_424/lstm_cell_424/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_424/lstm_cell_424/kernel/v
?
8Adam/lstm_424/lstm_cell_424/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_424/lstm_cell_424/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_424/lstm_cell_424/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_424/lstm_cell_424/recurrent_kernel/v
?
BAdam/lstm_424/lstm_cell_424/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_424/lstm_cell_424/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_424/lstm_cell_424/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_424/lstm_cell_424/bias/v
?
6Adam/lstm_424/lstm_cell_424/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_424/lstm_cell_424/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_425/lstm_cell_425/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_425/lstm_cell_425/kernel/v
?
8Adam/lstm_425/lstm_cell_425/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_425/lstm_cell_425/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_425/lstm_cell_425/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_425/lstm_cell_425/recurrent_kernel/v
?
BAdam/lstm_425/lstm_cell_425/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_425/lstm_cell_425/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_425/lstm_cell_425/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_425/lstm_cell_425/bias/v
?
6Adam/lstm_425/lstm_cell_425/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_425/lstm_cell_425/bias/v*
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
VARIABLE_VALUEdense_141/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_141/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_423/lstm_cell_423/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_423/lstm_cell_423/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_423/lstm_cell_423/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_424/lstm_cell_424/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_424/lstm_cell_424/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_424/lstm_cell_424/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_425/lstm_cell_425/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_425/lstm_cell_425/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_425/lstm_cell_425/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_141/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_141/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_423/lstm_cell_423/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_423/lstm_cell_423/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_423/lstm_cell_423/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_424/lstm_cell_424/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_424/lstm_cell_424/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_424/lstm_cell_424/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_425/lstm_cell_425/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_425/lstm_cell_425/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_425/lstm_cell_425/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_141/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_141/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_423/lstm_cell_423/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_423/lstm_cell_423/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_423/lstm_cell_423/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_424/lstm_cell_424/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_424/lstm_cell_424/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_424/lstm_cell_424/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_425/lstm_cell_425/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_425/lstm_cell_425/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_425/lstm_cell_425/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_423_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_423_inputlstm_423/lstm_cell_423/kernel'lstm_423/lstm_cell_423/recurrent_kernellstm_423/lstm_cell_423/biaslstm_424/lstm_cell_424/kernel'lstm_424/lstm_cell_424/recurrent_kernellstm_424/lstm_cell_424/biaslstm_425/lstm_cell_425/kernel'lstm_425/lstm_cell_425/recurrent_kernellstm_425/lstm_cell_425/biasdense_141/kerneldense_141/bias*
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
%__inference_signature_wrapper_3372366
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_141/kernel/Read/ReadVariableOp"dense_141/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_423/lstm_cell_423/kernel/Read/ReadVariableOp;lstm_423/lstm_cell_423/recurrent_kernel/Read/ReadVariableOp/lstm_423/lstm_cell_423/bias/Read/ReadVariableOp1lstm_424/lstm_cell_424/kernel/Read/ReadVariableOp;lstm_424/lstm_cell_424/recurrent_kernel/Read/ReadVariableOp/lstm_424/lstm_cell_424/bias/Read/ReadVariableOp1lstm_425/lstm_cell_425/kernel/Read/ReadVariableOp;lstm_425/lstm_cell_425/recurrent_kernel/Read/ReadVariableOp/lstm_425/lstm_cell_425/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_141/kernel/m/Read/ReadVariableOp)Adam/dense_141/bias/m/Read/ReadVariableOp8Adam/lstm_423/lstm_cell_423/kernel/m/Read/ReadVariableOpBAdam/lstm_423/lstm_cell_423/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_423/lstm_cell_423/bias/m/Read/ReadVariableOp8Adam/lstm_424/lstm_cell_424/kernel/m/Read/ReadVariableOpBAdam/lstm_424/lstm_cell_424/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_424/lstm_cell_424/bias/m/Read/ReadVariableOp8Adam/lstm_425/lstm_cell_425/kernel/m/Read/ReadVariableOpBAdam/lstm_425/lstm_cell_425/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_425/lstm_cell_425/bias/m/Read/ReadVariableOp+Adam/dense_141/kernel/v/Read/ReadVariableOp)Adam/dense_141/bias/v/Read/ReadVariableOp8Adam/lstm_423/lstm_cell_423/kernel/v/Read/ReadVariableOpBAdam/lstm_423/lstm_cell_423/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_423/lstm_cell_423/bias/v/Read/ReadVariableOp8Adam/lstm_424/lstm_cell_424/kernel/v/Read/ReadVariableOpBAdam/lstm_424/lstm_cell_424/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_424/lstm_cell_424/bias/v/Read/ReadVariableOp8Adam/lstm_425/lstm_cell_425/kernel/v/Read/ReadVariableOpBAdam/lstm_425/lstm_cell_425/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_425/lstm_cell_425/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3375578
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_141/kerneldense_141/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_423/lstm_cell_423/kernel'lstm_423/lstm_cell_423/recurrent_kernellstm_423/lstm_cell_423/biaslstm_424/lstm_cell_424/kernel'lstm_424/lstm_cell_424/recurrent_kernellstm_424/lstm_cell_424/biaslstm_425/lstm_cell_425/kernel'lstm_425/lstm_cell_425/recurrent_kernellstm_425/lstm_cell_425/biastotalcountAdam/dense_141/kernel/mAdam/dense_141/bias/m$Adam/lstm_423/lstm_cell_423/kernel/m.Adam/lstm_423/lstm_cell_423/recurrent_kernel/m"Adam/lstm_423/lstm_cell_423/bias/m$Adam/lstm_424/lstm_cell_424/kernel/m.Adam/lstm_424/lstm_cell_424/recurrent_kernel/m"Adam/lstm_424/lstm_cell_424/bias/m$Adam/lstm_425/lstm_cell_425/kernel/m.Adam/lstm_425/lstm_cell_425/recurrent_kernel/m"Adam/lstm_425/lstm_cell_425/bias/mAdam/dense_141/kernel/vAdam/dense_141/bias/v$Adam/lstm_423/lstm_cell_423/kernel/v.Adam/lstm_423/lstm_cell_423/recurrent_kernel/v"Adam/lstm_423/lstm_cell_423/bias/v$Adam/lstm_424/lstm_cell_424/kernel/v.Adam/lstm_424/lstm_cell_424/recurrent_kernel/v"Adam/lstm_424/lstm_cell_424/bias/v$Adam/lstm_425/lstm_cell_425/kernel/v.Adam/lstm_425/lstm_cell_425/recurrent_kernel/v"Adam/lstm_425/lstm_cell_425/bias/v*4
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
#__inference__traced_restore_3375708??+
?8
?
E__inference_lstm_425_layer_call_and_return_conditional_losses_3370956

inputs'
lstm_cell_557_3370874:2('
lstm_cell_557_3370876:
(#
lstm_cell_557_3370878:(
identity??%lstm_cell_557/StatefulPartitionedCall?while;
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
%lstm_cell_557/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557_3370874lstm_cell_557_3370876lstm_cell_557_3370878*
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3370873n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557_3370874lstm_cell_557_3370876lstm_cell_557_3370878*
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
while_body_3370887*
condR
while_cond_3370886*K
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
NoOpNoOp&^lstm_cell_557/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_557/StatefulPartitionedCall%lstm_cell_557/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*sequential_141_lstm_423_while_cond_3369737L
Hsequential_141_lstm_423_while_sequential_141_lstm_423_while_loop_counterR
Nsequential_141_lstm_423_while_sequential_141_lstm_423_while_maximum_iterations-
)sequential_141_lstm_423_while_placeholder/
+sequential_141_lstm_423_while_placeholder_1/
+sequential_141_lstm_423_while_placeholder_2/
+sequential_141_lstm_423_while_placeholder_3N
Jsequential_141_lstm_423_while_less_sequential_141_lstm_423_strided_slice_1e
asequential_141_lstm_423_while_sequential_141_lstm_423_while_cond_3369737___redundant_placeholder0e
asequential_141_lstm_423_while_sequential_141_lstm_423_while_cond_3369737___redundant_placeholder1e
asequential_141_lstm_423_while_sequential_141_lstm_423_while_cond_3369737___redundant_placeholder2e
asequential_141_lstm_423_while_sequential_141_lstm_423_while_cond_3369737___redundant_placeholder3*
&sequential_141_lstm_423_while_identity
?
"sequential_141/lstm_423/while/LessLess)sequential_141_lstm_423_while_placeholderJsequential_141_lstm_423_while_less_sequential_141_lstm_423_strided_slice_1*
T0*
_output_shapes
: {
&sequential_141/lstm_423/while/IdentityIdentity&sequential_141/lstm_423/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_141_lstm_423_while_identity/sequential_141/lstm_423/while/Identity:output:0*(
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
*__inference_lstm_425_layer_call_fn_3374528
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371147o
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375403

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
?J
?
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373890

inputs?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3373806*
condR
while_cond_3373805*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_141_lstm_424_while_body_3369877L
Hsequential_141_lstm_424_while_sequential_141_lstm_424_while_loop_counterR
Nsequential_141_lstm_424_while_sequential_141_lstm_424_while_maximum_iterations-
)sequential_141_lstm_424_while_placeholder/
+sequential_141_lstm_424_while_placeholder_1/
+sequential_141_lstm_424_while_placeholder_2/
+sequential_141_lstm_424_while_placeholder_3K
Gsequential_141_lstm_424_while_sequential_141_lstm_424_strided_slice_1_0?
?sequential_141_lstm_424_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_424_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_141_lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0:	d?a
Nsequential_141_lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?\
Msequential_141_lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0:	?*
&sequential_141_lstm_424_while_identity,
(sequential_141_lstm_424_while_identity_1,
(sequential_141_lstm_424_while_identity_2,
(sequential_141_lstm_424_while_identity_3,
(sequential_141_lstm_424_while_identity_4,
(sequential_141_lstm_424_while_identity_5I
Esequential_141_lstm_424_while_sequential_141_lstm_424_strided_slice_1?
?sequential_141_lstm_424_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_424_tensorarrayunstack_tensorlistfromtensor]
Jsequential_141_lstm_424_while_lstm_cell_556_matmul_readvariableop_resource:	d?_
Lsequential_141_lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource:	2?Z
Ksequential_141_lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource:	???Bsequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp?Asequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp?Csequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp?
Osequential_141/lstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_141/lstm_424/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_141_lstm_424_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_424_tensorarrayunstack_tensorlistfromtensor_0)sequential_141_lstm_424_while_placeholderXsequential_141/lstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOpLsequential_141_lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_141/lstm_424/while/lstm_cell_556/MatMulMatMulHsequential_141/lstm_424/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOpNsequential_141_lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_141/lstm_424/while/lstm_cell_556/MatMul_1MatMul+sequential_141_lstm_424_while_placeholder_2Ksequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_141/lstm_424/while/lstm_cell_556/addAddV2<sequential_141/lstm_424/while/lstm_cell_556/MatMul:product:0>sequential_141/lstm_424/while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOpMsequential_141_lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_141/lstm_424/while/lstm_cell_556/BiasAddBiasAdd3sequential_141/lstm_424/while/lstm_cell_556/add:z:0Jsequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_141/lstm_424/while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_141/lstm_424/while/lstm_cell_556/splitSplitDsequential_141/lstm_424/while/lstm_cell_556/split/split_dim:output:0<sequential_141/lstm_424/while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_141/lstm_424/while/lstm_cell_556/SigmoidSigmoid:sequential_141/lstm_424/while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_141/lstm_424/while/lstm_cell_556/Sigmoid_1Sigmoid:sequential_141/lstm_424/while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_141/lstm_424/while/lstm_cell_556/mulMul9sequential_141/lstm_424/while/lstm_cell_556/Sigmoid_1:y:0+sequential_141_lstm_424_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_141/lstm_424/while/lstm_cell_556/ReluRelu:sequential_141/lstm_424/while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_141/lstm_424/while/lstm_cell_556/mul_1Mul7sequential_141/lstm_424/while/lstm_cell_556/Sigmoid:y:0>sequential_141/lstm_424/while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_141/lstm_424/while/lstm_cell_556/add_1AddV23sequential_141/lstm_424/while/lstm_cell_556/mul:z:05sequential_141/lstm_424/while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_141/lstm_424/while/lstm_cell_556/Sigmoid_2Sigmoid:sequential_141/lstm_424/while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_141/lstm_424/while/lstm_cell_556/Relu_1Relu5sequential_141/lstm_424/while/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_141/lstm_424/while/lstm_cell_556/mul_2Mul9sequential_141/lstm_424/while/lstm_cell_556/Sigmoid_2:y:0@sequential_141/lstm_424/while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_141/lstm_424/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_141_lstm_424_while_placeholder_1)sequential_141_lstm_424_while_placeholder5sequential_141/lstm_424/while/lstm_cell_556/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_141/lstm_424/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_141/lstm_424/while/addAddV2)sequential_141_lstm_424_while_placeholder,sequential_141/lstm_424/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_141/lstm_424/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_141/lstm_424/while/add_1AddV2Hsequential_141_lstm_424_while_sequential_141_lstm_424_while_loop_counter.sequential_141/lstm_424/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_141/lstm_424/while/IdentityIdentity'sequential_141/lstm_424/while/add_1:z:0#^sequential_141/lstm_424/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_424/while/Identity_1IdentityNsequential_141_lstm_424_while_sequential_141_lstm_424_while_maximum_iterations#^sequential_141/lstm_424/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_424/while/Identity_2Identity%sequential_141/lstm_424/while/add:z:0#^sequential_141/lstm_424/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_424/while/Identity_3IdentityRsequential_141/lstm_424/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_141/lstm_424/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_424/while/Identity_4Identity5sequential_141/lstm_424/while/lstm_cell_556/mul_2:z:0#^sequential_141/lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_141/lstm_424/while/Identity_5Identity5sequential_141/lstm_424/while/lstm_cell_556/add_1:z:0#^sequential_141/lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_141/lstm_424/while/NoOpNoOpC^sequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOpB^sequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOpD^sequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_141_lstm_424_while_identity/sequential_141/lstm_424/while/Identity:output:0"]
(sequential_141_lstm_424_while_identity_11sequential_141/lstm_424/while/Identity_1:output:0"]
(sequential_141_lstm_424_while_identity_21sequential_141/lstm_424/while/Identity_2:output:0"]
(sequential_141_lstm_424_while_identity_31sequential_141/lstm_424/while/Identity_3:output:0"]
(sequential_141_lstm_424_while_identity_41sequential_141/lstm_424/while/Identity_4:output:0"]
(sequential_141_lstm_424_while_identity_51sequential_141/lstm_424/while/Identity_5:output:0"?
Ksequential_141_lstm_424_while_lstm_cell_556_biasadd_readvariableop_resourceMsequential_141_lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0"?
Lsequential_141_lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resourceNsequential_141_lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0"?
Jsequential_141_lstm_424_while_lstm_cell_556_matmul_readvariableop_resourceLsequential_141_lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0"?
Esequential_141_lstm_424_while_sequential_141_lstm_424_strided_slice_1Gsequential_141_lstm_424_while_sequential_141_lstm_424_strided_slice_1_0"?
?sequential_141_lstm_424_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_424_tensorarrayunstack_tensorlistfromtensor?sequential_141_lstm_424_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_424_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOpBsequential_141/lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp2?
Asequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOpAsequential_141/lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp2?
Csequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOpCsequential_141/lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372331
lstm_423_input#
lstm_423_3372304:	?#
lstm_423_3372306:	d?
lstm_423_3372308:	?#
lstm_424_3372311:	d?#
lstm_424_3372313:	2?
lstm_424_3372315:	?"
lstm_425_3372318:2("
lstm_425_3372320:
(
lstm_425_3372322:(#
dense_141_3372325:

dense_141_3372327:
identity??!dense_141/StatefulPartitionedCall? lstm_423/StatefulPartitionedCall? lstm_424/StatefulPartitionedCall? lstm_425/StatefulPartitionedCall?
 lstm_423/StatefulPartitionedCallStatefulPartitionedCalllstm_423_inputlstm_423_3372304lstm_423_3372306lstm_423_3372308*
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3372151?
 lstm_424/StatefulPartitionedCallStatefulPartitionedCall)lstm_423/StatefulPartitionedCall:output:0lstm_424_3372311lstm_424_3372313lstm_424_3372315*
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371986?
 lstm_425/StatefulPartitionedCallStatefulPartitionedCall)lstm_424/StatefulPartitionedCall:output:0lstm_425_3372318lstm_425_3372320lstm_425_3372322*
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371821?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall)lstm_425/StatefulPartitionedCall:output:0dense_141_3372325dense_141_3372327*
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623y
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_141/StatefulPartitionedCall!^lstm_423/StatefulPartitionedCall!^lstm_424/StatefulPartitionedCall!^lstm_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2D
 lstm_423/StatefulPartitionedCall lstm_423/StatefulPartitionedCall2D
 lstm_424/StatefulPartitionedCall lstm_424/StatefulPartitionedCall2D
 lstm_425/StatefulPartitionedCall lstm_425/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_423_input
?
?
*__inference_lstm_425_layer_call_fn_3374550

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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371821o
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
lstm_425_while_cond_3373183.
*lstm_425_while_lstm_425_while_loop_counter4
0lstm_425_while_lstm_425_while_maximum_iterations
lstm_425_while_placeholder 
lstm_425_while_placeholder_1 
lstm_425_while_placeholder_2 
lstm_425_while_placeholder_30
,lstm_425_while_less_lstm_425_strided_slice_1G
Clstm_425_while_lstm_425_while_cond_3373183___redundant_placeholder0G
Clstm_425_while_lstm_425_while_cond_3373183___redundant_placeholder1G
Clstm_425_while_lstm_425_while_cond_3373183___redundant_placeholder2G
Clstm_425_while_lstm_425_while_cond_3373183___redundant_placeholder3
lstm_425_while_identity
?
lstm_425/while/LessLesslstm_425_while_placeholder,lstm_425_while_less_lstm_425_strided_slice_1*
T0*
_output_shapes
: ]
lstm_425/while/IdentityIdentitylstm_425/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_425_while_identity lstm_425/while/Identity:output:0*(
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
*__inference_lstm_425_layer_call_fn_3374539

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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371605o
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
?T
?
*sequential_141_lstm_425_while_body_3370016L
Hsequential_141_lstm_425_while_sequential_141_lstm_425_while_loop_counterR
Nsequential_141_lstm_425_while_sequential_141_lstm_425_while_maximum_iterations-
)sequential_141_lstm_425_while_placeholder/
+sequential_141_lstm_425_while_placeholder_1/
+sequential_141_lstm_425_while_placeholder_2/
+sequential_141_lstm_425_while_placeholder_3K
Gsequential_141_lstm_425_while_sequential_141_lstm_425_strided_slice_1_0?
?sequential_141_lstm_425_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_425_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_141_lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0:2(`
Nsequential_141_lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0:
([
Msequential_141_lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0:(*
&sequential_141_lstm_425_while_identity,
(sequential_141_lstm_425_while_identity_1,
(sequential_141_lstm_425_while_identity_2,
(sequential_141_lstm_425_while_identity_3,
(sequential_141_lstm_425_while_identity_4,
(sequential_141_lstm_425_while_identity_5I
Esequential_141_lstm_425_while_sequential_141_lstm_425_strided_slice_1?
?sequential_141_lstm_425_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_425_tensorarrayunstack_tensorlistfromtensor\
Jsequential_141_lstm_425_while_lstm_cell_557_matmul_readvariableop_resource:2(^
Lsequential_141_lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource:
(Y
Ksequential_141_lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource:(??Bsequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp?Asequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp?Csequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp?
Osequential_141/lstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_141/lstm_425/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_141_lstm_425_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_425_tensorarrayunstack_tensorlistfromtensor_0)sequential_141_lstm_425_while_placeholderXsequential_141/lstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOpLsequential_141_lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_141/lstm_425/while/lstm_cell_557/MatMulMatMulHsequential_141/lstm_425/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOpNsequential_141_lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_141/lstm_425/while/lstm_cell_557/MatMul_1MatMul+sequential_141_lstm_425_while_placeholder_2Ksequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_141/lstm_425/while/lstm_cell_557/addAddV2<sequential_141/lstm_425/while/lstm_cell_557/MatMul:product:0>sequential_141/lstm_425/while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOpMsequential_141_lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_141/lstm_425/while/lstm_cell_557/BiasAddBiasAdd3sequential_141/lstm_425/while/lstm_cell_557/add:z:0Jsequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_141/lstm_425/while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_141/lstm_425/while/lstm_cell_557/splitSplitDsequential_141/lstm_425/while/lstm_cell_557/split/split_dim:output:0<sequential_141/lstm_425/while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_141/lstm_425/while/lstm_cell_557/SigmoidSigmoid:sequential_141/lstm_425/while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_141/lstm_425/while/lstm_cell_557/Sigmoid_1Sigmoid:sequential_141/lstm_425/while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_141/lstm_425/while/lstm_cell_557/mulMul9sequential_141/lstm_425/while/lstm_cell_557/Sigmoid_1:y:0+sequential_141_lstm_425_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_141/lstm_425/while/lstm_cell_557/ReluRelu:sequential_141/lstm_425/while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_141/lstm_425/while/lstm_cell_557/mul_1Mul7sequential_141/lstm_425/while/lstm_cell_557/Sigmoid:y:0>sequential_141/lstm_425/while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_141/lstm_425/while/lstm_cell_557/add_1AddV23sequential_141/lstm_425/while/lstm_cell_557/mul:z:05sequential_141/lstm_425/while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_141/lstm_425/while/lstm_cell_557/Sigmoid_2Sigmoid:sequential_141/lstm_425/while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_141/lstm_425/while/lstm_cell_557/Relu_1Relu5sequential_141/lstm_425/while/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_141/lstm_425/while/lstm_cell_557/mul_2Mul9sequential_141/lstm_425/while/lstm_cell_557/Sigmoid_2:y:0@sequential_141/lstm_425/while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_141/lstm_425/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_141_lstm_425_while_placeholder_1)sequential_141_lstm_425_while_placeholder5sequential_141/lstm_425/while/lstm_cell_557/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_141/lstm_425/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_141/lstm_425/while/addAddV2)sequential_141_lstm_425_while_placeholder,sequential_141/lstm_425/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_141/lstm_425/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_141/lstm_425/while/add_1AddV2Hsequential_141_lstm_425_while_sequential_141_lstm_425_while_loop_counter.sequential_141/lstm_425/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_141/lstm_425/while/IdentityIdentity'sequential_141/lstm_425/while/add_1:z:0#^sequential_141/lstm_425/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_425/while/Identity_1IdentityNsequential_141_lstm_425_while_sequential_141_lstm_425_while_maximum_iterations#^sequential_141/lstm_425/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_425/while/Identity_2Identity%sequential_141/lstm_425/while/add:z:0#^sequential_141/lstm_425/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_425/while/Identity_3IdentityRsequential_141/lstm_425/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_141/lstm_425/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_425/while/Identity_4Identity5sequential_141/lstm_425/while/lstm_cell_557/mul_2:z:0#^sequential_141/lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_141/lstm_425/while/Identity_5Identity5sequential_141/lstm_425/while/lstm_cell_557/add_1:z:0#^sequential_141/lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_141/lstm_425/while/NoOpNoOpC^sequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOpB^sequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOpD^sequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_141_lstm_425_while_identity/sequential_141/lstm_425/while/Identity:output:0"]
(sequential_141_lstm_425_while_identity_11sequential_141/lstm_425/while/Identity_1:output:0"]
(sequential_141_lstm_425_while_identity_21sequential_141/lstm_425/while/Identity_2:output:0"]
(sequential_141_lstm_425_while_identity_31sequential_141/lstm_425/while/Identity_3:output:0"]
(sequential_141_lstm_425_while_identity_41sequential_141/lstm_425/while/Identity_4:output:0"]
(sequential_141_lstm_425_while_identity_51sequential_141/lstm_425/while/Identity_5:output:0"?
Ksequential_141_lstm_425_while_lstm_cell_557_biasadd_readvariableop_resourceMsequential_141_lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0"?
Lsequential_141_lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resourceNsequential_141_lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0"?
Jsequential_141_lstm_425_while_lstm_cell_557_matmul_readvariableop_resourceLsequential_141_lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0"?
Esequential_141_lstm_425_while_sequential_141_lstm_425_strided_slice_1Gsequential_141_lstm_425_while_sequential_141_lstm_425_strided_slice_1_0"?
?sequential_141_lstm_425_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_425_tensorarrayunstack_tensorlistfromtensor?sequential_141_lstm_425_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_425_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOpBsequential_141/lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp2?
Asequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOpAsequential_141/lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp2?
Csequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOpCsequential_141/lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373461
inputs_0?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3373377*
condR
while_cond_3373376*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3371630

inputs#
lstm_423_3371306:	?#
lstm_423_3371308:	d?
lstm_423_3371310:	?#
lstm_424_3371456:	d?#
lstm_424_3371458:	2?
lstm_424_3371460:	?"
lstm_425_3371606:2("
lstm_425_3371608:
(
lstm_425_3371610:(#
dense_141_3371624:

dense_141_3371626:
identity??!dense_141/StatefulPartitionedCall? lstm_423/StatefulPartitionedCall? lstm_424/StatefulPartitionedCall? lstm_425/StatefulPartitionedCall?
 lstm_423/StatefulPartitionedCallStatefulPartitionedCallinputslstm_423_3371306lstm_423_3371308lstm_423_3371310*
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3371305?
 lstm_424/StatefulPartitionedCallStatefulPartitionedCall)lstm_423/StatefulPartitionedCall:output:0lstm_424_3371456lstm_424_3371458lstm_424_3371460*
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371455?
 lstm_425/StatefulPartitionedCallStatefulPartitionedCall)lstm_424/StatefulPartitionedCall:output:0lstm_425_3371606lstm_425_3371608lstm_425_3371610*
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371605?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall)lstm_425/StatefulPartitionedCall:output:0dense_141_3371624dense_141_3371626*
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623y
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_141/StatefulPartitionedCall!^lstm_423/StatefulPartitionedCall!^lstm_424/StatefulPartitionedCall!^lstm_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2D
 lstm_423/StatefulPartitionedCall lstm_423/StatefulPartitionedCall2D
 lstm_424/StatefulPartitionedCall lstm_424/StatefulPartitionedCall2D
 lstm_425/StatefulPartitionedCall lstm_425/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3370106
lstm_423_inputW
Dsequential_141_lstm_423_lstm_cell_555_matmul_readvariableop_resource:	?Y
Fsequential_141_lstm_423_lstm_cell_555_matmul_1_readvariableop_resource:	d?T
Esequential_141_lstm_423_lstm_cell_555_biasadd_readvariableop_resource:	?W
Dsequential_141_lstm_424_lstm_cell_556_matmul_readvariableop_resource:	d?Y
Fsequential_141_lstm_424_lstm_cell_556_matmul_1_readvariableop_resource:	2?T
Esequential_141_lstm_424_lstm_cell_556_biasadd_readvariableop_resource:	?V
Dsequential_141_lstm_425_lstm_cell_557_matmul_readvariableop_resource:2(X
Fsequential_141_lstm_425_lstm_cell_557_matmul_1_readvariableop_resource:
(S
Esequential_141_lstm_425_lstm_cell_557_biasadd_readvariableop_resource:(I
7sequential_141_dense_141_matmul_readvariableop_resource:
F
8sequential_141_dense_141_biasadd_readvariableop_resource:
identity??/sequential_141/dense_141/BiasAdd/ReadVariableOp?.sequential_141/dense_141/MatMul/ReadVariableOp?<sequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp?;sequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOp?=sequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp?sequential_141/lstm_423/while?<sequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp?;sequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOp?=sequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp?sequential_141/lstm_424/while?<sequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp?;sequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOp?=sequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp?sequential_141/lstm_425/while[
sequential_141/lstm_423/ShapeShapelstm_423_input*
T0*
_output_shapes
:u
+sequential_141/lstm_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_141/lstm_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_141/lstm_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_141/lstm_423/strided_sliceStridedSlice&sequential_141/lstm_423/Shape:output:04sequential_141/lstm_423/strided_slice/stack:output:06sequential_141/lstm_423/strided_slice/stack_1:output:06sequential_141/lstm_423/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_141/lstm_423/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_141/lstm_423/zeros/packedPack.sequential_141/lstm_423/strided_slice:output:0/sequential_141/lstm_423/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_141/lstm_423/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_423/zerosFill-sequential_141/lstm_423/zeros/packed:output:0,sequential_141/lstm_423/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_141/lstm_423/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_141/lstm_423/zeros_1/packedPack.sequential_141/lstm_423/strided_slice:output:01sequential_141/lstm_423/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_141/lstm_423/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_423/zeros_1Fill/sequential_141/lstm_423/zeros_1/packed:output:0.sequential_141/lstm_423/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_141/lstm_423/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_141/lstm_423/transpose	Transposelstm_423_input/sequential_141/lstm_423/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_141/lstm_423/Shape_1Shape%sequential_141/lstm_423/transpose:y:0*
T0*
_output_shapes
:w
-sequential_141/lstm_423/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_423/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_423/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_423/strided_slice_1StridedSlice(sequential_141/lstm_423/Shape_1:output:06sequential_141/lstm_423/strided_slice_1/stack:output:08sequential_141/lstm_423/strided_slice_1/stack_1:output:08sequential_141/lstm_423/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_141/lstm_423/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_141/lstm_423/TensorArrayV2TensorListReserve<sequential_141/lstm_423/TensorArrayV2/element_shape:output:00sequential_141/lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_141/lstm_423/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_141/lstm_423/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_141/lstm_423/transpose:y:0Vsequential_141/lstm_423/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_141/lstm_423/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_423/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_423/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_423/strided_slice_2StridedSlice%sequential_141/lstm_423/transpose:y:06sequential_141/lstm_423/strided_slice_2/stack:output:08sequential_141/lstm_423/strided_slice_2/stack_1:output:08sequential_141/lstm_423/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOpReadVariableOpDsequential_141_lstm_423_lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_141/lstm_423/lstm_cell_555/MatMulMatMul0sequential_141/lstm_423/strided_slice_2:output:0Csequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOpFsequential_141_lstm_423_lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_141/lstm_423/lstm_cell_555/MatMul_1MatMul&sequential_141/lstm_423/zeros:output:0Esequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_141/lstm_423/lstm_cell_555/addAddV26sequential_141/lstm_423/lstm_cell_555/MatMul:product:08sequential_141/lstm_423/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOpEsequential_141_lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_141/lstm_423/lstm_cell_555/BiasAddBiasAdd-sequential_141/lstm_423/lstm_cell_555/add:z:0Dsequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_141/lstm_423/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_141/lstm_423/lstm_cell_555/splitSplit>sequential_141/lstm_423/lstm_cell_555/split/split_dim:output:06sequential_141/lstm_423/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_141/lstm_423/lstm_cell_555/SigmoidSigmoid4sequential_141/lstm_423/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_141/lstm_423/lstm_cell_555/Sigmoid_1Sigmoid4sequential_141/lstm_423/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_141/lstm_423/lstm_cell_555/mulMul3sequential_141/lstm_423/lstm_cell_555/Sigmoid_1:y:0(sequential_141/lstm_423/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_141/lstm_423/lstm_cell_555/ReluRelu4sequential_141/lstm_423/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_141/lstm_423/lstm_cell_555/mul_1Mul1sequential_141/lstm_423/lstm_cell_555/Sigmoid:y:08sequential_141/lstm_423/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_141/lstm_423/lstm_cell_555/add_1AddV2-sequential_141/lstm_423/lstm_cell_555/mul:z:0/sequential_141/lstm_423/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_141/lstm_423/lstm_cell_555/Sigmoid_2Sigmoid4sequential_141/lstm_423/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_141/lstm_423/lstm_cell_555/Relu_1Relu/sequential_141/lstm_423/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_141/lstm_423/lstm_cell_555/mul_2Mul3sequential_141/lstm_423/lstm_cell_555/Sigmoid_2:y:0:sequential_141/lstm_423/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_141/lstm_423/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_141/lstm_423/TensorArrayV2_1TensorListReserve>sequential_141/lstm_423/TensorArrayV2_1/element_shape:output:00sequential_141/lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_141/lstm_423/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_141/lstm_423/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_141/lstm_423/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_141/lstm_423/whileWhile3sequential_141/lstm_423/while/loop_counter:output:09sequential_141/lstm_423/while/maximum_iterations:output:0%sequential_141/lstm_423/time:output:00sequential_141/lstm_423/TensorArrayV2_1:handle:0&sequential_141/lstm_423/zeros:output:0(sequential_141/lstm_423/zeros_1:output:00sequential_141/lstm_423/strided_slice_1:output:0Osequential_141/lstm_423/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_141_lstm_423_lstm_cell_555_matmul_readvariableop_resourceFsequential_141_lstm_423_lstm_cell_555_matmul_1_readvariableop_resourceEsequential_141_lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
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
*sequential_141_lstm_423_while_body_3369738*6
cond.R,
*sequential_141_lstm_423_while_cond_3369737*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_141/lstm_423/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_141/lstm_423/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_141/lstm_423/while:output:3Qsequential_141/lstm_423/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_141/lstm_423/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_141/lstm_423/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_423/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_423/strided_slice_3StridedSliceCsequential_141/lstm_423/TensorArrayV2Stack/TensorListStack:tensor:06sequential_141/lstm_423/strided_slice_3/stack:output:08sequential_141/lstm_423/strided_slice_3/stack_1:output:08sequential_141/lstm_423/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_141/lstm_423/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_141/lstm_423/transpose_1	TransposeCsequential_141/lstm_423/TensorArrayV2Stack/TensorListStack:tensor:01sequential_141/lstm_423/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_141/lstm_423/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_141/lstm_424/ShapeShape'sequential_141/lstm_423/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_141/lstm_424/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_141/lstm_424/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_141/lstm_424/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_141/lstm_424/strided_sliceStridedSlice&sequential_141/lstm_424/Shape:output:04sequential_141/lstm_424/strided_slice/stack:output:06sequential_141/lstm_424/strided_slice/stack_1:output:06sequential_141/lstm_424/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_141/lstm_424/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_141/lstm_424/zeros/packedPack.sequential_141/lstm_424/strided_slice:output:0/sequential_141/lstm_424/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_141/lstm_424/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_424/zerosFill-sequential_141/lstm_424/zeros/packed:output:0,sequential_141/lstm_424/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_141/lstm_424/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_141/lstm_424/zeros_1/packedPack.sequential_141/lstm_424/strided_slice:output:01sequential_141/lstm_424/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_141/lstm_424/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_424/zeros_1Fill/sequential_141/lstm_424/zeros_1/packed:output:0.sequential_141/lstm_424/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_141/lstm_424/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_141/lstm_424/transpose	Transpose'sequential_141/lstm_423/transpose_1:y:0/sequential_141/lstm_424/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_141/lstm_424/Shape_1Shape%sequential_141/lstm_424/transpose:y:0*
T0*
_output_shapes
:w
-sequential_141/lstm_424/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_424/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_424/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_424/strided_slice_1StridedSlice(sequential_141/lstm_424/Shape_1:output:06sequential_141/lstm_424/strided_slice_1/stack:output:08sequential_141/lstm_424/strided_slice_1/stack_1:output:08sequential_141/lstm_424/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_141/lstm_424/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_141/lstm_424/TensorArrayV2TensorListReserve<sequential_141/lstm_424/TensorArrayV2/element_shape:output:00sequential_141/lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_141/lstm_424/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_141/lstm_424/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_141/lstm_424/transpose:y:0Vsequential_141/lstm_424/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_141/lstm_424/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_424/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_424/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_424/strided_slice_2StridedSlice%sequential_141/lstm_424/transpose:y:06sequential_141/lstm_424/strided_slice_2/stack:output:08sequential_141/lstm_424/strided_slice_2/stack_1:output:08sequential_141/lstm_424/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOpReadVariableOpDsequential_141_lstm_424_lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_141/lstm_424/lstm_cell_556/MatMulMatMul0sequential_141/lstm_424/strided_slice_2:output:0Csequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOpFsequential_141_lstm_424_lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_141/lstm_424/lstm_cell_556/MatMul_1MatMul&sequential_141/lstm_424/zeros:output:0Esequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_141/lstm_424/lstm_cell_556/addAddV26sequential_141/lstm_424/lstm_cell_556/MatMul:product:08sequential_141/lstm_424/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOpEsequential_141_lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_141/lstm_424/lstm_cell_556/BiasAddBiasAdd-sequential_141/lstm_424/lstm_cell_556/add:z:0Dsequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_141/lstm_424/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_141/lstm_424/lstm_cell_556/splitSplit>sequential_141/lstm_424/lstm_cell_556/split/split_dim:output:06sequential_141/lstm_424/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_141/lstm_424/lstm_cell_556/SigmoidSigmoid4sequential_141/lstm_424/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_141/lstm_424/lstm_cell_556/Sigmoid_1Sigmoid4sequential_141/lstm_424/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_141/lstm_424/lstm_cell_556/mulMul3sequential_141/lstm_424/lstm_cell_556/Sigmoid_1:y:0(sequential_141/lstm_424/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_141/lstm_424/lstm_cell_556/ReluRelu4sequential_141/lstm_424/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_141/lstm_424/lstm_cell_556/mul_1Mul1sequential_141/lstm_424/lstm_cell_556/Sigmoid:y:08sequential_141/lstm_424/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_141/lstm_424/lstm_cell_556/add_1AddV2-sequential_141/lstm_424/lstm_cell_556/mul:z:0/sequential_141/lstm_424/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_141/lstm_424/lstm_cell_556/Sigmoid_2Sigmoid4sequential_141/lstm_424/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_141/lstm_424/lstm_cell_556/Relu_1Relu/sequential_141/lstm_424/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_141/lstm_424/lstm_cell_556/mul_2Mul3sequential_141/lstm_424/lstm_cell_556/Sigmoid_2:y:0:sequential_141/lstm_424/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_141/lstm_424/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_141/lstm_424/TensorArrayV2_1TensorListReserve>sequential_141/lstm_424/TensorArrayV2_1/element_shape:output:00sequential_141/lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_141/lstm_424/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_141/lstm_424/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_141/lstm_424/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_141/lstm_424/whileWhile3sequential_141/lstm_424/while/loop_counter:output:09sequential_141/lstm_424/while/maximum_iterations:output:0%sequential_141/lstm_424/time:output:00sequential_141/lstm_424/TensorArrayV2_1:handle:0&sequential_141/lstm_424/zeros:output:0(sequential_141/lstm_424/zeros_1:output:00sequential_141/lstm_424/strided_slice_1:output:0Osequential_141/lstm_424/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_141_lstm_424_lstm_cell_556_matmul_readvariableop_resourceFsequential_141_lstm_424_lstm_cell_556_matmul_1_readvariableop_resourceEsequential_141_lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
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
*sequential_141_lstm_424_while_body_3369877*6
cond.R,
*sequential_141_lstm_424_while_cond_3369876*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_141/lstm_424/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_141/lstm_424/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_141/lstm_424/while:output:3Qsequential_141/lstm_424/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_141/lstm_424/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_141/lstm_424/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_424/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_424/strided_slice_3StridedSliceCsequential_141/lstm_424/TensorArrayV2Stack/TensorListStack:tensor:06sequential_141/lstm_424/strided_slice_3/stack:output:08sequential_141/lstm_424/strided_slice_3/stack_1:output:08sequential_141/lstm_424/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_141/lstm_424/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_141/lstm_424/transpose_1	TransposeCsequential_141/lstm_424/TensorArrayV2Stack/TensorListStack:tensor:01sequential_141/lstm_424/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_141/lstm_424/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_141/lstm_425/ShapeShape'sequential_141/lstm_424/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_141/lstm_425/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_141/lstm_425/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_141/lstm_425/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_141/lstm_425/strided_sliceStridedSlice&sequential_141/lstm_425/Shape:output:04sequential_141/lstm_425/strided_slice/stack:output:06sequential_141/lstm_425/strided_slice/stack_1:output:06sequential_141/lstm_425/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_141/lstm_425/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_141/lstm_425/zeros/packedPack.sequential_141/lstm_425/strided_slice:output:0/sequential_141/lstm_425/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_141/lstm_425/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_425/zerosFill-sequential_141/lstm_425/zeros/packed:output:0,sequential_141/lstm_425/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_141/lstm_425/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_141/lstm_425/zeros_1/packedPack.sequential_141/lstm_425/strided_slice:output:01sequential_141/lstm_425/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_141/lstm_425/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_141/lstm_425/zeros_1Fill/sequential_141/lstm_425/zeros_1/packed:output:0.sequential_141/lstm_425/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_141/lstm_425/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_141/lstm_425/transpose	Transpose'sequential_141/lstm_424/transpose_1:y:0/sequential_141/lstm_425/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_141/lstm_425/Shape_1Shape%sequential_141/lstm_425/transpose:y:0*
T0*
_output_shapes
:w
-sequential_141/lstm_425/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_425/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_425/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_425/strided_slice_1StridedSlice(sequential_141/lstm_425/Shape_1:output:06sequential_141/lstm_425/strided_slice_1/stack:output:08sequential_141/lstm_425/strided_slice_1/stack_1:output:08sequential_141/lstm_425/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_141/lstm_425/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_141/lstm_425/TensorArrayV2TensorListReserve<sequential_141/lstm_425/TensorArrayV2/element_shape:output:00sequential_141/lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_141/lstm_425/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_141/lstm_425/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_141/lstm_425/transpose:y:0Vsequential_141/lstm_425/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_141/lstm_425/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_425/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_141/lstm_425/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_425/strided_slice_2StridedSlice%sequential_141/lstm_425/transpose:y:06sequential_141/lstm_425/strided_slice_2/stack:output:08sequential_141/lstm_425/strided_slice_2/stack_1:output:08sequential_141/lstm_425/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOpReadVariableOpDsequential_141_lstm_425_lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_141/lstm_425/lstm_cell_557/MatMulMatMul0sequential_141/lstm_425/strided_slice_2:output:0Csequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOpFsequential_141_lstm_425_lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_141/lstm_425/lstm_cell_557/MatMul_1MatMul&sequential_141/lstm_425/zeros:output:0Esequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_141/lstm_425/lstm_cell_557/addAddV26sequential_141/lstm_425/lstm_cell_557/MatMul:product:08sequential_141/lstm_425/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOpEsequential_141_lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_141/lstm_425/lstm_cell_557/BiasAddBiasAdd-sequential_141/lstm_425/lstm_cell_557/add:z:0Dsequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_141/lstm_425/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_141/lstm_425/lstm_cell_557/splitSplit>sequential_141/lstm_425/lstm_cell_557/split/split_dim:output:06sequential_141/lstm_425/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_141/lstm_425/lstm_cell_557/SigmoidSigmoid4sequential_141/lstm_425/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_141/lstm_425/lstm_cell_557/Sigmoid_1Sigmoid4sequential_141/lstm_425/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_141/lstm_425/lstm_cell_557/mulMul3sequential_141/lstm_425/lstm_cell_557/Sigmoid_1:y:0(sequential_141/lstm_425/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_141/lstm_425/lstm_cell_557/ReluRelu4sequential_141/lstm_425/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_141/lstm_425/lstm_cell_557/mul_1Mul1sequential_141/lstm_425/lstm_cell_557/Sigmoid:y:08sequential_141/lstm_425/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_141/lstm_425/lstm_cell_557/add_1AddV2-sequential_141/lstm_425/lstm_cell_557/mul:z:0/sequential_141/lstm_425/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_141/lstm_425/lstm_cell_557/Sigmoid_2Sigmoid4sequential_141/lstm_425/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_141/lstm_425/lstm_cell_557/Relu_1Relu/sequential_141/lstm_425/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_141/lstm_425/lstm_cell_557/mul_2Mul3sequential_141/lstm_425/lstm_cell_557/Sigmoid_2:y:0:sequential_141/lstm_425/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_141/lstm_425/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_141/lstm_425/TensorArrayV2_1TensorListReserve>sequential_141/lstm_425/TensorArrayV2_1/element_shape:output:00sequential_141/lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_141/lstm_425/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_141/lstm_425/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_141/lstm_425/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_141/lstm_425/whileWhile3sequential_141/lstm_425/while/loop_counter:output:09sequential_141/lstm_425/while/maximum_iterations:output:0%sequential_141/lstm_425/time:output:00sequential_141/lstm_425/TensorArrayV2_1:handle:0&sequential_141/lstm_425/zeros:output:0(sequential_141/lstm_425/zeros_1:output:00sequential_141/lstm_425/strided_slice_1:output:0Osequential_141/lstm_425/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_141_lstm_425_lstm_cell_557_matmul_readvariableop_resourceFsequential_141_lstm_425_lstm_cell_557_matmul_1_readvariableop_resourceEsequential_141_lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
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
*sequential_141_lstm_425_while_body_3370016*6
cond.R,
*sequential_141_lstm_425_while_cond_3370015*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_141/lstm_425/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_141/lstm_425/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_141/lstm_425/while:output:3Qsequential_141/lstm_425/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_141/lstm_425/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_141/lstm_425/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_141/lstm_425/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_141/lstm_425/strided_slice_3StridedSliceCsequential_141/lstm_425/TensorArrayV2Stack/TensorListStack:tensor:06sequential_141/lstm_425/strided_slice_3/stack:output:08sequential_141/lstm_425/strided_slice_3/stack_1:output:08sequential_141/lstm_425/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_141/lstm_425/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_141/lstm_425/transpose_1	TransposeCsequential_141/lstm_425/TensorArrayV2Stack/TensorListStack:tensor:01sequential_141/lstm_425/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_141/lstm_425/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_141/dense_141/MatMul/ReadVariableOpReadVariableOp7sequential_141_dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_141/dense_141/MatMulMatMul0sequential_141/lstm_425/strided_slice_3:output:06sequential_141/dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_141/dense_141/BiasAdd/ReadVariableOpReadVariableOp8sequential_141_dense_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_141/dense_141/BiasAddBiasAdd)sequential_141/dense_141/MatMul:product:07sequential_141/dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_141/dense_141/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_141/dense_141/BiasAdd/ReadVariableOp/^sequential_141/dense_141/MatMul/ReadVariableOp=^sequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp<^sequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOp>^sequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp^sequential_141/lstm_423/while=^sequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp<^sequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOp>^sequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp^sequential_141/lstm_424/while=^sequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp<^sequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOp>^sequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp^sequential_141/lstm_425/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_141/dense_141/BiasAdd/ReadVariableOp/sequential_141/dense_141/BiasAdd/ReadVariableOp2`
.sequential_141/dense_141/MatMul/ReadVariableOp.sequential_141/dense_141/MatMul/ReadVariableOp2|
<sequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp<sequential_141/lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp2z
;sequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOp;sequential_141/lstm_423/lstm_cell_555/MatMul/ReadVariableOp2~
=sequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp=sequential_141/lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp2>
sequential_141/lstm_423/whilesequential_141/lstm_423/while2|
<sequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp<sequential_141/lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp2z
;sequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOp;sequential_141/lstm_424/lstm_cell_556/MatMul/ReadVariableOp2~
=sequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp=sequential_141/lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp2>
sequential_141/lstm_424/whilesequential_141/lstm_424/while2|
<sequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp<sequential_141/lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp2z
;sequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOp;sequential_141/lstm_425/lstm_cell_557/MatMul/ReadVariableOp2~
=sequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp=sequential_141/lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp2>
sequential_141/lstm_425/whilesequential_141/lstm_425/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_423_input
?#
?
while_body_3370187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_555_3370211_0:	?0
while_lstm_cell_555_3370213_0:	d?,
while_lstm_cell_555_3370215_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_555_3370211:	?.
while_lstm_cell_555_3370213:	d?*
while_lstm_cell_555_3370215:	???+while/lstm_cell_555/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_555/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_555_3370211_0while_lstm_cell_555_3370213_0while_lstm_cell_555_3370215_0*
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370173?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_555/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_555/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_555/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_555/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_555_3370211while_lstm_cell_555_3370211_0"<
while_lstm_cell_555_3370213while_lstm_cell_555_3370213_0"<
while_lstm_cell_555_3370215while_lstm_cell_555_3370215_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_555/StatefulPartitionedCall+while/lstm_cell_555/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_424_while_body_3373045.
*lstm_424_while_lstm_424_while_loop_counter4
0lstm_424_while_lstm_424_while_maximum_iterations
lstm_424_while_placeholder 
lstm_424_while_placeholder_1 
lstm_424_while_placeholder_2 
lstm_424_while_placeholder_3-
)lstm_424_while_lstm_424_strided_slice_1_0i
elstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0:	d?R
?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?M
>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
lstm_424_while_identity
lstm_424_while_identity_1
lstm_424_while_identity_2
lstm_424_while_identity_3
lstm_424_while_identity_4
lstm_424_while_identity_5+
'lstm_424_while_lstm_424_strided_slice_1g
clstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensorN
;lstm_424_while_lstm_cell_556_matmul_readvariableop_resource:	d?P
=lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource:	2?K
<lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource:	???3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp?2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp?4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp?
@lstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_424/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0lstm_424_while_placeholderIlstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_424/while/lstm_cell_556/MatMulMatMul9lstm_424/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_424/while/lstm_cell_556/MatMul_1MatMullstm_424_while_placeholder_2<lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_424/while/lstm_cell_556/addAddV2-lstm_424/while/lstm_cell_556/MatMul:product:0/lstm_424/while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_424/while/lstm_cell_556/BiasAddBiasAdd$lstm_424/while/lstm_cell_556/add:z:0;lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_424/while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_424/while/lstm_cell_556/splitSplit5lstm_424/while/lstm_cell_556/split/split_dim:output:0-lstm_424/while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_424/while/lstm_cell_556/SigmoidSigmoid+lstm_424/while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_424/while/lstm_cell_556/Sigmoid_1Sigmoid+lstm_424/while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_424/while/lstm_cell_556/mulMul*lstm_424/while/lstm_cell_556/Sigmoid_1:y:0lstm_424_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_424/while/lstm_cell_556/ReluRelu+lstm_424/while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/mul_1Mul(lstm_424/while/lstm_cell_556/Sigmoid:y:0/lstm_424/while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/add_1AddV2$lstm_424/while/lstm_cell_556/mul:z:0&lstm_424/while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_424/while/lstm_cell_556/Sigmoid_2Sigmoid+lstm_424/while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_424/while/lstm_cell_556/Relu_1Relu&lstm_424/while/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/mul_2Mul*lstm_424/while/lstm_cell_556/Sigmoid_2:y:01lstm_424/while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_424/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_424_while_placeholder_1lstm_424_while_placeholder&lstm_424/while/lstm_cell_556/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_424/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_424/while/addAddV2lstm_424_while_placeholderlstm_424/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_424/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_424/while/add_1AddV2*lstm_424_while_lstm_424_while_loop_counterlstm_424/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_424/while/IdentityIdentitylstm_424/while/add_1:z:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_1Identity0lstm_424_while_lstm_424_while_maximum_iterations^lstm_424/while/NoOp*
T0*
_output_shapes
: t
lstm_424/while/Identity_2Identitylstm_424/while/add:z:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_3IdentityClstm_424/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_4Identity&lstm_424/while/lstm_cell_556/mul_2:z:0^lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_424/while/Identity_5Identity&lstm_424/while/lstm_cell_556/add_1:z:0^lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_424/while/NoOpNoOp4^lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp3^lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp5^lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_424_while_identity lstm_424/while/Identity:output:0"?
lstm_424_while_identity_1"lstm_424/while/Identity_1:output:0"?
lstm_424_while_identity_2"lstm_424/while/Identity_2:output:0"?
lstm_424_while_identity_3"lstm_424/while/Identity_3:output:0"?
lstm_424_while_identity_4"lstm_424/while/Identity_4:output:0"?
lstm_424_while_identity_5"lstm_424/while/Identity_5:output:0"T
'lstm_424_while_lstm_424_strided_slice_1)lstm_424_while_lstm_424_strided_slice_1_0"~
<lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0"?
=lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0"|
;lstm_424_while_lstm_cell_556_matmul_readvariableop_resource=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0"?
clstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensorelstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp2h
2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp2l
4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372219

inputs#
lstm_423_3372192:	?#
lstm_423_3372194:	d?
lstm_423_3372196:	?#
lstm_424_3372199:	d?#
lstm_424_3372201:	2?
lstm_424_3372203:	?"
lstm_425_3372206:2("
lstm_425_3372208:
(
lstm_425_3372210:(#
dense_141_3372213:

dense_141_3372215:
identity??!dense_141/StatefulPartitionedCall? lstm_423/StatefulPartitionedCall? lstm_424/StatefulPartitionedCall? lstm_425/StatefulPartitionedCall?
 lstm_423/StatefulPartitionedCallStatefulPartitionedCallinputslstm_423_3372192lstm_423_3372194lstm_423_3372196*
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3372151?
 lstm_424/StatefulPartitionedCallStatefulPartitionedCall)lstm_423/StatefulPartitionedCall:output:0lstm_424_3372199lstm_424_3372201lstm_424_3372203*
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371986?
 lstm_425/StatefulPartitionedCallStatefulPartitionedCall)lstm_424/StatefulPartitionedCall:output:0lstm_425_3372206lstm_425_3372208lstm_425_3372210*
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371821?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall)lstm_425/StatefulPartitionedCall:output:0dense_141_3372213dense_141_3372215*
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623y
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_141/StatefulPartitionedCall!^lstm_423/StatefulPartitionedCall!^lstm_424/StatefulPartitionedCall!^lstm_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2D
 lstm_423/StatefulPartitionedCall lstm_423/StatefulPartitionedCall2D
 lstm_424/StatefulPartitionedCall lstm_424/StatefulPartitionedCall2D
 lstm_425/StatefulPartitionedCall lstm_425/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370523

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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370669

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
?
?
+__inference_dense_141_layer_call_fn_3375131

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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623o
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
while_body_3371521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_556_layer_call_fn_3375256

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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370523o
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3371305

inputs?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3371221*
condR
while_cond_3371220*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3371736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371736___redundant_placeholder05
1while_while_cond_3371736___redundant_placeholder15
1while_while_cond_3371736___redundant_placeholder25
1while_while_cond_3371736___redundant_placeholder3
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373747

inputs?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3373663*
condR
while_cond_3373662*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374363

inputs?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3374279*
condR
while_cond_3374278*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375337

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
?
while_cond_3371220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371220___redundant_placeholder05
1while_while_cond_3371220___redundant_placeholder15
1while_while_cond_3371220___redundant_placeholder25
1while_while_cond_3371220___redundant_placeholder3
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3375122

inputs>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3375038*
condR
while_cond_3375037*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_3375708
file_prefix3
!assignvariableop_dense_141_kernel:
/
!assignvariableop_1_dense_141_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_423_lstm_cell_423_kernel:	?M
:assignvariableop_8_lstm_423_lstm_cell_423_recurrent_kernel:	d?=
.assignvariableop_9_lstm_423_lstm_cell_423_bias:	?D
1assignvariableop_10_lstm_424_lstm_cell_424_kernel:	d?N
;assignvariableop_11_lstm_424_lstm_cell_424_recurrent_kernel:	2?>
/assignvariableop_12_lstm_424_lstm_cell_424_bias:	?C
1assignvariableop_13_lstm_425_lstm_cell_425_kernel:2(M
;assignvariableop_14_lstm_425_lstm_cell_425_recurrent_kernel:
(=
/assignvariableop_15_lstm_425_lstm_cell_425_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_141_kernel_m:
7
)assignvariableop_19_adam_dense_141_bias_m:K
8assignvariableop_20_adam_lstm_423_lstm_cell_423_kernel_m:	?U
Bassignvariableop_21_adam_lstm_423_lstm_cell_423_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_423_lstm_cell_423_bias_m:	?K
8assignvariableop_23_adam_lstm_424_lstm_cell_424_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_424_lstm_cell_424_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_424_lstm_cell_424_bias_m:	?J
8assignvariableop_26_adam_lstm_425_lstm_cell_425_kernel_m:2(T
Bassignvariableop_27_adam_lstm_425_lstm_cell_425_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_425_lstm_cell_425_bias_m:(=
+assignvariableop_29_adam_dense_141_kernel_v:
7
)assignvariableop_30_adam_dense_141_bias_v:K
8assignvariableop_31_adam_lstm_423_lstm_cell_423_kernel_v:	?U
Bassignvariableop_32_adam_lstm_423_lstm_cell_423_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_423_lstm_cell_423_bias_v:	?K
8assignvariableop_34_adam_lstm_424_lstm_cell_424_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_424_lstm_cell_424_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_424_lstm_cell_424_bias_v:	?J
8assignvariableop_37_adam_lstm_425_lstm_cell_425_kernel_v:2(T
Bassignvariableop_38_adam_lstm_425_lstm_cell_425_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_425_lstm_cell_425_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_141_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_141_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_423_lstm_cell_423_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_423_lstm_cell_423_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_423_lstm_cell_423_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_424_lstm_cell_424_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_424_lstm_cell_424_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_424_lstm_cell_424_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_425_lstm_cell_425_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_425_lstm_cell_425_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_425_lstm_cell_425_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_141_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_141_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_423_lstm_cell_423_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_423_lstm_cell_423_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_423_lstm_cell_423_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_424_lstm_cell_424_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_424_lstm_cell_424_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_424_lstm_cell_424_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_425_lstm_cell_425_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_425_lstm_cell_425_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_425_lstm_cell_425_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_141_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_141_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_423_lstm_cell_423_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_423_lstm_cell_423_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_423_lstm_cell_423_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_424_lstm_cell_424_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_424_lstm_cell_424_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_424_lstm_cell_424_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_425_lstm_cell_425_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_425_lstm_cell_425_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_425_lstm_cell_425_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3371077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371077___redundant_placeholder05
1while_while_cond_3371077___redundant_placeholder15
1while_while_cond_3371077___redundant_placeholder25
1while_while_cond_3371077___redundant_placeholder3
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
/__inference_lstm_cell_555_layer_call_fn_3375175

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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370319o
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
while_cond_3372066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3372066___redundant_placeholder05
1while_while_cond_3372066___redundant_placeholder15
1while_while_cond_3372066___redundant_placeholder25
1while_while_cond_3372066___redundant_placeholder3
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

lstm_423_while_body_3372906.
*lstm_423_while_lstm_423_while_loop_counter4
0lstm_423_while_lstm_423_while_maximum_iterations
lstm_423_while_placeholder 
lstm_423_while_placeholder_1 
lstm_423_while_placeholder_2 
lstm_423_while_placeholder_3-
)lstm_423_while_lstm_423_strided_slice_1_0i
elstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0:	?R
?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?M
>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
lstm_423_while_identity
lstm_423_while_identity_1
lstm_423_while_identity_2
lstm_423_while_identity_3
lstm_423_while_identity_4
lstm_423_while_identity_5+
'lstm_423_while_lstm_423_strided_slice_1g
clstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensorN
;lstm_423_while_lstm_cell_555_matmul_readvariableop_resource:	?P
=lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource:	d?K
<lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource:	???3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp?2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp?4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp?
@lstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_423/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0lstm_423_while_placeholderIlstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_423/while/lstm_cell_555/MatMulMatMul9lstm_423/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_423/while/lstm_cell_555/MatMul_1MatMullstm_423_while_placeholder_2<lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_423/while/lstm_cell_555/addAddV2-lstm_423/while/lstm_cell_555/MatMul:product:0/lstm_423/while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_423/while/lstm_cell_555/BiasAddBiasAdd$lstm_423/while/lstm_cell_555/add:z:0;lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_423/while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_423/while/lstm_cell_555/splitSplit5lstm_423/while/lstm_cell_555/split/split_dim:output:0-lstm_423/while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_423/while/lstm_cell_555/SigmoidSigmoid+lstm_423/while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_423/while/lstm_cell_555/Sigmoid_1Sigmoid+lstm_423/while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_423/while/lstm_cell_555/mulMul*lstm_423/while/lstm_cell_555/Sigmoid_1:y:0lstm_423_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_423/while/lstm_cell_555/ReluRelu+lstm_423/while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/mul_1Mul(lstm_423/while/lstm_cell_555/Sigmoid:y:0/lstm_423/while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/add_1AddV2$lstm_423/while/lstm_cell_555/mul:z:0&lstm_423/while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_423/while/lstm_cell_555/Sigmoid_2Sigmoid+lstm_423/while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_423/while/lstm_cell_555/Relu_1Relu&lstm_423/while/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/mul_2Mul*lstm_423/while/lstm_cell_555/Sigmoid_2:y:01lstm_423/while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_423/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_423_while_placeholder_1lstm_423_while_placeholder&lstm_423/while/lstm_cell_555/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_423/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_423/while/addAddV2lstm_423_while_placeholderlstm_423/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_423/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_423/while/add_1AddV2*lstm_423_while_lstm_423_while_loop_counterlstm_423/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_423/while/IdentityIdentitylstm_423/while/add_1:z:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_1Identity0lstm_423_while_lstm_423_while_maximum_iterations^lstm_423/while/NoOp*
T0*
_output_shapes
: t
lstm_423/while/Identity_2Identitylstm_423/while/add:z:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_3IdentityClstm_423/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_4Identity&lstm_423/while/lstm_cell_555/mul_2:z:0^lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_423/while/Identity_5Identity&lstm_423/while/lstm_cell_555/add_1:z:0^lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_423/while/NoOpNoOp4^lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp3^lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp5^lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_423_while_identity lstm_423/while/Identity:output:0"?
lstm_423_while_identity_1"lstm_423/while/Identity_1:output:0"?
lstm_423_while_identity_2"lstm_423/while/Identity_2:output:0"?
lstm_423_while_identity_3"lstm_423/while/Identity_3:output:0"?
lstm_423_while_identity_4"lstm_423/while/Identity_4:output:0"?
lstm_423_while_identity_5"lstm_423/while/Identity_5:output:0"T
'lstm_423_while_lstm_423_strided_slice_1)lstm_423_while_lstm_423_strided_slice_1_0"~
<lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0"?
=lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0"|
;lstm_423_while_lstm_cell_555_matmul_readvariableop_resource=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0"?
clstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensorelstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp2h
2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp2l
4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374077
inputs_0?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3373993*
condR
while_cond_3373992*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375207

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
while_cond_3371520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371520___redundant_placeholder05
1while_while_cond_3371520___redundant_placeholder15
1while_while_cond_3371520___redundant_placeholder25
1while_while_cond_3371520___redundant_placeholder3
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
while_cond_3370886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3370886___redundant_placeholder05
1while_while_cond_3370886___redundant_placeholder15
1while_while_cond_3370886___redundant_placeholder25
1while_while_cond_3370886___redundant_placeholder3
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
*__inference_lstm_424_layer_call_fn_3373912
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3370797|
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370319

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
?
?
/__inference_lstm_cell_555_layer_call_fn_3375158

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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370173o
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

?
lstm_423_while_cond_3372905.
*lstm_423_while_lstm_423_while_loop_counter4
0lstm_423_while_lstm_423_while_maximum_iterations
lstm_423_while_placeholder 
lstm_423_while_placeholder_1 
lstm_423_while_placeholder_2 
lstm_423_while_placeholder_30
,lstm_423_while_less_lstm_423_strided_slice_1G
Clstm_423_while_lstm_423_while_cond_3372905___redundant_placeholder0G
Clstm_423_while_lstm_423_while_cond_3372905___redundant_placeholder1G
Clstm_423_while_lstm_423_while_cond_3372905___redundant_placeholder2G
Clstm_423_while_lstm_423_while_cond_3372905___redundant_placeholder3
lstm_423_while_identity
?
lstm_423/while/LessLesslstm_423_while_placeholder,lstm_423_while_less_lstm_423_strided_slice_1*
T0*
_output_shapes
: ]
lstm_423/while/IdentityIdentitylstm_423/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_423_while_identity lstm_423/while/Identity:output:0*(
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
*__inference_lstm_423_layer_call_fn_3373318

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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3372151s
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
*__inference_lstm_425_layer_call_fn_3374517
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3370956o
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
while_cond_3374421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374421___redundant_placeholder05
1while_while_cond_3374421___redundant_placeholder15
1while_while_cond_3374421___redundant_placeholder25
1while_while_cond_3374421___redundant_placeholder3
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

lstm_425_while_body_3373184.
*lstm_425_while_lstm_425_while_loop_counter4
0lstm_425_while_lstm_425_while_maximum_iterations
lstm_425_while_placeholder 
lstm_425_while_placeholder_1 
lstm_425_while_placeholder_2 
lstm_425_while_placeholder_3-
)lstm_425_while_lstm_425_strided_slice_1_0i
elstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0:2(Q
?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(L
>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0:(
lstm_425_while_identity
lstm_425_while_identity_1
lstm_425_while_identity_2
lstm_425_while_identity_3
lstm_425_while_identity_4
lstm_425_while_identity_5+
'lstm_425_while_lstm_425_strided_slice_1g
clstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensorM
;lstm_425_while_lstm_cell_557_matmul_readvariableop_resource:2(O
=lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource:
(J
<lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource:(??3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp?2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp?4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp?
@lstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_425/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0lstm_425_while_placeholderIlstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_425/while/lstm_cell_557/MatMulMatMul9lstm_425/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_425/while/lstm_cell_557/MatMul_1MatMullstm_425_while_placeholder_2<lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_425/while/lstm_cell_557/addAddV2-lstm_425/while/lstm_cell_557/MatMul:product:0/lstm_425/while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_425/while/lstm_cell_557/BiasAddBiasAdd$lstm_425/while/lstm_cell_557/add:z:0;lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_425/while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_425/while/lstm_cell_557/splitSplit5lstm_425/while/lstm_cell_557/split/split_dim:output:0-lstm_425/while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_425/while/lstm_cell_557/SigmoidSigmoid+lstm_425/while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_425/while/lstm_cell_557/Sigmoid_1Sigmoid+lstm_425/while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_425/while/lstm_cell_557/mulMul*lstm_425/while/lstm_cell_557/Sigmoid_1:y:0lstm_425_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_425/while/lstm_cell_557/ReluRelu+lstm_425/while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/mul_1Mul(lstm_425/while/lstm_cell_557/Sigmoid:y:0/lstm_425/while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/add_1AddV2$lstm_425/while/lstm_cell_557/mul:z:0&lstm_425/while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_425/while/lstm_cell_557/Sigmoid_2Sigmoid+lstm_425/while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_425/while/lstm_cell_557/Relu_1Relu&lstm_425/while/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/mul_2Mul*lstm_425/while/lstm_cell_557/Sigmoid_2:y:01lstm_425/while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_425/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_425_while_placeholder_1lstm_425_while_placeholder&lstm_425/while/lstm_cell_557/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_425/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_425/while/addAddV2lstm_425_while_placeholderlstm_425/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_425/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_425/while/add_1AddV2*lstm_425_while_lstm_425_while_loop_counterlstm_425/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_425/while/IdentityIdentitylstm_425/while/add_1:z:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_1Identity0lstm_425_while_lstm_425_while_maximum_iterations^lstm_425/while/NoOp*
T0*
_output_shapes
: t
lstm_425/while/Identity_2Identitylstm_425/while/add:z:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_3IdentityClstm_425/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_4Identity&lstm_425/while/lstm_cell_557/mul_2:z:0^lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_425/while/Identity_5Identity&lstm_425/while/lstm_cell_557/add_1:z:0^lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_425/while/NoOpNoOp4^lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp3^lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp5^lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_425_while_identity lstm_425/while/Identity:output:0"?
lstm_425_while_identity_1"lstm_425/while/Identity_1:output:0"?
lstm_425_while_identity_2"lstm_425/while/Identity_2:output:0"?
lstm_425_while_identity_3"lstm_425/while/Identity_3:output:0"?
lstm_425_while_identity_4"lstm_425/while/Identity_4:output:0"?
lstm_425_while_identity_5"lstm_425/while/Identity_5:output:0"T
'lstm_425_while_lstm_425_strided_slice_1)lstm_425_while_lstm_425_strided_slice_1_0"~
<lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0"?
=lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0"|
;lstm_425_while_lstm_cell_557_matmul_readvariableop_resource=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0"?
clstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensorelstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp2h
2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp2l
4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3373805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3373805___redundant_placeholder05
1while_while_cond_3373805___redundant_placeholder15
1while_while_cond_3373805___redundant_placeholder25
1while_while_cond_3373805___redundant_placeholder3
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
*sequential_141_lstm_424_while_cond_3369876L
Hsequential_141_lstm_424_while_sequential_141_lstm_424_while_loop_counterR
Nsequential_141_lstm_424_while_sequential_141_lstm_424_while_maximum_iterations-
)sequential_141_lstm_424_while_placeholder/
+sequential_141_lstm_424_while_placeholder_1/
+sequential_141_lstm_424_while_placeholder_2/
+sequential_141_lstm_424_while_placeholder_3N
Jsequential_141_lstm_424_while_less_sequential_141_lstm_424_strided_slice_1e
asequential_141_lstm_424_while_sequential_141_lstm_424_while_cond_3369876___redundant_placeholder0e
asequential_141_lstm_424_while_sequential_141_lstm_424_while_cond_3369876___redundant_placeholder1e
asequential_141_lstm_424_while_sequential_141_lstm_424_while_cond_3369876___redundant_placeholder2e
asequential_141_lstm_424_while_sequential_141_lstm_424_while_cond_3369876___redundant_placeholder3*
&sequential_141_lstm_424_while_identity
?
"sequential_141/lstm_424/while/LessLess)sequential_141_lstm_424_while_placeholderJsequential_141_lstm_424_while_less_sequential_141_lstm_424_strided_slice_1*
T0*
_output_shapes
: {
&sequential_141/lstm_424/while/IdentityIdentity&sequential_141/lstm_424/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_141_lstm_424_while_identity/sequential_141/lstm_424/while/Identity:output:0*(
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
while_cond_3370186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3370186___redundant_placeholder05
1while_while_cond_3370186___redundant_placeholder15
1while_while_cond_3370186___redundant_placeholder25
1while_while_cond_3370186___redundant_placeholder3
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
while_body_3374136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623

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
while_body_3371737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371605

inputs>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3371521*
condR
while_cond_3371520*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_424_while_body_3372618.
*lstm_424_while_lstm_424_while_loop_counter4
0lstm_424_while_lstm_424_while_maximum_iterations
lstm_424_while_placeholder 
lstm_424_while_placeholder_1 
lstm_424_while_placeholder_2 
lstm_424_while_placeholder_3-
)lstm_424_while_lstm_424_strided_slice_1_0i
elstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0:	d?R
?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?M
>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
lstm_424_while_identity
lstm_424_while_identity_1
lstm_424_while_identity_2
lstm_424_while_identity_3
lstm_424_while_identity_4
lstm_424_while_identity_5+
'lstm_424_while_lstm_424_strided_slice_1g
clstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensorN
;lstm_424_while_lstm_cell_556_matmul_readvariableop_resource:	d?P
=lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource:	2?K
<lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource:	???3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp?2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp?4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp?
@lstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_424/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0lstm_424_while_placeholderIlstm_424/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_424/while/lstm_cell_556/MatMulMatMul9lstm_424/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_424/while/lstm_cell_556/MatMul_1MatMullstm_424_while_placeholder_2<lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_424/while/lstm_cell_556/addAddV2-lstm_424/while/lstm_cell_556/MatMul:product:0/lstm_424/while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_424/while/lstm_cell_556/BiasAddBiasAdd$lstm_424/while/lstm_cell_556/add:z:0;lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_424/while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_424/while/lstm_cell_556/splitSplit5lstm_424/while/lstm_cell_556/split/split_dim:output:0-lstm_424/while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_424/while/lstm_cell_556/SigmoidSigmoid+lstm_424/while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_424/while/lstm_cell_556/Sigmoid_1Sigmoid+lstm_424/while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_424/while/lstm_cell_556/mulMul*lstm_424/while/lstm_cell_556/Sigmoid_1:y:0lstm_424_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_424/while/lstm_cell_556/ReluRelu+lstm_424/while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/mul_1Mul(lstm_424/while/lstm_cell_556/Sigmoid:y:0/lstm_424/while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/add_1AddV2$lstm_424/while/lstm_cell_556/mul:z:0&lstm_424/while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_424/while/lstm_cell_556/Sigmoid_2Sigmoid+lstm_424/while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_424/while/lstm_cell_556/Relu_1Relu&lstm_424/while/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_424/while/lstm_cell_556/mul_2Mul*lstm_424/while/lstm_cell_556/Sigmoid_2:y:01lstm_424/while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_424/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_424_while_placeholder_1lstm_424_while_placeholder&lstm_424/while/lstm_cell_556/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_424/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_424/while/addAddV2lstm_424_while_placeholderlstm_424/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_424/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_424/while/add_1AddV2*lstm_424_while_lstm_424_while_loop_counterlstm_424/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_424/while/IdentityIdentitylstm_424/while/add_1:z:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_1Identity0lstm_424_while_lstm_424_while_maximum_iterations^lstm_424/while/NoOp*
T0*
_output_shapes
: t
lstm_424/while/Identity_2Identitylstm_424/while/add:z:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_3IdentityClstm_424/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_424/while/NoOp*
T0*
_output_shapes
: ?
lstm_424/while/Identity_4Identity&lstm_424/while/lstm_cell_556/mul_2:z:0^lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_424/while/Identity_5Identity&lstm_424/while/lstm_cell_556/add_1:z:0^lstm_424/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_424/while/NoOpNoOp4^lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp3^lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp5^lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_424_while_identity lstm_424/while/Identity:output:0"?
lstm_424_while_identity_1"lstm_424/while/Identity_1:output:0"?
lstm_424_while_identity_2"lstm_424/while/Identity_2:output:0"?
lstm_424_while_identity_3"lstm_424/while/Identity_3:output:0"?
lstm_424_while_identity_4"lstm_424/while/Identity_4:output:0"?
lstm_424_while_identity_5"lstm_424/while/Identity_5:output:0"T
'lstm_424_while_lstm_424_strided_slice_1)lstm_424_while_lstm_424_strided_slice_1_0"~
<lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource>lstm_424_while_lstm_cell_556_biasadd_readvariableop_resource_0"?
=lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource?lstm_424_while_lstm_cell_556_matmul_1_readvariableop_resource_0"|
;lstm_424_while_lstm_cell_556_matmul_readvariableop_resource=lstm_424_while_lstm_cell_556_matmul_readvariableop_resource_0"?
clstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensorelstm_424_while_tensorarrayv2read_tensorlistgetitem_lstm_424_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp3lstm_424/while/lstm_cell_556/BiasAdd/ReadVariableOp2h
2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp2lstm_424/while/lstm_cell_556/MatMul/ReadVariableOp2l
4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp4lstm_424/while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3374135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374135___redundant_placeholder05
1while_while_cond_3374135___redundant_placeholder15
1while_while_cond_3374135___redundant_placeholder25
1while_while_cond_3374135___redundant_placeholder3
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3371019

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
while_cond_3374894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374894___redundant_placeholder05
1while_while_cond_3374894___redundant_placeholder15
1while_while_cond_3374894___redundant_placeholder25
1while_while_cond_3374894___redundant_placeholder3
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
*__inference_lstm_423_layer_call_fn_3373296
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3370447|
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
while_body_3373806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_423_while_cond_3372478.
*lstm_423_while_lstm_423_while_loop_counter4
0lstm_423_while_lstm_423_while_maximum_iterations
lstm_423_while_placeholder 
lstm_423_while_placeholder_1 
lstm_423_while_placeholder_2 
lstm_423_while_placeholder_30
,lstm_423_while_less_lstm_423_strided_slice_1G
Clstm_423_while_lstm_423_while_cond_3372478___redundant_placeholder0G
Clstm_423_while_lstm_423_while_cond_3372478___redundant_placeholder1G
Clstm_423_while_lstm_423_while_cond_3372478___redundant_placeholder2G
Clstm_423_while_lstm_423_while_cond_3372478___redundant_placeholder3
lstm_423_while_identity
?
lstm_423/while/LessLesslstm_423_while_placeholder,lstm_423_while_less_lstm_423_strided_slice_1*
T0*
_output_shapes
: ]
lstm_423/while/IdentityIdentitylstm_423/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_423_while_identity lstm_423/while/Identity:output:0*(
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
*__inference_lstm_424_layer_call_fn_3373934

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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371986s
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

?
lstm_425_while_cond_3372756.
*lstm_425_while_lstm_425_while_loop_counter4
0lstm_425_while_lstm_425_while_maximum_iterations
lstm_425_while_placeholder 
lstm_425_while_placeholder_1 
lstm_425_while_placeholder_2 
lstm_425_while_placeholder_30
,lstm_425_while_less_lstm_425_strided_slice_1G
Clstm_425_while_lstm_425_while_cond_3372756___redundant_placeholder0G
Clstm_425_while_lstm_425_while_cond_3372756___redundant_placeholder1G
Clstm_425_while_lstm_425_while_cond_3372756___redundant_placeholder2G
Clstm_425_while_lstm_425_while_cond_3372756___redundant_placeholder3
lstm_425_while_identity
?
lstm_425/while/LessLesslstm_425_while_placeholder,lstm_425_while_less_lstm_425_strided_slice_1*
T0*
_output_shapes
: ]
lstm_425/while/IdentityIdentitylstm_425/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_425_while_identity lstm_425/while/Identity:output:0*(
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3370256

inputs(
lstm_cell_555_3370174:	?(
lstm_cell_555_3370176:	d?$
lstm_cell_555_3370178:	?
identity??%lstm_cell_555/StatefulPartitionedCall?while;
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
%lstm_cell_555/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_555_3370174lstm_cell_555_3370176lstm_cell_555_3370178*
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370173n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_555_3370174lstm_cell_555_3370176lstm_cell_555_3370178*
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
while_body_3370187*
condR
while_cond_3370186*K
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
NoOpNoOp&^lstm_cell_555/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_555/StatefulPartitionedCall%lstm_cell_555/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3374279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_141_layer_call_fn_3372420

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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372219o
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
0__inference_sequential_141_layer_call_fn_3372393

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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3371630o
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
?
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371147

inputs'
lstm_cell_557_3371065:2('
lstm_cell_557_3371067:
(#
lstm_cell_557_3371069:(
identity??%lstm_cell_557/StatefulPartitionedCall?while;
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
%lstm_cell_557/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557_3371065lstm_cell_557_3371067lstm_cell_557_3371069*
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3371019n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557_3371065lstm_cell_557_3371067lstm_cell_557_3371069*
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
while_body_3371078*
condR
while_cond_3371077*K
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
NoOpNoOp&^lstm_cell_557/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_557/StatefulPartitionedCall%lstm_cell_557/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_423_while_body_3372479.
*lstm_423_while_lstm_423_while_loop_counter4
0lstm_423_while_lstm_423_while_maximum_iterations
lstm_423_while_placeholder 
lstm_423_while_placeholder_1 
lstm_423_while_placeholder_2 
lstm_423_while_placeholder_3-
)lstm_423_while_lstm_423_strided_slice_1_0i
elstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0:	?R
?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?M
>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
lstm_423_while_identity
lstm_423_while_identity_1
lstm_423_while_identity_2
lstm_423_while_identity_3
lstm_423_while_identity_4
lstm_423_while_identity_5+
'lstm_423_while_lstm_423_strided_slice_1g
clstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensorN
;lstm_423_while_lstm_cell_555_matmul_readvariableop_resource:	?P
=lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource:	d?K
<lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource:	???3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp?2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp?4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp?
@lstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_423/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0lstm_423_while_placeholderIlstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_423/while/lstm_cell_555/MatMulMatMul9lstm_423/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_423/while/lstm_cell_555/MatMul_1MatMullstm_423_while_placeholder_2<lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_423/while/lstm_cell_555/addAddV2-lstm_423/while/lstm_cell_555/MatMul:product:0/lstm_423/while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_423/while/lstm_cell_555/BiasAddBiasAdd$lstm_423/while/lstm_cell_555/add:z:0;lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_423/while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_423/while/lstm_cell_555/splitSplit5lstm_423/while/lstm_cell_555/split/split_dim:output:0-lstm_423/while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_423/while/lstm_cell_555/SigmoidSigmoid+lstm_423/while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_423/while/lstm_cell_555/Sigmoid_1Sigmoid+lstm_423/while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_423/while/lstm_cell_555/mulMul*lstm_423/while/lstm_cell_555/Sigmoid_1:y:0lstm_423_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_423/while/lstm_cell_555/ReluRelu+lstm_423/while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/mul_1Mul(lstm_423/while/lstm_cell_555/Sigmoid:y:0/lstm_423/while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/add_1AddV2$lstm_423/while/lstm_cell_555/mul:z:0&lstm_423/while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_423/while/lstm_cell_555/Sigmoid_2Sigmoid+lstm_423/while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_423/while/lstm_cell_555/Relu_1Relu&lstm_423/while/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_423/while/lstm_cell_555/mul_2Mul*lstm_423/while/lstm_cell_555/Sigmoid_2:y:01lstm_423/while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_423/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_423_while_placeholder_1lstm_423_while_placeholder&lstm_423/while/lstm_cell_555/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_423/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_423/while/addAddV2lstm_423_while_placeholderlstm_423/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_423/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_423/while/add_1AddV2*lstm_423_while_lstm_423_while_loop_counterlstm_423/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_423/while/IdentityIdentitylstm_423/while/add_1:z:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_1Identity0lstm_423_while_lstm_423_while_maximum_iterations^lstm_423/while/NoOp*
T0*
_output_shapes
: t
lstm_423/while/Identity_2Identitylstm_423/while/add:z:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_3IdentityClstm_423/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_423/while/NoOp*
T0*
_output_shapes
: ?
lstm_423/while/Identity_4Identity&lstm_423/while/lstm_cell_555/mul_2:z:0^lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_423/while/Identity_5Identity&lstm_423/while/lstm_cell_555/add_1:z:0^lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_423/while/NoOpNoOp4^lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp3^lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp5^lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_423_while_identity lstm_423/while/Identity:output:0"?
lstm_423_while_identity_1"lstm_423/while/Identity_1:output:0"?
lstm_423_while_identity_2"lstm_423/while/Identity_2:output:0"?
lstm_423_while_identity_3"lstm_423/while/Identity_3:output:0"?
lstm_423_while_identity_4"lstm_423/while/Identity_4:output:0"?
lstm_423_while_identity_5"lstm_423/while/Identity_5:output:0"T
'lstm_423_while_lstm_423_strided_slice_1)lstm_423_while_lstm_423_strided_slice_1_0"~
<lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource>lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0"?
=lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource?lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0"|
;lstm_423_while_lstm_cell_555_matmul_readvariableop_resource=lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0"?
clstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensorelstm_423_while_tensorarrayv2read_tensorlistgetitem_lstm_423_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp3lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp2h
2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp2lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp2l
4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp4lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3375038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371821

inputs>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3371737*
condR
while_cond_3371736*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_3375578
file_prefix/
+savev2_dense_141_kernel_read_readvariableop-
)savev2_dense_141_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_423_lstm_cell_423_kernel_read_readvariableopF
Bsavev2_lstm_423_lstm_cell_423_recurrent_kernel_read_readvariableop:
6savev2_lstm_423_lstm_cell_423_bias_read_readvariableop<
8savev2_lstm_424_lstm_cell_424_kernel_read_readvariableopF
Bsavev2_lstm_424_lstm_cell_424_recurrent_kernel_read_readvariableop:
6savev2_lstm_424_lstm_cell_424_bias_read_readvariableop<
8savev2_lstm_425_lstm_cell_425_kernel_read_readvariableopF
Bsavev2_lstm_425_lstm_cell_425_recurrent_kernel_read_readvariableop:
6savev2_lstm_425_lstm_cell_425_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_141_kernel_m_read_readvariableop4
0savev2_adam_dense_141_bias_m_read_readvariableopC
?savev2_adam_lstm_423_lstm_cell_423_kernel_m_read_readvariableopM
Isavev2_adam_lstm_423_lstm_cell_423_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_423_lstm_cell_423_bias_m_read_readvariableopC
?savev2_adam_lstm_424_lstm_cell_424_kernel_m_read_readvariableopM
Isavev2_adam_lstm_424_lstm_cell_424_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_424_lstm_cell_424_bias_m_read_readvariableopC
?savev2_adam_lstm_425_lstm_cell_425_kernel_m_read_readvariableopM
Isavev2_adam_lstm_425_lstm_cell_425_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_425_lstm_cell_425_bias_m_read_readvariableop6
2savev2_adam_dense_141_kernel_v_read_readvariableop4
0savev2_adam_dense_141_bias_v_read_readvariableopC
?savev2_adam_lstm_423_lstm_cell_423_kernel_v_read_readvariableopM
Isavev2_adam_lstm_423_lstm_cell_423_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_423_lstm_cell_423_bias_v_read_readvariableopC
?savev2_adam_lstm_424_lstm_cell_424_kernel_v_read_readvariableopM
Isavev2_adam_lstm_424_lstm_cell_424_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_424_lstm_cell_424_bias_v_read_readvariableopC
?savev2_adam_lstm_425_lstm_cell_425_kernel_v_read_readvariableopM
Isavev2_adam_lstm_425_lstm_cell_425_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_425_lstm_cell_425_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_141_kernel_read_readvariableop)savev2_dense_141_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_423_lstm_cell_423_kernel_read_readvariableopBsavev2_lstm_423_lstm_cell_423_recurrent_kernel_read_readvariableop6savev2_lstm_423_lstm_cell_423_bias_read_readvariableop8savev2_lstm_424_lstm_cell_424_kernel_read_readvariableopBsavev2_lstm_424_lstm_cell_424_recurrent_kernel_read_readvariableop6savev2_lstm_424_lstm_cell_424_bias_read_readvariableop8savev2_lstm_425_lstm_cell_425_kernel_read_readvariableopBsavev2_lstm_425_lstm_cell_425_recurrent_kernel_read_readvariableop6savev2_lstm_425_lstm_cell_425_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_141_kernel_m_read_readvariableop0savev2_adam_dense_141_bias_m_read_readvariableop?savev2_adam_lstm_423_lstm_cell_423_kernel_m_read_readvariableopIsavev2_adam_lstm_423_lstm_cell_423_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_423_lstm_cell_423_bias_m_read_readvariableop?savev2_adam_lstm_424_lstm_cell_424_kernel_m_read_readvariableopIsavev2_adam_lstm_424_lstm_cell_424_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_424_lstm_cell_424_bias_m_read_readvariableop?savev2_adam_lstm_425_lstm_cell_425_kernel_m_read_readvariableopIsavev2_adam_lstm_425_lstm_cell_425_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_425_lstm_cell_425_bias_m_read_readvariableop2savev2_adam_dense_141_kernel_v_read_readvariableop0savev2_adam_dense_141_bias_v_read_readvariableop?savev2_adam_lstm_423_lstm_cell_423_kernel_v_read_readvariableopIsavev2_adam_lstm_423_lstm_cell_423_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_423_lstm_cell_423_bias_v_read_readvariableop?savev2_adam_lstm_424_lstm_cell_424_kernel_v_read_readvariableopIsavev2_adam_lstm_424_lstm_cell_424_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_424_lstm_cell_424_bias_v_read_readvariableop?savev2_adam_lstm_425_lstm_cell_425_kernel_v_read_readvariableopIsavev2_adam_lstm_425_lstm_cell_425_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_425_lstm_cell_425_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?K
?
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374220
inputs_0?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3374136*
condR
while_cond_3374135*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_423_layer_call_fn_3373285
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3370256|
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371986

inputs?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3371902*
condR
while_cond_3371901*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_423_layer_call_fn_3373307

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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3371305s
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
0__inference_sequential_141_layer_call_fn_3372271
lstm_423_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_423_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372219o
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
_user_specified_namelstm_423_input
?8
?
while_body_3374609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3370447

inputs(
lstm_cell_555_3370365:	?(
lstm_cell_555_3370367:	d?$
lstm_cell_555_3370369:	?
identity??%lstm_cell_555/StatefulPartitionedCall?while;
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
%lstm_cell_555/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_555_3370365lstm_cell_555_3370367lstm_cell_555_3370369*
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370319n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_555_3370365lstm_cell_555_3370367lstm_cell_555_3370369*
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
while_body_3370378*
condR
while_cond_3370377*K
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
NoOpNoOp&^lstm_cell_555/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_555/StatefulPartitionedCall%lstm_cell_555/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3372366
lstm_423_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_423_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3370106o
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
_user_specified_namelstm_423_input
?
?
while_cond_3374608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374608___redundant_placeholder05
1while_while_cond_3374608___redundant_placeholder15
1while_while_cond_3374608___redundant_placeholder25
1while_while_cond_3374608___redundant_placeholder3
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

lstm_425_while_body_3372757.
*lstm_425_while_lstm_425_while_loop_counter4
0lstm_425_while_lstm_425_while_maximum_iterations
lstm_425_while_placeholder 
lstm_425_while_placeholder_1 
lstm_425_while_placeholder_2 
lstm_425_while_placeholder_3-
)lstm_425_while_lstm_425_strided_slice_1_0i
elstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0:2(Q
?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(L
>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0:(
lstm_425_while_identity
lstm_425_while_identity_1
lstm_425_while_identity_2
lstm_425_while_identity_3
lstm_425_while_identity_4
lstm_425_while_identity_5+
'lstm_425_while_lstm_425_strided_slice_1g
clstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensorM
;lstm_425_while_lstm_cell_557_matmul_readvariableop_resource:2(O
=lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource:
(J
<lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource:(??3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp?2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp?4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp?
@lstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_425/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0lstm_425_while_placeholderIlstm_425/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_425/while/lstm_cell_557/MatMulMatMul9lstm_425/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_425/while/lstm_cell_557/MatMul_1MatMullstm_425_while_placeholder_2<lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_425/while/lstm_cell_557/addAddV2-lstm_425/while/lstm_cell_557/MatMul:product:0/lstm_425/while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_425/while/lstm_cell_557/BiasAddBiasAdd$lstm_425/while/lstm_cell_557/add:z:0;lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_425/while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_425/while/lstm_cell_557/splitSplit5lstm_425/while/lstm_cell_557/split/split_dim:output:0-lstm_425/while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_425/while/lstm_cell_557/SigmoidSigmoid+lstm_425/while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_425/while/lstm_cell_557/Sigmoid_1Sigmoid+lstm_425/while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_425/while/lstm_cell_557/mulMul*lstm_425/while/lstm_cell_557/Sigmoid_1:y:0lstm_425_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_425/while/lstm_cell_557/ReluRelu+lstm_425/while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/mul_1Mul(lstm_425/while/lstm_cell_557/Sigmoid:y:0/lstm_425/while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/add_1AddV2$lstm_425/while/lstm_cell_557/mul:z:0&lstm_425/while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_425/while/lstm_cell_557/Sigmoid_2Sigmoid+lstm_425/while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_425/while/lstm_cell_557/Relu_1Relu&lstm_425/while/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_425/while/lstm_cell_557/mul_2Mul*lstm_425/while/lstm_cell_557/Sigmoid_2:y:01lstm_425/while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_425/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_425_while_placeholder_1lstm_425_while_placeholder&lstm_425/while/lstm_cell_557/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_425/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_425/while/addAddV2lstm_425_while_placeholderlstm_425/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_425/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_425/while/add_1AddV2*lstm_425_while_lstm_425_while_loop_counterlstm_425/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_425/while/IdentityIdentitylstm_425/while/add_1:z:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_1Identity0lstm_425_while_lstm_425_while_maximum_iterations^lstm_425/while/NoOp*
T0*
_output_shapes
: t
lstm_425/while/Identity_2Identitylstm_425/while/add:z:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_3IdentityClstm_425/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_425/while/NoOp*
T0*
_output_shapes
: ?
lstm_425/while/Identity_4Identity&lstm_425/while/lstm_cell_557/mul_2:z:0^lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_425/while/Identity_5Identity&lstm_425/while/lstm_cell_557/add_1:z:0^lstm_425/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_425/while/NoOpNoOp4^lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp3^lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp5^lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_425_while_identity lstm_425/while/Identity:output:0"?
lstm_425_while_identity_1"lstm_425/while/Identity_1:output:0"?
lstm_425_while_identity_2"lstm_425/while/Identity_2:output:0"?
lstm_425_while_identity_3"lstm_425/while/Identity_3:output:0"?
lstm_425_while_identity_4"lstm_425/while/Identity_4:output:0"?
lstm_425_while_identity_5"lstm_425/while/Identity_5:output:0"T
'lstm_425_while_lstm_425_strided_slice_1)lstm_425_while_lstm_425_strided_slice_1_0"~
<lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource>lstm_425_while_lstm_cell_557_biasadd_readvariableop_resource_0"?
=lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource?lstm_425_while_lstm_cell_557_matmul_1_readvariableop_resource_0"|
;lstm_425_while_lstm_cell_557_matmul_readvariableop_resource=lstm_425_while_lstm_cell_557_matmul_readvariableop_resource_0"?
clstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensorelstm_425_while_tensorarrayv2read_tensorlistgetitem_lstm_425_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp3lstm_425/while/lstm_cell_557/BiasAdd/ReadVariableOp2h
2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp2lstm_425/while/lstm_cell_557/MatMul/ReadVariableOp2l
4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp4lstm_425/while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3373520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3374751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374751___redundant_placeholder05
1while_while_cond_3374751___redundant_placeholder15
1while_while_cond_3374751___redundant_placeholder25
1while_while_cond_3374751___redundant_placeholder3
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375435

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
?J
?
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374506

inputs?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3374422*
condR
while_cond_3374421*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_556_layer_call_fn_3375273

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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370669o
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3372151

inputs?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3372067*
condR
while_cond_3372066*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_141_layer_call_and_return_conditional_losses_3375141

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
while_body_3373377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374836
inputs_0>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3374752*
condR
while_cond_3374751*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3370377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3370377___redundant_placeholder05
1while_while_cond_3370377___redundant_placeholder15
1while_while_cond_3370377___redundant_placeholder25
1while_while_cond_3370377___redundant_placeholder3
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
*sequential_141_lstm_423_while_body_3369738L
Hsequential_141_lstm_423_while_sequential_141_lstm_423_while_loop_counterR
Nsequential_141_lstm_423_while_sequential_141_lstm_423_while_maximum_iterations-
)sequential_141_lstm_423_while_placeholder/
+sequential_141_lstm_423_while_placeholder_1/
+sequential_141_lstm_423_while_placeholder_2/
+sequential_141_lstm_423_while_placeholder_3K
Gsequential_141_lstm_423_while_sequential_141_lstm_423_strided_slice_1_0?
?sequential_141_lstm_423_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_423_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_141_lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0:	?a
Nsequential_141_lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?\
Msequential_141_lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0:	?*
&sequential_141_lstm_423_while_identity,
(sequential_141_lstm_423_while_identity_1,
(sequential_141_lstm_423_while_identity_2,
(sequential_141_lstm_423_while_identity_3,
(sequential_141_lstm_423_while_identity_4,
(sequential_141_lstm_423_while_identity_5I
Esequential_141_lstm_423_while_sequential_141_lstm_423_strided_slice_1?
?sequential_141_lstm_423_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_423_tensorarrayunstack_tensorlistfromtensor]
Jsequential_141_lstm_423_while_lstm_cell_555_matmul_readvariableop_resource:	?_
Lsequential_141_lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource:	d?Z
Ksequential_141_lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource:	???Bsequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp?Asequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp?Csequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp?
Osequential_141/lstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_141/lstm_423/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_141_lstm_423_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_423_tensorarrayunstack_tensorlistfromtensor_0)sequential_141_lstm_423_while_placeholderXsequential_141/lstm_423/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOpLsequential_141_lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_141/lstm_423/while/lstm_cell_555/MatMulMatMulHsequential_141/lstm_423/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOpNsequential_141_lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_141/lstm_423/while/lstm_cell_555/MatMul_1MatMul+sequential_141_lstm_423_while_placeholder_2Ksequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_141/lstm_423/while/lstm_cell_555/addAddV2<sequential_141/lstm_423/while/lstm_cell_555/MatMul:product:0>sequential_141/lstm_423/while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOpMsequential_141_lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_141/lstm_423/while/lstm_cell_555/BiasAddBiasAdd3sequential_141/lstm_423/while/lstm_cell_555/add:z:0Jsequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_141/lstm_423/while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_141/lstm_423/while/lstm_cell_555/splitSplitDsequential_141/lstm_423/while/lstm_cell_555/split/split_dim:output:0<sequential_141/lstm_423/while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_141/lstm_423/while/lstm_cell_555/SigmoidSigmoid:sequential_141/lstm_423/while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_141/lstm_423/while/lstm_cell_555/Sigmoid_1Sigmoid:sequential_141/lstm_423/while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_141/lstm_423/while/lstm_cell_555/mulMul9sequential_141/lstm_423/while/lstm_cell_555/Sigmoid_1:y:0+sequential_141_lstm_423_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_141/lstm_423/while/lstm_cell_555/ReluRelu:sequential_141/lstm_423/while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_141/lstm_423/while/lstm_cell_555/mul_1Mul7sequential_141/lstm_423/while/lstm_cell_555/Sigmoid:y:0>sequential_141/lstm_423/while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_141/lstm_423/while/lstm_cell_555/add_1AddV23sequential_141/lstm_423/while/lstm_cell_555/mul:z:05sequential_141/lstm_423/while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_141/lstm_423/while/lstm_cell_555/Sigmoid_2Sigmoid:sequential_141/lstm_423/while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_141/lstm_423/while/lstm_cell_555/Relu_1Relu5sequential_141/lstm_423/while/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_141/lstm_423/while/lstm_cell_555/mul_2Mul9sequential_141/lstm_423/while/lstm_cell_555/Sigmoid_2:y:0@sequential_141/lstm_423/while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_141/lstm_423/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_141_lstm_423_while_placeholder_1)sequential_141_lstm_423_while_placeholder5sequential_141/lstm_423/while/lstm_cell_555/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_141/lstm_423/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_141/lstm_423/while/addAddV2)sequential_141_lstm_423_while_placeholder,sequential_141/lstm_423/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_141/lstm_423/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_141/lstm_423/while/add_1AddV2Hsequential_141_lstm_423_while_sequential_141_lstm_423_while_loop_counter.sequential_141/lstm_423/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_141/lstm_423/while/IdentityIdentity'sequential_141/lstm_423/while/add_1:z:0#^sequential_141/lstm_423/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_423/while/Identity_1IdentityNsequential_141_lstm_423_while_sequential_141_lstm_423_while_maximum_iterations#^sequential_141/lstm_423/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_423/while/Identity_2Identity%sequential_141/lstm_423/while/add:z:0#^sequential_141/lstm_423/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_423/while/Identity_3IdentityRsequential_141/lstm_423/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_141/lstm_423/while/NoOp*
T0*
_output_shapes
: ?
(sequential_141/lstm_423/while/Identity_4Identity5sequential_141/lstm_423/while/lstm_cell_555/mul_2:z:0#^sequential_141/lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_141/lstm_423/while/Identity_5Identity5sequential_141/lstm_423/while/lstm_cell_555/add_1:z:0#^sequential_141/lstm_423/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_141/lstm_423/while/NoOpNoOpC^sequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOpB^sequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOpD^sequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_141_lstm_423_while_identity/sequential_141/lstm_423/while/Identity:output:0"]
(sequential_141_lstm_423_while_identity_11sequential_141/lstm_423/while/Identity_1:output:0"]
(sequential_141_lstm_423_while_identity_21sequential_141/lstm_423/while/Identity_2:output:0"]
(sequential_141_lstm_423_while_identity_31sequential_141/lstm_423/while/Identity_3:output:0"]
(sequential_141_lstm_423_while_identity_41sequential_141/lstm_423/while/Identity_4:output:0"]
(sequential_141_lstm_423_while_identity_51sequential_141/lstm_423/while/Identity_5:output:0"?
Ksequential_141_lstm_423_while_lstm_cell_555_biasadd_readvariableop_resourceMsequential_141_lstm_423_while_lstm_cell_555_biasadd_readvariableop_resource_0"?
Lsequential_141_lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resourceNsequential_141_lstm_423_while_lstm_cell_555_matmul_1_readvariableop_resource_0"?
Jsequential_141_lstm_423_while_lstm_cell_555_matmul_readvariableop_resourceLsequential_141_lstm_423_while_lstm_cell_555_matmul_readvariableop_resource_0"?
Esequential_141_lstm_423_while_sequential_141_lstm_423_strided_slice_1Gsequential_141_lstm_423_while_sequential_141_lstm_423_strided_slice_1_0"?
?sequential_141_lstm_423_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_423_tensorarrayunstack_tensorlistfromtensor?sequential_141_lstm_423_while_tensorarrayv2read_tensorlistgetitem_sequential_141_lstm_423_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOpBsequential_141/lstm_423/while/lstm_cell_555/BiasAdd/ReadVariableOp2?
Asequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOpAsequential_141/lstm_423/while/lstm_cell_555/MatMul/ReadVariableOp2?
Csequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOpCsequential_141/lstm_423/while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3374752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3374895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_557_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_557_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_557_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_557_matmul_readvariableop_resource:2(F
4while_lstm_cell_557_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_557_biasadd_readvariableop_resource:(??*while/lstm_cell_557/BiasAdd/ReadVariableOp?)while/lstm_cell_557/MatMul/ReadVariableOp?+while/lstm_cell_557/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_557_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_557/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_557_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_557/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_557/addAddV2$while/lstm_cell_557/MatMul:product:0&while/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_557_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_557/BiasAddBiasAddwhile/lstm_cell_557/add:z:02while/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_557/splitSplit,while/lstm_cell_557/split/split_dim:output:0$while/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_557/SigmoidSigmoid"while/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_1Sigmoid"while/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mulMul!while/lstm_cell_557/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_557/ReluRelu"while/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_1Mulwhile/lstm_cell_557/Sigmoid:y:0&while/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/add_1AddV2while/lstm_cell_557/mul:z:0while/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_557/Sigmoid_2Sigmoid"while/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_557/Relu_1Reluwhile/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_557/mul_2Mul!while/lstm_cell_557/Sigmoid_2:y:0(while/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_557/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_557/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_557/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_557/BiasAdd/ReadVariableOp*^while/lstm_cell_557/MatMul/ReadVariableOp,^while/lstm_cell_557/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_557_biasadd_readvariableop_resource5while_lstm_cell_557_biasadd_readvariableop_resource_0"n
4while_lstm_cell_557_matmul_1_readvariableop_resource6while_lstm_cell_557_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_557_matmul_readvariableop_resource4while_lstm_cell_557_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_557/BiasAdd/ReadVariableOp*while/lstm_cell_557/BiasAdd/ReadVariableOp2V
)while/lstm_cell_557/MatMul/ReadVariableOp)while/lstm_cell_557/MatMul/ReadVariableOp2Z
+while/lstm_cell_557/MatMul_1/ReadVariableOp+while/lstm_cell_557/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3370873

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
lstm_424_while_cond_3372617.
*lstm_424_while_lstm_424_while_loop_counter4
0lstm_424_while_lstm_424_while_maximum_iterations
lstm_424_while_placeholder 
lstm_424_while_placeholder_1 
lstm_424_while_placeholder_2 
lstm_424_while_placeholder_30
,lstm_424_while_less_lstm_424_strided_slice_1G
Clstm_424_while_lstm_424_while_cond_3372617___redundant_placeholder0G
Clstm_424_while_lstm_424_while_cond_3372617___redundant_placeholder1G
Clstm_424_while_lstm_424_while_cond_3372617___redundant_placeholder2G
Clstm_424_while_lstm_424_while_cond_3372617___redundant_placeholder3
lstm_424_while_identity
?
lstm_424/while/LessLesslstm_424_while_placeholder,lstm_424_while_less_lstm_424_strided_slice_1*
T0*
_output_shapes
: ]
lstm_424/while/IdentityIdentitylstm_424/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_424_while_identity lstm_424/while/Identity:output:0*(
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
*__inference_lstm_424_layer_call_fn_3373901
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3370606|
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375305

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
while_body_3373993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3373662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3373662___redundant_placeholder05
1while_while_cond_3373662___redundant_placeholder15
1while_while_cond_3373662___redundant_placeholder25
1while_while_cond_3373662___redundant_placeholder3
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
while_body_3370887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_557_3370911_0:2(/
while_lstm_cell_557_3370913_0:
(+
while_lstm_cell_557_3370915_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_557_3370911:2(-
while_lstm_cell_557_3370913:
()
while_lstm_cell_557_3370915:(??+while/lstm_cell_557/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_557/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557_3370911_0while_lstm_cell_557_3370913_0while_lstm_cell_557_3370915_0*
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3370873?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_557/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_557/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_557/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_557/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_557_3370911while_lstm_cell_557_3370911_0"<
while_lstm_cell_557_3370913while_lstm_cell_557_3370913_0"<
while_lstm_cell_557_3370915while_lstm_cell_557_3370915_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_557/StatefulPartitionedCall+while/lstm_cell_557/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_141_layer_call_fn_3371655
lstm_423_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_423_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3371630o
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
_user_specified_namelstm_423_input
?#
?
while_body_3370728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_556_3370752_0:	d?0
while_lstm_cell_556_3370754_0:	2?,
while_lstm_cell_556_3370756_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_556_3370752:	d?.
while_lstm_cell_556_3370754:	2?*
while_lstm_cell_556_3370756:	???+while/lstm_cell_556/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_556/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_556_3370752_0while_lstm_cell_556_3370754_0while_lstm_cell_556_3370756_0*
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370669?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_556/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_556/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_556/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_556/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_556_3370752while_lstm_cell_556_3370752_0"<
while_lstm_cell_556_3370754while_lstm_cell_556_3370754_0"<
while_lstm_cell_556_3370756while_lstm_cell_556_3370756_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_556/StatefulPartitionedCall+while/lstm_cell_556/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374979

inputs>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3374895*
condR
while_cond_3374894*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3373992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3373992___redundant_placeholder05
1while_while_cond_3373992___redundant_placeholder15
1while_while_cond_3373992___redundant_placeholder25
1while_while_cond_3373992___redundant_placeholder3
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
while_cond_3371901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371901___redundant_placeholder05
1while_while_cond_3371901___redundant_placeholder15
1while_while_cond_3371901___redundant_placeholder25
1while_while_cond_3371901___redundant_placeholder3
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374693
inputs_0>
,lstm_cell_557_matmul_readvariableop_resource:2(@
.lstm_cell_557_matmul_1_readvariableop_resource:
(;
-lstm_cell_557_biasadd_readvariableop_resource:(
identity??$lstm_cell_557/BiasAdd/ReadVariableOp?#lstm_cell_557/MatMul/ReadVariableOp?%lstm_cell_557/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_557/MatMul/ReadVariableOpReadVariableOp,lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_557/MatMulMatMulstrided_slice_2:output:0+lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_557/MatMul_1MatMulzeros:output:0-lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_557/addAddV2lstm_cell_557/MatMul:product:0 lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_557/BiasAddBiasAddlstm_cell_557/add:z:0,lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_557/splitSplit&lstm_cell_557/split/split_dim:output:0lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_557/SigmoidSigmoidlstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_1Sigmoidlstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_557/mulMullstm_cell_557/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_557/ReluRelulstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_1Mullstm_cell_557/Sigmoid:y:0 lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_557/add_1AddV2lstm_cell_557/mul:z:0lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_557/Sigmoid_2Sigmoidlstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_557/Relu_1Relulstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_557/mul_2Mullstm_cell_557/Sigmoid_2:y:0"lstm_cell_557/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_557_matmul_readvariableop_resource.lstm_cell_557_matmul_1_readvariableop_resource-lstm_cell_557_biasadd_readvariableop_resource*
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
while_body_3374609*
condR
while_cond_3374608*K
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
NoOpNoOp%^lstm_cell_557/BiasAdd/ReadVariableOp$^lstm_cell_557/MatMul/ReadVariableOp&^lstm_cell_557/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_557/BiasAdd/ReadVariableOp$lstm_cell_557/BiasAdd/ReadVariableOp2J
#lstm_cell_557/MatMul/ReadVariableOp#lstm_cell_557/MatMul/ReadVariableOp2N
%lstm_cell_557/MatMul_1/ReadVariableOp%lstm_cell_557/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3371221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371455

inputs?
,lstm_cell_556_matmul_readvariableop_resource:	d?A
.lstm_cell_556_matmul_1_readvariableop_resource:	2?<
-lstm_cell_556_biasadd_readvariableop_resource:	?
identity??$lstm_cell_556/BiasAdd/ReadVariableOp?#lstm_cell_556/MatMul/ReadVariableOp?%lstm_cell_556/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_556/MatMul/ReadVariableOpReadVariableOp,lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_556/MatMulMatMulstrided_slice_2:output:0+lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_556/MatMul_1MatMulzeros:output:0-lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_556/addAddV2lstm_cell_556/MatMul:product:0 lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_556/BiasAddBiasAddlstm_cell_556/add:z:0,lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_556/splitSplit&lstm_cell_556/split/split_dim:output:0lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_556/SigmoidSigmoidlstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_1Sigmoidlstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_556/mulMullstm_cell_556/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_556/ReluRelulstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_1Mullstm_cell_556/Sigmoid:y:0 lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_556/add_1AddV2lstm_cell_556/mul:z:0lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_556/Sigmoid_2Sigmoidlstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_556/Relu_1Relulstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_556/mul_2Mullstm_cell_556/Sigmoid_2:y:0"lstm_cell_556/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_556_matmul_readvariableop_resource.lstm_cell_556_matmul_1_readvariableop_resource-lstm_cell_556_biasadd_readvariableop_resource*
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
while_body_3371371*
condR
while_cond_3371370*K
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
NoOpNoOp%^lstm_cell_556/BiasAdd/ReadVariableOp$^lstm_cell_556/MatMul/ReadVariableOp&^lstm_cell_556/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_556/BiasAdd/ReadVariableOp$lstm_cell_556/BiasAdd/ReadVariableOp2J
#lstm_cell_556/MatMul/ReadVariableOp#lstm_cell_556/MatMul/ReadVariableOp2N
%lstm_cell_556/MatMul_1/ReadVariableOp%lstm_cell_556/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372847

inputsH
5lstm_423_lstm_cell_555_matmul_readvariableop_resource:	?J
7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource:	d?E
6lstm_423_lstm_cell_555_biasadd_readvariableop_resource:	?H
5lstm_424_lstm_cell_556_matmul_readvariableop_resource:	d?J
7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource:	2?E
6lstm_424_lstm_cell_556_biasadd_readvariableop_resource:	?G
5lstm_425_lstm_cell_557_matmul_readvariableop_resource:2(I
7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource:
(D
6lstm_425_lstm_cell_557_biasadd_readvariableop_resource:(:
(dense_141_matmul_readvariableop_resource:
7
)dense_141_biasadd_readvariableop_resource:
identity?? dense_141/BiasAdd/ReadVariableOp?dense_141/MatMul/ReadVariableOp?-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp?,lstm_423/lstm_cell_555/MatMul/ReadVariableOp?.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp?lstm_423/while?-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp?,lstm_424/lstm_cell_556/MatMul/ReadVariableOp?.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp?lstm_424/while?-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp?,lstm_425/lstm_cell_557/MatMul/ReadVariableOp?.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp?lstm_425/whileD
lstm_423/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_sliceStridedSlicelstm_423/Shape:output:0%lstm_423/strided_slice/stack:output:0'lstm_423/strided_slice/stack_1:output:0'lstm_423/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_423/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_423/zeros/packedPacklstm_423/strided_slice:output:0 lstm_423/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_423/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_423/zerosFilllstm_423/zeros/packed:output:0lstm_423/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_423/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_423/zeros_1/packedPacklstm_423/strided_slice:output:0"lstm_423/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_423/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_423/zeros_1Fill lstm_423/zeros_1/packed:output:0lstm_423/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_423/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_423/transpose	Transposeinputs lstm_423/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_423/Shape_1Shapelstm_423/transpose:y:0*
T0*
_output_shapes
:h
lstm_423/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_423/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_1StridedSlicelstm_423/Shape_1:output:0'lstm_423/strided_slice_1/stack:output:0)lstm_423/strided_slice_1/stack_1:output:0)lstm_423/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_423/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_423/TensorArrayV2TensorListReserve-lstm_423/TensorArrayV2/element_shape:output:0!lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_423/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_423/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_423/transpose:y:0Glstm_423/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_423/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_423/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_2StridedSlicelstm_423/transpose:y:0'lstm_423/strided_slice_2/stack:output:0)lstm_423/strided_slice_2/stack_1:output:0)lstm_423/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_423/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp5lstm_423_lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_423/lstm_cell_555/MatMulMatMul!lstm_423/strided_slice_2:output:04lstm_423/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_423/lstm_cell_555/MatMul_1MatMullstm_423/zeros:output:06lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_423/lstm_cell_555/addAddV2'lstm_423/lstm_cell_555/MatMul:product:0)lstm_423/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp6lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_423/lstm_cell_555/BiasAddBiasAddlstm_423/lstm_cell_555/add:z:05lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_423/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_423/lstm_cell_555/splitSplit/lstm_423/lstm_cell_555/split/split_dim:output:0'lstm_423/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_423/lstm_cell_555/SigmoidSigmoid%lstm_423/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_423/lstm_cell_555/Sigmoid_1Sigmoid%lstm_423/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mulMul$lstm_423/lstm_cell_555/Sigmoid_1:y:0lstm_423/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_423/lstm_cell_555/ReluRelu%lstm_423/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mul_1Mul"lstm_423/lstm_cell_555/Sigmoid:y:0)lstm_423/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/add_1AddV2lstm_423/lstm_cell_555/mul:z:0 lstm_423/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_423/lstm_cell_555/Sigmoid_2Sigmoid%lstm_423/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_423/lstm_cell_555/Relu_1Relu lstm_423/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mul_2Mul$lstm_423/lstm_cell_555/Sigmoid_2:y:0+lstm_423/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_423/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_423/TensorArrayV2_1TensorListReserve/lstm_423/TensorArrayV2_1/element_shape:output:0!lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_423/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_423/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_423/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_423/whileWhile$lstm_423/while/loop_counter:output:0*lstm_423/while/maximum_iterations:output:0lstm_423/time:output:0!lstm_423/TensorArrayV2_1:handle:0lstm_423/zeros:output:0lstm_423/zeros_1:output:0!lstm_423/strided_slice_1:output:0@lstm_423/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_423_lstm_cell_555_matmul_readvariableop_resource7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource6lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
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
lstm_423_while_body_3372479*'
condR
lstm_423_while_cond_3372478*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_423/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_423/TensorArrayV2Stack/TensorListStackTensorListStacklstm_423/while:output:3Blstm_423/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_423/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_423/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_3StridedSlice4lstm_423/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_423/strided_slice_3/stack:output:0)lstm_423/strided_slice_3/stack_1:output:0)lstm_423/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_423/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_423/transpose_1	Transpose4lstm_423/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_423/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_423/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_424/ShapeShapelstm_423/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_424/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_424/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_424/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_sliceStridedSlicelstm_424/Shape:output:0%lstm_424/strided_slice/stack:output:0'lstm_424/strided_slice/stack_1:output:0'lstm_424/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_424/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_424/zeros/packedPacklstm_424/strided_slice:output:0 lstm_424/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_424/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_424/zerosFilllstm_424/zeros/packed:output:0lstm_424/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_424/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_424/zeros_1/packedPacklstm_424/strided_slice:output:0"lstm_424/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_424/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_424/zeros_1Fill lstm_424/zeros_1/packed:output:0lstm_424/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_424/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_424/transpose	Transposelstm_423/transpose_1:y:0 lstm_424/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_424/Shape_1Shapelstm_424/transpose:y:0*
T0*
_output_shapes
:h
lstm_424/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_424/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_1StridedSlicelstm_424/Shape_1:output:0'lstm_424/strided_slice_1/stack:output:0)lstm_424/strided_slice_1/stack_1:output:0)lstm_424/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_424/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_424/TensorArrayV2TensorListReserve-lstm_424/TensorArrayV2/element_shape:output:0!lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_424/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_424/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_424/transpose:y:0Glstm_424/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_424/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_424/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_2StridedSlicelstm_424/transpose:y:0'lstm_424/strided_slice_2/stack:output:0)lstm_424/strided_slice_2/stack_1:output:0)lstm_424/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_424/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp5lstm_424_lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_424/lstm_cell_556/MatMulMatMul!lstm_424/strided_slice_2:output:04lstm_424/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_424/lstm_cell_556/MatMul_1MatMullstm_424/zeros:output:06lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_424/lstm_cell_556/addAddV2'lstm_424/lstm_cell_556/MatMul:product:0)lstm_424/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp6lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_424/lstm_cell_556/BiasAddBiasAddlstm_424/lstm_cell_556/add:z:05lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_424/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_424/lstm_cell_556/splitSplit/lstm_424/lstm_cell_556/split/split_dim:output:0'lstm_424/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_424/lstm_cell_556/SigmoidSigmoid%lstm_424/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_424/lstm_cell_556/Sigmoid_1Sigmoid%lstm_424/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mulMul$lstm_424/lstm_cell_556/Sigmoid_1:y:0lstm_424/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_424/lstm_cell_556/ReluRelu%lstm_424/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mul_1Mul"lstm_424/lstm_cell_556/Sigmoid:y:0)lstm_424/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/add_1AddV2lstm_424/lstm_cell_556/mul:z:0 lstm_424/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_424/lstm_cell_556/Sigmoid_2Sigmoid%lstm_424/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_424/lstm_cell_556/Relu_1Relu lstm_424/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mul_2Mul$lstm_424/lstm_cell_556/Sigmoid_2:y:0+lstm_424/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_424/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_424/TensorArrayV2_1TensorListReserve/lstm_424/TensorArrayV2_1/element_shape:output:0!lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_424/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_424/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_424/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_424/whileWhile$lstm_424/while/loop_counter:output:0*lstm_424/while/maximum_iterations:output:0lstm_424/time:output:0!lstm_424/TensorArrayV2_1:handle:0lstm_424/zeros:output:0lstm_424/zeros_1:output:0!lstm_424/strided_slice_1:output:0@lstm_424/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_424_lstm_cell_556_matmul_readvariableop_resource7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource6lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
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
lstm_424_while_body_3372618*'
condR
lstm_424_while_cond_3372617*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_424/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_424/TensorArrayV2Stack/TensorListStackTensorListStacklstm_424/while:output:3Blstm_424/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_424/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_424/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_3StridedSlice4lstm_424/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_424/strided_slice_3/stack:output:0)lstm_424/strided_slice_3/stack_1:output:0)lstm_424/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_424/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_424/transpose_1	Transpose4lstm_424/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_424/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_424/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_425/ShapeShapelstm_424/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_425/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_425/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_425/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_sliceStridedSlicelstm_425/Shape:output:0%lstm_425/strided_slice/stack:output:0'lstm_425/strided_slice/stack_1:output:0'lstm_425/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_425/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_425/zeros/packedPacklstm_425/strided_slice:output:0 lstm_425/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_425/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_425/zerosFilllstm_425/zeros/packed:output:0lstm_425/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_425/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_425/zeros_1/packedPacklstm_425/strided_slice:output:0"lstm_425/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_425/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_425/zeros_1Fill lstm_425/zeros_1/packed:output:0lstm_425/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_425/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_425/transpose	Transposelstm_424/transpose_1:y:0 lstm_425/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_425/Shape_1Shapelstm_425/transpose:y:0*
T0*
_output_shapes
:h
lstm_425/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_425/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_1StridedSlicelstm_425/Shape_1:output:0'lstm_425/strided_slice_1/stack:output:0)lstm_425/strided_slice_1/stack_1:output:0)lstm_425/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_425/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_425/TensorArrayV2TensorListReserve-lstm_425/TensorArrayV2/element_shape:output:0!lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_425/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_425/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_425/transpose:y:0Glstm_425/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_425/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_425/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_2StridedSlicelstm_425/transpose:y:0'lstm_425/strided_slice_2/stack:output:0)lstm_425/strided_slice_2/stack_1:output:0)lstm_425/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_425/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp5lstm_425_lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_425/lstm_cell_557/MatMulMatMul!lstm_425/strided_slice_2:output:04lstm_425/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_425/lstm_cell_557/MatMul_1MatMullstm_425/zeros:output:06lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_425/lstm_cell_557/addAddV2'lstm_425/lstm_cell_557/MatMul:product:0)lstm_425/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp6lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_425/lstm_cell_557/BiasAddBiasAddlstm_425/lstm_cell_557/add:z:05lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_425/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_425/lstm_cell_557/splitSplit/lstm_425/lstm_cell_557/split/split_dim:output:0'lstm_425/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_425/lstm_cell_557/SigmoidSigmoid%lstm_425/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_425/lstm_cell_557/Sigmoid_1Sigmoid%lstm_425/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mulMul$lstm_425/lstm_cell_557/Sigmoid_1:y:0lstm_425/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_425/lstm_cell_557/ReluRelu%lstm_425/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mul_1Mul"lstm_425/lstm_cell_557/Sigmoid:y:0)lstm_425/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/add_1AddV2lstm_425/lstm_cell_557/mul:z:0 lstm_425/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_425/lstm_cell_557/Sigmoid_2Sigmoid%lstm_425/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_425/lstm_cell_557/Relu_1Relu lstm_425/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mul_2Mul$lstm_425/lstm_cell_557/Sigmoid_2:y:0+lstm_425/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_425/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_425/TensorArrayV2_1TensorListReserve/lstm_425/TensorArrayV2_1/element_shape:output:0!lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_425/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_425/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_425/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_425/whileWhile$lstm_425/while/loop_counter:output:0*lstm_425/while/maximum_iterations:output:0lstm_425/time:output:0!lstm_425/TensorArrayV2_1:handle:0lstm_425/zeros:output:0lstm_425/zeros_1:output:0!lstm_425/strided_slice_1:output:0@lstm_425/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_425_lstm_cell_557_matmul_readvariableop_resource7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource6lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
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
lstm_425_while_body_3372757*'
condR
lstm_425_while_cond_3372756*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_425/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_425/TensorArrayV2Stack/TensorListStackTensorListStacklstm_425/while:output:3Blstm_425/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_425/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_425/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_3StridedSlice4lstm_425/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_425/strided_slice_3/stack:output:0)lstm_425/strided_slice_3/stack_1:output:0)lstm_425/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_425/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_425/transpose_1	Transpose4lstm_425/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_425/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_425/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_141/MatMulMatMul!lstm_425/strided_slice_3:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_141/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp.^lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp-^lstm_423/lstm_cell_555/MatMul/ReadVariableOp/^lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp^lstm_423/while.^lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp-^lstm_424/lstm_cell_556/MatMul/ReadVariableOp/^lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp^lstm_424/while.^lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp-^lstm_425/lstm_cell_557/MatMul/ReadVariableOp/^lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp^lstm_425/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2^
-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp2\
,lstm_423/lstm_cell_555/MatMul/ReadVariableOp,lstm_423/lstm_cell_555/MatMul/ReadVariableOp2`
.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp2 
lstm_423/whilelstm_423/while2^
-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp2\
,lstm_424/lstm_cell_556/MatMul/ReadVariableOp,lstm_424/lstm_cell_556/MatMul/ReadVariableOp2`
.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp2 
lstm_424/whilelstm_424/while2^
-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp2\
,lstm_425/lstm_cell_557/MatMul/ReadVariableOp,lstm_425/lstm_cell_557/MatMul/ReadVariableOp2`
.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp2 
lstm_425/whilelstm_425/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_557_layer_call_fn_3375371

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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3371019o
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
?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372301
lstm_423_input#
lstm_423_3372274:	?#
lstm_423_3372276:	d?
lstm_423_3372278:	?#
lstm_424_3372281:	d?#
lstm_424_3372283:	2?
lstm_424_3372285:	?"
lstm_425_3372288:2("
lstm_425_3372290:
(
lstm_425_3372292:(#
dense_141_3372295:

dense_141_3372297:
identity??!dense_141/StatefulPartitionedCall? lstm_423/StatefulPartitionedCall? lstm_424/StatefulPartitionedCall? lstm_425/StatefulPartitionedCall?
 lstm_423/StatefulPartitionedCallStatefulPartitionedCalllstm_423_inputlstm_423_3372274lstm_423_3372276lstm_423_3372278*
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3371305?
 lstm_424/StatefulPartitionedCallStatefulPartitionedCall)lstm_423/StatefulPartitionedCall:output:0lstm_424_3372281lstm_424_3372283lstm_424_3372285*
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371455?
 lstm_425/StatefulPartitionedCallStatefulPartitionedCall)lstm_424/StatefulPartitionedCall:output:0lstm_425_3372288lstm_425_3372290lstm_425_3372292*
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3371605?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall)lstm_425/StatefulPartitionedCall:output:0dense_141_3372295dense_141_3372297*
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3371623y
IdentityIdentity*dense_141/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_141/StatefulPartitionedCall!^lstm_423/StatefulPartitionedCall!^lstm_424/StatefulPartitionedCall!^lstm_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2D
 lstm_423/StatefulPartitionedCall lstm_423/StatefulPartitionedCall2D
 lstm_424/StatefulPartitionedCall lstm_424/StatefulPartitionedCall2D
 lstm_425/StatefulPartitionedCall lstm_425/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_423_input
?
?
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370173

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
while_cond_3373519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3373519___redundant_placeholder05
1while_while_cond_3373519___redundant_placeholder15
1while_while_cond_3373519___redundant_placeholder25
1while_while_cond_3373519___redundant_placeholder3
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
lstm_424_while_cond_3373044.
*lstm_424_while_lstm_424_while_loop_counter4
0lstm_424_while_lstm_424_while_maximum_iterations
lstm_424_while_placeholder 
lstm_424_while_placeholder_1 
lstm_424_while_placeholder_2 
lstm_424_while_placeholder_30
,lstm_424_while_less_lstm_424_strided_slice_1G
Clstm_424_while_lstm_424_while_cond_3373044___redundant_placeholder0G
Clstm_424_while_lstm_424_while_cond_3373044___redundant_placeholder1G
Clstm_424_while_lstm_424_while_cond_3373044___redundant_placeholder2G
Clstm_424_while_lstm_424_while_cond_3373044___redundant_placeholder3
lstm_424_while_identity
?
lstm_424/while/LessLesslstm_424_while_placeholder,lstm_424_while_less_lstm_424_strided_slice_1*
T0*
_output_shapes
: ]
lstm_424/while/IdentityIdentitylstm_424/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_424_while_identity lstm_424/while/Identity:output:0*(
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
/__inference_lstm_cell_557_layer_call_fn_3375354

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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3370873o
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
while_body_3373663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3371902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3371078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_557_3371102_0:2(/
while_lstm_cell_557_3371104_0:
(+
while_lstm_cell_557_3371106_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_557_3371102:2(-
while_lstm_cell_557_3371104:
()
while_lstm_cell_557_3371106:(??+while/lstm_cell_557/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_557/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557_3371102_0while_lstm_cell_557_3371104_0while_lstm_cell_557_3371106_0*
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3371019?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_557/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_557/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_557/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_557/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_557_3371102while_lstm_cell_557_3371102_0"<
while_lstm_cell_557_3371104while_lstm_cell_557_3371104_0"<
while_lstm_cell_557_3371106while_lstm_cell_557_3371106_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_557/StatefulPartitionedCall+while/lstm_cell_557/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3371371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375239

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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3370606

inputs(
lstm_cell_556_3370524:	d?(
lstm_cell_556_3370526:	2?$
lstm_cell_556_3370528:	?
identity??%lstm_cell_556/StatefulPartitionedCall?while;
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
%lstm_cell_556/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_556_3370524lstm_cell_556_3370526lstm_cell_556_3370528*
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370523n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_556_3370524lstm_cell_556_3370526lstm_cell_556_3370528*
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
while_body_3370537*
condR
while_cond_3370536*K
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
NoOpNoOp&^lstm_cell_556/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_556/StatefulPartitionedCall%lstm_cell_556/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3374422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_556_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_556_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_556_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_556_matmul_readvariableop_resource:	d?G
4while_lstm_cell_556_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_556_biasadd_readvariableop_resource:	???*while/lstm_cell_556/BiasAdd/ReadVariableOp?)while/lstm_cell_556/MatMul/ReadVariableOp?+while/lstm_cell_556/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_556_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_556/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_556_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_556/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_556/addAddV2$while/lstm_cell_556/MatMul:product:0&while/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_556_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_556/BiasAddBiasAddwhile/lstm_cell_556/add:z:02while/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_556/splitSplit,while/lstm_cell_556/split/split_dim:output:0$while/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_556/SigmoidSigmoid"while/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_1Sigmoid"while/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mulMul!while/lstm_cell_556/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_556/ReluRelu"while/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_1Mulwhile/lstm_cell_556/Sigmoid:y:0&while/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/add_1AddV2while/lstm_cell_556/mul:z:0while/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_556/Sigmoid_2Sigmoid"while/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_556/Relu_1Reluwhile/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_556/mul_2Mul!while/lstm_cell_556/Sigmoid_2:y:0(while/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_556/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_556/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_556/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_556/BiasAdd/ReadVariableOp*^while/lstm_cell_556/MatMul/ReadVariableOp,^while/lstm_cell_556/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_556_biasadd_readvariableop_resource5while_lstm_cell_556_biasadd_readvariableop_resource_0"n
4while_lstm_cell_556_matmul_1_readvariableop_resource6while_lstm_cell_556_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_556_matmul_readvariableop_resource4while_lstm_cell_556_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_556/BiasAdd/ReadVariableOp*while/lstm_cell_556/BiasAdd/ReadVariableOp2V
)while/lstm_cell_556/MatMul/ReadVariableOp)while/lstm_cell_556/MatMul/ReadVariableOp2Z
+while/lstm_cell_556/MatMul_1/ReadVariableOp+while/lstm_cell_556/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373604
inputs_0?
,lstm_cell_555_matmul_readvariableop_resource:	?A
.lstm_cell_555_matmul_1_readvariableop_resource:	d?<
-lstm_cell_555_biasadd_readvariableop_resource:	?
identity??$lstm_cell_555/BiasAdd/ReadVariableOp?#lstm_cell_555/MatMul/ReadVariableOp?%lstm_cell_555/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_555/MatMul/ReadVariableOpReadVariableOp,lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_555/MatMulMatMulstrided_slice_2:output:0+lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_555/MatMul_1MatMulzeros:output:0-lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_555/addAddV2lstm_cell_555/MatMul:product:0 lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_555/BiasAddBiasAddlstm_cell_555/add:z:0,lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_555/splitSplit&lstm_cell_555/split/split_dim:output:0lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_555/SigmoidSigmoidlstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_1Sigmoidlstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_555/mulMullstm_cell_555/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_555/ReluRelulstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_1Mullstm_cell_555/Sigmoid:y:0 lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_555/add_1AddV2lstm_cell_555/mul:z:0lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_555/Sigmoid_2Sigmoidlstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_555/Relu_1Relulstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_555/mul_2Mullstm_cell_555/Sigmoid_2:y:0"lstm_cell_555/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_555_matmul_readvariableop_resource.lstm_cell_555_matmul_1_readvariableop_resource-lstm_cell_555_biasadd_readvariableop_resource*
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
while_body_3373520*
condR
while_cond_3373519*K
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
NoOpNoOp%^lstm_cell_555/BiasAdd/ReadVariableOp$^lstm_cell_555/MatMul/ReadVariableOp&^lstm_cell_555/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_555/BiasAdd/ReadVariableOp$lstm_cell_555/BiasAdd/ReadVariableOp2J
#lstm_cell_555/MatMul/ReadVariableOp#lstm_cell_555/MatMul/ReadVariableOp2N
%lstm_cell_555/MatMul_1/ReadVariableOp%lstm_cell_555/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3372067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_555_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_555_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_555_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_555_matmul_readvariableop_resource:	?G
4while_lstm_cell_555_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_555_biasadd_readvariableop_resource:	???*while/lstm_cell_555/BiasAdd/ReadVariableOp?)while/lstm_cell_555/MatMul/ReadVariableOp?+while/lstm_cell_555/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_555_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_555/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_555_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_555/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_555/addAddV2$while/lstm_cell_555/MatMul:product:0&while/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_555_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_555/BiasAddBiasAddwhile/lstm_cell_555/add:z:02while/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_555/splitSplit,while/lstm_cell_555/split/split_dim:output:0$while/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_555/SigmoidSigmoid"while/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_1Sigmoid"while/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mulMul!while/lstm_cell_555/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_555/ReluRelu"while/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_1Mulwhile/lstm_cell_555/Sigmoid:y:0&while/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/add_1AddV2while/lstm_cell_555/mul:z:0while/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_555/Sigmoid_2Sigmoid"while/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_555/Relu_1Reluwhile/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_555/mul_2Mul!while/lstm_cell_555/Sigmoid_2:y:0(while/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_555/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_555/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_555/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_555/BiasAdd/ReadVariableOp*^while/lstm_cell_555/MatMul/ReadVariableOp,^while/lstm_cell_555/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_555_biasadd_readvariableop_resource5while_lstm_cell_555_biasadd_readvariableop_resource_0"n
4while_lstm_cell_555_matmul_1_readvariableop_resource6while_lstm_cell_555_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_555_matmul_readvariableop_resource4while_lstm_cell_555_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_555/BiasAdd/ReadVariableOp*while/lstm_cell_555/BiasAdd/ReadVariableOp2V
)while/lstm_cell_555/MatMul/ReadVariableOp)while/lstm_cell_555/MatMul/ReadVariableOp2Z
+while/lstm_cell_555/MatMul_1/ReadVariableOp+while/lstm_cell_555/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3371370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3371370___redundant_placeholder05
1while_while_cond_3371370___redundant_placeholder15
1while_while_cond_3371370___redundant_placeholder25
1while_while_cond_3371370___redundant_placeholder3
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
while_cond_3375037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3375037___redundant_placeholder05
1while_while_cond_3375037___redundant_placeholder15
1while_while_cond_3375037___redundant_placeholder25
1while_while_cond_3375037___redundant_placeholder3
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
while_cond_3374278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3374278___redundant_placeholder05
1while_while_cond_3374278___redundant_placeholder15
1while_while_cond_3374278___redundant_placeholder25
1while_while_cond_3374278___redundant_placeholder3
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
*sequential_141_lstm_425_while_cond_3370015L
Hsequential_141_lstm_425_while_sequential_141_lstm_425_while_loop_counterR
Nsequential_141_lstm_425_while_sequential_141_lstm_425_while_maximum_iterations-
)sequential_141_lstm_425_while_placeholder/
+sequential_141_lstm_425_while_placeholder_1/
+sequential_141_lstm_425_while_placeholder_2/
+sequential_141_lstm_425_while_placeholder_3N
Jsequential_141_lstm_425_while_less_sequential_141_lstm_425_strided_slice_1e
asequential_141_lstm_425_while_sequential_141_lstm_425_while_cond_3370015___redundant_placeholder0e
asequential_141_lstm_425_while_sequential_141_lstm_425_while_cond_3370015___redundant_placeholder1e
asequential_141_lstm_425_while_sequential_141_lstm_425_while_cond_3370015___redundant_placeholder2e
asequential_141_lstm_425_while_sequential_141_lstm_425_while_cond_3370015___redundant_placeholder3*
&sequential_141_lstm_425_while_identity
?
"sequential_141/lstm_425/while/LessLess)sequential_141_lstm_425_while_placeholderJsequential_141_lstm_425_while_less_sequential_141_lstm_425_strided_slice_1*
T0*
_output_shapes
: {
&sequential_141/lstm_425/while/IdentityIdentity&sequential_141/lstm_425/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_141_lstm_425_while_identity/sequential_141/lstm_425/while/Identity:output:0*(
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
while_cond_3370536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3370536___redundant_placeholder05
1while_while_cond_3370536___redundant_placeholder15
1while_while_cond_3370536___redundant_placeholder25
1while_while_cond_3370536___redundant_placeholder3
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
while_cond_3370727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3370727___redundant_placeholder05
1while_while_cond_3370727___redundant_placeholder15
1while_while_cond_3370727___redundant_placeholder25
1while_while_cond_3370727___redundant_placeholder3
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
while_body_3370378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_555_3370402_0:	?0
while_lstm_cell_555_3370404_0:	d?,
while_lstm_cell_555_3370406_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_555_3370402:	?.
while_lstm_cell_555_3370404:	d?*
while_lstm_cell_555_3370406:	???+while/lstm_cell_555/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_555/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_555_3370402_0while_lstm_cell_555_3370404_0while_lstm_cell_555_3370406_0*
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3370319?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_555/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_555/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_555/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_555/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_555_3370402while_lstm_cell_555_3370402_0"<
while_lstm_cell_555_3370404while_lstm_cell_555_3370404_0"<
while_lstm_cell_555_3370406while_lstm_cell_555_3370406_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_555/StatefulPartitionedCall+while/lstm_cell_555/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3370797

inputs(
lstm_cell_556_3370715:	d?(
lstm_cell_556_3370717:	2?$
lstm_cell_556_3370719:	?
identity??%lstm_cell_556/StatefulPartitionedCall?while;
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
%lstm_cell_556/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_556_3370715lstm_cell_556_3370717lstm_cell_556_3370719*
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370669n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_556_3370715lstm_cell_556_3370717lstm_cell_556_3370719*
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
while_body_3370728*
condR
while_cond_3370727*K
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
NoOpNoOp&^lstm_cell_556/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_556/StatefulPartitionedCall%lstm_cell_556/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_3370537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_556_3370561_0:	d?0
while_lstm_cell_556_3370563_0:	2?,
while_lstm_cell_556_3370565_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_556_3370561:	d?.
while_lstm_cell_556_3370563:	2?*
while_lstm_cell_556_3370565:	???+while/lstm_cell_556/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_556/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_556_3370561_0while_lstm_cell_556_3370563_0while_lstm_cell_556_3370565_0*
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3370523?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_556/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_556/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_556/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_556/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_556_3370561while_lstm_cell_556_3370561_0"<
while_lstm_cell_556_3370563while_lstm_cell_556_3370563_0"<
while_lstm_cell_556_3370565while_lstm_cell_556_3370565_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_556/StatefulPartitionedCall+while/lstm_cell_556/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3373274

inputsH
5lstm_423_lstm_cell_555_matmul_readvariableop_resource:	?J
7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource:	d?E
6lstm_423_lstm_cell_555_biasadd_readvariableop_resource:	?H
5lstm_424_lstm_cell_556_matmul_readvariableop_resource:	d?J
7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource:	2?E
6lstm_424_lstm_cell_556_biasadd_readvariableop_resource:	?G
5lstm_425_lstm_cell_557_matmul_readvariableop_resource:2(I
7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource:
(D
6lstm_425_lstm_cell_557_biasadd_readvariableop_resource:(:
(dense_141_matmul_readvariableop_resource:
7
)dense_141_biasadd_readvariableop_resource:
identity?? dense_141/BiasAdd/ReadVariableOp?dense_141/MatMul/ReadVariableOp?-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp?,lstm_423/lstm_cell_555/MatMul/ReadVariableOp?.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp?lstm_423/while?-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp?,lstm_424/lstm_cell_556/MatMul/ReadVariableOp?.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp?lstm_424/while?-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp?,lstm_425/lstm_cell_557/MatMul/ReadVariableOp?.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp?lstm_425/whileD
lstm_423/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_sliceStridedSlicelstm_423/Shape:output:0%lstm_423/strided_slice/stack:output:0'lstm_423/strided_slice/stack_1:output:0'lstm_423/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_423/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_423/zeros/packedPacklstm_423/strided_slice:output:0 lstm_423/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_423/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_423/zerosFilllstm_423/zeros/packed:output:0lstm_423/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_423/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_423/zeros_1/packedPacklstm_423/strided_slice:output:0"lstm_423/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_423/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_423/zeros_1Fill lstm_423/zeros_1/packed:output:0lstm_423/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_423/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_423/transpose	Transposeinputs lstm_423/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_423/Shape_1Shapelstm_423/transpose:y:0*
T0*
_output_shapes
:h
lstm_423/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_423/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_1StridedSlicelstm_423/Shape_1:output:0'lstm_423/strided_slice_1/stack:output:0)lstm_423/strided_slice_1/stack_1:output:0)lstm_423/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_423/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_423/TensorArrayV2TensorListReserve-lstm_423/TensorArrayV2/element_shape:output:0!lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_423/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_423/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_423/transpose:y:0Glstm_423/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_423/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_423/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_2StridedSlicelstm_423/transpose:y:0'lstm_423/strided_slice_2/stack:output:0)lstm_423/strided_slice_2/stack_1:output:0)lstm_423/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_423/lstm_cell_555/MatMul/ReadVariableOpReadVariableOp5lstm_423_lstm_cell_555_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_423/lstm_cell_555/MatMulMatMul!lstm_423/strided_slice_2:output:04lstm_423/lstm_cell_555/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOpReadVariableOp7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_423/lstm_cell_555/MatMul_1MatMullstm_423/zeros:output:06lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_423/lstm_cell_555/addAddV2'lstm_423/lstm_cell_555/MatMul:product:0)lstm_423/lstm_cell_555/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOpReadVariableOp6lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_423/lstm_cell_555/BiasAddBiasAddlstm_423/lstm_cell_555/add:z:05lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_423/lstm_cell_555/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_423/lstm_cell_555/splitSplit/lstm_423/lstm_cell_555/split/split_dim:output:0'lstm_423/lstm_cell_555/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_423/lstm_cell_555/SigmoidSigmoid%lstm_423/lstm_cell_555/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_423/lstm_cell_555/Sigmoid_1Sigmoid%lstm_423/lstm_cell_555/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mulMul$lstm_423/lstm_cell_555/Sigmoid_1:y:0lstm_423/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_423/lstm_cell_555/ReluRelu%lstm_423/lstm_cell_555/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mul_1Mul"lstm_423/lstm_cell_555/Sigmoid:y:0)lstm_423/lstm_cell_555/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/add_1AddV2lstm_423/lstm_cell_555/mul:z:0 lstm_423/lstm_cell_555/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_423/lstm_cell_555/Sigmoid_2Sigmoid%lstm_423/lstm_cell_555/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_423/lstm_cell_555/Relu_1Relu lstm_423/lstm_cell_555/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_423/lstm_cell_555/mul_2Mul$lstm_423/lstm_cell_555/Sigmoid_2:y:0+lstm_423/lstm_cell_555/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_423/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_423/TensorArrayV2_1TensorListReserve/lstm_423/TensorArrayV2_1/element_shape:output:0!lstm_423/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_423/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_423/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_423/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_423/whileWhile$lstm_423/while/loop_counter:output:0*lstm_423/while/maximum_iterations:output:0lstm_423/time:output:0!lstm_423/TensorArrayV2_1:handle:0lstm_423/zeros:output:0lstm_423/zeros_1:output:0!lstm_423/strided_slice_1:output:0@lstm_423/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_423_lstm_cell_555_matmul_readvariableop_resource7lstm_423_lstm_cell_555_matmul_1_readvariableop_resource6lstm_423_lstm_cell_555_biasadd_readvariableop_resource*
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
lstm_423_while_body_3372906*'
condR
lstm_423_while_cond_3372905*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_423/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_423/TensorArrayV2Stack/TensorListStackTensorListStacklstm_423/while:output:3Blstm_423/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_423/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_423/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_423/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_423/strided_slice_3StridedSlice4lstm_423/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_423/strided_slice_3/stack:output:0)lstm_423/strided_slice_3/stack_1:output:0)lstm_423/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_423/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_423/transpose_1	Transpose4lstm_423/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_423/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_423/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_424/ShapeShapelstm_423/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_424/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_424/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_424/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_sliceStridedSlicelstm_424/Shape:output:0%lstm_424/strided_slice/stack:output:0'lstm_424/strided_slice/stack_1:output:0'lstm_424/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_424/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_424/zeros/packedPacklstm_424/strided_slice:output:0 lstm_424/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_424/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_424/zerosFilllstm_424/zeros/packed:output:0lstm_424/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_424/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_424/zeros_1/packedPacklstm_424/strided_slice:output:0"lstm_424/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_424/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_424/zeros_1Fill lstm_424/zeros_1/packed:output:0lstm_424/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_424/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_424/transpose	Transposelstm_423/transpose_1:y:0 lstm_424/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_424/Shape_1Shapelstm_424/transpose:y:0*
T0*
_output_shapes
:h
lstm_424/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_424/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_1StridedSlicelstm_424/Shape_1:output:0'lstm_424/strided_slice_1/stack:output:0)lstm_424/strided_slice_1/stack_1:output:0)lstm_424/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_424/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_424/TensorArrayV2TensorListReserve-lstm_424/TensorArrayV2/element_shape:output:0!lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_424/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_424/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_424/transpose:y:0Glstm_424/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_424/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_424/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_2StridedSlicelstm_424/transpose:y:0'lstm_424/strided_slice_2/stack:output:0)lstm_424/strided_slice_2/stack_1:output:0)lstm_424/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_424/lstm_cell_556/MatMul/ReadVariableOpReadVariableOp5lstm_424_lstm_cell_556_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_424/lstm_cell_556/MatMulMatMul!lstm_424/strided_slice_2:output:04lstm_424/lstm_cell_556/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOpReadVariableOp7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_424/lstm_cell_556/MatMul_1MatMullstm_424/zeros:output:06lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_424/lstm_cell_556/addAddV2'lstm_424/lstm_cell_556/MatMul:product:0)lstm_424/lstm_cell_556/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOpReadVariableOp6lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_424/lstm_cell_556/BiasAddBiasAddlstm_424/lstm_cell_556/add:z:05lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_424/lstm_cell_556/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_424/lstm_cell_556/splitSplit/lstm_424/lstm_cell_556/split/split_dim:output:0'lstm_424/lstm_cell_556/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_424/lstm_cell_556/SigmoidSigmoid%lstm_424/lstm_cell_556/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_424/lstm_cell_556/Sigmoid_1Sigmoid%lstm_424/lstm_cell_556/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mulMul$lstm_424/lstm_cell_556/Sigmoid_1:y:0lstm_424/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_424/lstm_cell_556/ReluRelu%lstm_424/lstm_cell_556/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mul_1Mul"lstm_424/lstm_cell_556/Sigmoid:y:0)lstm_424/lstm_cell_556/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/add_1AddV2lstm_424/lstm_cell_556/mul:z:0 lstm_424/lstm_cell_556/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_424/lstm_cell_556/Sigmoid_2Sigmoid%lstm_424/lstm_cell_556/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_424/lstm_cell_556/Relu_1Relu lstm_424/lstm_cell_556/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_424/lstm_cell_556/mul_2Mul$lstm_424/lstm_cell_556/Sigmoid_2:y:0+lstm_424/lstm_cell_556/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_424/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_424/TensorArrayV2_1TensorListReserve/lstm_424/TensorArrayV2_1/element_shape:output:0!lstm_424/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_424/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_424/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_424/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_424/whileWhile$lstm_424/while/loop_counter:output:0*lstm_424/while/maximum_iterations:output:0lstm_424/time:output:0!lstm_424/TensorArrayV2_1:handle:0lstm_424/zeros:output:0lstm_424/zeros_1:output:0!lstm_424/strided_slice_1:output:0@lstm_424/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_424_lstm_cell_556_matmul_readvariableop_resource7lstm_424_lstm_cell_556_matmul_1_readvariableop_resource6lstm_424_lstm_cell_556_biasadd_readvariableop_resource*
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
lstm_424_while_body_3373045*'
condR
lstm_424_while_cond_3373044*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_424/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_424/TensorArrayV2Stack/TensorListStackTensorListStacklstm_424/while:output:3Blstm_424/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_424/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_424/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_424/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_424/strided_slice_3StridedSlice4lstm_424/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_424/strided_slice_3/stack:output:0)lstm_424/strided_slice_3/stack_1:output:0)lstm_424/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_424/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_424/transpose_1	Transpose4lstm_424/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_424/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_424/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_425/ShapeShapelstm_424/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_425/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_425/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_425/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_sliceStridedSlicelstm_425/Shape:output:0%lstm_425/strided_slice/stack:output:0'lstm_425/strided_slice/stack_1:output:0'lstm_425/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_425/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_425/zeros/packedPacklstm_425/strided_slice:output:0 lstm_425/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_425/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_425/zerosFilllstm_425/zeros/packed:output:0lstm_425/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_425/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_425/zeros_1/packedPacklstm_425/strided_slice:output:0"lstm_425/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_425/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_425/zeros_1Fill lstm_425/zeros_1/packed:output:0lstm_425/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_425/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_425/transpose	Transposelstm_424/transpose_1:y:0 lstm_425/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_425/Shape_1Shapelstm_425/transpose:y:0*
T0*
_output_shapes
:h
lstm_425/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_425/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_1StridedSlicelstm_425/Shape_1:output:0'lstm_425/strided_slice_1/stack:output:0)lstm_425/strided_slice_1/stack_1:output:0)lstm_425/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_425/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_425/TensorArrayV2TensorListReserve-lstm_425/TensorArrayV2/element_shape:output:0!lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_425/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_425/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_425/transpose:y:0Glstm_425/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_425/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_425/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_2StridedSlicelstm_425/transpose:y:0'lstm_425/strided_slice_2/stack:output:0)lstm_425/strided_slice_2/stack_1:output:0)lstm_425/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_425/lstm_cell_557/MatMul/ReadVariableOpReadVariableOp5lstm_425_lstm_cell_557_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_425/lstm_cell_557/MatMulMatMul!lstm_425/strided_slice_2:output:04lstm_425/lstm_cell_557/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOpReadVariableOp7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_425/lstm_cell_557/MatMul_1MatMullstm_425/zeros:output:06lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_425/lstm_cell_557/addAddV2'lstm_425/lstm_cell_557/MatMul:product:0)lstm_425/lstm_cell_557/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOpReadVariableOp6lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_425/lstm_cell_557/BiasAddBiasAddlstm_425/lstm_cell_557/add:z:05lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_425/lstm_cell_557/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_425/lstm_cell_557/splitSplit/lstm_425/lstm_cell_557/split/split_dim:output:0'lstm_425/lstm_cell_557/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_425/lstm_cell_557/SigmoidSigmoid%lstm_425/lstm_cell_557/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_425/lstm_cell_557/Sigmoid_1Sigmoid%lstm_425/lstm_cell_557/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mulMul$lstm_425/lstm_cell_557/Sigmoid_1:y:0lstm_425/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_425/lstm_cell_557/ReluRelu%lstm_425/lstm_cell_557/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mul_1Mul"lstm_425/lstm_cell_557/Sigmoid:y:0)lstm_425/lstm_cell_557/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/add_1AddV2lstm_425/lstm_cell_557/mul:z:0 lstm_425/lstm_cell_557/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_425/lstm_cell_557/Sigmoid_2Sigmoid%lstm_425/lstm_cell_557/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_425/lstm_cell_557/Relu_1Relu lstm_425/lstm_cell_557/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_425/lstm_cell_557/mul_2Mul$lstm_425/lstm_cell_557/Sigmoid_2:y:0+lstm_425/lstm_cell_557/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_425/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_425/TensorArrayV2_1TensorListReserve/lstm_425/TensorArrayV2_1/element_shape:output:0!lstm_425/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_425/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_425/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_425/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_425/whileWhile$lstm_425/while/loop_counter:output:0*lstm_425/while/maximum_iterations:output:0lstm_425/time:output:0!lstm_425/TensorArrayV2_1:handle:0lstm_425/zeros:output:0lstm_425/zeros_1:output:0!lstm_425/strided_slice_1:output:0@lstm_425/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_425_lstm_cell_557_matmul_readvariableop_resource7lstm_425_lstm_cell_557_matmul_1_readvariableop_resource6lstm_425_lstm_cell_557_biasadd_readvariableop_resource*
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
lstm_425_while_body_3373184*'
condR
lstm_425_while_cond_3373183*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_425/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_425/TensorArrayV2Stack/TensorListStackTensorListStacklstm_425/while:output:3Blstm_425/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_425/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_425/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_425/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_425/strided_slice_3StridedSlice4lstm_425/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_425/strided_slice_3/stack:output:0)lstm_425/strided_slice_3/stack_1:output:0)lstm_425/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_425/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_425/transpose_1	Transpose4lstm_425/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_425/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_425/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_141/MatMulMatMul!lstm_425/strided_slice_3:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_141/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp.^lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp-^lstm_423/lstm_cell_555/MatMul/ReadVariableOp/^lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp^lstm_423/while.^lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp-^lstm_424/lstm_cell_556/MatMul/ReadVariableOp/^lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp^lstm_424/while.^lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp-^lstm_425/lstm_cell_557/MatMul/ReadVariableOp/^lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp^lstm_425/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2^
-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp-lstm_423/lstm_cell_555/BiasAdd/ReadVariableOp2\
,lstm_423/lstm_cell_555/MatMul/ReadVariableOp,lstm_423/lstm_cell_555/MatMul/ReadVariableOp2`
.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp.lstm_423/lstm_cell_555/MatMul_1/ReadVariableOp2 
lstm_423/whilelstm_423/while2^
-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp-lstm_424/lstm_cell_556/BiasAdd/ReadVariableOp2\
,lstm_424/lstm_cell_556/MatMul/ReadVariableOp,lstm_424/lstm_cell_556/MatMul/ReadVariableOp2`
.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp.lstm_424/lstm_cell_556/MatMul_1/ReadVariableOp2 
lstm_424/whilelstm_424/while2^
-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp-lstm_425/lstm_cell_557/BiasAdd/ReadVariableOp2\
,lstm_425/lstm_cell_557/MatMul/ReadVariableOp,lstm_425/lstm_cell_557/MatMul/ReadVariableOp2`
.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp.lstm_425/lstm_cell_557/MatMul_1/ReadVariableOp2 
lstm_425/whilelstm_425/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_424_layer_call_fn_3373923

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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3371455s
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
while_cond_3373376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3373376___redundant_placeholder05
1while_while_cond_3373376___redundant_placeholder15
1while_while_cond_3373376___redundant_placeholder25
1while_while_cond_3373376___redundant_placeholder3
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
lstm_423_input;
 serving_default_lstm_423_input:0?????????=
	dense_1410
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
2dense_141/kernel
:2dense_141/bias
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
0:.	?2lstm_423/lstm_cell_423/kernel
::8	d?2'lstm_423/lstm_cell_423/recurrent_kernel
*:(?2lstm_423/lstm_cell_423/bias
0:.	d?2lstm_424/lstm_cell_424/kernel
::8	2?2'lstm_424/lstm_cell_424/recurrent_kernel
*:(?2lstm_424/lstm_cell_424/bias
/:-2(2lstm_425/lstm_cell_425/kernel
9:7
(2'lstm_425/lstm_cell_425/recurrent_kernel
):'(2lstm_425/lstm_cell_425/bias
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
2Adam/dense_141/kernel/m
!:2Adam/dense_141/bias/m
5:3	?2$Adam/lstm_423/lstm_cell_423/kernel/m
?:=	d?2.Adam/lstm_423/lstm_cell_423/recurrent_kernel/m
/:-?2"Adam/lstm_423/lstm_cell_423/bias/m
5:3	d?2$Adam/lstm_424/lstm_cell_424/kernel/m
?:=	2?2.Adam/lstm_424/lstm_cell_424/recurrent_kernel/m
/:-?2"Adam/lstm_424/lstm_cell_424/bias/m
4:22(2$Adam/lstm_425/lstm_cell_425/kernel/m
>:<
(2.Adam/lstm_425/lstm_cell_425/recurrent_kernel/m
.:,(2"Adam/lstm_425/lstm_cell_425/bias/m
':%
2Adam/dense_141/kernel/v
!:2Adam/dense_141/bias/v
5:3	?2$Adam/lstm_423/lstm_cell_423/kernel/v
?:=	d?2.Adam/lstm_423/lstm_cell_423/recurrent_kernel/v
/:-?2"Adam/lstm_423/lstm_cell_423/bias/v
5:3	d?2$Adam/lstm_424/lstm_cell_424/kernel/v
?:=	2?2.Adam/lstm_424/lstm_cell_424/recurrent_kernel/v
/:-?2"Adam/lstm_424/lstm_cell_424/bias/v
4:22(2$Adam/lstm_425/lstm_cell_425/kernel/v
>:<
(2.Adam/lstm_425/lstm_cell_425/recurrent_kernel/v
.:,(2"Adam/lstm_425/lstm_cell_425/bias/v
?2?
0__inference_sequential_141_layer_call_fn_3371655
0__inference_sequential_141_layer_call_fn_3372393
0__inference_sequential_141_layer_call_fn_3372420
0__inference_sequential_141_layer_call_fn_3372271?
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372847
K__inference_sequential_141_layer_call_and_return_conditional_losses_3373274
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372301
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372331?
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
"__inference__wrapped_model_3370106lstm_423_input"?
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
*__inference_lstm_423_layer_call_fn_3373285
*__inference_lstm_423_layer_call_fn_3373296
*__inference_lstm_423_layer_call_fn_3373307
*__inference_lstm_423_layer_call_fn_3373318?
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373461
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373604
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373747
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373890?
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
*__inference_lstm_424_layer_call_fn_3373901
*__inference_lstm_424_layer_call_fn_3373912
*__inference_lstm_424_layer_call_fn_3373923
*__inference_lstm_424_layer_call_fn_3373934?
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374077
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374220
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374363
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374506?
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
*__inference_lstm_425_layer_call_fn_3374517
*__inference_lstm_425_layer_call_fn_3374528
*__inference_lstm_425_layer_call_fn_3374539
*__inference_lstm_425_layer_call_fn_3374550?
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374693
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374836
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374979
E__inference_lstm_425_layer_call_and_return_conditional_losses_3375122?
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
+__inference_dense_141_layer_call_fn_3375131?
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
F__inference_dense_141_layer_call_and_return_conditional_losses_3375141?
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
%__inference_signature_wrapper_3372366lstm_423_input"?
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
/__inference_lstm_cell_555_layer_call_fn_3375158
/__inference_lstm_cell_555_layer_call_fn_3375175?
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375207
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375239?
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
/__inference_lstm_cell_556_layer_call_fn_3375256
/__inference_lstm_cell_556_layer_call_fn_3375273?
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375305
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375337?
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
/__inference_lstm_cell_557_layer_call_fn_3375354
/__inference_lstm_cell_557_layer_call_fn_3375371?
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375403
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375435?
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
"__inference__wrapped_model_3370106?-./012345!";?8
1?.
,?)
lstm_423_input?????????
? "5?2
0
	dense_141#? 
	dense_141??????????
F__inference_dense_141_layer_call_and_return_conditional_losses_3375141\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_141_layer_call_fn_3375131O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373461?-./O?L
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373604?-./O?L
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373747q-./??<
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
E__inference_lstm_423_layer_call_and_return_conditional_losses_3373890q-./??<
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
*__inference_lstm_423_layer_call_fn_3373285}-./O?L
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
*__inference_lstm_423_layer_call_fn_3373296}-./O?L
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
*__inference_lstm_423_layer_call_fn_3373307d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_423_layer_call_fn_3373318d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374077?012O?L
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374220?012O?L
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374363q012??<
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
E__inference_lstm_424_layer_call_and_return_conditional_losses_3374506q012??<
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
*__inference_lstm_424_layer_call_fn_3373901}012O?L
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
*__inference_lstm_424_layer_call_fn_3373912}012O?L
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
*__inference_lstm_424_layer_call_fn_3373923d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_424_layer_call_fn_3373934d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374693}345O?L
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374836}345O?L
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3374979m345??<
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
E__inference_lstm_425_layer_call_and_return_conditional_losses_3375122m345??<
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
*__inference_lstm_425_layer_call_fn_3374517p345O?L
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
*__inference_lstm_425_layer_call_fn_3374528p345O?L
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
*__inference_lstm_425_layer_call_fn_3374539`345??<
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
*__inference_lstm_425_layer_call_fn_3374550`345??<
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375207?-./??}
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
J__inference_lstm_cell_555_layer_call_and_return_conditional_losses_3375239?-./??}
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
/__inference_lstm_cell_555_layer_call_fn_3375158?-./??}
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
/__inference_lstm_cell_555_layer_call_fn_3375175?-./??}
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375305?012??}
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
J__inference_lstm_cell_556_layer_call_and_return_conditional_losses_3375337?012??}
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
/__inference_lstm_cell_556_layer_call_fn_3375256?012??}
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
/__inference_lstm_cell_556_layer_call_fn_3375273?012??}
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375403?345??}
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
J__inference_lstm_cell_557_layer_call_and_return_conditional_losses_3375435?345??}
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
/__inference_lstm_cell_557_layer_call_fn_3375354?345??}
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
/__inference_lstm_cell_557_layer_call_fn_3375371?345??}
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372301y-./012345!"C?@
9?6
,?)
lstm_423_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372331y-./012345!"C?@
9?6
,?)
lstm_423_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_141_layer_call_and_return_conditional_losses_3372847q-./012345!";?8
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
K__inference_sequential_141_layer_call_and_return_conditional_losses_3373274q-./012345!";?8
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
0__inference_sequential_141_layer_call_fn_3371655l-./012345!"C?@
9?6
,?)
lstm_423_input?????????
p 

 
? "???????????
0__inference_sequential_141_layer_call_fn_3372271l-./012345!"C?@
9?6
,?)
lstm_423_input?????????
p

 
? "???????????
0__inference_sequential_141_layer_call_fn_3372393d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_141_layer_call_fn_3372420d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3372366?-./012345!"M?J
? 
C?@
>
lstm_423_input,?)
lstm_423_input?????????"5?2
0
	dense_141#? 
	dense_141?????????