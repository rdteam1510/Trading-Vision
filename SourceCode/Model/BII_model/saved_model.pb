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
dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_107/kernel
u
$dense_107/kernel/Read/ReadVariableOpReadVariableOpdense_107/kernel*
_output_shapes

:
*
dtype0
t
dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_107/bias
m
"dense_107/bias/Read/ReadVariableOpReadVariableOpdense_107/bias*
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
lstm_321/lstm_cell_321/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_321/lstm_cell_321/kernel
?
1lstm_321/lstm_cell_321/kernel/Read/ReadVariableOpReadVariableOplstm_321/lstm_cell_321/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_321/lstm_cell_321/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_321/lstm_cell_321/recurrent_kernel
?
;lstm_321/lstm_cell_321/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_321/lstm_cell_321/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_321/lstm_cell_321/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_321/lstm_cell_321/bias
?
/lstm_321/lstm_cell_321/bias/Read/ReadVariableOpReadVariableOplstm_321/lstm_cell_321/bias*
_output_shapes	
:?*
dtype0
?
lstm_322/lstm_cell_322/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_322/lstm_cell_322/kernel
?
1lstm_322/lstm_cell_322/kernel/Read/ReadVariableOpReadVariableOplstm_322/lstm_cell_322/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_322/lstm_cell_322/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_322/lstm_cell_322/recurrent_kernel
?
;lstm_322/lstm_cell_322/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_322/lstm_cell_322/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_322/lstm_cell_322/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_322/lstm_cell_322/bias
?
/lstm_322/lstm_cell_322/bias/Read/ReadVariableOpReadVariableOplstm_322/lstm_cell_322/bias*
_output_shapes	
:?*
dtype0
?
lstm_323/lstm_cell_323/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_323/lstm_cell_323/kernel
?
1lstm_323/lstm_cell_323/kernel/Read/ReadVariableOpReadVariableOplstm_323/lstm_cell_323/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_323/lstm_cell_323/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_323/lstm_cell_323/recurrent_kernel
?
;lstm_323/lstm_cell_323/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_323/lstm_cell_323/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_323/lstm_cell_323/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_323/lstm_cell_323/bias
?
/lstm_323/lstm_cell_323/bias/Read/ReadVariableOpReadVariableOplstm_323/lstm_cell_323/bias*
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
Adam/dense_107/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_107/kernel/m
?
+Adam/dense_107/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_107/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_107/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_107/bias/m
{
)Adam/dense_107/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_107/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_321/lstm_cell_321/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_321/lstm_cell_321/kernel/m
?
8Adam/lstm_321/lstm_cell_321/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_321/lstm_cell_321/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_321/lstm_cell_321/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_321/lstm_cell_321/recurrent_kernel/m
?
BAdam/lstm_321/lstm_cell_321/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_321/lstm_cell_321/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_321/lstm_cell_321/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_321/lstm_cell_321/bias/m
?
6Adam/lstm_321/lstm_cell_321/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_321/lstm_cell_321/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_322/lstm_cell_322/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_322/lstm_cell_322/kernel/m
?
8Adam/lstm_322/lstm_cell_322/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_322/lstm_cell_322/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_322/lstm_cell_322/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_322/lstm_cell_322/recurrent_kernel/m
?
BAdam/lstm_322/lstm_cell_322/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_322/lstm_cell_322/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_322/lstm_cell_322/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_322/lstm_cell_322/bias/m
?
6Adam/lstm_322/lstm_cell_322/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_322/lstm_cell_322/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_323/lstm_cell_323/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_323/lstm_cell_323/kernel/m
?
8Adam/lstm_323/lstm_cell_323/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_323/lstm_cell_323/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_323/lstm_cell_323/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_323/lstm_cell_323/recurrent_kernel/m
?
BAdam/lstm_323/lstm_cell_323/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_323/lstm_cell_323/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_323/lstm_cell_323/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_323/lstm_cell_323/bias/m
?
6Adam/lstm_323/lstm_cell_323/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_323/lstm_cell_323/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_107/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_107/kernel/v
?
+Adam/dense_107/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_107/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_107/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_107/bias/v
{
)Adam/dense_107/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_107/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_321/lstm_cell_321/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_321/lstm_cell_321/kernel/v
?
8Adam/lstm_321/lstm_cell_321/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_321/lstm_cell_321/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_321/lstm_cell_321/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_321/lstm_cell_321/recurrent_kernel/v
?
BAdam/lstm_321/lstm_cell_321/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_321/lstm_cell_321/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_321/lstm_cell_321/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_321/lstm_cell_321/bias/v
?
6Adam/lstm_321/lstm_cell_321/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_321/lstm_cell_321/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_322/lstm_cell_322/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_322/lstm_cell_322/kernel/v
?
8Adam/lstm_322/lstm_cell_322/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_322/lstm_cell_322/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_322/lstm_cell_322/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_322/lstm_cell_322/recurrent_kernel/v
?
BAdam/lstm_322/lstm_cell_322/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_322/lstm_cell_322/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_322/lstm_cell_322/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_322/lstm_cell_322/bias/v
?
6Adam/lstm_322/lstm_cell_322/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_322/lstm_cell_322/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_323/lstm_cell_323/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_323/lstm_cell_323/kernel/v
?
8Adam/lstm_323/lstm_cell_323/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_323/lstm_cell_323/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_323/lstm_cell_323/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_323/lstm_cell_323/recurrent_kernel/v
?
BAdam/lstm_323/lstm_cell_323/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_323/lstm_cell_323/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_323/lstm_cell_323/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_323/lstm_cell_323/bias/v
?
6Adam/lstm_323/lstm_cell_323/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_323/lstm_cell_323/bias/v*
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
VARIABLE_VALUEdense_107/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_107/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_321/lstm_cell_321/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_321/lstm_cell_321/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_321/lstm_cell_321/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_322/lstm_cell_322/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_322/lstm_cell_322/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_322/lstm_cell_322/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_323/lstm_cell_323/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_323/lstm_cell_323/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_323/lstm_cell_323/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_107/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_107/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_321/lstm_cell_321/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_321/lstm_cell_321/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_321/lstm_cell_321/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_322/lstm_cell_322/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_322/lstm_cell_322/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_322/lstm_cell_322/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_323/lstm_cell_323/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_323/lstm_cell_323/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_323/lstm_cell_323/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_107/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_107/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_321/lstm_cell_321/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_321/lstm_cell_321/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_321/lstm_cell_321/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_322/lstm_cell_322/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_322/lstm_cell_322/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_322/lstm_cell_322/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_323/lstm_cell_323/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_323/lstm_cell_323/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_323/lstm_cell_323/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_321_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_321_inputlstm_321/lstm_cell_321/kernel'lstm_321/lstm_cell_321/recurrent_kernellstm_321/lstm_cell_321/biaslstm_322/lstm_cell_322/kernel'lstm_322/lstm_cell_322/recurrent_kernellstm_322/lstm_cell_322/biaslstm_323/lstm_cell_323/kernel'lstm_323/lstm_cell_323/recurrent_kernellstm_323/lstm_cell_323/biasdense_107/kerneldense_107/bias*
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
%__inference_signature_wrapper_1557164
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_107/kernel/Read/ReadVariableOp"dense_107/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_321/lstm_cell_321/kernel/Read/ReadVariableOp;lstm_321/lstm_cell_321/recurrent_kernel/Read/ReadVariableOp/lstm_321/lstm_cell_321/bias/Read/ReadVariableOp1lstm_322/lstm_cell_322/kernel/Read/ReadVariableOp;lstm_322/lstm_cell_322/recurrent_kernel/Read/ReadVariableOp/lstm_322/lstm_cell_322/bias/Read/ReadVariableOp1lstm_323/lstm_cell_323/kernel/Read/ReadVariableOp;lstm_323/lstm_cell_323/recurrent_kernel/Read/ReadVariableOp/lstm_323/lstm_cell_323/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_107/kernel/m/Read/ReadVariableOp)Adam/dense_107/bias/m/Read/ReadVariableOp8Adam/lstm_321/lstm_cell_321/kernel/m/Read/ReadVariableOpBAdam/lstm_321/lstm_cell_321/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_321/lstm_cell_321/bias/m/Read/ReadVariableOp8Adam/lstm_322/lstm_cell_322/kernel/m/Read/ReadVariableOpBAdam/lstm_322/lstm_cell_322/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_322/lstm_cell_322/bias/m/Read/ReadVariableOp8Adam/lstm_323/lstm_cell_323/kernel/m/Read/ReadVariableOpBAdam/lstm_323/lstm_cell_323/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_323/lstm_cell_323/bias/m/Read/ReadVariableOp+Adam/dense_107/kernel/v/Read/ReadVariableOp)Adam/dense_107/bias/v/Read/ReadVariableOp8Adam/lstm_321/lstm_cell_321/kernel/v/Read/ReadVariableOpBAdam/lstm_321/lstm_cell_321/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_321/lstm_cell_321/bias/v/Read/ReadVariableOp8Adam/lstm_322/lstm_cell_322/kernel/v/Read/ReadVariableOpBAdam/lstm_322/lstm_cell_322/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_322/lstm_cell_322/bias/v/Read/ReadVariableOp8Adam/lstm_323/lstm_cell_323/kernel/v/Read/ReadVariableOpBAdam/lstm_323/lstm_cell_323/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_323/lstm_cell_323/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1560376
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_107/kerneldense_107/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_321/lstm_cell_321/kernel'lstm_321/lstm_cell_321/recurrent_kernellstm_321/lstm_cell_321/biaslstm_322/lstm_cell_322/kernel'lstm_322/lstm_cell_322/recurrent_kernellstm_322/lstm_cell_322/biaslstm_323/lstm_cell_323/kernel'lstm_323/lstm_cell_323/recurrent_kernellstm_323/lstm_cell_323/biastotalcountAdam/dense_107/kernel/mAdam/dense_107/bias/m$Adam/lstm_321/lstm_cell_321/kernel/m.Adam/lstm_321/lstm_cell_321/recurrent_kernel/m"Adam/lstm_321/lstm_cell_321/bias/m$Adam/lstm_322/lstm_cell_322/kernel/m.Adam/lstm_322/lstm_cell_322/recurrent_kernel/m"Adam/lstm_322/lstm_cell_322/bias/m$Adam/lstm_323/lstm_cell_323/kernel/m.Adam/lstm_323/lstm_cell_323/recurrent_kernel/m"Adam/lstm_323/lstm_cell_323/bias/mAdam/dense_107/kernel/vAdam/dense_107/bias/v$Adam/lstm_321/lstm_cell_321/kernel/v.Adam/lstm_321/lstm_cell_321/recurrent_kernel/v"Adam/lstm_321/lstm_cell_321/bias/v$Adam/lstm_322/lstm_cell_322/kernel/v.Adam/lstm_322/lstm_cell_322/recurrent_kernel/v"Adam/lstm_322/lstm_cell_322/bias/v$Adam/lstm_323/lstm_cell_323/kernel/v.Adam/lstm_323/lstm_cell_323/recurrent_kernel/v"Adam/lstm_323/lstm_cell_323/bias/v*4
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
#__inference__traced_restore_1560506??+
?T
?
*sequential_107_lstm_322_while_body_1554675L
Hsequential_107_lstm_322_while_sequential_107_lstm_322_while_loop_counterR
Nsequential_107_lstm_322_while_sequential_107_lstm_322_while_maximum_iterations-
)sequential_107_lstm_322_while_placeholder/
+sequential_107_lstm_322_while_placeholder_1/
+sequential_107_lstm_322_while_placeholder_2/
+sequential_107_lstm_322_while_placeholder_3K
Gsequential_107_lstm_322_while_sequential_107_lstm_322_strided_slice_1_0?
?sequential_107_lstm_322_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_322_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_107_lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0:	d?a
Nsequential_107_lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?\
Msequential_107_lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0:	?*
&sequential_107_lstm_322_while_identity,
(sequential_107_lstm_322_while_identity_1,
(sequential_107_lstm_322_while_identity_2,
(sequential_107_lstm_322_while_identity_3,
(sequential_107_lstm_322_while_identity_4,
(sequential_107_lstm_322_while_identity_5I
Esequential_107_lstm_322_while_sequential_107_lstm_322_strided_slice_1?
?sequential_107_lstm_322_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_322_tensorarrayunstack_tensorlistfromtensor]
Jsequential_107_lstm_322_while_lstm_cell_256_matmul_readvariableop_resource:	d?_
Lsequential_107_lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource:	2?Z
Ksequential_107_lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource:	???Bsequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp?Asequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp?Csequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp?
Osequential_107/lstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_107/lstm_322/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_107_lstm_322_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_322_tensorarrayunstack_tensorlistfromtensor_0)sequential_107_lstm_322_while_placeholderXsequential_107/lstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOpLsequential_107_lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_107/lstm_322/while/lstm_cell_256/MatMulMatMulHsequential_107/lstm_322/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOpNsequential_107_lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_107/lstm_322/while/lstm_cell_256/MatMul_1MatMul+sequential_107_lstm_322_while_placeholder_2Ksequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_107/lstm_322/while/lstm_cell_256/addAddV2<sequential_107/lstm_322/while/lstm_cell_256/MatMul:product:0>sequential_107/lstm_322/while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOpMsequential_107_lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_107/lstm_322/while/lstm_cell_256/BiasAddBiasAdd3sequential_107/lstm_322/while/lstm_cell_256/add:z:0Jsequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_107/lstm_322/while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_107/lstm_322/while/lstm_cell_256/splitSplitDsequential_107/lstm_322/while/lstm_cell_256/split/split_dim:output:0<sequential_107/lstm_322/while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_107/lstm_322/while/lstm_cell_256/SigmoidSigmoid:sequential_107/lstm_322/while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_107/lstm_322/while/lstm_cell_256/Sigmoid_1Sigmoid:sequential_107/lstm_322/while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_107/lstm_322/while/lstm_cell_256/mulMul9sequential_107/lstm_322/while/lstm_cell_256/Sigmoid_1:y:0+sequential_107_lstm_322_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_107/lstm_322/while/lstm_cell_256/ReluRelu:sequential_107/lstm_322/while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_107/lstm_322/while/lstm_cell_256/mul_1Mul7sequential_107/lstm_322/while/lstm_cell_256/Sigmoid:y:0>sequential_107/lstm_322/while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_107/lstm_322/while/lstm_cell_256/add_1AddV23sequential_107/lstm_322/while/lstm_cell_256/mul:z:05sequential_107/lstm_322/while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_107/lstm_322/while/lstm_cell_256/Sigmoid_2Sigmoid:sequential_107/lstm_322/while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_107/lstm_322/while/lstm_cell_256/Relu_1Relu5sequential_107/lstm_322/while/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_107/lstm_322/while/lstm_cell_256/mul_2Mul9sequential_107/lstm_322/while/lstm_cell_256/Sigmoid_2:y:0@sequential_107/lstm_322/while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_107/lstm_322/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_107_lstm_322_while_placeholder_1)sequential_107_lstm_322_while_placeholder5sequential_107/lstm_322/while/lstm_cell_256/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_107/lstm_322/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_107/lstm_322/while/addAddV2)sequential_107_lstm_322_while_placeholder,sequential_107/lstm_322/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_107/lstm_322/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_107/lstm_322/while/add_1AddV2Hsequential_107_lstm_322_while_sequential_107_lstm_322_while_loop_counter.sequential_107/lstm_322/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_107/lstm_322/while/IdentityIdentity'sequential_107/lstm_322/while/add_1:z:0#^sequential_107/lstm_322/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_322/while/Identity_1IdentityNsequential_107_lstm_322_while_sequential_107_lstm_322_while_maximum_iterations#^sequential_107/lstm_322/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_322/while/Identity_2Identity%sequential_107/lstm_322/while/add:z:0#^sequential_107/lstm_322/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_322/while/Identity_3IdentityRsequential_107/lstm_322/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_107/lstm_322/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_322/while/Identity_4Identity5sequential_107/lstm_322/while/lstm_cell_256/mul_2:z:0#^sequential_107/lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_107/lstm_322/while/Identity_5Identity5sequential_107/lstm_322/while/lstm_cell_256/add_1:z:0#^sequential_107/lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_107/lstm_322/while/NoOpNoOpC^sequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOpB^sequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOpD^sequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_107_lstm_322_while_identity/sequential_107/lstm_322/while/Identity:output:0"]
(sequential_107_lstm_322_while_identity_11sequential_107/lstm_322/while/Identity_1:output:0"]
(sequential_107_lstm_322_while_identity_21sequential_107/lstm_322/while/Identity_2:output:0"]
(sequential_107_lstm_322_while_identity_31sequential_107/lstm_322/while/Identity_3:output:0"]
(sequential_107_lstm_322_while_identity_41sequential_107/lstm_322/while/Identity_4:output:0"]
(sequential_107_lstm_322_while_identity_51sequential_107/lstm_322/while/Identity_5:output:0"?
Ksequential_107_lstm_322_while_lstm_cell_256_biasadd_readvariableop_resourceMsequential_107_lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0"?
Lsequential_107_lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resourceNsequential_107_lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0"?
Jsequential_107_lstm_322_while_lstm_cell_256_matmul_readvariableop_resourceLsequential_107_lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0"?
Esequential_107_lstm_322_while_sequential_107_lstm_322_strided_slice_1Gsequential_107_lstm_322_while_sequential_107_lstm_322_strided_slice_1_0"?
?sequential_107_lstm_322_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_322_tensorarrayunstack_tensorlistfromtensor?sequential_107_lstm_322_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_322_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOpBsequential_107/lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp2?
Asequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOpAsequential_107/lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp2?
Csequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOpCsequential_107/lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_256_layer_call_fn_1560071

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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555467o
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559161

inputs?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1559077*
condR
while_cond_1559076*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_256_layer_call_fn_1560054

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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555321o
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
?#
?
while_body_1555176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_255_1555200_0:	?0
while_lstm_cell_255_1555202_0:	d?,
while_lstm_cell_255_1555204_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_255_1555200:	?.
while_lstm_cell_255_1555202:	d?*
while_lstm_cell_255_1555204:	???+while/lstm_cell_255/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_255/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_255_1555200_0while_lstm_cell_255_1555202_0while_lstm_cell_255_1555204_0*
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1555117?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_255/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_255/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_255/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_255/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_255_1555200while_lstm_cell_255_1555200_0"<
while_lstm_cell_255_1555202while_lstm_cell_255_1555202_0"<
while_lstm_cell_255_1555204while_lstm_cell_255_1555204_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_255/StatefulPartitionedCall+while/lstm_cell_255/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_107_layer_call_fn_1557069
lstm_321_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557017o
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
_user_specified_namelstm_321_input
?
?
*__inference_lstm_323_layer_call_fn_1559326
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1555945o
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
while_body_1558934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_255_layer_call_fn_1559973

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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1555117o
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
while_body_1559550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559304

inputs?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1559220*
condR
while_cond_1559219*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_322_layer_call_fn_1558721

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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556253s
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
while_cond_1556018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556018___redundant_placeholder05
1while_while_cond_1556018___redundant_placeholder15
1while_while_cond_1556018___redundant_placeholder25
1while_while_cond_1556018___redundant_placeholder3
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1555754

inputs'
lstm_cell_257_1555672:2('
lstm_cell_257_1555674:
(#
lstm_cell_257_1555676:(
identity??%lstm_cell_257/StatefulPartitionedCall?while;
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
%lstm_cell_257/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_257_1555672lstm_cell_257_1555674lstm_cell_257_1555676*
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555671n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_257_1555672lstm_cell_257_1555674lstm_cell_257_1555676*
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
while_body_1555685*
condR
while_cond_1555684*K
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
NoOpNoOp&^lstm_cell_257/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_257/StatefulPartitionedCall%lstm_cell_257/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1559219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559219___redundant_placeholder05
1while_while_cond_1559219___redundant_placeholder15
1while_while_cond_1559219___redundant_placeholder25
1while_while_cond_1559219___redundant_placeholder3
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
while_body_1556700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557099
lstm_321_input#
lstm_321_1557072:	?#
lstm_321_1557074:	d?
lstm_321_1557076:	?#
lstm_322_1557079:	d?#
lstm_322_1557081:	2?
lstm_322_1557083:	?"
lstm_323_1557086:2("
lstm_323_1557088:
(
lstm_323_1557090:(#
dense_107_1557093:

dense_107_1557095:
identity??!dense_107/StatefulPartitionedCall? lstm_321/StatefulPartitionedCall? lstm_322/StatefulPartitionedCall? lstm_323/StatefulPartitionedCall?
 lstm_321/StatefulPartitionedCallStatefulPartitionedCalllstm_321_inputlstm_321_1557072lstm_321_1557074lstm_321_1557076*
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556103?
 lstm_322/StatefulPartitionedCallStatefulPartitionedCall)lstm_321/StatefulPartitionedCall:output:0lstm_322_1557079lstm_322_1557081lstm_322_1557083*
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556253?
 lstm_323/StatefulPartitionedCallStatefulPartitionedCall)lstm_322/StatefulPartitionedCall:output:0lstm_323_1557086lstm_323_1557088lstm_323_1557090*
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556403?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_323/StatefulPartitionedCall:output:0dense_107_1557093dense_107_1557095*
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_321/StatefulPartitionedCall!^lstm_322/StatefulPartitionedCall!^lstm_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_321/StatefulPartitionedCall lstm_321/StatefulPartitionedCall2D
 lstm_322/StatefulPartitionedCall lstm_322/StatefulPartitionedCall2D
 lstm_323/StatefulPartitionedCall lstm_323/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_321_input
?
?
while_cond_1559549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559549___redundant_placeholder05
1while_while_cond_1559549___redundant_placeholder15
1while_while_cond_1559549___redundant_placeholder25
1while_while_cond_1559549___redundant_placeholder3
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
#__inference__traced_restore_1560506
file_prefix3
!assignvariableop_dense_107_kernel:
/
!assignvariableop_1_dense_107_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_321_lstm_cell_321_kernel:	?M
:assignvariableop_8_lstm_321_lstm_cell_321_recurrent_kernel:	d?=
.assignvariableop_9_lstm_321_lstm_cell_321_bias:	?D
1assignvariableop_10_lstm_322_lstm_cell_322_kernel:	d?N
;assignvariableop_11_lstm_322_lstm_cell_322_recurrent_kernel:	2?>
/assignvariableop_12_lstm_322_lstm_cell_322_bias:	?C
1assignvariableop_13_lstm_323_lstm_cell_323_kernel:2(M
;assignvariableop_14_lstm_323_lstm_cell_323_recurrent_kernel:
(=
/assignvariableop_15_lstm_323_lstm_cell_323_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_107_kernel_m:
7
)assignvariableop_19_adam_dense_107_bias_m:K
8assignvariableop_20_adam_lstm_321_lstm_cell_321_kernel_m:	?U
Bassignvariableop_21_adam_lstm_321_lstm_cell_321_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_321_lstm_cell_321_bias_m:	?K
8assignvariableop_23_adam_lstm_322_lstm_cell_322_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_322_lstm_cell_322_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_322_lstm_cell_322_bias_m:	?J
8assignvariableop_26_adam_lstm_323_lstm_cell_323_kernel_m:2(T
Bassignvariableop_27_adam_lstm_323_lstm_cell_323_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_323_lstm_cell_323_bias_m:(=
+assignvariableop_29_adam_dense_107_kernel_v:
7
)assignvariableop_30_adam_dense_107_bias_v:K
8assignvariableop_31_adam_lstm_321_lstm_cell_321_kernel_v:	?U
Bassignvariableop_32_adam_lstm_321_lstm_cell_321_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_321_lstm_cell_321_bias_v:	?K
8assignvariableop_34_adam_lstm_322_lstm_cell_322_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_322_lstm_cell_322_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_322_lstm_cell_322_bias_v:	?J
8assignvariableop_37_adam_lstm_323_lstm_cell_323_kernel_v:2(T
Bassignvariableop_38_adam_lstm_323_lstm_cell_323_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_323_lstm_cell_323_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_107_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_107_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_321_lstm_cell_321_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_321_lstm_cell_321_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_321_lstm_cell_321_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_322_lstm_cell_322_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_322_lstm_cell_322_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_322_lstm_cell_322_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_323_lstm_cell_323_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_323_lstm_cell_323_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_323_lstm_cell_323_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_107_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_107_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_321_lstm_cell_321_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_321_lstm_cell_321_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_321_lstm_cell_321_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_322_lstm_cell_322_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_322_lstm_cell_322_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_322_lstm_cell_322_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_323_lstm_cell_323_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_323_lstm_cell_323_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_323_lstm_cell_323_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_107_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_107_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_321_lstm_cell_321_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_321_lstm_cell_321_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_321_lstm_cell_321_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_322_lstm_cell_322_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_322_lstm_cell_322_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_322_lstm_cell_322_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_323_lstm_cell_323_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_323_lstm_cell_323_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_323_lstm_cell_323_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_1555335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_256_1555359_0:	d?0
while_lstm_cell_256_1555361_0:	2?,
while_lstm_cell_256_1555363_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_256_1555359:	d?.
while_lstm_cell_256_1555361:	2?*
while_lstm_cell_256_1555363:	???+while/lstm_cell_256/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_256/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_256_1555359_0while_lstm_cell_256_1555361_0while_lstm_cell_256_1555363_0*
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555321?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_256/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_256/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_256/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_256/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_256_1555359while_lstm_cell_256_1555359_0"<
while_lstm_cell_256_1555361while_lstm_cell_256_1555361_0"<
while_lstm_cell_256_1555363while_lstm_cell_256_1555363_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_256/StatefulPartitionedCall+while/lstm_cell_256/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558402
inputs_0?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1558318*
condR
while_cond_1558317*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_323_while_body_1557555.
*lstm_323_while_lstm_323_while_loop_counter4
0lstm_323_while_lstm_323_while_maximum_iterations
lstm_323_while_placeholder 
lstm_323_while_placeholder_1 
lstm_323_while_placeholder_2 
lstm_323_while_placeholder_3-
)lstm_323_while_lstm_323_strided_slice_1_0i
elstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0:2(Q
?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(L
>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0:(
lstm_323_while_identity
lstm_323_while_identity_1
lstm_323_while_identity_2
lstm_323_while_identity_3
lstm_323_while_identity_4
lstm_323_while_identity_5+
'lstm_323_while_lstm_323_strided_slice_1g
clstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensorM
;lstm_323_while_lstm_cell_257_matmul_readvariableop_resource:2(O
=lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource:
(J
<lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource:(??3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp?2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp?4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp?
@lstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_323/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0lstm_323_while_placeholderIlstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_323/while/lstm_cell_257/MatMulMatMul9lstm_323/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_323/while/lstm_cell_257/MatMul_1MatMullstm_323_while_placeholder_2<lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_323/while/lstm_cell_257/addAddV2-lstm_323/while/lstm_cell_257/MatMul:product:0/lstm_323/while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_323/while/lstm_cell_257/BiasAddBiasAdd$lstm_323/while/lstm_cell_257/add:z:0;lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_323/while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_323/while/lstm_cell_257/splitSplit5lstm_323/while/lstm_cell_257/split/split_dim:output:0-lstm_323/while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_323/while/lstm_cell_257/SigmoidSigmoid+lstm_323/while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_323/while/lstm_cell_257/Sigmoid_1Sigmoid+lstm_323/while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_323/while/lstm_cell_257/mulMul*lstm_323/while/lstm_cell_257/Sigmoid_1:y:0lstm_323_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_323/while/lstm_cell_257/ReluRelu+lstm_323/while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/mul_1Mul(lstm_323/while/lstm_cell_257/Sigmoid:y:0/lstm_323/while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/add_1AddV2$lstm_323/while/lstm_cell_257/mul:z:0&lstm_323/while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_323/while/lstm_cell_257/Sigmoid_2Sigmoid+lstm_323/while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_323/while/lstm_cell_257/Relu_1Relu&lstm_323/while/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/mul_2Mul*lstm_323/while/lstm_cell_257/Sigmoid_2:y:01lstm_323/while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_323/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_323_while_placeholder_1lstm_323_while_placeholder&lstm_323/while/lstm_cell_257/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_323/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_323/while/addAddV2lstm_323_while_placeholderlstm_323/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_323/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_323/while/add_1AddV2*lstm_323_while_lstm_323_while_loop_counterlstm_323/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_323/while/IdentityIdentitylstm_323/while/add_1:z:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_1Identity0lstm_323_while_lstm_323_while_maximum_iterations^lstm_323/while/NoOp*
T0*
_output_shapes
: t
lstm_323/while/Identity_2Identitylstm_323/while/add:z:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_3IdentityClstm_323/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_4Identity&lstm_323/while/lstm_cell_257/mul_2:z:0^lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_323/while/Identity_5Identity&lstm_323/while/lstm_cell_257/add_1:z:0^lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_323/while/NoOpNoOp4^lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp3^lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp5^lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_323_while_identity lstm_323/while/Identity:output:0"?
lstm_323_while_identity_1"lstm_323/while/Identity_1:output:0"?
lstm_323_while_identity_2"lstm_323/while/Identity_2:output:0"?
lstm_323_while_identity_3"lstm_323/while/Identity_3:output:0"?
lstm_323_while_identity_4"lstm_323/while/Identity_4:output:0"?
lstm_323_while_identity_5"lstm_323/while/Identity_5:output:0"T
'lstm_323_while_lstm_323_strided_slice_1)lstm_323_while_lstm_323_strided_slice_1_0"~
<lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0"?
=lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0"|
;lstm_323_while_lstm_cell_257_matmul_readvariableop_resource=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0"?
clstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensorelstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp2h
2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp2l
4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1554984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1554984___redundant_placeholder05
1while_while_cond_1554984___redundant_placeholder15
1while_while_cond_1554984___redundant_placeholder25
1while_while_cond_1554984___redundant_placeholder3
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
while_cond_1556864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556864___redundant_placeholder05
1while_while_cond_1556864___redundant_placeholder15
1while_while_cond_1556864___redundant_placeholder25
1while_while_cond_1556864___redundant_placeholder3
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
while_cond_1558933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558933___redundant_placeholder05
1while_while_cond_1558933___redundant_placeholder15
1while_while_cond_1558933___redundant_placeholder25
1while_while_cond_1558933___redundant_placeholder3
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
while_cond_1558460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558460___redundant_placeholder05
1while_while_cond_1558460___redundant_placeholder15
1while_while_cond_1558460___redundant_placeholder25
1while_while_cond_1558460___redundant_placeholder3
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559491
inputs_0>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1559407*
condR
while_cond_1559406*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1559835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559835___redundant_placeholder05
1while_while_cond_1559835___redundant_placeholder15
1while_while_cond_1559835___redundant_placeholder25
1while_while_cond_1559835___redundant_placeholder3
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
while_cond_1556699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556699___redundant_placeholder05
1while_while_cond_1556699___redundant_placeholder15
1while_while_cond_1556699___redundant_placeholder25
1while_while_cond_1556699___redundant_placeholder3
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
while_body_1558175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1557164
lstm_321_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1554904o
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
_user_specified_namelstm_321_input
?
?
*__inference_lstm_321_layer_call_fn_1558083
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1555054|
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1554971

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
?8
?
while_body_1559407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1559836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559634
inputs_0>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1559550*
condR
while_cond_1559549*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1555684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555684___redundant_placeholder05
1while_while_cond_1555684___redundant_placeholder15
1while_while_cond_1555684___redundant_placeholder25
1while_while_cond_1555684___redundant_placeholder3
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
"__inference__wrapped_model_1554904
lstm_321_inputW
Dsequential_107_lstm_321_lstm_cell_255_matmul_readvariableop_resource:	?Y
Fsequential_107_lstm_321_lstm_cell_255_matmul_1_readvariableop_resource:	d?T
Esequential_107_lstm_321_lstm_cell_255_biasadd_readvariableop_resource:	?W
Dsequential_107_lstm_322_lstm_cell_256_matmul_readvariableop_resource:	d?Y
Fsequential_107_lstm_322_lstm_cell_256_matmul_1_readvariableop_resource:	2?T
Esequential_107_lstm_322_lstm_cell_256_biasadd_readvariableop_resource:	?V
Dsequential_107_lstm_323_lstm_cell_257_matmul_readvariableop_resource:2(X
Fsequential_107_lstm_323_lstm_cell_257_matmul_1_readvariableop_resource:
(S
Esequential_107_lstm_323_lstm_cell_257_biasadd_readvariableop_resource:(I
7sequential_107_dense_107_matmul_readvariableop_resource:
F
8sequential_107_dense_107_biasadd_readvariableop_resource:
identity??/sequential_107/dense_107/BiasAdd/ReadVariableOp?.sequential_107/dense_107/MatMul/ReadVariableOp?<sequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp?;sequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOp?=sequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp?sequential_107/lstm_321/while?<sequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp?;sequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOp?=sequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp?sequential_107/lstm_322/while?<sequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp?;sequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOp?=sequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp?sequential_107/lstm_323/while[
sequential_107/lstm_321/ShapeShapelstm_321_input*
T0*
_output_shapes
:u
+sequential_107/lstm_321/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_107/lstm_321/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_107/lstm_321/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_107/lstm_321/strided_sliceStridedSlice&sequential_107/lstm_321/Shape:output:04sequential_107/lstm_321/strided_slice/stack:output:06sequential_107/lstm_321/strided_slice/stack_1:output:06sequential_107/lstm_321/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_107/lstm_321/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_107/lstm_321/zeros/packedPack.sequential_107/lstm_321/strided_slice:output:0/sequential_107/lstm_321/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_107/lstm_321/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_321/zerosFill-sequential_107/lstm_321/zeros/packed:output:0,sequential_107/lstm_321/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_107/lstm_321/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_107/lstm_321/zeros_1/packedPack.sequential_107/lstm_321/strided_slice:output:01sequential_107/lstm_321/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_107/lstm_321/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_321/zeros_1Fill/sequential_107/lstm_321/zeros_1/packed:output:0.sequential_107/lstm_321/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_107/lstm_321/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_107/lstm_321/transpose	Transposelstm_321_input/sequential_107/lstm_321/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_107/lstm_321/Shape_1Shape%sequential_107/lstm_321/transpose:y:0*
T0*
_output_shapes
:w
-sequential_107/lstm_321/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_321/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_321/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_321/strided_slice_1StridedSlice(sequential_107/lstm_321/Shape_1:output:06sequential_107/lstm_321/strided_slice_1/stack:output:08sequential_107/lstm_321/strided_slice_1/stack_1:output:08sequential_107/lstm_321/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_107/lstm_321/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_107/lstm_321/TensorArrayV2TensorListReserve<sequential_107/lstm_321/TensorArrayV2/element_shape:output:00sequential_107/lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_107/lstm_321/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_107/lstm_321/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_107/lstm_321/transpose:y:0Vsequential_107/lstm_321/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_107/lstm_321/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_321/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_321/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_321/strided_slice_2StridedSlice%sequential_107/lstm_321/transpose:y:06sequential_107/lstm_321/strided_slice_2/stack:output:08sequential_107/lstm_321/strided_slice_2/stack_1:output:08sequential_107/lstm_321/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOpReadVariableOpDsequential_107_lstm_321_lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_107/lstm_321/lstm_cell_255/MatMulMatMul0sequential_107/lstm_321/strided_slice_2:output:0Csequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOpFsequential_107_lstm_321_lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_107/lstm_321/lstm_cell_255/MatMul_1MatMul&sequential_107/lstm_321/zeros:output:0Esequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_107/lstm_321/lstm_cell_255/addAddV26sequential_107/lstm_321/lstm_cell_255/MatMul:product:08sequential_107/lstm_321/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOpEsequential_107_lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_107/lstm_321/lstm_cell_255/BiasAddBiasAdd-sequential_107/lstm_321/lstm_cell_255/add:z:0Dsequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_107/lstm_321/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_107/lstm_321/lstm_cell_255/splitSplit>sequential_107/lstm_321/lstm_cell_255/split/split_dim:output:06sequential_107/lstm_321/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_107/lstm_321/lstm_cell_255/SigmoidSigmoid4sequential_107/lstm_321/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_107/lstm_321/lstm_cell_255/Sigmoid_1Sigmoid4sequential_107/lstm_321/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_107/lstm_321/lstm_cell_255/mulMul3sequential_107/lstm_321/lstm_cell_255/Sigmoid_1:y:0(sequential_107/lstm_321/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_107/lstm_321/lstm_cell_255/ReluRelu4sequential_107/lstm_321/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_107/lstm_321/lstm_cell_255/mul_1Mul1sequential_107/lstm_321/lstm_cell_255/Sigmoid:y:08sequential_107/lstm_321/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_107/lstm_321/lstm_cell_255/add_1AddV2-sequential_107/lstm_321/lstm_cell_255/mul:z:0/sequential_107/lstm_321/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_107/lstm_321/lstm_cell_255/Sigmoid_2Sigmoid4sequential_107/lstm_321/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_107/lstm_321/lstm_cell_255/Relu_1Relu/sequential_107/lstm_321/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_107/lstm_321/lstm_cell_255/mul_2Mul3sequential_107/lstm_321/lstm_cell_255/Sigmoid_2:y:0:sequential_107/lstm_321/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_107/lstm_321/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_107/lstm_321/TensorArrayV2_1TensorListReserve>sequential_107/lstm_321/TensorArrayV2_1/element_shape:output:00sequential_107/lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_107/lstm_321/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_107/lstm_321/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_107/lstm_321/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_107/lstm_321/whileWhile3sequential_107/lstm_321/while/loop_counter:output:09sequential_107/lstm_321/while/maximum_iterations:output:0%sequential_107/lstm_321/time:output:00sequential_107/lstm_321/TensorArrayV2_1:handle:0&sequential_107/lstm_321/zeros:output:0(sequential_107/lstm_321/zeros_1:output:00sequential_107/lstm_321/strided_slice_1:output:0Osequential_107/lstm_321/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_107_lstm_321_lstm_cell_255_matmul_readvariableop_resourceFsequential_107_lstm_321_lstm_cell_255_matmul_1_readvariableop_resourceEsequential_107_lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
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
*sequential_107_lstm_321_while_body_1554536*6
cond.R,
*sequential_107_lstm_321_while_cond_1554535*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_107/lstm_321/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_107/lstm_321/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_107/lstm_321/while:output:3Qsequential_107/lstm_321/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_107/lstm_321/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_107/lstm_321/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_321/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_321/strided_slice_3StridedSliceCsequential_107/lstm_321/TensorArrayV2Stack/TensorListStack:tensor:06sequential_107/lstm_321/strided_slice_3/stack:output:08sequential_107/lstm_321/strided_slice_3/stack_1:output:08sequential_107/lstm_321/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_107/lstm_321/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_107/lstm_321/transpose_1	TransposeCsequential_107/lstm_321/TensorArrayV2Stack/TensorListStack:tensor:01sequential_107/lstm_321/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_107/lstm_321/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_107/lstm_322/ShapeShape'sequential_107/lstm_321/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_107/lstm_322/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_107/lstm_322/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_107/lstm_322/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_107/lstm_322/strided_sliceStridedSlice&sequential_107/lstm_322/Shape:output:04sequential_107/lstm_322/strided_slice/stack:output:06sequential_107/lstm_322/strided_slice/stack_1:output:06sequential_107/lstm_322/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_107/lstm_322/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_107/lstm_322/zeros/packedPack.sequential_107/lstm_322/strided_slice:output:0/sequential_107/lstm_322/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_107/lstm_322/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_322/zerosFill-sequential_107/lstm_322/zeros/packed:output:0,sequential_107/lstm_322/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_107/lstm_322/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_107/lstm_322/zeros_1/packedPack.sequential_107/lstm_322/strided_slice:output:01sequential_107/lstm_322/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_107/lstm_322/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_322/zeros_1Fill/sequential_107/lstm_322/zeros_1/packed:output:0.sequential_107/lstm_322/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_107/lstm_322/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_107/lstm_322/transpose	Transpose'sequential_107/lstm_321/transpose_1:y:0/sequential_107/lstm_322/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_107/lstm_322/Shape_1Shape%sequential_107/lstm_322/transpose:y:0*
T0*
_output_shapes
:w
-sequential_107/lstm_322/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_322/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_322/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_322/strided_slice_1StridedSlice(sequential_107/lstm_322/Shape_1:output:06sequential_107/lstm_322/strided_slice_1/stack:output:08sequential_107/lstm_322/strided_slice_1/stack_1:output:08sequential_107/lstm_322/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_107/lstm_322/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_107/lstm_322/TensorArrayV2TensorListReserve<sequential_107/lstm_322/TensorArrayV2/element_shape:output:00sequential_107/lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_107/lstm_322/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_107/lstm_322/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_107/lstm_322/transpose:y:0Vsequential_107/lstm_322/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_107/lstm_322/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_322/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_322/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_322/strided_slice_2StridedSlice%sequential_107/lstm_322/transpose:y:06sequential_107/lstm_322/strided_slice_2/stack:output:08sequential_107/lstm_322/strided_slice_2/stack_1:output:08sequential_107/lstm_322/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOpReadVariableOpDsequential_107_lstm_322_lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_107/lstm_322/lstm_cell_256/MatMulMatMul0sequential_107/lstm_322/strided_slice_2:output:0Csequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOpFsequential_107_lstm_322_lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_107/lstm_322/lstm_cell_256/MatMul_1MatMul&sequential_107/lstm_322/zeros:output:0Esequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_107/lstm_322/lstm_cell_256/addAddV26sequential_107/lstm_322/lstm_cell_256/MatMul:product:08sequential_107/lstm_322/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOpEsequential_107_lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_107/lstm_322/lstm_cell_256/BiasAddBiasAdd-sequential_107/lstm_322/lstm_cell_256/add:z:0Dsequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_107/lstm_322/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_107/lstm_322/lstm_cell_256/splitSplit>sequential_107/lstm_322/lstm_cell_256/split/split_dim:output:06sequential_107/lstm_322/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_107/lstm_322/lstm_cell_256/SigmoidSigmoid4sequential_107/lstm_322/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_107/lstm_322/lstm_cell_256/Sigmoid_1Sigmoid4sequential_107/lstm_322/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_107/lstm_322/lstm_cell_256/mulMul3sequential_107/lstm_322/lstm_cell_256/Sigmoid_1:y:0(sequential_107/lstm_322/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_107/lstm_322/lstm_cell_256/ReluRelu4sequential_107/lstm_322/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_107/lstm_322/lstm_cell_256/mul_1Mul1sequential_107/lstm_322/lstm_cell_256/Sigmoid:y:08sequential_107/lstm_322/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_107/lstm_322/lstm_cell_256/add_1AddV2-sequential_107/lstm_322/lstm_cell_256/mul:z:0/sequential_107/lstm_322/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_107/lstm_322/lstm_cell_256/Sigmoid_2Sigmoid4sequential_107/lstm_322/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_107/lstm_322/lstm_cell_256/Relu_1Relu/sequential_107/lstm_322/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_107/lstm_322/lstm_cell_256/mul_2Mul3sequential_107/lstm_322/lstm_cell_256/Sigmoid_2:y:0:sequential_107/lstm_322/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_107/lstm_322/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_107/lstm_322/TensorArrayV2_1TensorListReserve>sequential_107/lstm_322/TensorArrayV2_1/element_shape:output:00sequential_107/lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_107/lstm_322/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_107/lstm_322/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_107/lstm_322/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_107/lstm_322/whileWhile3sequential_107/lstm_322/while/loop_counter:output:09sequential_107/lstm_322/while/maximum_iterations:output:0%sequential_107/lstm_322/time:output:00sequential_107/lstm_322/TensorArrayV2_1:handle:0&sequential_107/lstm_322/zeros:output:0(sequential_107/lstm_322/zeros_1:output:00sequential_107/lstm_322/strided_slice_1:output:0Osequential_107/lstm_322/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_107_lstm_322_lstm_cell_256_matmul_readvariableop_resourceFsequential_107_lstm_322_lstm_cell_256_matmul_1_readvariableop_resourceEsequential_107_lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
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
*sequential_107_lstm_322_while_body_1554675*6
cond.R,
*sequential_107_lstm_322_while_cond_1554674*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_107/lstm_322/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_107/lstm_322/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_107/lstm_322/while:output:3Qsequential_107/lstm_322/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_107/lstm_322/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_107/lstm_322/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_322/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_322/strided_slice_3StridedSliceCsequential_107/lstm_322/TensorArrayV2Stack/TensorListStack:tensor:06sequential_107/lstm_322/strided_slice_3/stack:output:08sequential_107/lstm_322/strided_slice_3/stack_1:output:08sequential_107/lstm_322/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_107/lstm_322/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_107/lstm_322/transpose_1	TransposeCsequential_107/lstm_322/TensorArrayV2Stack/TensorListStack:tensor:01sequential_107/lstm_322/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_107/lstm_322/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_107/lstm_323/ShapeShape'sequential_107/lstm_322/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_107/lstm_323/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_107/lstm_323/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_107/lstm_323/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_107/lstm_323/strided_sliceStridedSlice&sequential_107/lstm_323/Shape:output:04sequential_107/lstm_323/strided_slice/stack:output:06sequential_107/lstm_323/strided_slice/stack_1:output:06sequential_107/lstm_323/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_107/lstm_323/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_107/lstm_323/zeros/packedPack.sequential_107/lstm_323/strided_slice:output:0/sequential_107/lstm_323/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_107/lstm_323/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_323/zerosFill-sequential_107/lstm_323/zeros/packed:output:0,sequential_107/lstm_323/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_107/lstm_323/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_107/lstm_323/zeros_1/packedPack.sequential_107/lstm_323/strided_slice:output:01sequential_107/lstm_323/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_107/lstm_323/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_107/lstm_323/zeros_1Fill/sequential_107/lstm_323/zeros_1/packed:output:0.sequential_107/lstm_323/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_107/lstm_323/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_107/lstm_323/transpose	Transpose'sequential_107/lstm_322/transpose_1:y:0/sequential_107/lstm_323/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_107/lstm_323/Shape_1Shape%sequential_107/lstm_323/transpose:y:0*
T0*
_output_shapes
:w
-sequential_107/lstm_323/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_323/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_323/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_323/strided_slice_1StridedSlice(sequential_107/lstm_323/Shape_1:output:06sequential_107/lstm_323/strided_slice_1/stack:output:08sequential_107/lstm_323/strided_slice_1/stack_1:output:08sequential_107/lstm_323/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_107/lstm_323/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_107/lstm_323/TensorArrayV2TensorListReserve<sequential_107/lstm_323/TensorArrayV2/element_shape:output:00sequential_107/lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_107/lstm_323/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_107/lstm_323/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_107/lstm_323/transpose:y:0Vsequential_107/lstm_323/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_107/lstm_323/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_323/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_323/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_323/strided_slice_2StridedSlice%sequential_107/lstm_323/transpose:y:06sequential_107/lstm_323/strided_slice_2/stack:output:08sequential_107/lstm_323/strided_slice_2/stack_1:output:08sequential_107/lstm_323/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOpReadVariableOpDsequential_107_lstm_323_lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_107/lstm_323/lstm_cell_257/MatMulMatMul0sequential_107/lstm_323/strided_slice_2:output:0Csequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOpFsequential_107_lstm_323_lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_107/lstm_323/lstm_cell_257/MatMul_1MatMul&sequential_107/lstm_323/zeros:output:0Esequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_107/lstm_323/lstm_cell_257/addAddV26sequential_107/lstm_323/lstm_cell_257/MatMul:product:08sequential_107/lstm_323/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOpEsequential_107_lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_107/lstm_323/lstm_cell_257/BiasAddBiasAdd-sequential_107/lstm_323/lstm_cell_257/add:z:0Dsequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_107/lstm_323/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_107/lstm_323/lstm_cell_257/splitSplit>sequential_107/lstm_323/lstm_cell_257/split/split_dim:output:06sequential_107/lstm_323/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_107/lstm_323/lstm_cell_257/SigmoidSigmoid4sequential_107/lstm_323/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_107/lstm_323/lstm_cell_257/Sigmoid_1Sigmoid4sequential_107/lstm_323/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_107/lstm_323/lstm_cell_257/mulMul3sequential_107/lstm_323/lstm_cell_257/Sigmoid_1:y:0(sequential_107/lstm_323/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_107/lstm_323/lstm_cell_257/ReluRelu4sequential_107/lstm_323/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_107/lstm_323/lstm_cell_257/mul_1Mul1sequential_107/lstm_323/lstm_cell_257/Sigmoid:y:08sequential_107/lstm_323/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_107/lstm_323/lstm_cell_257/add_1AddV2-sequential_107/lstm_323/lstm_cell_257/mul:z:0/sequential_107/lstm_323/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_107/lstm_323/lstm_cell_257/Sigmoid_2Sigmoid4sequential_107/lstm_323/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_107/lstm_323/lstm_cell_257/Relu_1Relu/sequential_107/lstm_323/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_107/lstm_323/lstm_cell_257/mul_2Mul3sequential_107/lstm_323/lstm_cell_257/Sigmoid_2:y:0:sequential_107/lstm_323/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_107/lstm_323/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_107/lstm_323/TensorArrayV2_1TensorListReserve>sequential_107/lstm_323/TensorArrayV2_1/element_shape:output:00sequential_107/lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_107/lstm_323/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_107/lstm_323/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_107/lstm_323/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_107/lstm_323/whileWhile3sequential_107/lstm_323/while/loop_counter:output:09sequential_107/lstm_323/while/maximum_iterations:output:0%sequential_107/lstm_323/time:output:00sequential_107/lstm_323/TensorArrayV2_1:handle:0&sequential_107/lstm_323/zeros:output:0(sequential_107/lstm_323/zeros_1:output:00sequential_107/lstm_323/strided_slice_1:output:0Osequential_107/lstm_323/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_107_lstm_323_lstm_cell_257_matmul_readvariableop_resourceFsequential_107_lstm_323_lstm_cell_257_matmul_1_readvariableop_resourceEsequential_107_lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
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
*sequential_107_lstm_323_while_body_1554814*6
cond.R,
*sequential_107_lstm_323_while_cond_1554813*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_107/lstm_323/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_107/lstm_323/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_107/lstm_323/while:output:3Qsequential_107/lstm_323/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_107/lstm_323/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_107/lstm_323/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_323/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_107/lstm_323/strided_slice_3StridedSliceCsequential_107/lstm_323/TensorArrayV2Stack/TensorListStack:tensor:06sequential_107/lstm_323/strided_slice_3/stack:output:08sequential_107/lstm_323/strided_slice_3/stack_1:output:08sequential_107/lstm_323/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_107/lstm_323/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_107/lstm_323/transpose_1	TransposeCsequential_107/lstm_323/TensorArrayV2Stack/TensorListStack:tensor:01sequential_107/lstm_323/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_107/lstm_323/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_107/dense_107/MatMul/ReadVariableOpReadVariableOp7sequential_107_dense_107_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_107/dense_107/MatMulMatMul0sequential_107/lstm_323/strided_slice_3:output:06sequential_107/dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_107/dense_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_107_dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_107/dense_107/BiasAddBiasAdd)sequential_107/dense_107/MatMul:product:07sequential_107/dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_107/dense_107/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_107/dense_107/BiasAdd/ReadVariableOp/^sequential_107/dense_107/MatMul/ReadVariableOp=^sequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp<^sequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOp>^sequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp^sequential_107/lstm_321/while=^sequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp<^sequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOp>^sequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp^sequential_107/lstm_322/while=^sequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp<^sequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOp>^sequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp^sequential_107/lstm_323/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_107/dense_107/BiasAdd/ReadVariableOp/sequential_107/dense_107/BiasAdd/ReadVariableOp2`
.sequential_107/dense_107/MatMul/ReadVariableOp.sequential_107/dense_107/MatMul/ReadVariableOp2|
<sequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp<sequential_107/lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp2z
;sequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOp;sequential_107/lstm_321/lstm_cell_255/MatMul/ReadVariableOp2~
=sequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp=sequential_107/lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp2>
sequential_107/lstm_321/whilesequential_107/lstm_321/while2|
<sequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp<sequential_107/lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp2z
;sequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOp;sequential_107/lstm_322/lstm_cell_256/MatMul/ReadVariableOp2~
=sequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp=sequential_107/lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp2>
sequential_107/lstm_322/whilesequential_107/lstm_322/while2|
<sequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp<sequential_107/lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp2z
;sequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOp;sequential_107/lstm_323/lstm_cell_257/MatMul/ReadVariableOp2~
=sequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp=sequential_107/lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp2>
sequential_107/lstm_323/whilesequential_107/lstm_323/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_321_input
?
?
while_cond_1559406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559406___redundant_placeholder05
1while_while_cond_1559406___redundant_placeholder15
1while_while_cond_1559406___redundant_placeholder25
1while_while_cond_1559406___redundant_placeholder3
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556103

inputs?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1556019*
condR
while_cond_1556018*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1555876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_257_1555900_0:2(/
while_lstm_cell_257_1555902_0:
(+
while_lstm_cell_257_1555904_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_257_1555900:2(-
while_lstm_cell_257_1555902:
()
while_lstm_cell_257_1555904:(??+while/lstm_cell_257/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_257/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_257_1555900_0while_lstm_cell_257_1555902_0while_lstm_cell_257_1555904_0*
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555817?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_257/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_257/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_257/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_257_1555900while_lstm_cell_257_1555900_0"<
while_lstm_cell_257_1555902while_lstm_cell_257_1555902_0"<
while_lstm_cell_257_1555904while_lstm_cell_257_1555904_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_257/StatefulPartitionedCall+while/lstm_cell_257/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_323_while_cond_1557981.
*lstm_323_while_lstm_323_while_loop_counter4
0lstm_323_while_lstm_323_while_maximum_iterations
lstm_323_while_placeholder 
lstm_323_while_placeholder_1 
lstm_323_while_placeholder_2 
lstm_323_while_placeholder_30
,lstm_323_while_less_lstm_323_strided_slice_1G
Clstm_323_while_lstm_323_while_cond_1557981___redundant_placeholder0G
Clstm_323_while_lstm_323_while_cond_1557981___redundant_placeholder1G
Clstm_323_while_lstm_323_while_cond_1557981___redundant_placeholder2G
Clstm_323_while_lstm_323_while_cond_1557981___redundant_placeholder3
lstm_323_while_identity
?
lstm_323/while/LessLesslstm_323_while_placeholder,lstm_323_while_less_lstm_323_strided_slice_1*
T0*
_output_shapes
: ]
lstm_323/while/IdentityIdentitylstm_323/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_323_while_identity lstm_323/while/Identity:output:0*(
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
0__inference_sequential_107_layer_call_fn_1557218

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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557017o
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
*sequential_107_lstm_323_while_cond_1554813L
Hsequential_107_lstm_323_while_sequential_107_lstm_323_while_loop_counterR
Nsequential_107_lstm_323_while_sequential_107_lstm_323_while_maximum_iterations-
)sequential_107_lstm_323_while_placeholder/
+sequential_107_lstm_323_while_placeholder_1/
+sequential_107_lstm_323_while_placeholder_2/
+sequential_107_lstm_323_while_placeholder_3N
Jsequential_107_lstm_323_while_less_sequential_107_lstm_323_strided_slice_1e
asequential_107_lstm_323_while_sequential_107_lstm_323_while_cond_1554813___redundant_placeholder0e
asequential_107_lstm_323_while_sequential_107_lstm_323_while_cond_1554813___redundant_placeholder1e
asequential_107_lstm_323_while_sequential_107_lstm_323_while_cond_1554813___redundant_placeholder2e
asequential_107_lstm_323_while_sequential_107_lstm_323_while_cond_1554813___redundant_placeholder3*
&sequential_107_lstm_323_while_identity
?
"sequential_107/lstm_323/while/LessLess)sequential_107_lstm_323_while_placeholderJsequential_107_lstm_323_while_less_sequential_107_lstm_323_strided_slice_1*
T0*
_output_shapes
: {
&sequential_107/lstm_323/while/IdentityIdentity&sequential_107/lstm_323/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_107_lstm_323_while_identity/sequential_107/lstm_323/while/Identity:output:0*(
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
lstm_321_while_cond_1557703.
*lstm_321_while_lstm_321_while_loop_counter4
0lstm_321_while_lstm_321_while_maximum_iterations
lstm_321_while_placeholder 
lstm_321_while_placeholder_1 
lstm_321_while_placeholder_2 
lstm_321_while_placeholder_30
,lstm_321_while_less_lstm_321_strided_slice_1G
Clstm_321_while_lstm_321_while_cond_1557703___redundant_placeholder0G
Clstm_321_while_lstm_321_while_cond_1557703___redundant_placeholder1G
Clstm_321_while_lstm_321_while_cond_1557703___redundant_placeholder2G
Clstm_321_while_lstm_321_while_cond_1557703___redundant_placeholder3
lstm_321_while_identity
?
lstm_321/while/LessLesslstm_321_while_placeholder,lstm_321_while_less_lstm_321_strided_slice_1*
T0*
_output_shapes
: ]
lstm_321/while/IdentityIdentitylstm_321/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_321_while_identity lstm_321/while/Identity:output:0*(
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560103

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
while_body_1556865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1555595

inputs(
lstm_cell_256_1555513:	d?(
lstm_cell_256_1555515:	2?$
lstm_cell_256_1555517:	?
identity??%lstm_cell_256/StatefulPartitionedCall?while;
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
%lstm_cell_256/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_256_1555513lstm_cell_256_1555515lstm_cell_256_1555517*
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555467n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_256_1555513lstm_cell_256_1555515lstm_cell_256_1555517*
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
while_body_1555526*
condR
while_cond_1555525*K
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
NoOpNoOp&^lstm_cell_256/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_256/StatefulPartitionedCall%lstm_cell_256/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1558603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558603___redundant_placeholder05
1while_while_cond_1558603___redundant_placeholder15
1while_while_cond_1558603___redundant_placeholder25
1while_while_cond_1558603___redundant_placeholder3
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
while_body_1555526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_256_1555550_0:	d?0
while_lstm_cell_256_1555552_0:	2?,
while_lstm_cell_256_1555554_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_256_1555550:	d?.
while_lstm_cell_256_1555552:	2?*
while_lstm_cell_256_1555554:	???+while/lstm_cell_256/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_256/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_256_1555550_0while_lstm_cell_256_1555552_0while_lstm_cell_256_1555554_0*
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555467?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_256/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_256/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_256/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_256/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_256_1555550while_lstm_cell_256_1555550_0"<
while_lstm_cell_256_1555552while_lstm_cell_256_1555552_0"<
while_lstm_cell_256_1555554while_lstm_cell_256_1555554_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_256/StatefulPartitionedCall+while/lstm_cell_256/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1555404

inputs(
lstm_cell_256_1555322:	d?(
lstm_cell_256_1555324:	2?$
lstm_cell_256_1555326:	?
identity??%lstm_cell_256/StatefulPartitionedCall?while;
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
%lstm_cell_256/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_256_1555322lstm_cell_256_1555324lstm_cell_256_1555326*
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555321n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_256_1555322lstm_cell_256_1555324lstm_cell_256_1555326*
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
while_body_1555335*
condR
while_cond_1555334*K
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
NoOpNoOp&^lstm_cell_256/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_256/StatefulPartitionedCall%lstm_cell_256/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_321_layer_call_fn_1558094
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1555245|
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560135

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
while_cond_1556534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556534___redundant_placeholder05
1while_while_cond_1556534___redundant_placeholder15
1while_while_cond_1556534___redundant_placeholder25
1while_while_cond_1556534___redundant_placeholder3
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559920

inputs>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1559836*
condR
while_cond_1559835*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_107_layer_call_fn_1557191

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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1556428o
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
?
?
+__inference_dense_107_layer_call_fn_1559929

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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421o
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

?
lstm_322_while_cond_1557415.
*lstm_322_while_lstm_322_while_loop_counter4
0lstm_322_while_lstm_322_while_maximum_iterations
lstm_322_while_placeholder 
lstm_322_while_placeholder_1 
lstm_322_while_placeholder_2 
lstm_322_while_placeholder_30
,lstm_322_while_less_lstm_322_strided_slice_1G
Clstm_322_while_lstm_322_while_cond_1557415___redundant_placeholder0G
Clstm_322_while_lstm_322_while_cond_1557415___redundant_placeholder1G
Clstm_322_while_lstm_322_while_cond_1557415___redundant_placeholder2G
Clstm_322_while_lstm_322_while_cond_1557415___redundant_placeholder3
lstm_322_while_identity
?
lstm_322/while/LessLesslstm_322_while_placeholder,lstm_322_while_less_lstm_322_strided_slice_1*
T0*
_output_shapes
: ]
lstm_322/while/IdentityIdentitylstm_322/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_322_while_identity lstm_322/while/Identity:output:0*(
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
*__inference_lstm_323_layer_call_fn_1559315
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1555754o
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555671

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
*sequential_107_lstm_321_while_cond_1554535L
Hsequential_107_lstm_321_while_sequential_107_lstm_321_while_loop_counterR
Nsequential_107_lstm_321_while_sequential_107_lstm_321_while_maximum_iterations-
)sequential_107_lstm_321_while_placeholder/
+sequential_107_lstm_321_while_placeholder_1/
+sequential_107_lstm_321_while_placeholder_2/
+sequential_107_lstm_321_while_placeholder_3N
Jsequential_107_lstm_321_while_less_sequential_107_lstm_321_strided_slice_1e
asequential_107_lstm_321_while_sequential_107_lstm_321_while_cond_1554535___redundant_placeholder0e
asequential_107_lstm_321_while_sequential_107_lstm_321_while_cond_1554535___redundant_placeholder1e
asequential_107_lstm_321_while_sequential_107_lstm_321_while_cond_1554535___redundant_placeholder2e
asequential_107_lstm_321_while_sequential_107_lstm_321_while_cond_1554535___redundant_placeholder3*
&sequential_107_lstm_321_while_identity
?
"sequential_107/lstm_321/while/LessLess)sequential_107_lstm_321_while_placeholderJsequential_107_lstm_321_while_less_sequential_107_lstm_321_strided_slice_1*
T0*
_output_shapes
: {
&sequential_107/lstm_321/while/IdentityIdentity&sequential_107/lstm_321/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_107_lstm_321_while_identity/sequential_107/lstm_321/while/Identity:output:0*(
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1559939

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
while_cond_1558317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558317___redundant_placeholder05
1while_while_cond_1558317___redundant_placeholder15
1while_while_cond_1558317___redundant_placeholder25
1while_while_cond_1558317___redundant_placeholder3
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1555245

inputs(
lstm_cell_255_1555163:	?(
lstm_cell_255_1555165:	d?$
lstm_cell_255_1555167:	?
identity??%lstm_cell_255/StatefulPartitionedCall?while;
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
%lstm_cell_255/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_255_1555163lstm_cell_255_1555165lstm_cell_255_1555167*
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1555117n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_255_1555163lstm_cell_255_1555165lstm_cell_255_1555167*
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
while_body_1555176*
condR
while_cond_1555175*K
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
NoOpNoOp&^lstm_cell_255/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_255/StatefulPartitionedCall%lstm_cell_255/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1558461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1558790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558790___redundant_placeholder05
1while_while_cond_1558790___redundant_placeholder15
1while_while_cond_1558790___redundant_placeholder25
1while_while_cond_1558790___redundant_placeholder3
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
?
?
*__inference_lstm_323_layer_call_fn_1559337

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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556403o
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
*__inference_lstm_322_layer_call_fn_1558710
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1555595|
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
?C
?

lstm_322_while_body_1557843.
*lstm_322_while_lstm_322_while_loop_counter4
0lstm_322_while_lstm_322_while_maximum_iterations
lstm_322_while_placeholder 
lstm_322_while_placeholder_1 
lstm_322_while_placeholder_2 
lstm_322_while_placeholder_3-
)lstm_322_while_lstm_322_strided_slice_1_0i
elstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0:	d?R
?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?M
>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
lstm_322_while_identity
lstm_322_while_identity_1
lstm_322_while_identity_2
lstm_322_while_identity_3
lstm_322_while_identity_4
lstm_322_while_identity_5+
'lstm_322_while_lstm_322_strided_slice_1g
clstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensorN
;lstm_322_while_lstm_cell_256_matmul_readvariableop_resource:	d?P
=lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource:	2?K
<lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource:	???3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp?2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp?4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp?
@lstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_322/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0lstm_322_while_placeholderIlstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_322/while/lstm_cell_256/MatMulMatMul9lstm_322/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_322/while/lstm_cell_256/MatMul_1MatMullstm_322_while_placeholder_2<lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_322/while/lstm_cell_256/addAddV2-lstm_322/while/lstm_cell_256/MatMul:product:0/lstm_322/while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_322/while/lstm_cell_256/BiasAddBiasAdd$lstm_322/while/lstm_cell_256/add:z:0;lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_322/while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_322/while/lstm_cell_256/splitSplit5lstm_322/while/lstm_cell_256/split/split_dim:output:0-lstm_322/while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_322/while/lstm_cell_256/SigmoidSigmoid+lstm_322/while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_322/while/lstm_cell_256/Sigmoid_1Sigmoid+lstm_322/while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_322/while/lstm_cell_256/mulMul*lstm_322/while/lstm_cell_256/Sigmoid_1:y:0lstm_322_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_322/while/lstm_cell_256/ReluRelu+lstm_322/while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/mul_1Mul(lstm_322/while/lstm_cell_256/Sigmoid:y:0/lstm_322/while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/add_1AddV2$lstm_322/while/lstm_cell_256/mul:z:0&lstm_322/while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_322/while/lstm_cell_256/Sigmoid_2Sigmoid+lstm_322/while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_322/while/lstm_cell_256/Relu_1Relu&lstm_322/while/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/mul_2Mul*lstm_322/while/lstm_cell_256/Sigmoid_2:y:01lstm_322/while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_322/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_322_while_placeholder_1lstm_322_while_placeholder&lstm_322/while/lstm_cell_256/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_322/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_322/while/addAddV2lstm_322_while_placeholderlstm_322/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_322/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_322/while/add_1AddV2*lstm_322_while_lstm_322_while_loop_counterlstm_322/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_322/while/IdentityIdentitylstm_322/while/add_1:z:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_1Identity0lstm_322_while_lstm_322_while_maximum_iterations^lstm_322/while/NoOp*
T0*
_output_shapes
: t
lstm_322/while/Identity_2Identitylstm_322/while/add:z:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_3IdentityClstm_322/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_4Identity&lstm_322/while/lstm_cell_256/mul_2:z:0^lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_322/while/Identity_5Identity&lstm_322/while/lstm_cell_256/add_1:z:0^lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_322/while/NoOpNoOp4^lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp3^lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp5^lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_322_while_identity lstm_322/while/Identity:output:0"?
lstm_322_while_identity_1"lstm_322/while/Identity_1:output:0"?
lstm_322_while_identity_2"lstm_322/while/Identity_2:output:0"?
lstm_322_while_identity_3"lstm_322/while/Identity_3:output:0"?
lstm_322_while_identity_4"lstm_322/while/Identity_4:output:0"?
lstm_322_while_identity_5"lstm_322/while/Identity_5:output:0"T
'lstm_322_while_lstm_322_strided_slice_1)lstm_322_while_lstm_322_strided_slice_1_0"~
<lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0"?
=lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0"|
;lstm_322_while_lstm_cell_256_matmul_readvariableop_resource=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0"?
clstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensorelstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp2h
2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp2l
4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_323_while_cond_1557554.
*lstm_323_while_lstm_323_while_loop_counter4
0lstm_323_while_lstm_323_while_maximum_iterations
lstm_323_while_placeholder 
lstm_323_while_placeholder_1 
lstm_323_while_placeholder_2 
lstm_323_while_placeholder_30
,lstm_323_while_less_lstm_323_strided_slice_1G
Clstm_323_while_lstm_323_while_cond_1557554___redundant_placeholder0G
Clstm_323_while_lstm_323_while_cond_1557554___redundant_placeholder1G
Clstm_323_while_lstm_323_while_cond_1557554___redundant_placeholder2G
Clstm_323_while_lstm_323_while_cond_1557554___redundant_placeholder3
lstm_323_while_identity
?
lstm_323/while/LessLesslstm_323_while_placeholder,lstm_323_while_less_lstm_323_strided_slice_1*
T0*
_output_shapes
: ]
lstm_323/while/IdentityIdentitylstm_323/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_323_while_identity lstm_323/while/Identity:output:0*(
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556949

inputs?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1556865*
condR
while_cond_1556864*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1555334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555334___redundant_placeholder05
1while_while_cond_1555334___redundant_placeholder15
1while_while_cond_1555334___redundant_placeholder25
1while_while_cond_1555334___redundant_placeholder3
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

lstm_322_while_body_1557416.
*lstm_322_while_lstm_322_while_loop_counter4
0lstm_322_while_lstm_322_while_maximum_iterations
lstm_322_while_placeholder 
lstm_322_while_placeholder_1 
lstm_322_while_placeholder_2 
lstm_322_while_placeholder_3-
)lstm_322_while_lstm_322_strided_slice_1_0i
elstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0:	d?R
?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?M
>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
lstm_322_while_identity
lstm_322_while_identity_1
lstm_322_while_identity_2
lstm_322_while_identity_3
lstm_322_while_identity_4
lstm_322_while_identity_5+
'lstm_322_while_lstm_322_strided_slice_1g
clstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensorN
;lstm_322_while_lstm_cell_256_matmul_readvariableop_resource:	d?P
=lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource:	2?K
<lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource:	???3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp?2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp?4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp?
@lstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_322/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0lstm_322_while_placeholderIlstm_322/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_322/while/lstm_cell_256/MatMulMatMul9lstm_322/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_322/while/lstm_cell_256/MatMul_1MatMullstm_322_while_placeholder_2<lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_322/while/lstm_cell_256/addAddV2-lstm_322/while/lstm_cell_256/MatMul:product:0/lstm_322/while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_322/while/lstm_cell_256/BiasAddBiasAdd$lstm_322/while/lstm_cell_256/add:z:0;lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_322/while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_322/while/lstm_cell_256/splitSplit5lstm_322/while/lstm_cell_256/split/split_dim:output:0-lstm_322/while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_322/while/lstm_cell_256/SigmoidSigmoid+lstm_322/while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_322/while/lstm_cell_256/Sigmoid_1Sigmoid+lstm_322/while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_322/while/lstm_cell_256/mulMul*lstm_322/while/lstm_cell_256/Sigmoid_1:y:0lstm_322_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_322/while/lstm_cell_256/ReluRelu+lstm_322/while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/mul_1Mul(lstm_322/while/lstm_cell_256/Sigmoid:y:0/lstm_322/while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/add_1AddV2$lstm_322/while/lstm_cell_256/mul:z:0&lstm_322/while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_322/while/lstm_cell_256/Sigmoid_2Sigmoid+lstm_322/while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_322/while/lstm_cell_256/Relu_1Relu&lstm_322/while/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_322/while/lstm_cell_256/mul_2Mul*lstm_322/while/lstm_cell_256/Sigmoid_2:y:01lstm_322/while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_322/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_322_while_placeholder_1lstm_322_while_placeholder&lstm_322/while/lstm_cell_256/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_322/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_322/while/addAddV2lstm_322_while_placeholderlstm_322/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_322/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_322/while/add_1AddV2*lstm_322_while_lstm_322_while_loop_counterlstm_322/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_322/while/IdentityIdentitylstm_322/while/add_1:z:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_1Identity0lstm_322_while_lstm_322_while_maximum_iterations^lstm_322/while/NoOp*
T0*
_output_shapes
: t
lstm_322/while/Identity_2Identitylstm_322/while/add:z:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_3IdentityClstm_322/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_322/while/NoOp*
T0*
_output_shapes
: ?
lstm_322/while/Identity_4Identity&lstm_322/while/lstm_cell_256/mul_2:z:0^lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_322/while/Identity_5Identity&lstm_322/while/lstm_cell_256/add_1:z:0^lstm_322/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_322/while/NoOpNoOp4^lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp3^lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp5^lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_322_while_identity lstm_322/while/Identity:output:0"?
lstm_322_while_identity_1"lstm_322/while/Identity_1:output:0"?
lstm_322_while_identity_2"lstm_322/while/Identity_2:output:0"?
lstm_322_while_identity_3"lstm_322/while/Identity_3:output:0"?
lstm_322_while_identity_4"lstm_322/while/Identity_4:output:0"?
lstm_322_while_identity_5"lstm_322/while/Identity_5:output:0"T
'lstm_322_while_lstm_322_strided_slice_1)lstm_322_while_lstm_322_strided_slice_1_0"~
<lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource>lstm_322_while_lstm_cell_256_biasadd_readvariableop_resource_0"?
=lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource?lstm_322_while_lstm_cell_256_matmul_1_readvariableop_resource_0"|
;lstm_322_while_lstm_cell_256_matmul_readvariableop_resource=lstm_322_while_lstm_cell_256_matmul_readvariableop_resource_0"?
clstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensorelstm_322_while_tensorarrayv2read_tensorlistgetitem_lstm_322_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp3lstm_322/while/lstm_cell_256/BiasAdd/ReadVariableOp2h
2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp2lstm_322/while/lstm_cell_256/MatMul/ReadVariableOp2l
4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp4lstm_322/while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556619

inputs>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1556535*
condR
while_cond_1556534*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1556318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556318___redundant_placeholder05
1while_while_cond_1556318___redundant_placeholder15
1while_while_cond_1556318___redundant_placeholder25
1while_while_cond_1556318___redundant_placeholder3
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1556428

inputs#
lstm_321_1556104:	?#
lstm_321_1556106:	d?
lstm_321_1556108:	?#
lstm_322_1556254:	d?#
lstm_322_1556256:	2?
lstm_322_1556258:	?"
lstm_323_1556404:2("
lstm_323_1556406:
(
lstm_323_1556408:(#
dense_107_1556422:

dense_107_1556424:
identity??!dense_107/StatefulPartitionedCall? lstm_321/StatefulPartitionedCall? lstm_322/StatefulPartitionedCall? lstm_323/StatefulPartitionedCall?
 lstm_321/StatefulPartitionedCallStatefulPartitionedCallinputslstm_321_1556104lstm_321_1556106lstm_321_1556108*
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556103?
 lstm_322/StatefulPartitionedCallStatefulPartitionedCall)lstm_321/StatefulPartitionedCall:output:0lstm_322_1556254lstm_322_1556256lstm_322_1556258*
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556253?
 lstm_323/StatefulPartitionedCallStatefulPartitionedCall)lstm_322/StatefulPartitionedCall:output:0lstm_323_1556404lstm_323_1556406lstm_323_1556408*
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556403?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_323/StatefulPartitionedCall:output:0dense_107_1556422dense_107_1556424*
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_321/StatefulPartitionedCall!^lstm_322/StatefulPartitionedCall!^lstm_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_321/StatefulPartitionedCall lstm_321/StatefulPartitionedCall2D
 lstm_322/StatefulPartitionedCall lstm_322/StatefulPartitionedCall2D
 lstm_323/StatefulPartitionedCall lstm_323/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_323_while_body_1557982.
*lstm_323_while_lstm_323_while_loop_counter4
0lstm_323_while_lstm_323_while_maximum_iterations
lstm_323_while_placeholder 
lstm_323_while_placeholder_1 
lstm_323_while_placeholder_2 
lstm_323_while_placeholder_3-
)lstm_323_while_lstm_323_strided_slice_1_0i
elstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0:2(Q
?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(L
>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0:(
lstm_323_while_identity
lstm_323_while_identity_1
lstm_323_while_identity_2
lstm_323_while_identity_3
lstm_323_while_identity_4
lstm_323_while_identity_5+
'lstm_323_while_lstm_323_strided_slice_1g
clstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensorM
;lstm_323_while_lstm_cell_257_matmul_readvariableop_resource:2(O
=lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource:
(J
<lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource:(??3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp?2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp?4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp?
@lstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_323/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0lstm_323_while_placeholderIlstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_323/while/lstm_cell_257/MatMulMatMul9lstm_323/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_323/while/lstm_cell_257/MatMul_1MatMullstm_323_while_placeholder_2<lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_323/while/lstm_cell_257/addAddV2-lstm_323/while/lstm_cell_257/MatMul:product:0/lstm_323/while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_323/while/lstm_cell_257/BiasAddBiasAdd$lstm_323/while/lstm_cell_257/add:z:0;lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_323/while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_323/while/lstm_cell_257/splitSplit5lstm_323/while/lstm_cell_257/split/split_dim:output:0-lstm_323/while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_323/while/lstm_cell_257/SigmoidSigmoid+lstm_323/while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_323/while/lstm_cell_257/Sigmoid_1Sigmoid+lstm_323/while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_323/while/lstm_cell_257/mulMul*lstm_323/while/lstm_cell_257/Sigmoid_1:y:0lstm_323_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_323/while/lstm_cell_257/ReluRelu+lstm_323/while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/mul_1Mul(lstm_323/while/lstm_cell_257/Sigmoid:y:0/lstm_323/while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/add_1AddV2$lstm_323/while/lstm_cell_257/mul:z:0&lstm_323/while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_323/while/lstm_cell_257/Sigmoid_2Sigmoid+lstm_323/while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_323/while/lstm_cell_257/Relu_1Relu&lstm_323/while/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_323/while/lstm_cell_257/mul_2Mul*lstm_323/while/lstm_cell_257/Sigmoid_2:y:01lstm_323/while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_323/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_323_while_placeholder_1lstm_323_while_placeholder&lstm_323/while/lstm_cell_257/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_323/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_323/while/addAddV2lstm_323_while_placeholderlstm_323/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_323/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_323/while/add_1AddV2*lstm_323_while_lstm_323_while_loop_counterlstm_323/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_323/while/IdentityIdentitylstm_323/while/add_1:z:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_1Identity0lstm_323_while_lstm_323_while_maximum_iterations^lstm_323/while/NoOp*
T0*
_output_shapes
: t
lstm_323/while/Identity_2Identitylstm_323/while/add:z:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_3IdentityClstm_323/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_323/while/NoOp*
T0*
_output_shapes
: ?
lstm_323/while/Identity_4Identity&lstm_323/while/lstm_cell_257/mul_2:z:0^lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_323/while/Identity_5Identity&lstm_323/while/lstm_cell_257/add_1:z:0^lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_323/while/NoOpNoOp4^lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp3^lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp5^lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_323_while_identity lstm_323/while/Identity:output:0"?
lstm_323_while_identity_1"lstm_323/while/Identity_1:output:0"?
lstm_323_while_identity_2"lstm_323/while/Identity_2:output:0"?
lstm_323_while_identity_3"lstm_323/while/Identity_3:output:0"?
lstm_323_while_identity_4"lstm_323/while/Identity_4:output:0"?
lstm_323_while_identity_5"lstm_323/while/Identity_5:output:0"T
'lstm_323_while_lstm_323_strided_slice_1)lstm_323_while_lstm_323_strided_slice_1_0"~
<lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource>lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0"?
=lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource?lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0"|
;lstm_323_while_lstm_cell_257_matmul_readvariableop_resource=lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0"?
clstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensorelstm_323_while_tensorarrayv2read_tensorlistgetitem_lstm_323_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp3lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp2h
2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp2lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp2l
4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp4lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1555525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555525___redundant_placeholder05
1while_while_cond_1555525___redundant_placeholder15
1while_while_cond_1555525___redundant_placeholder25
1while_while_cond_1555525___redundant_placeholder3
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
while_body_1555685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_257_1555709_0:2(/
while_lstm_cell_257_1555711_0:
(+
while_lstm_cell_257_1555713_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_257_1555709:2(-
while_lstm_cell_257_1555711:
()
while_lstm_cell_257_1555713:(??+while/lstm_cell_257/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_257/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_257_1555709_0while_lstm_cell_257_1555711_0while_lstm_cell_257_1555713_0*
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555671?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_257/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_257/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_257/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_257_1555709while_lstm_cell_257_1555709_0"<
while_lstm_cell_257_1555711while_lstm_cell_257_1555711_0"<
while_lstm_cell_257_1555713while_lstm_cell_257_1555713_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_257/StatefulPartitionedCall+while/lstm_cell_257/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1558875
inputs_0?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1558791*
condR
while_cond_1558790*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_321_layer_call_fn_1558116

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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556949s
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1555054

inputs(
lstm_cell_255_1554972:	?(
lstm_cell_255_1554974:	d?$
lstm_cell_255_1554976:	?
identity??%lstm_cell_255/StatefulPartitionedCall?while;
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
%lstm_cell_255/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_255_1554972lstm_cell_255_1554974lstm_cell_255_1554976*
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1554971n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_255_1554972lstm_cell_255_1554974lstm_cell_255_1554976*
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
while_body_1554985*
condR
while_cond_1554984*K
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
NoOpNoOp&^lstm_cell_255/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_255/StatefulPartitionedCall%lstm_cell_255/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1559076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559076___redundant_placeholder05
1while_while_cond_1559076___redundant_placeholder15
1while_while_cond_1559076___redundant_placeholder25
1while_while_cond_1559076___redundant_placeholder3
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421

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
while_body_1556019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555321

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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559777

inputs>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1559693*
condR
while_cond_1559692*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560005

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
?
?
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560201

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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560233

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
?
?
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557017

inputs#
lstm_321_1556990:	?#
lstm_321_1556992:	d?
lstm_321_1556994:	?#
lstm_322_1556997:	d?#
lstm_322_1556999:	2?
lstm_322_1557001:	?"
lstm_323_1557004:2("
lstm_323_1557006:
(
lstm_323_1557008:(#
dense_107_1557011:

dense_107_1557013:
identity??!dense_107/StatefulPartitionedCall? lstm_321/StatefulPartitionedCall? lstm_322/StatefulPartitionedCall? lstm_323/StatefulPartitionedCall?
 lstm_321/StatefulPartitionedCallStatefulPartitionedCallinputslstm_321_1556990lstm_321_1556992lstm_321_1556994*
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556949?
 lstm_322/StatefulPartitionedCallStatefulPartitionedCall)lstm_321/StatefulPartitionedCall:output:0lstm_322_1556997lstm_322_1556999lstm_322_1557001*
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556784?
 lstm_323/StatefulPartitionedCallStatefulPartitionedCall)lstm_322/StatefulPartitionedCall:output:0lstm_323_1557004lstm_323_1557006lstm_323_1557008*
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556619?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_323/StatefulPartitionedCall:output:0dense_107_1557011dense_107_1557013*
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_321/StatefulPartitionedCall!^lstm_322/StatefulPartitionedCall!^lstm_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_321/StatefulPartitionedCall lstm_321/StatefulPartitionedCall2D
 lstm_322/StatefulPartitionedCall lstm_322/StatefulPartitionedCall2D
 lstm_323/StatefulPartitionedCall lstm_323/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_321_while_body_1557277.
*lstm_321_while_lstm_321_while_loop_counter4
0lstm_321_while_lstm_321_while_maximum_iterations
lstm_321_while_placeholder 
lstm_321_while_placeholder_1 
lstm_321_while_placeholder_2 
lstm_321_while_placeholder_3-
)lstm_321_while_lstm_321_strided_slice_1_0i
elstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0:	?R
?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?M
>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
lstm_321_while_identity
lstm_321_while_identity_1
lstm_321_while_identity_2
lstm_321_while_identity_3
lstm_321_while_identity_4
lstm_321_while_identity_5+
'lstm_321_while_lstm_321_strided_slice_1g
clstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensorN
;lstm_321_while_lstm_cell_255_matmul_readvariableop_resource:	?P
=lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource:	d?K
<lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource:	???3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp?2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp?4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp?
@lstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_321/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0lstm_321_while_placeholderIlstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_321/while/lstm_cell_255/MatMulMatMul9lstm_321/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_321/while/lstm_cell_255/MatMul_1MatMullstm_321_while_placeholder_2<lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_321/while/lstm_cell_255/addAddV2-lstm_321/while/lstm_cell_255/MatMul:product:0/lstm_321/while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_321/while/lstm_cell_255/BiasAddBiasAdd$lstm_321/while/lstm_cell_255/add:z:0;lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_321/while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_321/while/lstm_cell_255/splitSplit5lstm_321/while/lstm_cell_255/split/split_dim:output:0-lstm_321/while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_321/while/lstm_cell_255/SigmoidSigmoid+lstm_321/while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_321/while/lstm_cell_255/Sigmoid_1Sigmoid+lstm_321/while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_321/while/lstm_cell_255/mulMul*lstm_321/while/lstm_cell_255/Sigmoid_1:y:0lstm_321_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_321/while/lstm_cell_255/ReluRelu+lstm_321/while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/mul_1Mul(lstm_321/while/lstm_cell_255/Sigmoid:y:0/lstm_321/while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/add_1AddV2$lstm_321/while/lstm_cell_255/mul:z:0&lstm_321/while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_321/while/lstm_cell_255/Sigmoid_2Sigmoid+lstm_321/while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_321/while/lstm_cell_255/Relu_1Relu&lstm_321/while/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/mul_2Mul*lstm_321/while/lstm_cell_255/Sigmoid_2:y:01lstm_321/while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_321/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_321_while_placeholder_1lstm_321_while_placeholder&lstm_321/while/lstm_cell_255/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_321/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_321/while/addAddV2lstm_321_while_placeholderlstm_321/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_321/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_321/while/add_1AddV2*lstm_321_while_lstm_321_while_loop_counterlstm_321/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_321/while/IdentityIdentitylstm_321/while/add_1:z:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_1Identity0lstm_321_while_lstm_321_while_maximum_iterations^lstm_321/while/NoOp*
T0*
_output_shapes
: t
lstm_321/while/Identity_2Identitylstm_321/while/add:z:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_3IdentityClstm_321/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_4Identity&lstm_321/while/lstm_cell_255/mul_2:z:0^lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_321/while/Identity_5Identity&lstm_321/while/lstm_cell_255/add_1:z:0^lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_321/while/NoOpNoOp4^lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp3^lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp5^lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_321_while_identity lstm_321/while/Identity:output:0"?
lstm_321_while_identity_1"lstm_321/while/Identity_1:output:0"?
lstm_321_while_identity_2"lstm_321/while/Identity_2:output:0"?
lstm_321_while_identity_3"lstm_321/while/Identity_3:output:0"?
lstm_321_while_identity_4"lstm_321/while/Identity_4:output:0"?
lstm_321_while_identity_5"lstm_321/while/Identity_5:output:0"T
'lstm_321_while_lstm_321_strided_slice_1)lstm_321_while_lstm_321_strided_slice_1_0"~
<lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0"?
=lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0"|
;lstm_321_while_lstm_cell_255_matmul_readvariableop_resource=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0"?
clstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensorelstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp2h
2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp2l
4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1555945

inputs'
lstm_cell_257_1555863:2('
lstm_cell_257_1555865:
(#
lstm_cell_257_1555867:(
identity??%lstm_cell_257/StatefulPartitionedCall?while;
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
%lstm_cell_257/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_257_1555863lstm_cell_257_1555865lstm_cell_257_1555867*
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555817n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_257_1555863lstm_cell_257_1555865lstm_cell_257_1555867*
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
while_body_1555876*
condR
while_cond_1555875*K
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
NoOpNoOp&^lstm_cell_257/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_257/StatefulPartitionedCall%lstm_cell_257/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_257_layer_call_fn_1560152

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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555671o
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557129
lstm_321_input#
lstm_321_1557102:	?#
lstm_321_1557104:	d?
lstm_321_1557106:	?#
lstm_322_1557109:	d?#
lstm_322_1557111:	2?
lstm_322_1557113:	?"
lstm_323_1557116:2("
lstm_323_1557118:
(
lstm_323_1557120:(#
dense_107_1557123:

dense_107_1557125:
identity??!dense_107/StatefulPartitionedCall? lstm_321/StatefulPartitionedCall? lstm_322/StatefulPartitionedCall? lstm_323/StatefulPartitionedCall?
 lstm_321/StatefulPartitionedCallStatefulPartitionedCalllstm_321_inputlstm_321_1557102lstm_321_1557104lstm_321_1557106*
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556949?
 lstm_322/StatefulPartitionedCallStatefulPartitionedCall)lstm_321/StatefulPartitionedCall:output:0lstm_322_1557109lstm_322_1557111lstm_322_1557113*
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556784?
 lstm_323/StatefulPartitionedCallStatefulPartitionedCall)lstm_322/StatefulPartitionedCall:output:0lstm_323_1557116lstm_323_1557118lstm_323_1557120*
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556619?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_323/StatefulPartitionedCall:output:0dense_107_1557123dense_107_1557125*
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1556421y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_321/StatefulPartitionedCall!^lstm_322/StatefulPartitionedCall!^lstm_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_321/StatefulPartitionedCall lstm_321/StatefulPartitionedCall2D
 lstm_322/StatefulPartitionedCall lstm_322/StatefulPartitionedCall2D
 lstm_323/StatefulPartitionedCall lstm_323/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_321_input
?
?
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1555117

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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559018
inputs_0?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1558934*
condR
while_cond_1558933*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_255_layer_call_fn_1559956

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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1554971o
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
/__inference_lstm_cell_257_layer_call_fn_1560169

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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555817o
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
?
?
*__inference_lstm_323_layer_call_fn_1559348

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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556619o
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

?
0__inference_sequential_107_layer_call_fn_1556453
lstm_321_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1556428o
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
_user_specified_namelstm_321_input
?T
?
*sequential_107_lstm_323_while_body_1554814L
Hsequential_107_lstm_323_while_sequential_107_lstm_323_while_loop_counterR
Nsequential_107_lstm_323_while_sequential_107_lstm_323_while_maximum_iterations-
)sequential_107_lstm_323_while_placeholder/
+sequential_107_lstm_323_while_placeholder_1/
+sequential_107_lstm_323_while_placeholder_2/
+sequential_107_lstm_323_while_placeholder_3K
Gsequential_107_lstm_323_while_sequential_107_lstm_323_strided_slice_1_0?
?sequential_107_lstm_323_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_323_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_107_lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0:2(`
Nsequential_107_lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0:
([
Msequential_107_lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0:(*
&sequential_107_lstm_323_while_identity,
(sequential_107_lstm_323_while_identity_1,
(sequential_107_lstm_323_while_identity_2,
(sequential_107_lstm_323_while_identity_3,
(sequential_107_lstm_323_while_identity_4,
(sequential_107_lstm_323_while_identity_5I
Esequential_107_lstm_323_while_sequential_107_lstm_323_strided_slice_1?
?sequential_107_lstm_323_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_323_tensorarrayunstack_tensorlistfromtensor\
Jsequential_107_lstm_323_while_lstm_cell_257_matmul_readvariableop_resource:2(^
Lsequential_107_lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource:
(Y
Ksequential_107_lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource:(??Bsequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp?Asequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp?Csequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp?
Osequential_107/lstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_107/lstm_323/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_107_lstm_323_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_323_tensorarrayunstack_tensorlistfromtensor_0)sequential_107_lstm_323_while_placeholderXsequential_107/lstm_323/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOpLsequential_107_lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_107/lstm_323/while/lstm_cell_257/MatMulMatMulHsequential_107/lstm_323/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOpNsequential_107_lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_107/lstm_323/while/lstm_cell_257/MatMul_1MatMul+sequential_107_lstm_323_while_placeholder_2Ksequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_107/lstm_323/while/lstm_cell_257/addAddV2<sequential_107/lstm_323/while/lstm_cell_257/MatMul:product:0>sequential_107/lstm_323/while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOpMsequential_107_lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_107/lstm_323/while/lstm_cell_257/BiasAddBiasAdd3sequential_107/lstm_323/while/lstm_cell_257/add:z:0Jsequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_107/lstm_323/while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_107/lstm_323/while/lstm_cell_257/splitSplitDsequential_107/lstm_323/while/lstm_cell_257/split/split_dim:output:0<sequential_107/lstm_323/while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_107/lstm_323/while/lstm_cell_257/SigmoidSigmoid:sequential_107/lstm_323/while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_107/lstm_323/while/lstm_cell_257/Sigmoid_1Sigmoid:sequential_107/lstm_323/while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_107/lstm_323/while/lstm_cell_257/mulMul9sequential_107/lstm_323/while/lstm_cell_257/Sigmoid_1:y:0+sequential_107_lstm_323_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_107/lstm_323/while/lstm_cell_257/ReluRelu:sequential_107/lstm_323/while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_107/lstm_323/while/lstm_cell_257/mul_1Mul7sequential_107/lstm_323/while/lstm_cell_257/Sigmoid:y:0>sequential_107/lstm_323/while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_107/lstm_323/while/lstm_cell_257/add_1AddV23sequential_107/lstm_323/while/lstm_cell_257/mul:z:05sequential_107/lstm_323/while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_107/lstm_323/while/lstm_cell_257/Sigmoid_2Sigmoid:sequential_107/lstm_323/while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_107/lstm_323/while/lstm_cell_257/Relu_1Relu5sequential_107/lstm_323/while/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_107/lstm_323/while/lstm_cell_257/mul_2Mul9sequential_107/lstm_323/while/lstm_cell_257/Sigmoid_2:y:0@sequential_107/lstm_323/while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_107/lstm_323/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_107_lstm_323_while_placeholder_1)sequential_107_lstm_323_while_placeholder5sequential_107/lstm_323/while/lstm_cell_257/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_107/lstm_323/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_107/lstm_323/while/addAddV2)sequential_107_lstm_323_while_placeholder,sequential_107/lstm_323/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_107/lstm_323/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_107/lstm_323/while/add_1AddV2Hsequential_107_lstm_323_while_sequential_107_lstm_323_while_loop_counter.sequential_107/lstm_323/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_107/lstm_323/while/IdentityIdentity'sequential_107/lstm_323/while/add_1:z:0#^sequential_107/lstm_323/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_323/while/Identity_1IdentityNsequential_107_lstm_323_while_sequential_107_lstm_323_while_maximum_iterations#^sequential_107/lstm_323/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_323/while/Identity_2Identity%sequential_107/lstm_323/while/add:z:0#^sequential_107/lstm_323/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_323/while/Identity_3IdentityRsequential_107/lstm_323/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_107/lstm_323/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_323/while/Identity_4Identity5sequential_107/lstm_323/while/lstm_cell_257/mul_2:z:0#^sequential_107/lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_107/lstm_323/while/Identity_5Identity5sequential_107/lstm_323/while/lstm_cell_257/add_1:z:0#^sequential_107/lstm_323/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_107/lstm_323/while/NoOpNoOpC^sequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOpB^sequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOpD^sequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_107_lstm_323_while_identity/sequential_107/lstm_323/while/Identity:output:0"]
(sequential_107_lstm_323_while_identity_11sequential_107/lstm_323/while/Identity_1:output:0"]
(sequential_107_lstm_323_while_identity_21sequential_107/lstm_323/while/Identity_2:output:0"]
(sequential_107_lstm_323_while_identity_31sequential_107/lstm_323/while/Identity_3:output:0"]
(sequential_107_lstm_323_while_identity_41sequential_107/lstm_323/while/Identity_4:output:0"]
(sequential_107_lstm_323_while_identity_51sequential_107/lstm_323/while/Identity_5:output:0"?
Ksequential_107_lstm_323_while_lstm_cell_257_biasadd_readvariableop_resourceMsequential_107_lstm_323_while_lstm_cell_257_biasadd_readvariableop_resource_0"?
Lsequential_107_lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resourceNsequential_107_lstm_323_while_lstm_cell_257_matmul_1_readvariableop_resource_0"?
Jsequential_107_lstm_323_while_lstm_cell_257_matmul_readvariableop_resourceLsequential_107_lstm_323_while_lstm_cell_257_matmul_readvariableop_resource_0"?
Esequential_107_lstm_323_while_sequential_107_lstm_323_strided_slice_1Gsequential_107_lstm_323_while_sequential_107_lstm_323_strided_slice_1_0"?
?sequential_107_lstm_323_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_323_tensorarrayunstack_tensorlistfromtensor?sequential_107_lstm_323_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_323_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOpBsequential_107/lstm_323/while/lstm_cell_257/BiasAdd/ReadVariableOp2?
Asequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOpAsequential_107/lstm_323/while/lstm_cell_257/MatMul/ReadVariableOp2?
Csequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOpCsequential_107/lstm_323/while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556784

inputs?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1556700*
condR
while_cond_1556699*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_1554985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_255_1555009_0:	?0
while_lstm_cell_255_1555011_0:	d?,
while_lstm_cell_255_1555013_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_255_1555009:	?.
while_lstm_cell_255_1555011:	d?*
while_lstm_cell_255_1555013:	???+while/lstm_cell_255/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_255/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_255_1555009_0while_lstm_cell_255_1555011_0while_lstm_cell_255_1555013_0*
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1554971?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_255/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_255/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_255/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_255/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_255_1555009while_lstm_cell_255_1555009_0"<
while_lstm_cell_255_1555011while_lstm_cell_255_1555011_0"<
while_lstm_cell_255_1555013while_lstm_cell_255_1555013_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_255/StatefulPartitionedCall+while/lstm_cell_255/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556253

inputs?
,lstm_cell_256_matmul_readvariableop_resource:	d?A
.lstm_cell_256_matmul_1_readvariableop_resource:	2?<
-lstm_cell_256_biasadd_readvariableop_resource:	?
identity??$lstm_cell_256/BiasAdd/ReadVariableOp?#lstm_cell_256/MatMul/ReadVariableOp?%lstm_cell_256/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_256/MatMul/ReadVariableOpReadVariableOp,lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_256/MatMulMatMulstrided_slice_2:output:0+lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_256/MatMul_1MatMulzeros:output:0-lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_256/addAddV2lstm_cell_256/MatMul:product:0 lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_256/BiasAddBiasAddlstm_cell_256/add:z:0,lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_256/splitSplit&lstm_cell_256/split/split_dim:output:0lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_256/SigmoidSigmoidlstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_1Sigmoidlstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_256/mulMullstm_cell_256/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_256/ReluRelulstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_1Mullstm_cell_256/Sigmoid:y:0 lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_256/add_1AddV2lstm_cell_256/mul:z:0lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_256/Sigmoid_2Sigmoidlstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_256/Relu_1Relulstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_256/mul_2Mullstm_cell_256/Sigmoid_2:y:0"lstm_cell_256/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_256_matmul_readvariableop_resource.lstm_cell_256_matmul_1_readvariableop_resource-lstm_cell_256_biasadd_readvariableop_resource*
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
while_body_1556169*
condR
while_cond_1556168*K
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
NoOpNoOp%^lstm_cell_256/BiasAdd/ReadVariableOp$^lstm_cell_256/MatMul/ReadVariableOp&^lstm_cell_256/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_256/BiasAdd/ReadVariableOp$lstm_cell_256/BiasAdd/ReadVariableOp2J
#lstm_cell_256/MatMul/ReadVariableOp#lstm_cell_256/MatMul/ReadVariableOp2N
%lstm_cell_256/MatMul_1/ReadVariableOp%lstm_cell_256/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560037

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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558545

inputs?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1558461*
condR
while_cond_1558460*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557645

inputsH
5lstm_321_lstm_cell_255_matmul_readvariableop_resource:	?J
7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource:	d?E
6lstm_321_lstm_cell_255_biasadd_readvariableop_resource:	?H
5lstm_322_lstm_cell_256_matmul_readvariableop_resource:	d?J
7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource:	2?E
6lstm_322_lstm_cell_256_biasadd_readvariableop_resource:	?G
5lstm_323_lstm_cell_257_matmul_readvariableop_resource:2(I
7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource:
(D
6lstm_323_lstm_cell_257_biasadd_readvariableop_resource:(:
(dense_107_matmul_readvariableop_resource:
7
)dense_107_biasadd_readvariableop_resource:
identity?? dense_107/BiasAdd/ReadVariableOp?dense_107/MatMul/ReadVariableOp?-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp?,lstm_321/lstm_cell_255/MatMul/ReadVariableOp?.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp?lstm_321/while?-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp?,lstm_322/lstm_cell_256/MatMul/ReadVariableOp?.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp?lstm_322/while?-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp?,lstm_323/lstm_cell_257/MatMul/ReadVariableOp?.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp?lstm_323/whileD
lstm_321/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_321/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_321/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_321/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_sliceStridedSlicelstm_321/Shape:output:0%lstm_321/strided_slice/stack:output:0'lstm_321/strided_slice/stack_1:output:0'lstm_321/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_321/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_321/zeros/packedPacklstm_321/strided_slice:output:0 lstm_321/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_321/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_321/zerosFilllstm_321/zeros/packed:output:0lstm_321/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_321/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_321/zeros_1/packedPacklstm_321/strided_slice:output:0"lstm_321/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_321/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_321/zeros_1Fill lstm_321/zeros_1/packed:output:0lstm_321/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_321/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_321/transpose	Transposeinputs lstm_321/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_321/Shape_1Shapelstm_321/transpose:y:0*
T0*
_output_shapes
:h
lstm_321/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_321/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_1StridedSlicelstm_321/Shape_1:output:0'lstm_321/strided_slice_1/stack:output:0)lstm_321/strided_slice_1/stack_1:output:0)lstm_321/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_321/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_321/TensorArrayV2TensorListReserve-lstm_321/TensorArrayV2/element_shape:output:0!lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_321/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_321/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_321/transpose:y:0Glstm_321/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_321/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_321/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_2StridedSlicelstm_321/transpose:y:0'lstm_321/strided_slice_2/stack:output:0)lstm_321/strided_slice_2/stack_1:output:0)lstm_321/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_321/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp5lstm_321_lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_321/lstm_cell_255/MatMulMatMul!lstm_321/strided_slice_2:output:04lstm_321/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_321/lstm_cell_255/MatMul_1MatMullstm_321/zeros:output:06lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_321/lstm_cell_255/addAddV2'lstm_321/lstm_cell_255/MatMul:product:0)lstm_321/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp6lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_321/lstm_cell_255/BiasAddBiasAddlstm_321/lstm_cell_255/add:z:05lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_321/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_321/lstm_cell_255/splitSplit/lstm_321/lstm_cell_255/split/split_dim:output:0'lstm_321/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_321/lstm_cell_255/SigmoidSigmoid%lstm_321/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_321/lstm_cell_255/Sigmoid_1Sigmoid%lstm_321/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mulMul$lstm_321/lstm_cell_255/Sigmoid_1:y:0lstm_321/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_321/lstm_cell_255/ReluRelu%lstm_321/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mul_1Mul"lstm_321/lstm_cell_255/Sigmoid:y:0)lstm_321/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/add_1AddV2lstm_321/lstm_cell_255/mul:z:0 lstm_321/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_321/lstm_cell_255/Sigmoid_2Sigmoid%lstm_321/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_321/lstm_cell_255/Relu_1Relu lstm_321/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mul_2Mul$lstm_321/lstm_cell_255/Sigmoid_2:y:0+lstm_321/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_321/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_321/TensorArrayV2_1TensorListReserve/lstm_321/TensorArrayV2_1/element_shape:output:0!lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_321/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_321/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_321/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_321/whileWhile$lstm_321/while/loop_counter:output:0*lstm_321/while/maximum_iterations:output:0lstm_321/time:output:0!lstm_321/TensorArrayV2_1:handle:0lstm_321/zeros:output:0lstm_321/zeros_1:output:0!lstm_321/strided_slice_1:output:0@lstm_321/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_321_lstm_cell_255_matmul_readvariableop_resource7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource6lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
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
lstm_321_while_body_1557277*'
condR
lstm_321_while_cond_1557276*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_321/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_321/TensorArrayV2Stack/TensorListStackTensorListStacklstm_321/while:output:3Blstm_321/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_321/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_321/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_3StridedSlice4lstm_321/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_321/strided_slice_3/stack:output:0)lstm_321/strided_slice_3/stack_1:output:0)lstm_321/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_321/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_321/transpose_1	Transpose4lstm_321/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_321/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_321/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_322/ShapeShapelstm_321/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_322/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_322/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_322/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_sliceStridedSlicelstm_322/Shape:output:0%lstm_322/strided_slice/stack:output:0'lstm_322/strided_slice/stack_1:output:0'lstm_322/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_322/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_322/zeros/packedPacklstm_322/strided_slice:output:0 lstm_322/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_322/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_322/zerosFilllstm_322/zeros/packed:output:0lstm_322/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_322/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_322/zeros_1/packedPacklstm_322/strided_slice:output:0"lstm_322/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_322/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_322/zeros_1Fill lstm_322/zeros_1/packed:output:0lstm_322/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_322/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_322/transpose	Transposelstm_321/transpose_1:y:0 lstm_322/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_322/Shape_1Shapelstm_322/transpose:y:0*
T0*
_output_shapes
:h
lstm_322/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_322/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_1StridedSlicelstm_322/Shape_1:output:0'lstm_322/strided_slice_1/stack:output:0)lstm_322/strided_slice_1/stack_1:output:0)lstm_322/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_322/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_322/TensorArrayV2TensorListReserve-lstm_322/TensorArrayV2/element_shape:output:0!lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_322/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_322/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_322/transpose:y:0Glstm_322/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_322/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_322/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_2StridedSlicelstm_322/transpose:y:0'lstm_322/strided_slice_2/stack:output:0)lstm_322/strided_slice_2/stack_1:output:0)lstm_322/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_322/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp5lstm_322_lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_322/lstm_cell_256/MatMulMatMul!lstm_322/strided_slice_2:output:04lstm_322/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_322/lstm_cell_256/MatMul_1MatMullstm_322/zeros:output:06lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_322/lstm_cell_256/addAddV2'lstm_322/lstm_cell_256/MatMul:product:0)lstm_322/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp6lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_322/lstm_cell_256/BiasAddBiasAddlstm_322/lstm_cell_256/add:z:05lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_322/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_322/lstm_cell_256/splitSplit/lstm_322/lstm_cell_256/split/split_dim:output:0'lstm_322/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_322/lstm_cell_256/SigmoidSigmoid%lstm_322/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_322/lstm_cell_256/Sigmoid_1Sigmoid%lstm_322/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mulMul$lstm_322/lstm_cell_256/Sigmoid_1:y:0lstm_322/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_322/lstm_cell_256/ReluRelu%lstm_322/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mul_1Mul"lstm_322/lstm_cell_256/Sigmoid:y:0)lstm_322/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/add_1AddV2lstm_322/lstm_cell_256/mul:z:0 lstm_322/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_322/lstm_cell_256/Sigmoid_2Sigmoid%lstm_322/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_322/lstm_cell_256/Relu_1Relu lstm_322/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mul_2Mul$lstm_322/lstm_cell_256/Sigmoid_2:y:0+lstm_322/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_322/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_322/TensorArrayV2_1TensorListReserve/lstm_322/TensorArrayV2_1/element_shape:output:0!lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_322/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_322/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_322/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_322/whileWhile$lstm_322/while/loop_counter:output:0*lstm_322/while/maximum_iterations:output:0lstm_322/time:output:0!lstm_322/TensorArrayV2_1:handle:0lstm_322/zeros:output:0lstm_322/zeros_1:output:0!lstm_322/strided_slice_1:output:0@lstm_322/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_322_lstm_cell_256_matmul_readvariableop_resource7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource6lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
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
lstm_322_while_body_1557416*'
condR
lstm_322_while_cond_1557415*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_322/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_322/TensorArrayV2Stack/TensorListStackTensorListStacklstm_322/while:output:3Blstm_322/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_322/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_322/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_3StridedSlice4lstm_322/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_322/strided_slice_3/stack:output:0)lstm_322/strided_slice_3/stack_1:output:0)lstm_322/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_322/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_322/transpose_1	Transpose4lstm_322/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_322/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_322/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_323/ShapeShapelstm_322/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_323/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_323/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_323/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_sliceStridedSlicelstm_323/Shape:output:0%lstm_323/strided_slice/stack:output:0'lstm_323/strided_slice/stack_1:output:0'lstm_323/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_323/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_323/zeros/packedPacklstm_323/strided_slice:output:0 lstm_323/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_323/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_323/zerosFilllstm_323/zeros/packed:output:0lstm_323/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_323/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_323/zeros_1/packedPacklstm_323/strided_slice:output:0"lstm_323/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_323/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_323/zeros_1Fill lstm_323/zeros_1/packed:output:0lstm_323/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_323/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_323/transpose	Transposelstm_322/transpose_1:y:0 lstm_323/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_323/Shape_1Shapelstm_323/transpose:y:0*
T0*
_output_shapes
:h
lstm_323/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_323/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_1StridedSlicelstm_323/Shape_1:output:0'lstm_323/strided_slice_1/stack:output:0)lstm_323/strided_slice_1/stack_1:output:0)lstm_323/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_323/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_323/TensorArrayV2TensorListReserve-lstm_323/TensorArrayV2/element_shape:output:0!lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_323/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_323/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_323/transpose:y:0Glstm_323/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_323/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_323/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_2StridedSlicelstm_323/transpose:y:0'lstm_323/strided_slice_2/stack:output:0)lstm_323/strided_slice_2/stack_1:output:0)lstm_323/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_323/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp5lstm_323_lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_323/lstm_cell_257/MatMulMatMul!lstm_323/strided_slice_2:output:04lstm_323/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_323/lstm_cell_257/MatMul_1MatMullstm_323/zeros:output:06lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_323/lstm_cell_257/addAddV2'lstm_323/lstm_cell_257/MatMul:product:0)lstm_323/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp6lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_323/lstm_cell_257/BiasAddBiasAddlstm_323/lstm_cell_257/add:z:05lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_323/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_323/lstm_cell_257/splitSplit/lstm_323/lstm_cell_257/split/split_dim:output:0'lstm_323/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_323/lstm_cell_257/SigmoidSigmoid%lstm_323/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_323/lstm_cell_257/Sigmoid_1Sigmoid%lstm_323/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mulMul$lstm_323/lstm_cell_257/Sigmoid_1:y:0lstm_323/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_323/lstm_cell_257/ReluRelu%lstm_323/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mul_1Mul"lstm_323/lstm_cell_257/Sigmoid:y:0)lstm_323/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/add_1AddV2lstm_323/lstm_cell_257/mul:z:0 lstm_323/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_323/lstm_cell_257/Sigmoid_2Sigmoid%lstm_323/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_323/lstm_cell_257/Relu_1Relu lstm_323/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mul_2Mul$lstm_323/lstm_cell_257/Sigmoid_2:y:0+lstm_323/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_323/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_323/TensorArrayV2_1TensorListReserve/lstm_323/TensorArrayV2_1/element_shape:output:0!lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_323/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_323/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_323/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_323/whileWhile$lstm_323/while/loop_counter:output:0*lstm_323/while/maximum_iterations:output:0lstm_323/time:output:0!lstm_323/TensorArrayV2_1:handle:0lstm_323/zeros:output:0lstm_323/zeros_1:output:0!lstm_323/strided_slice_1:output:0@lstm_323/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_323_lstm_cell_257_matmul_readvariableop_resource7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource6lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
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
lstm_323_while_body_1557555*'
condR
lstm_323_while_cond_1557554*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_323/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_323/TensorArrayV2Stack/TensorListStackTensorListStacklstm_323/while:output:3Blstm_323/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_323/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_323/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_3StridedSlice4lstm_323/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_323/strided_slice_3/stack:output:0)lstm_323/strided_slice_3/stack_1:output:0)lstm_323/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_323/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_323/transpose_1	Transpose4lstm_323/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_323/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_323/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_107/MatMulMatMul!lstm_323/strided_slice_3:output:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_107/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp.^lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp-^lstm_321/lstm_cell_255/MatMul/ReadVariableOp/^lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp^lstm_321/while.^lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp-^lstm_322/lstm_cell_256/MatMul/ReadVariableOp/^lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp^lstm_322/while.^lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp-^lstm_323/lstm_cell_257/MatMul/ReadVariableOp/^lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp^lstm_323/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2^
-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp2\
,lstm_321/lstm_cell_255/MatMul/ReadVariableOp,lstm_321/lstm_cell_255/MatMul/ReadVariableOp2`
.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp2 
lstm_321/whilelstm_321/while2^
-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp2\
,lstm_322/lstm_cell_256/MatMul/ReadVariableOp,lstm_322/lstm_cell_256/MatMul/ReadVariableOp2`
.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp2 
lstm_322/whilelstm_322/while2^
-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp2\
,lstm_323/lstm_cell_257/MatMul/ReadVariableOp,lstm_323/lstm_cell_257/MatMul/ReadVariableOp2`
.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp2 
lstm_323/whilelstm_323/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_107_layer_call_and_return_conditional_losses_1558072

inputsH
5lstm_321_lstm_cell_255_matmul_readvariableop_resource:	?J
7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource:	d?E
6lstm_321_lstm_cell_255_biasadd_readvariableop_resource:	?H
5lstm_322_lstm_cell_256_matmul_readvariableop_resource:	d?J
7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource:	2?E
6lstm_322_lstm_cell_256_biasadd_readvariableop_resource:	?G
5lstm_323_lstm_cell_257_matmul_readvariableop_resource:2(I
7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource:
(D
6lstm_323_lstm_cell_257_biasadd_readvariableop_resource:(:
(dense_107_matmul_readvariableop_resource:
7
)dense_107_biasadd_readvariableop_resource:
identity?? dense_107/BiasAdd/ReadVariableOp?dense_107/MatMul/ReadVariableOp?-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp?,lstm_321/lstm_cell_255/MatMul/ReadVariableOp?.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp?lstm_321/while?-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp?,lstm_322/lstm_cell_256/MatMul/ReadVariableOp?.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp?lstm_322/while?-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp?,lstm_323/lstm_cell_257/MatMul/ReadVariableOp?.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp?lstm_323/whileD
lstm_321/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_321/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_321/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_321/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_sliceStridedSlicelstm_321/Shape:output:0%lstm_321/strided_slice/stack:output:0'lstm_321/strided_slice/stack_1:output:0'lstm_321/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_321/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_321/zeros/packedPacklstm_321/strided_slice:output:0 lstm_321/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_321/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_321/zerosFilllstm_321/zeros/packed:output:0lstm_321/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_321/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_321/zeros_1/packedPacklstm_321/strided_slice:output:0"lstm_321/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_321/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_321/zeros_1Fill lstm_321/zeros_1/packed:output:0lstm_321/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_321/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_321/transpose	Transposeinputs lstm_321/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_321/Shape_1Shapelstm_321/transpose:y:0*
T0*
_output_shapes
:h
lstm_321/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_321/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_1StridedSlicelstm_321/Shape_1:output:0'lstm_321/strided_slice_1/stack:output:0)lstm_321/strided_slice_1/stack_1:output:0)lstm_321/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_321/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_321/TensorArrayV2TensorListReserve-lstm_321/TensorArrayV2/element_shape:output:0!lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_321/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_321/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_321/transpose:y:0Glstm_321/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_321/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_321/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_2StridedSlicelstm_321/transpose:y:0'lstm_321/strided_slice_2/stack:output:0)lstm_321/strided_slice_2/stack_1:output:0)lstm_321/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_321/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp5lstm_321_lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_321/lstm_cell_255/MatMulMatMul!lstm_321/strided_slice_2:output:04lstm_321/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_321/lstm_cell_255/MatMul_1MatMullstm_321/zeros:output:06lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_321/lstm_cell_255/addAddV2'lstm_321/lstm_cell_255/MatMul:product:0)lstm_321/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp6lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_321/lstm_cell_255/BiasAddBiasAddlstm_321/lstm_cell_255/add:z:05lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_321/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_321/lstm_cell_255/splitSplit/lstm_321/lstm_cell_255/split/split_dim:output:0'lstm_321/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_321/lstm_cell_255/SigmoidSigmoid%lstm_321/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_321/lstm_cell_255/Sigmoid_1Sigmoid%lstm_321/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mulMul$lstm_321/lstm_cell_255/Sigmoid_1:y:0lstm_321/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_321/lstm_cell_255/ReluRelu%lstm_321/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mul_1Mul"lstm_321/lstm_cell_255/Sigmoid:y:0)lstm_321/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/add_1AddV2lstm_321/lstm_cell_255/mul:z:0 lstm_321/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_321/lstm_cell_255/Sigmoid_2Sigmoid%lstm_321/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_321/lstm_cell_255/Relu_1Relu lstm_321/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_321/lstm_cell_255/mul_2Mul$lstm_321/lstm_cell_255/Sigmoid_2:y:0+lstm_321/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_321/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_321/TensorArrayV2_1TensorListReserve/lstm_321/TensorArrayV2_1/element_shape:output:0!lstm_321/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_321/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_321/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_321/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_321/whileWhile$lstm_321/while/loop_counter:output:0*lstm_321/while/maximum_iterations:output:0lstm_321/time:output:0!lstm_321/TensorArrayV2_1:handle:0lstm_321/zeros:output:0lstm_321/zeros_1:output:0!lstm_321/strided_slice_1:output:0@lstm_321/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_321_lstm_cell_255_matmul_readvariableop_resource7lstm_321_lstm_cell_255_matmul_1_readvariableop_resource6lstm_321_lstm_cell_255_biasadd_readvariableop_resource*
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
lstm_321_while_body_1557704*'
condR
lstm_321_while_cond_1557703*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_321/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_321/TensorArrayV2Stack/TensorListStackTensorListStacklstm_321/while:output:3Blstm_321/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_321/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_321/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_321/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_321/strided_slice_3StridedSlice4lstm_321/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_321/strided_slice_3/stack:output:0)lstm_321/strided_slice_3/stack_1:output:0)lstm_321/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_321/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_321/transpose_1	Transpose4lstm_321/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_321/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_321/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_322/ShapeShapelstm_321/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_322/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_322/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_322/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_sliceStridedSlicelstm_322/Shape:output:0%lstm_322/strided_slice/stack:output:0'lstm_322/strided_slice/stack_1:output:0'lstm_322/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_322/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_322/zeros/packedPacklstm_322/strided_slice:output:0 lstm_322/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_322/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_322/zerosFilllstm_322/zeros/packed:output:0lstm_322/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_322/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_322/zeros_1/packedPacklstm_322/strided_slice:output:0"lstm_322/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_322/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_322/zeros_1Fill lstm_322/zeros_1/packed:output:0lstm_322/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_322/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_322/transpose	Transposelstm_321/transpose_1:y:0 lstm_322/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_322/Shape_1Shapelstm_322/transpose:y:0*
T0*
_output_shapes
:h
lstm_322/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_322/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_1StridedSlicelstm_322/Shape_1:output:0'lstm_322/strided_slice_1/stack:output:0)lstm_322/strided_slice_1/stack_1:output:0)lstm_322/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_322/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_322/TensorArrayV2TensorListReserve-lstm_322/TensorArrayV2/element_shape:output:0!lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_322/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_322/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_322/transpose:y:0Glstm_322/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_322/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_322/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_2StridedSlicelstm_322/transpose:y:0'lstm_322/strided_slice_2/stack:output:0)lstm_322/strided_slice_2/stack_1:output:0)lstm_322/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_322/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp5lstm_322_lstm_cell_256_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_322/lstm_cell_256/MatMulMatMul!lstm_322/strided_slice_2:output:04lstm_322/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_322/lstm_cell_256/MatMul_1MatMullstm_322/zeros:output:06lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_322/lstm_cell_256/addAddV2'lstm_322/lstm_cell_256/MatMul:product:0)lstm_322/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp6lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_322/lstm_cell_256/BiasAddBiasAddlstm_322/lstm_cell_256/add:z:05lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_322/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_322/lstm_cell_256/splitSplit/lstm_322/lstm_cell_256/split/split_dim:output:0'lstm_322/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_322/lstm_cell_256/SigmoidSigmoid%lstm_322/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_322/lstm_cell_256/Sigmoid_1Sigmoid%lstm_322/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mulMul$lstm_322/lstm_cell_256/Sigmoid_1:y:0lstm_322/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_322/lstm_cell_256/ReluRelu%lstm_322/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mul_1Mul"lstm_322/lstm_cell_256/Sigmoid:y:0)lstm_322/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/add_1AddV2lstm_322/lstm_cell_256/mul:z:0 lstm_322/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_322/lstm_cell_256/Sigmoid_2Sigmoid%lstm_322/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_322/lstm_cell_256/Relu_1Relu lstm_322/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_322/lstm_cell_256/mul_2Mul$lstm_322/lstm_cell_256/Sigmoid_2:y:0+lstm_322/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_322/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_322/TensorArrayV2_1TensorListReserve/lstm_322/TensorArrayV2_1/element_shape:output:0!lstm_322/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_322/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_322/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_322/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_322/whileWhile$lstm_322/while/loop_counter:output:0*lstm_322/while/maximum_iterations:output:0lstm_322/time:output:0!lstm_322/TensorArrayV2_1:handle:0lstm_322/zeros:output:0lstm_322/zeros_1:output:0!lstm_322/strided_slice_1:output:0@lstm_322/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_322_lstm_cell_256_matmul_readvariableop_resource7lstm_322_lstm_cell_256_matmul_1_readvariableop_resource6lstm_322_lstm_cell_256_biasadd_readvariableop_resource*
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
lstm_322_while_body_1557843*'
condR
lstm_322_while_cond_1557842*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_322/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_322/TensorArrayV2Stack/TensorListStackTensorListStacklstm_322/while:output:3Blstm_322/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_322/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_322/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_322/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_322/strided_slice_3StridedSlice4lstm_322/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_322/strided_slice_3/stack:output:0)lstm_322/strided_slice_3/stack_1:output:0)lstm_322/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_322/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_322/transpose_1	Transpose4lstm_322/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_322/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_322/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_323/ShapeShapelstm_322/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_323/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_323/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_323/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_sliceStridedSlicelstm_323/Shape:output:0%lstm_323/strided_slice/stack:output:0'lstm_323/strided_slice/stack_1:output:0'lstm_323/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_323/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_323/zeros/packedPacklstm_323/strided_slice:output:0 lstm_323/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_323/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_323/zerosFilllstm_323/zeros/packed:output:0lstm_323/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_323/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_323/zeros_1/packedPacklstm_323/strided_slice:output:0"lstm_323/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_323/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_323/zeros_1Fill lstm_323/zeros_1/packed:output:0lstm_323/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_323/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_323/transpose	Transposelstm_322/transpose_1:y:0 lstm_323/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_323/Shape_1Shapelstm_323/transpose:y:0*
T0*
_output_shapes
:h
lstm_323/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_323/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_1StridedSlicelstm_323/Shape_1:output:0'lstm_323/strided_slice_1/stack:output:0)lstm_323/strided_slice_1/stack_1:output:0)lstm_323/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_323/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_323/TensorArrayV2TensorListReserve-lstm_323/TensorArrayV2/element_shape:output:0!lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_323/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_323/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_323/transpose:y:0Glstm_323/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_323/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_323/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_2StridedSlicelstm_323/transpose:y:0'lstm_323/strided_slice_2/stack:output:0)lstm_323/strided_slice_2/stack_1:output:0)lstm_323/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_323/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp5lstm_323_lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_323/lstm_cell_257/MatMulMatMul!lstm_323/strided_slice_2:output:04lstm_323/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_323/lstm_cell_257/MatMul_1MatMullstm_323/zeros:output:06lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_323/lstm_cell_257/addAddV2'lstm_323/lstm_cell_257/MatMul:product:0)lstm_323/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp6lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_323/lstm_cell_257/BiasAddBiasAddlstm_323/lstm_cell_257/add:z:05lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_323/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_323/lstm_cell_257/splitSplit/lstm_323/lstm_cell_257/split/split_dim:output:0'lstm_323/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_323/lstm_cell_257/SigmoidSigmoid%lstm_323/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_323/lstm_cell_257/Sigmoid_1Sigmoid%lstm_323/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mulMul$lstm_323/lstm_cell_257/Sigmoid_1:y:0lstm_323/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_323/lstm_cell_257/ReluRelu%lstm_323/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mul_1Mul"lstm_323/lstm_cell_257/Sigmoid:y:0)lstm_323/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/add_1AddV2lstm_323/lstm_cell_257/mul:z:0 lstm_323/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_323/lstm_cell_257/Sigmoid_2Sigmoid%lstm_323/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_323/lstm_cell_257/Relu_1Relu lstm_323/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_323/lstm_cell_257/mul_2Mul$lstm_323/lstm_cell_257/Sigmoid_2:y:0+lstm_323/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_323/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_323/TensorArrayV2_1TensorListReserve/lstm_323/TensorArrayV2_1/element_shape:output:0!lstm_323/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_323/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_323/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_323/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_323/whileWhile$lstm_323/while/loop_counter:output:0*lstm_323/while/maximum_iterations:output:0lstm_323/time:output:0!lstm_323/TensorArrayV2_1:handle:0lstm_323/zeros:output:0lstm_323/zeros_1:output:0!lstm_323/strided_slice_1:output:0@lstm_323/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_323_lstm_cell_257_matmul_readvariableop_resource7lstm_323_lstm_cell_257_matmul_1_readvariableop_resource6lstm_323_lstm_cell_257_biasadd_readvariableop_resource*
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
lstm_323_while_body_1557982*'
condR
lstm_323_while_cond_1557981*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_323/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_323/TensorArrayV2Stack/TensorListStackTensorListStacklstm_323/while:output:3Blstm_323/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_323/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_323/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_323/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_323/strided_slice_3StridedSlice4lstm_323/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_323/strided_slice_3/stack:output:0)lstm_323/strided_slice_3/stack_1:output:0)lstm_323/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_323/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_323/transpose_1	Transpose4lstm_323/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_323/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_323/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_107/MatMulMatMul!lstm_323/strided_slice_3:output:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_107/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp.^lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp-^lstm_321/lstm_cell_255/MatMul/ReadVariableOp/^lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp^lstm_321/while.^lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp-^lstm_322/lstm_cell_256/MatMul/ReadVariableOp/^lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp^lstm_322/while.^lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp-^lstm_323/lstm_cell_257/MatMul/ReadVariableOp/^lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp^lstm_323/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2^
-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp-lstm_321/lstm_cell_255/BiasAdd/ReadVariableOp2\
,lstm_321/lstm_cell_255/MatMul/ReadVariableOp,lstm_321/lstm_cell_255/MatMul/ReadVariableOp2`
.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp.lstm_321/lstm_cell_255/MatMul_1/ReadVariableOp2 
lstm_321/whilelstm_321/while2^
-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp-lstm_322/lstm_cell_256/BiasAdd/ReadVariableOp2\
,lstm_322/lstm_cell_256/MatMul/ReadVariableOp,lstm_322/lstm_cell_256/MatMul/ReadVariableOp2`
.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp.lstm_322/lstm_cell_256/MatMul_1/ReadVariableOp2 
lstm_322/whilelstm_322/while2^
-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp-lstm_323/lstm_cell_257/BiasAdd/ReadVariableOp2\
,lstm_323/lstm_cell_257/MatMul/ReadVariableOp,lstm_323/lstm_cell_257/MatMul/ReadVariableOp2`
.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp.lstm_323/lstm_cell_257/MatMul_1/ReadVariableOp2 
lstm_323/whilelstm_323/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1560376
file_prefix/
+savev2_dense_107_kernel_read_readvariableop-
)savev2_dense_107_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_321_lstm_cell_321_kernel_read_readvariableopF
Bsavev2_lstm_321_lstm_cell_321_recurrent_kernel_read_readvariableop:
6savev2_lstm_321_lstm_cell_321_bias_read_readvariableop<
8savev2_lstm_322_lstm_cell_322_kernel_read_readvariableopF
Bsavev2_lstm_322_lstm_cell_322_recurrent_kernel_read_readvariableop:
6savev2_lstm_322_lstm_cell_322_bias_read_readvariableop<
8savev2_lstm_323_lstm_cell_323_kernel_read_readvariableopF
Bsavev2_lstm_323_lstm_cell_323_recurrent_kernel_read_readvariableop:
6savev2_lstm_323_lstm_cell_323_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_107_kernel_m_read_readvariableop4
0savev2_adam_dense_107_bias_m_read_readvariableopC
?savev2_adam_lstm_321_lstm_cell_321_kernel_m_read_readvariableopM
Isavev2_adam_lstm_321_lstm_cell_321_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_321_lstm_cell_321_bias_m_read_readvariableopC
?savev2_adam_lstm_322_lstm_cell_322_kernel_m_read_readvariableopM
Isavev2_adam_lstm_322_lstm_cell_322_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_322_lstm_cell_322_bias_m_read_readvariableopC
?savev2_adam_lstm_323_lstm_cell_323_kernel_m_read_readvariableopM
Isavev2_adam_lstm_323_lstm_cell_323_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_323_lstm_cell_323_bias_m_read_readvariableop6
2savev2_adam_dense_107_kernel_v_read_readvariableop4
0savev2_adam_dense_107_bias_v_read_readvariableopC
?savev2_adam_lstm_321_lstm_cell_321_kernel_v_read_readvariableopM
Isavev2_adam_lstm_321_lstm_cell_321_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_321_lstm_cell_321_bias_v_read_readvariableopC
?savev2_adam_lstm_322_lstm_cell_322_kernel_v_read_readvariableopM
Isavev2_adam_lstm_322_lstm_cell_322_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_322_lstm_cell_322_bias_v_read_readvariableopC
?savev2_adam_lstm_323_lstm_cell_323_kernel_v_read_readvariableopM
Isavev2_adam_lstm_323_lstm_cell_323_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_323_lstm_cell_323_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_107_kernel_read_readvariableop)savev2_dense_107_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_321_lstm_cell_321_kernel_read_readvariableopBsavev2_lstm_321_lstm_cell_321_recurrent_kernel_read_readvariableop6savev2_lstm_321_lstm_cell_321_bias_read_readvariableop8savev2_lstm_322_lstm_cell_322_kernel_read_readvariableopBsavev2_lstm_322_lstm_cell_322_recurrent_kernel_read_readvariableop6savev2_lstm_322_lstm_cell_322_bias_read_readvariableop8savev2_lstm_323_lstm_cell_323_kernel_read_readvariableopBsavev2_lstm_323_lstm_cell_323_recurrent_kernel_read_readvariableop6savev2_lstm_323_lstm_cell_323_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_107_kernel_m_read_readvariableop0savev2_adam_dense_107_bias_m_read_readvariableop?savev2_adam_lstm_321_lstm_cell_321_kernel_m_read_readvariableopIsavev2_adam_lstm_321_lstm_cell_321_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_321_lstm_cell_321_bias_m_read_readvariableop?savev2_adam_lstm_322_lstm_cell_322_kernel_m_read_readvariableopIsavev2_adam_lstm_322_lstm_cell_322_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_322_lstm_cell_322_bias_m_read_readvariableop?savev2_adam_lstm_323_lstm_cell_323_kernel_m_read_readvariableopIsavev2_adam_lstm_323_lstm_cell_323_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_323_lstm_cell_323_bias_m_read_readvariableop2savev2_adam_dense_107_kernel_v_read_readvariableop0savev2_adam_dense_107_bias_v_read_readvariableop?savev2_adam_lstm_321_lstm_cell_321_kernel_v_read_readvariableopIsavev2_adam_lstm_321_lstm_cell_321_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_321_lstm_cell_321_bias_v_read_readvariableop?savev2_adam_lstm_322_lstm_cell_322_kernel_v_read_readvariableopIsavev2_adam_lstm_322_lstm_cell_322_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_322_lstm_cell_322_bias_v_read_readvariableop?savev2_adam_lstm_323_lstm_cell_323_kernel_v_read_readvariableopIsavev2_adam_lstm_323_lstm_cell_323_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_323_lstm_cell_323_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
lstm_322_while_cond_1557842.
*lstm_322_while_lstm_322_while_loop_counter4
0lstm_322_while_lstm_322_while_maximum_iterations
lstm_322_while_placeholder 
lstm_322_while_placeholder_1 
lstm_322_while_placeholder_2 
lstm_322_while_placeholder_30
,lstm_322_while_less_lstm_322_strided_slice_1G
Clstm_322_while_lstm_322_while_cond_1557842___redundant_placeholder0G
Clstm_322_while_lstm_322_while_cond_1557842___redundant_placeholder1G
Clstm_322_while_lstm_322_while_cond_1557842___redundant_placeholder2G
Clstm_322_while_lstm_322_while_cond_1557842___redundant_placeholder3
lstm_322_while_identity
?
lstm_322/while/LessLesslstm_322_while_placeholder,lstm_322_while_less_lstm_322_strided_slice_1*
T0*
_output_shapes
: ]
lstm_322/while/IdentityIdentitylstm_322/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_322_while_identity lstm_322/while/Identity:output:0*(
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
while_body_1558604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_321_while_cond_1557276.
*lstm_321_while_lstm_321_while_loop_counter4
0lstm_321_while_lstm_321_while_maximum_iterations
lstm_321_while_placeholder 
lstm_321_while_placeholder_1 
lstm_321_while_placeholder_2 
lstm_321_while_placeholder_30
,lstm_321_while_less_lstm_321_strided_slice_1G
Clstm_321_while_lstm_321_while_cond_1557276___redundant_placeholder0G
Clstm_321_while_lstm_321_while_cond_1557276___redundant_placeholder1G
Clstm_321_while_lstm_321_while_cond_1557276___redundant_placeholder2G
Clstm_321_while_lstm_321_while_cond_1557276___redundant_placeholder3
lstm_321_while_identity
?
lstm_321/while/LessLesslstm_321_while_placeholder,lstm_321_while_less_lstm_321_strided_slice_1*
T0*
_output_shapes
: ]
lstm_321/while/IdentityIdentitylstm_321/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_321_while_identity lstm_321/while/Identity:output:0*(
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558259
inputs_0?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1558175*
condR
while_cond_1558174*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1558318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_255_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_255_matmul_readvariableop_resource:	?G
4while_lstm_cell_255_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_255_biasadd_readvariableop_resource:	???*while/lstm_cell_255/BiasAdd/ReadVariableOp?)while/lstm_cell_255/MatMul/ReadVariableOp?+while/lstm_cell_255/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_255/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_255/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_255/addAddV2$while/lstm_cell_255/MatMul:product:0&while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_255/BiasAddBiasAddwhile/lstm_cell_255/add:z:02while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_255/splitSplit,while/lstm_cell_255/split/split_dim:output:0$while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_255/SigmoidSigmoid"while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_1Sigmoid"while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mulMul!while/lstm_cell_255/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_255/ReluRelu"while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_1Mulwhile/lstm_cell_255/Sigmoid:y:0&while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/add_1AddV2while/lstm_cell_255/mul:z:0while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_255/Sigmoid_2Sigmoid"while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_255/Relu_1Reluwhile/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_255/mul_2Mul!while/lstm_cell_255/Sigmoid_2:y:0(while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_255/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_255/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_255/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_255/BiasAdd/ReadVariableOp*^while/lstm_cell_255/MatMul/ReadVariableOp,^while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_255_biasadd_readvariableop_resource5while_lstm_cell_255_biasadd_readvariableop_resource_0"n
4while_lstm_cell_255_matmul_1_readvariableop_resource6while_lstm_cell_255_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_255_matmul_readvariableop_resource4while_lstm_cell_255_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_255/BiasAdd/ReadVariableOp*while/lstm_cell_255/BiasAdd/ReadVariableOp2V
)while/lstm_cell_255/MatMul/ReadVariableOp)while/lstm_cell_255/MatMul/ReadVariableOp2Z
+while/lstm_cell_255/MatMul_1/ReadVariableOp+while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_322_layer_call_fn_1558732

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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1556784s
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558688

inputs?
,lstm_cell_255_matmul_readvariableop_resource:	?A
.lstm_cell_255_matmul_1_readvariableop_resource:	d?<
-lstm_cell_255_biasadd_readvariableop_resource:	?
identity??$lstm_cell_255/BiasAdd/ReadVariableOp?#lstm_cell_255/MatMul/ReadVariableOp?%lstm_cell_255/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_255/MatMul/ReadVariableOpReadVariableOp,lstm_cell_255_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_255/MatMulMatMulstrided_slice_2:output:0+lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_255_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_255/MatMul_1MatMulzeros:output:0-lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_255/addAddV2lstm_cell_255/MatMul:product:0 lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_255_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_255/BiasAddBiasAddlstm_cell_255/add:z:0,lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_255/splitSplit&lstm_cell_255/split/split_dim:output:0lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_255/SigmoidSigmoidlstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_1Sigmoidlstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_255/mulMullstm_cell_255/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_255/ReluRelulstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_1Mullstm_cell_255/Sigmoid:y:0 lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_255/add_1AddV2lstm_cell_255/mul:z:0lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_255/Sigmoid_2Sigmoidlstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_255/Relu_1Relulstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_255/mul_2Mullstm_cell_255/Sigmoid_2:y:0"lstm_cell_255/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_255_matmul_readvariableop_resource.lstm_cell_255_matmul_1_readvariableop_resource-lstm_cell_255_biasadd_readvariableop_resource*
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
while_body_1558604*
condR
while_cond_1558603*K
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
NoOpNoOp%^lstm_cell_255/BiasAdd/ReadVariableOp$^lstm_cell_255/MatMul/ReadVariableOp&^lstm_cell_255/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_255/BiasAdd/ReadVariableOp$lstm_cell_255/BiasAdd/ReadVariableOp2J
#lstm_cell_255/MatMul/ReadVariableOp#lstm_cell_255/MatMul/ReadVariableOp2N
%lstm_cell_255/MatMul_1/ReadVariableOp%lstm_cell_255/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1559220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1558174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558174___redundant_placeholder05
1while_while_cond_1558174___redundant_placeholder15
1while_while_cond_1558174___redundant_placeholder25
1while_while_cond_1558174___redundant_placeholder3
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
while_body_1559077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_321_while_body_1557704.
*lstm_321_while_lstm_321_while_loop_counter4
0lstm_321_while_lstm_321_while_maximum_iterations
lstm_321_while_placeholder 
lstm_321_while_placeholder_1 
lstm_321_while_placeholder_2 
lstm_321_while_placeholder_3-
)lstm_321_while_lstm_321_strided_slice_1_0i
elstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0:	?R
?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?M
>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0:	?
lstm_321_while_identity
lstm_321_while_identity_1
lstm_321_while_identity_2
lstm_321_while_identity_3
lstm_321_while_identity_4
lstm_321_while_identity_5+
'lstm_321_while_lstm_321_strided_slice_1g
clstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensorN
;lstm_321_while_lstm_cell_255_matmul_readvariableop_resource:	?P
=lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource:	d?K
<lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource:	???3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp?2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp?4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp?
@lstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_321/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0lstm_321_while_placeholderIlstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOp=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_321/while/lstm_cell_255/MatMulMatMul9lstm_321/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOp?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_321/while/lstm_cell_255/MatMul_1MatMullstm_321_while_placeholder_2<lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_321/while/lstm_cell_255/addAddV2-lstm_321/while/lstm_cell_255/MatMul:product:0/lstm_321/while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOp>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_321/while/lstm_cell_255/BiasAddBiasAdd$lstm_321/while/lstm_cell_255/add:z:0;lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_321/while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_321/while/lstm_cell_255/splitSplit5lstm_321/while/lstm_cell_255/split/split_dim:output:0-lstm_321/while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_321/while/lstm_cell_255/SigmoidSigmoid+lstm_321/while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_321/while/lstm_cell_255/Sigmoid_1Sigmoid+lstm_321/while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_321/while/lstm_cell_255/mulMul*lstm_321/while/lstm_cell_255/Sigmoid_1:y:0lstm_321_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_321/while/lstm_cell_255/ReluRelu+lstm_321/while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/mul_1Mul(lstm_321/while/lstm_cell_255/Sigmoid:y:0/lstm_321/while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/add_1AddV2$lstm_321/while/lstm_cell_255/mul:z:0&lstm_321/while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_321/while/lstm_cell_255/Sigmoid_2Sigmoid+lstm_321/while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_321/while/lstm_cell_255/Relu_1Relu&lstm_321/while/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_321/while/lstm_cell_255/mul_2Mul*lstm_321/while/lstm_cell_255/Sigmoid_2:y:01lstm_321/while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_321/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_321_while_placeholder_1lstm_321_while_placeholder&lstm_321/while/lstm_cell_255/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_321/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_321/while/addAddV2lstm_321_while_placeholderlstm_321/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_321/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_321/while/add_1AddV2*lstm_321_while_lstm_321_while_loop_counterlstm_321/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_321/while/IdentityIdentitylstm_321/while/add_1:z:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_1Identity0lstm_321_while_lstm_321_while_maximum_iterations^lstm_321/while/NoOp*
T0*
_output_shapes
: t
lstm_321/while/Identity_2Identitylstm_321/while/add:z:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_3IdentityClstm_321/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_321/while/NoOp*
T0*
_output_shapes
: ?
lstm_321/while/Identity_4Identity&lstm_321/while/lstm_cell_255/mul_2:z:0^lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_321/while/Identity_5Identity&lstm_321/while/lstm_cell_255/add_1:z:0^lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_321/while/NoOpNoOp4^lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp3^lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp5^lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_321_while_identity lstm_321/while/Identity:output:0"?
lstm_321_while_identity_1"lstm_321/while/Identity_1:output:0"?
lstm_321_while_identity_2"lstm_321/while/Identity_2:output:0"?
lstm_321_while_identity_3"lstm_321/while/Identity_3:output:0"?
lstm_321_while_identity_4"lstm_321/while/Identity_4:output:0"?
lstm_321_while_identity_5"lstm_321/while/Identity_5:output:0"T
'lstm_321_while_lstm_321_strided_slice_1)lstm_321_while_lstm_321_strided_slice_1_0"~
<lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource>lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0"?
=lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource?lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0"|
;lstm_321_while_lstm_cell_255_matmul_readvariableop_resource=lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0"?
clstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensorelstm_321_while_tensorarrayv2read_tensorlistgetitem_lstm_321_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp3lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp2h
2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp2lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp2l
4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp4lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1555467

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
?T
?
*sequential_107_lstm_321_while_body_1554536L
Hsequential_107_lstm_321_while_sequential_107_lstm_321_while_loop_counterR
Nsequential_107_lstm_321_while_sequential_107_lstm_321_while_maximum_iterations-
)sequential_107_lstm_321_while_placeholder/
+sequential_107_lstm_321_while_placeholder_1/
+sequential_107_lstm_321_while_placeholder_2/
+sequential_107_lstm_321_while_placeholder_3K
Gsequential_107_lstm_321_while_sequential_107_lstm_321_strided_slice_1_0?
?sequential_107_lstm_321_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_321_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_107_lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0:	?a
Nsequential_107_lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0:	d?\
Msequential_107_lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0:	?*
&sequential_107_lstm_321_while_identity,
(sequential_107_lstm_321_while_identity_1,
(sequential_107_lstm_321_while_identity_2,
(sequential_107_lstm_321_while_identity_3,
(sequential_107_lstm_321_while_identity_4,
(sequential_107_lstm_321_while_identity_5I
Esequential_107_lstm_321_while_sequential_107_lstm_321_strided_slice_1?
?sequential_107_lstm_321_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_321_tensorarrayunstack_tensorlistfromtensor]
Jsequential_107_lstm_321_while_lstm_cell_255_matmul_readvariableop_resource:	?_
Lsequential_107_lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource:	d?Z
Ksequential_107_lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource:	???Bsequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp?Asequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp?Csequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp?
Osequential_107/lstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_107/lstm_321/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_107_lstm_321_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_321_tensorarrayunstack_tensorlistfromtensor_0)sequential_107_lstm_321_while_placeholderXsequential_107/lstm_321/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOpReadVariableOpLsequential_107_lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_107/lstm_321/while/lstm_cell_255/MatMulMatMulHsequential_107/lstm_321/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOpReadVariableOpNsequential_107_lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_107/lstm_321/while/lstm_cell_255/MatMul_1MatMul+sequential_107_lstm_321_while_placeholder_2Ksequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_107/lstm_321/while/lstm_cell_255/addAddV2<sequential_107/lstm_321/while/lstm_cell_255/MatMul:product:0>sequential_107/lstm_321/while/lstm_cell_255/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOpReadVariableOpMsequential_107_lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_107/lstm_321/while/lstm_cell_255/BiasAddBiasAdd3sequential_107/lstm_321/while/lstm_cell_255/add:z:0Jsequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_107/lstm_321/while/lstm_cell_255/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_107/lstm_321/while/lstm_cell_255/splitSplitDsequential_107/lstm_321/while/lstm_cell_255/split/split_dim:output:0<sequential_107/lstm_321/while/lstm_cell_255/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_107/lstm_321/while/lstm_cell_255/SigmoidSigmoid:sequential_107/lstm_321/while/lstm_cell_255/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_107/lstm_321/while/lstm_cell_255/Sigmoid_1Sigmoid:sequential_107/lstm_321/while/lstm_cell_255/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_107/lstm_321/while/lstm_cell_255/mulMul9sequential_107/lstm_321/while/lstm_cell_255/Sigmoid_1:y:0+sequential_107_lstm_321_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_107/lstm_321/while/lstm_cell_255/ReluRelu:sequential_107/lstm_321/while/lstm_cell_255/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_107/lstm_321/while/lstm_cell_255/mul_1Mul7sequential_107/lstm_321/while/lstm_cell_255/Sigmoid:y:0>sequential_107/lstm_321/while/lstm_cell_255/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_107/lstm_321/while/lstm_cell_255/add_1AddV23sequential_107/lstm_321/while/lstm_cell_255/mul:z:05sequential_107/lstm_321/while/lstm_cell_255/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_107/lstm_321/while/lstm_cell_255/Sigmoid_2Sigmoid:sequential_107/lstm_321/while/lstm_cell_255/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_107/lstm_321/while/lstm_cell_255/Relu_1Relu5sequential_107/lstm_321/while/lstm_cell_255/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_107/lstm_321/while/lstm_cell_255/mul_2Mul9sequential_107/lstm_321/while/lstm_cell_255/Sigmoid_2:y:0@sequential_107/lstm_321/while/lstm_cell_255/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_107/lstm_321/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_107_lstm_321_while_placeholder_1)sequential_107_lstm_321_while_placeholder5sequential_107/lstm_321/while/lstm_cell_255/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_107/lstm_321/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_107/lstm_321/while/addAddV2)sequential_107_lstm_321_while_placeholder,sequential_107/lstm_321/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_107/lstm_321/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_107/lstm_321/while/add_1AddV2Hsequential_107_lstm_321_while_sequential_107_lstm_321_while_loop_counter.sequential_107/lstm_321/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_107/lstm_321/while/IdentityIdentity'sequential_107/lstm_321/while/add_1:z:0#^sequential_107/lstm_321/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_321/while/Identity_1IdentityNsequential_107_lstm_321_while_sequential_107_lstm_321_while_maximum_iterations#^sequential_107/lstm_321/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_321/while/Identity_2Identity%sequential_107/lstm_321/while/add:z:0#^sequential_107/lstm_321/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_321/while/Identity_3IdentityRsequential_107/lstm_321/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_107/lstm_321/while/NoOp*
T0*
_output_shapes
: ?
(sequential_107/lstm_321/while/Identity_4Identity5sequential_107/lstm_321/while/lstm_cell_255/mul_2:z:0#^sequential_107/lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_107/lstm_321/while/Identity_5Identity5sequential_107/lstm_321/while/lstm_cell_255/add_1:z:0#^sequential_107/lstm_321/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_107/lstm_321/while/NoOpNoOpC^sequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOpB^sequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOpD^sequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_107_lstm_321_while_identity/sequential_107/lstm_321/while/Identity:output:0"]
(sequential_107_lstm_321_while_identity_11sequential_107/lstm_321/while/Identity_1:output:0"]
(sequential_107_lstm_321_while_identity_21sequential_107/lstm_321/while/Identity_2:output:0"]
(sequential_107_lstm_321_while_identity_31sequential_107/lstm_321/while/Identity_3:output:0"]
(sequential_107_lstm_321_while_identity_41sequential_107/lstm_321/while/Identity_4:output:0"]
(sequential_107_lstm_321_while_identity_51sequential_107/lstm_321/while/Identity_5:output:0"?
Ksequential_107_lstm_321_while_lstm_cell_255_biasadd_readvariableop_resourceMsequential_107_lstm_321_while_lstm_cell_255_biasadd_readvariableop_resource_0"?
Lsequential_107_lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resourceNsequential_107_lstm_321_while_lstm_cell_255_matmul_1_readvariableop_resource_0"?
Jsequential_107_lstm_321_while_lstm_cell_255_matmul_readvariableop_resourceLsequential_107_lstm_321_while_lstm_cell_255_matmul_readvariableop_resource_0"?
Esequential_107_lstm_321_while_sequential_107_lstm_321_strided_slice_1Gsequential_107_lstm_321_while_sequential_107_lstm_321_strided_slice_1_0"?
?sequential_107_lstm_321_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_321_tensorarrayunstack_tensorlistfromtensor?sequential_107_lstm_321_while_tensorarrayv2read_tensorlistgetitem_sequential_107_lstm_321_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOpBsequential_107/lstm_321/while/lstm_cell_255/BiasAdd/ReadVariableOp2?
Asequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOpAsequential_107/lstm_321/while/lstm_cell_255/MatMul/ReadVariableOp2?
Csequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOpCsequential_107/lstm_321/while/lstm_cell_255/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_322_layer_call_fn_1558699
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1555404|
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
while_cond_1555175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555175___redundant_placeholder05
1while_while_cond_1555175___redundant_placeholder15
1while_while_cond_1555175___redundant_placeholder25
1while_while_cond_1555175___redundant_placeholder3
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
*__inference_lstm_321_layer_call_fn_1558105

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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1556103s
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
while_body_1558791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1556403

inputs>
,lstm_cell_257_matmul_readvariableop_resource:2(@
.lstm_cell_257_matmul_1_readvariableop_resource:
(;
-lstm_cell_257_biasadd_readvariableop_resource:(
identity??$lstm_cell_257/BiasAdd/ReadVariableOp?#lstm_cell_257/MatMul/ReadVariableOp?%lstm_cell_257/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_257/MatMul/ReadVariableOpReadVariableOp,lstm_cell_257_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_257/MatMulMatMulstrided_slice_2:output:0+lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_257_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_257/MatMul_1MatMulzeros:output:0-lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_257/addAddV2lstm_cell_257/MatMul:product:0 lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_257_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_257/BiasAddBiasAddlstm_cell_257/add:z:0,lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_257/splitSplit&lstm_cell_257/split/split_dim:output:0lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_257/SigmoidSigmoidlstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_1Sigmoidlstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_257/mulMullstm_cell_257/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_257/ReluRelulstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_1Mullstm_cell_257/Sigmoid:y:0 lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_257/add_1AddV2lstm_cell_257/mul:z:0lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_257/Sigmoid_2Sigmoidlstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_257/Relu_1Relulstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_257/mul_2Mullstm_cell_257/Sigmoid_2:y:0"lstm_cell_257/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_257_matmul_readvariableop_resource.lstm_cell_257_matmul_1_readvariableop_resource-lstm_cell_257_biasadd_readvariableop_resource*
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
while_body_1556319*
condR
while_cond_1556318*K
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
NoOpNoOp%^lstm_cell_257/BiasAdd/ReadVariableOp$^lstm_cell_257/MatMul/ReadVariableOp&^lstm_cell_257/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_257/BiasAdd/ReadVariableOp$lstm_cell_257/BiasAdd/ReadVariableOp2J
#lstm_cell_257/MatMul/ReadVariableOp#lstm_cell_257/MatMul/ReadVariableOp2N
%lstm_cell_257/MatMul_1/ReadVariableOp%lstm_cell_257/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1559692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1559692___redundant_placeholder05
1while_while_cond_1559692___redundant_placeholder15
1while_while_cond_1559692___redundant_placeholder25
1while_while_cond_1559692___redundant_placeholder3
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
while_body_1556535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1556168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556168___redundant_placeholder05
1while_while_cond_1556168___redundant_placeholder15
1while_while_cond_1556168___redundant_placeholder25
1while_while_cond_1556168___redundant_placeholder3
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
while_body_1556319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1559693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_257_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_257_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_257_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_257_matmul_readvariableop_resource:2(F
4while_lstm_cell_257_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_257_biasadd_readvariableop_resource:(??*while/lstm_cell_257/BiasAdd/ReadVariableOp?)while/lstm_cell_257/MatMul/ReadVariableOp?+while/lstm_cell_257/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_257/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_257_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_257/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_257/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_257_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_257/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_257/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_257/addAddV2$while/lstm_cell_257/MatMul:product:0&while/lstm_cell_257/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_257/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_257_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_257/BiasAddBiasAddwhile/lstm_cell_257/add:z:02while/lstm_cell_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_257/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_257/splitSplit,while/lstm_cell_257/split/split_dim:output:0$while/lstm_cell_257/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_257/SigmoidSigmoid"while/lstm_cell_257/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_1Sigmoid"while/lstm_cell_257/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mulMul!while/lstm_cell_257/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_257/ReluRelu"while/lstm_cell_257/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_1Mulwhile/lstm_cell_257/Sigmoid:y:0&while/lstm_cell_257/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/add_1AddV2while/lstm_cell_257/mul:z:0while/lstm_cell_257/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_257/Sigmoid_2Sigmoid"while/lstm_cell_257/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_257/Relu_1Reluwhile/lstm_cell_257/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_257/mul_2Mul!while/lstm_cell_257/Sigmoid_2:y:0(while/lstm_cell_257/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_257/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_257/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_257/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_257/BiasAdd/ReadVariableOp*^while/lstm_cell_257/MatMul/ReadVariableOp,^while/lstm_cell_257/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_257_biasadd_readvariableop_resource5while_lstm_cell_257_biasadd_readvariableop_resource_0"n
4while_lstm_cell_257_matmul_1_readvariableop_resource6while_lstm_cell_257_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_257_matmul_readvariableop_resource4while_lstm_cell_257_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_257/BiasAdd/ReadVariableOp*while/lstm_cell_257/BiasAdd/ReadVariableOp2V
)while/lstm_cell_257/MatMul/ReadVariableOp)while/lstm_cell_257/MatMul/ReadVariableOp2Z
+while/lstm_cell_257/MatMul_1/ReadVariableOp+while/lstm_cell_257/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1555817

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
while_cond_1555875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555875___redundant_placeholder05
1while_while_cond_1555875___redundant_placeholder15
1while_while_cond_1555875___redundant_placeholder25
1while_while_cond_1555875___redundant_placeholder3
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
while_body_1556169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_256_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_256_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_256_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_256_matmul_readvariableop_resource:	d?G
4while_lstm_cell_256_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_256_biasadd_readvariableop_resource:	???*while/lstm_cell_256/BiasAdd/ReadVariableOp?)while/lstm_cell_256/MatMul/ReadVariableOp?+while/lstm_cell_256/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_256/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_256_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_256/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_256/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_256/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_256_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_256/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_256/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_256/addAddV2$while/lstm_cell_256/MatMul:product:0&while/lstm_cell_256/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_256/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_256_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_256/BiasAddBiasAddwhile/lstm_cell_256/add:z:02while/lstm_cell_256/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_256/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_256/splitSplit,while/lstm_cell_256/split/split_dim:output:0$while/lstm_cell_256/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_256/SigmoidSigmoid"while/lstm_cell_256/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_1Sigmoid"while/lstm_cell_256/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mulMul!while/lstm_cell_256/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_256/ReluRelu"while/lstm_cell_256/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_1Mulwhile/lstm_cell_256/Sigmoid:y:0&while/lstm_cell_256/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/add_1AddV2while/lstm_cell_256/mul:z:0while/lstm_cell_256/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_256/Sigmoid_2Sigmoid"while/lstm_cell_256/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_256/Relu_1Reluwhile/lstm_cell_256/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_256/mul_2Mul!while/lstm_cell_256/Sigmoid_2:y:0(while/lstm_cell_256/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_256/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_256/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_256/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_256/BiasAdd/ReadVariableOp*^while/lstm_cell_256/MatMul/ReadVariableOp,^while/lstm_cell_256/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_256_biasadd_readvariableop_resource5while_lstm_cell_256_biasadd_readvariableop_resource_0"n
4while_lstm_cell_256_matmul_1_readvariableop_resource6while_lstm_cell_256_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_256_matmul_readvariableop_resource4while_lstm_cell_256_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_256/BiasAdd/ReadVariableOp*while/lstm_cell_256/BiasAdd/ReadVariableOp2V
)while/lstm_cell_256/MatMul/ReadVariableOp)while/lstm_cell_256/MatMul/ReadVariableOp2Z
+while/lstm_cell_256/MatMul_1/ReadVariableOp+while/lstm_cell_256/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_107_lstm_322_while_cond_1554674L
Hsequential_107_lstm_322_while_sequential_107_lstm_322_while_loop_counterR
Nsequential_107_lstm_322_while_sequential_107_lstm_322_while_maximum_iterations-
)sequential_107_lstm_322_while_placeholder/
+sequential_107_lstm_322_while_placeholder_1/
+sequential_107_lstm_322_while_placeholder_2/
+sequential_107_lstm_322_while_placeholder_3N
Jsequential_107_lstm_322_while_less_sequential_107_lstm_322_strided_slice_1e
asequential_107_lstm_322_while_sequential_107_lstm_322_while_cond_1554674___redundant_placeholder0e
asequential_107_lstm_322_while_sequential_107_lstm_322_while_cond_1554674___redundant_placeholder1e
asequential_107_lstm_322_while_sequential_107_lstm_322_while_cond_1554674___redundant_placeholder2e
asequential_107_lstm_322_while_sequential_107_lstm_322_while_cond_1554674___redundant_placeholder3*
&sequential_107_lstm_322_while_identity
?
"sequential_107/lstm_322/while/LessLess)sequential_107_lstm_322_while_placeholderJsequential_107_lstm_322_while_less_sequential_107_lstm_322_strided_slice_1*
T0*
_output_shapes
: {
&sequential_107/lstm_322/while/IdentityIdentity&sequential_107/lstm_322/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_107_lstm_322_while_identity/sequential_107/lstm_322/while/Identity:output:0*(
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
lstm_321_input;
 serving_default_lstm_321_input:0?????????=
	dense_1070
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
2dense_107/kernel
:2dense_107/bias
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
0:.	?2lstm_321/lstm_cell_321/kernel
::8	d?2'lstm_321/lstm_cell_321/recurrent_kernel
*:(?2lstm_321/lstm_cell_321/bias
0:.	d?2lstm_322/lstm_cell_322/kernel
::8	2?2'lstm_322/lstm_cell_322/recurrent_kernel
*:(?2lstm_322/lstm_cell_322/bias
/:-2(2lstm_323/lstm_cell_323/kernel
9:7
(2'lstm_323/lstm_cell_323/recurrent_kernel
):'(2lstm_323/lstm_cell_323/bias
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
2Adam/dense_107/kernel/m
!:2Adam/dense_107/bias/m
5:3	?2$Adam/lstm_321/lstm_cell_321/kernel/m
?:=	d?2.Adam/lstm_321/lstm_cell_321/recurrent_kernel/m
/:-?2"Adam/lstm_321/lstm_cell_321/bias/m
5:3	d?2$Adam/lstm_322/lstm_cell_322/kernel/m
?:=	2?2.Adam/lstm_322/lstm_cell_322/recurrent_kernel/m
/:-?2"Adam/lstm_322/lstm_cell_322/bias/m
4:22(2$Adam/lstm_323/lstm_cell_323/kernel/m
>:<
(2.Adam/lstm_323/lstm_cell_323/recurrent_kernel/m
.:,(2"Adam/lstm_323/lstm_cell_323/bias/m
':%
2Adam/dense_107/kernel/v
!:2Adam/dense_107/bias/v
5:3	?2$Adam/lstm_321/lstm_cell_321/kernel/v
?:=	d?2.Adam/lstm_321/lstm_cell_321/recurrent_kernel/v
/:-?2"Adam/lstm_321/lstm_cell_321/bias/v
5:3	d?2$Adam/lstm_322/lstm_cell_322/kernel/v
?:=	2?2.Adam/lstm_322/lstm_cell_322/recurrent_kernel/v
/:-?2"Adam/lstm_322/lstm_cell_322/bias/v
4:22(2$Adam/lstm_323/lstm_cell_323/kernel/v
>:<
(2.Adam/lstm_323/lstm_cell_323/recurrent_kernel/v
.:,(2"Adam/lstm_323/lstm_cell_323/bias/v
?2?
0__inference_sequential_107_layer_call_fn_1556453
0__inference_sequential_107_layer_call_fn_1557191
0__inference_sequential_107_layer_call_fn_1557218
0__inference_sequential_107_layer_call_fn_1557069?
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557645
K__inference_sequential_107_layer_call_and_return_conditional_losses_1558072
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557099
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557129?
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
"__inference__wrapped_model_1554904lstm_321_input"?
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
*__inference_lstm_321_layer_call_fn_1558083
*__inference_lstm_321_layer_call_fn_1558094
*__inference_lstm_321_layer_call_fn_1558105
*__inference_lstm_321_layer_call_fn_1558116?
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558259
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558402
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558545
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558688?
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
*__inference_lstm_322_layer_call_fn_1558699
*__inference_lstm_322_layer_call_fn_1558710
*__inference_lstm_322_layer_call_fn_1558721
*__inference_lstm_322_layer_call_fn_1558732?
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1558875
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559018
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559161
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559304?
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
*__inference_lstm_323_layer_call_fn_1559315
*__inference_lstm_323_layer_call_fn_1559326
*__inference_lstm_323_layer_call_fn_1559337
*__inference_lstm_323_layer_call_fn_1559348?
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559491
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559634
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559777
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559920?
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
+__inference_dense_107_layer_call_fn_1559929?
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1559939?
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
%__inference_signature_wrapper_1557164lstm_321_input"?
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
/__inference_lstm_cell_255_layer_call_fn_1559956
/__inference_lstm_cell_255_layer_call_fn_1559973?
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560005
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560037?
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
/__inference_lstm_cell_256_layer_call_fn_1560054
/__inference_lstm_cell_256_layer_call_fn_1560071?
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560103
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560135?
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
/__inference_lstm_cell_257_layer_call_fn_1560152
/__inference_lstm_cell_257_layer_call_fn_1560169?
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560201
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560233?
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
"__inference__wrapped_model_1554904?-./012345!";?8
1?.
,?)
lstm_321_input?????????
? "5?2
0
	dense_107#? 
	dense_107??????????
F__inference_dense_107_layer_call_and_return_conditional_losses_1559939\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_107_layer_call_fn_1559929O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558259?-./O?L
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558402?-./O?L
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558545q-./??<
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
E__inference_lstm_321_layer_call_and_return_conditional_losses_1558688q-./??<
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
*__inference_lstm_321_layer_call_fn_1558083}-./O?L
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
*__inference_lstm_321_layer_call_fn_1558094}-./O?L
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
*__inference_lstm_321_layer_call_fn_1558105d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_321_layer_call_fn_1558116d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_322_layer_call_and_return_conditional_losses_1558875?012O?L
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559018?012O?L
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559161q012??<
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
E__inference_lstm_322_layer_call_and_return_conditional_losses_1559304q012??<
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
*__inference_lstm_322_layer_call_fn_1558699}012O?L
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
*__inference_lstm_322_layer_call_fn_1558710}012O?L
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
*__inference_lstm_322_layer_call_fn_1558721d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_322_layer_call_fn_1558732d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559491}345O?L
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559634}345O?L
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559777m345??<
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
E__inference_lstm_323_layer_call_and_return_conditional_losses_1559920m345??<
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
*__inference_lstm_323_layer_call_fn_1559315p345O?L
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
*__inference_lstm_323_layer_call_fn_1559326p345O?L
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
*__inference_lstm_323_layer_call_fn_1559337`345??<
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
*__inference_lstm_323_layer_call_fn_1559348`345??<
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560005?-./??}
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
J__inference_lstm_cell_255_layer_call_and_return_conditional_losses_1560037?-./??}
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
/__inference_lstm_cell_255_layer_call_fn_1559956?-./??}
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
/__inference_lstm_cell_255_layer_call_fn_1559973?-./??}
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560103?012??}
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
J__inference_lstm_cell_256_layer_call_and_return_conditional_losses_1560135?012??}
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
/__inference_lstm_cell_256_layer_call_fn_1560054?012??}
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
/__inference_lstm_cell_256_layer_call_fn_1560071?012??}
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560201?345??}
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
J__inference_lstm_cell_257_layer_call_and_return_conditional_losses_1560233?345??}
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
/__inference_lstm_cell_257_layer_call_fn_1560152?345??}
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
/__inference_lstm_cell_257_layer_call_fn_1560169?345??}
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557099y-./012345!"C?@
9?6
,?)
lstm_321_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557129y-./012345!"C?@
9?6
,?)
lstm_321_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_107_layer_call_and_return_conditional_losses_1557645q-./012345!";?8
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
K__inference_sequential_107_layer_call_and_return_conditional_losses_1558072q-./012345!";?8
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
0__inference_sequential_107_layer_call_fn_1556453l-./012345!"C?@
9?6
,?)
lstm_321_input?????????
p 

 
? "???????????
0__inference_sequential_107_layer_call_fn_1557069l-./012345!"C?@
9?6
,?)
lstm_321_input?????????
p

 
? "???????????
0__inference_sequential_107_layer_call_fn_1557191d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_107_layer_call_fn_1557218d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1557164?-./012345!"M?J
? 
C?@
>
lstm_321_input,?)
lstm_321_input?????????"5?2
0
	dense_107#? 
	dense_107?????????