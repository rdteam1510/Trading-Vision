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
dense_206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_206/kernel
u
$dense_206/kernel/Read/ReadVariableOpReadVariableOpdense_206/kernel*
_output_shapes

:
*
dtype0
t
dense_206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_206/bias
m
"dense_206/bias/Read/ReadVariableOpReadVariableOpdense_206/bias*
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
lstm_618/lstm_cell_618/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_618/lstm_cell_618/kernel
?
1lstm_618/lstm_cell_618/kernel/Read/ReadVariableOpReadVariableOplstm_618/lstm_cell_618/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_618/lstm_cell_618/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_618/lstm_cell_618/recurrent_kernel
?
;lstm_618/lstm_cell_618/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_618/lstm_cell_618/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_618/lstm_cell_618/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_618/lstm_cell_618/bias
?
/lstm_618/lstm_cell_618/bias/Read/ReadVariableOpReadVariableOplstm_618/lstm_cell_618/bias*
_output_shapes	
:?*
dtype0
?
lstm_619/lstm_cell_619/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_619/lstm_cell_619/kernel
?
1lstm_619/lstm_cell_619/kernel/Read/ReadVariableOpReadVariableOplstm_619/lstm_cell_619/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_619/lstm_cell_619/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_619/lstm_cell_619/recurrent_kernel
?
;lstm_619/lstm_cell_619/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_619/lstm_cell_619/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_619/lstm_cell_619/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_619/lstm_cell_619/bias
?
/lstm_619/lstm_cell_619/bias/Read/ReadVariableOpReadVariableOplstm_619/lstm_cell_619/bias*
_output_shapes	
:?*
dtype0
?
lstm_620/lstm_cell_620/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_620/lstm_cell_620/kernel
?
1lstm_620/lstm_cell_620/kernel/Read/ReadVariableOpReadVariableOplstm_620/lstm_cell_620/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_620/lstm_cell_620/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_620/lstm_cell_620/recurrent_kernel
?
;lstm_620/lstm_cell_620/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_620/lstm_cell_620/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_620/lstm_cell_620/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_620/lstm_cell_620/bias
?
/lstm_620/lstm_cell_620/bias/Read/ReadVariableOpReadVariableOplstm_620/lstm_cell_620/bias*
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
Adam/dense_206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_206/kernel/m
?
+Adam/dense_206/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_206/bias/m
{
)Adam/dense_206/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_618/lstm_cell_618/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_618/lstm_cell_618/kernel/m
?
8Adam/lstm_618/lstm_cell_618/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_618/lstm_cell_618/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_618/lstm_cell_618/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_618/lstm_cell_618/recurrent_kernel/m
?
BAdam/lstm_618/lstm_cell_618/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_618/lstm_cell_618/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_618/lstm_cell_618/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_618/lstm_cell_618/bias/m
?
6Adam/lstm_618/lstm_cell_618/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_618/lstm_cell_618/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_619/lstm_cell_619/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_619/lstm_cell_619/kernel/m
?
8Adam/lstm_619/lstm_cell_619/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_619/lstm_cell_619/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_619/lstm_cell_619/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_619/lstm_cell_619/recurrent_kernel/m
?
BAdam/lstm_619/lstm_cell_619/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_619/lstm_cell_619/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_619/lstm_cell_619/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_619/lstm_cell_619/bias/m
?
6Adam/lstm_619/lstm_cell_619/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_619/lstm_cell_619/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_620/lstm_cell_620/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_620/lstm_cell_620/kernel/m
?
8Adam/lstm_620/lstm_cell_620/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_620/lstm_cell_620/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_620/lstm_cell_620/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_620/lstm_cell_620/recurrent_kernel/m
?
BAdam/lstm_620/lstm_cell_620/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_620/lstm_cell_620/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_620/lstm_cell_620/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_620/lstm_cell_620/bias/m
?
6Adam/lstm_620/lstm_cell_620/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_620/lstm_cell_620/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_206/kernel/v
?
+Adam/dense_206/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_206/bias/v
{
)Adam/dense_206/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_618/lstm_cell_618/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_618/lstm_cell_618/kernel/v
?
8Adam/lstm_618/lstm_cell_618/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_618/lstm_cell_618/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_618/lstm_cell_618/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_618/lstm_cell_618/recurrent_kernel/v
?
BAdam/lstm_618/lstm_cell_618/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_618/lstm_cell_618/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_618/lstm_cell_618/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_618/lstm_cell_618/bias/v
?
6Adam/lstm_618/lstm_cell_618/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_618/lstm_cell_618/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_619/lstm_cell_619/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_619/lstm_cell_619/kernel/v
?
8Adam/lstm_619/lstm_cell_619/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_619/lstm_cell_619/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_619/lstm_cell_619/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_619/lstm_cell_619/recurrent_kernel/v
?
BAdam/lstm_619/lstm_cell_619/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_619/lstm_cell_619/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_619/lstm_cell_619/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_619/lstm_cell_619/bias/v
?
6Adam/lstm_619/lstm_cell_619/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_619/lstm_cell_619/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_620/lstm_cell_620/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_620/lstm_cell_620/kernel/v
?
8Adam/lstm_620/lstm_cell_620/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_620/lstm_cell_620/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_620/lstm_cell_620/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_620/lstm_cell_620/recurrent_kernel/v
?
BAdam/lstm_620/lstm_cell_620/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_620/lstm_cell_620/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_620/lstm_cell_620/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_620/lstm_cell_620/bias/v
?
6Adam/lstm_620/lstm_cell_620/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_620/lstm_cell_620/bias/v*
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
VARIABLE_VALUEdense_206/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_206/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_618/lstm_cell_618/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_618/lstm_cell_618/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_618/lstm_cell_618/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_619/lstm_cell_619/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_619/lstm_cell_619/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_619/lstm_cell_619/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_620/lstm_cell_620/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_620/lstm_cell_620/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_620/lstm_cell_620/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_206/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_618/lstm_cell_618/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_618/lstm_cell_618/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_618/lstm_cell_618/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_619/lstm_cell_619/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_619/lstm_cell_619/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_619/lstm_cell_619/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_620/lstm_cell_620/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_620/lstm_cell_620/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_620/lstm_cell_620/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_206/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_618/lstm_cell_618/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_618/lstm_cell_618/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_618/lstm_cell_618/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_619/lstm_cell_619/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_619/lstm_cell_619/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_619/lstm_cell_619/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_620/lstm_cell_620/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_620/lstm_cell_620/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_620/lstm_cell_620/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_618_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_618_inputlstm_618/lstm_cell_618/kernel'lstm_618/lstm_cell_618/recurrent_kernellstm_618/lstm_cell_618/biaslstm_619/lstm_cell_619/kernel'lstm_619/lstm_cell_619/recurrent_kernellstm_619/lstm_cell_619/biaslstm_620/lstm_cell_620/kernel'lstm_620/lstm_cell_620/recurrent_kernellstm_620/lstm_cell_620/biasdense_206/kerneldense_206/bias*
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
%__inference_signature_wrapper_3608529
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_206/kernel/Read/ReadVariableOp"dense_206/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_618/lstm_cell_618/kernel/Read/ReadVariableOp;lstm_618/lstm_cell_618/recurrent_kernel/Read/ReadVariableOp/lstm_618/lstm_cell_618/bias/Read/ReadVariableOp1lstm_619/lstm_cell_619/kernel/Read/ReadVariableOp;lstm_619/lstm_cell_619/recurrent_kernel/Read/ReadVariableOp/lstm_619/lstm_cell_619/bias/Read/ReadVariableOp1lstm_620/lstm_cell_620/kernel/Read/ReadVariableOp;lstm_620/lstm_cell_620/recurrent_kernel/Read/ReadVariableOp/lstm_620/lstm_cell_620/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_206/kernel/m/Read/ReadVariableOp)Adam/dense_206/bias/m/Read/ReadVariableOp8Adam/lstm_618/lstm_cell_618/kernel/m/Read/ReadVariableOpBAdam/lstm_618/lstm_cell_618/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_618/lstm_cell_618/bias/m/Read/ReadVariableOp8Adam/lstm_619/lstm_cell_619/kernel/m/Read/ReadVariableOpBAdam/lstm_619/lstm_cell_619/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_619/lstm_cell_619/bias/m/Read/ReadVariableOp8Adam/lstm_620/lstm_cell_620/kernel/m/Read/ReadVariableOpBAdam/lstm_620/lstm_cell_620/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_620/lstm_cell_620/bias/m/Read/ReadVariableOp+Adam/dense_206/kernel/v/Read/ReadVariableOp)Adam/dense_206/bias/v/Read/ReadVariableOp8Adam/lstm_618/lstm_cell_618/kernel/v/Read/ReadVariableOpBAdam/lstm_618/lstm_cell_618/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_618/lstm_cell_618/bias/v/Read/ReadVariableOp8Adam/lstm_619/lstm_cell_619/kernel/v/Read/ReadVariableOpBAdam/lstm_619/lstm_cell_619/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_619/lstm_cell_619/bias/v/Read/ReadVariableOp8Adam/lstm_620/lstm_cell_620/kernel/v/Read/ReadVariableOpBAdam/lstm_620/lstm_cell_620/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_620/lstm_cell_620/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3611741
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_206/kerneldense_206/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_618/lstm_cell_618/kernel'lstm_618/lstm_cell_618/recurrent_kernellstm_618/lstm_cell_618/biaslstm_619/lstm_cell_619/kernel'lstm_619/lstm_cell_619/recurrent_kernellstm_619/lstm_cell_619/biaslstm_620/lstm_cell_620/kernel'lstm_620/lstm_cell_620/recurrent_kernellstm_620/lstm_cell_620/biastotalcountAdam/dense_206/kernel/mAdam/dense_206/bias/m$Adam/lstm_618/lstm_cell_618/kernel/m.Adam/lstm_618/lstm_cell_618/recurrent_kernel/m"Adam/lstm_618/lstm_cell_618/bias/m$Adam/lstm_619/lstm_cell_619/kernel/m.Adam/lstm_619/lstm_cell_619/recurrent_kernel/m"Adam/lstm_619/lstm_cell_619/bias/m$Adam/lstm_620/lstm_cell_620/kernel/m.Adam/lstm_620/lstm_cell_620/recurrent_kernel/m"Adam/lstm_620/lstm_cell_620/bias/mAdam/dense_206/kernel/vAdam/dense_206/bias/v$Adam/lstm_618/lstm_cell_618/kernel/v.Adam/lstm_618/lstm_cell_618/recurrent_kernel/v"Adam/lstm_618/lstm_cell_618/bias/v$Adam/lstm_619/lstm_cell_619/kernel/v.Adam/lstm_619/lstm_cell_619/recurrent_kernel/v"Adam/lstm_619/lstm_cell_619/bias/v$Adam/lstm_620/lstm_cell_620/kernel/v.Adam/lstm_620/lstm_cell_620/recurrent_kernel/v"Adam/lstm_620/lstm_cell_620/bias/v*4
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
#__inference__traced_restore_3611871??+
?#
?
while_body_3607241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_596_3607265_0:2(/
while_lstm_cell_596_3607267_0:
(+
while_lstm_cell_596_3607269_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_596_3607265:2(-
while_lstm_cell_596_3607267:
()
while_lstm_cell_596_3607269:(??+while/lstm_cell_596/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_596/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_596_3607265_0while_lstm_cell_596_3607267_0while_lstm_cell_596_3607269_0*
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607182?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_596/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_596/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_596/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_596/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_596_3607265while_lstm_cell_596_3607265_0"<
while_lstm_cell_596_3607267while_lstm_cell_596_3607267_0"<
while_lstm_cell_596_3607269while_lstm_cell_596_3607269_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_596/StatefulPartitionedCall+while/lstm_cell_596/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3610915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3606700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_595_3606724_0:	d?0
while_lstm_cell_595_3606726_0:	2?,
while_lstm_cell_595_3606728_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_595_3606724:	d?.
while_lstm_cell_595_3606726:	2?*
while_lstm_cell_595_3606728:	???+while/lstm_cell_595/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_595/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_595_3606724_0while_lstm_cell_595_3606726_0while_lstm_cell_595_3606728_0*
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606686?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_595/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_595/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_595/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_595/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_595_3606724while_lstm_cell_595_3606724_0"<
while_lstm_cell_595_3606726while_lstm_cell_595_3606726_0"<
while_lstm_cell_595_3606728while_lstm_cell_595_3606728_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_595/StatefulPartitionedCall+while/lstm_cell_595/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3607240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607240___redundant_placeholder05
1while_while_cond_3607240___redundant_placeholder15
1while_while_cond_3607240___redundant_placeholder25
1while_while_cond_3607240___redundant_placeholder3
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
while_body_3609683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_206_layer_call_fn_3608434
lstm_618_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_618_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608382o
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
_user_specified_namelstm_618_input
?
?
*__inference_lstm_619_layer_call_fn_3610075
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3606960|
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
?#
?
while_body_3606350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_594_3606374_0:	?0
while_lstm_cell_594_3606376_0:	d?,
while_lstm_cell_594_3606378_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_594_3606374:	?.
while_lstm_cell_594_3606376:	d?*
while_lstm_cell_594_3606378:	???+while/lstm_cell_594/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_594/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_594_3606374_0while_lstm_cell_594_3606376_0while_lstm_cell_594_3606378_0*
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606336?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_594/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_594/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_594/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_594/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_594_3606374while_lstm_cell_594_3606374_0"<
while_lstm_cell_594_3606376while_lstm_cell_594_3606376_0"<
while_lstm_cell_594_3606378while_lstm_cell_594_3606378_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_594/StatefulPartitionedCall+while/lstm_cell_594/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3607899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607899___redundant_placeholder05
1while_while_cond_3607899___redundant_placeholder15
1while_while_cond_3607899___redundant_placeholder25
1while_while_cond_3607899___redundant_placeholder3
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
*__inference_lstm_620_layer_call_fn_3610680
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607119o
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611402

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
while_body_3606541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_594_3606565_0:	?0
while_lstm_cell_594_3606567_0:	d?,
while_lstm_cell_594_3606569_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_594_3606565:	?.
while_lstm_cell_594_3606567:	d?*
while_lstm_cell_594_3606569:	???+while/lstm_cell_594/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_594/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_594_3606565_0while_lstm_cell_594_3606567_0while_lstm_cell_594_3606569_0*
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606482?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_594/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_594/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_594/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_594/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_594_3606565while_lstm_cell_594_3606565_0"<
while_lstm_cell_594_3606567while_lstm_cell_594_3606567_0"<
while_lstm_cell_594_3606569while_lstm_cell_594_3606569_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_594/StatefulPartitionedCall+while/lstm_cell_594/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609437

inputsH
5lstm_618_lstm_cell_594_matmul_readvariableop_resource:	?J
7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource:	d?E
6lstm_618_lstm_cell_594_biasadd_readvariableop_resource:	?H
5lstm_619_lstm_cell_595_matmul_readvariableop_resource:	d?J
7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource:	2?E
6lstm_619_lstm_cell_595_biasadd_readvariableop_resource:	?G
5lstm_620_lstm_cell_596_matmul_readvariableop_resource:2(I
7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource:
(D
6lstm_620_lstm_cell_596_biasadd_readvariableop_resource:(:
(dense_206_matmul_readvariableop_resource:
7
)dense_206_biasadd_readvariableop_resource:
identity?? dense_206/BiasAdd/ReadVariableOp?dense_206/MatMul/ReadVariableOp?-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp?,lstm_618/lstm_cell_594/MatMul/ReadVariableOp?.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp?lstm_618/while?-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp?,lstm_619/lstm_cell_595/MatMul/ReadVariableOp?.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp?lstm_619/while?-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp?,lstm_620/lstm_cell_596/MatMul/ReadVariableOp?.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp?lstm_620/whileD
lstm_618/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_618/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_618/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_618/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_sliceStridedSlicelstm_618/Shape:output:0%lstm_618/strided_slice/stack:output:0'lstm_618/strided_slice/stack_1:output:0'lstm_618/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_618/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_618/zeros/packedPacklstm_618/strided_slice:output:0 lstm_618/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_618/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_618/zerosFilllstm_618/zeros/packed:output:0lstm_618/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_618/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_618/zeros_1/packedPacklstm_618/strided_slice:output:0"lstm_618/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_618/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_618/zeros_1Fill lstm_618/zeros_1/packed:output:0lstm_618/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_618/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_618/transpose	Transposeinputs lstm_618/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_618/Shape_1Shapelstm_618/transpose:y:0*
T0*
_output_shapes
:h
lstm_618/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_618/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_1StridedSlicelstm_618/Shape_1:output:0'lstm_618/strided_slice_1/stack:output:0)lstm_618/strided_slice_1/stack_1:output:0)lstm_618/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_618/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_618/TensorArrayV2TensorListReserve-lstm_618/TensorArrayV2/element_shape:output:0!lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_618/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_618/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_618/transpose:y:0Glstm_618/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_618/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_618/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_2StridedSlicelstm_618/transpose:y:0'lstm_618/strided_slice_2/stack:output:0)lstm_618/strided_slice_2/stack_1:output:0)lstm_618/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_618/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp5lstm_618_lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_618/lstm_cell_594/MatMulMatMul!lstm_618/strided_slice_2:output:04lstm_618/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_618/lstm_cell_594/MatMul_1MatMullstm_618/zeros:output:06lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_618/lstm_cell_594/addAddV2'lstm_618/lstm_cell_594/MatMul:product:0)lstm_618/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp6lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_618/lstm_cell_594/BiasAddBiasAddlstm_618/lstm_cell_594/add:z:05lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_618/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_618/lstm_cell_594/splitSplit/lstm_618/lstm_cell_594/split/split_dim:output:0'lstm_618/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_618/lstm_cell_594/SigmoidSigmoid%lstm_618/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_618/lstm_cell_594/Sigmoid_1Sigmoid%lstm_618/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mulMul$lstm_618/lstm_cell_594/Sigmoid_1:y:0lstm_618/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_618/lstm_cell_594/ReluRelu%lstm_618/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mul_1Mul"lstm_618/lstm_cell_594/Sigmoid:y:0)lstm_618/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/add_1AddV2lstm_618/lstm_cell_594/mul:z:0 lstm_618/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_618/lstm_cell_594/Sigmoid_2Sigmoid%lstm_618/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_618/lstm_cell_594/Relu_1Relu lstm_618/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mul_2Mul$lstm_618/lstm_cell_594/Sigmoid_2:y:0+lstm_618/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_618/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_618/TensorArrayV2_1TensorListReserve/lstm_618/TensorArrayV2_1/element_shape:output:0!lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_618/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_618/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_618/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_618/whileWhile$lstm_618/while/loop_counter:output:0*lstm_618/while/maximum_iterations:output:0lstm_618/time:output:0!lstm_618/TensorArrayV2_1:handle:0lstm_618/zeros:output:0lstm_618/zeros_1:output:0!lstm_618/strided_slice_1:output:0@lstm_618/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_618_lstm_cell_594_matmul_readvariableop_resource7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource6lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
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
lstm_618_while_body_3609069*'
condR
lstm_618_while_cond_3609068*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_618/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_618/TensorArrayV2Stack/TensorListStackTensorListStacklstm_618/while:output:3Blstm_618/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_618/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_618/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_3StridedSlice4lstm_618/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_618/strided_slice_3/stack:output:0)lstm_618/strided_slice_3/stack_1:output:0)lstm_618/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_618/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_618/transpose_1	Transpose4lstm_618/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_618/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_618/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_619/ShapeShapelstm_618/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_619/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_619/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_619/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_sliceStridedSlicelstm_619/Shape:output:0%lstm_619/strided_slice/stack:output:0'lstm_619/strided_slice/stack_1:output:0'lstm_619/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_619/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_619/zeros/packedPacklstm_619/strided_slice:output:0 lstm_619/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_619/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_619/zerosFilllstm_619/zeros/packed:output:0lstm_619/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_619/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_619/zeros_1/packedPacklstm_619/strided_slice:output:0"lstm_619/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_619/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_619/zeros_1Fill lstm_619/zeros_1/packed:output:0lstm_619/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_619/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_619/transpose	Transposelstm_618/transpose_1:y:0 lstm_619/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_619/Shape_1Shapelstm_619/transpose:y:0*
T0*
_output_shapes
:h
lstm_619/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_619/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_1StridedSlicelstm_619/Shape_1:output:0'lstm_619/strided_slice_1/stack:output:0)lstm_619/strided_slice_1/stack_1:output:0)lstm_619/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_619/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_619/TensorArrayV2TensorListReserve-lstm_619/TensorArrayV2/element_shape:output:0!lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_619/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_619/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_619/transpose:y:0Glstm_619/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_619/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_619/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_2StridedSlicelstm_619/transpose:y:0'lstm_619/strided_slice_2/stack:output:0)lstm_619/strided_slice_2/stack_1:output:0)lstm_619/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_619/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp5lstm_619_lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_619/lstm_cell_595/MatMulMatMul!lstm_619/strided_slice_2:output:04lstm_619/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_619/lstm_cell_595/MatMul_1MatMullstm_619/zeros:output:06lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_619/lstm_cell_595/addAddV2'lstm_619/lstm_cell_595/MatMul:product:0)lstm_619/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp6lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_619/lstm_cell_595/BiasAddBiasAddlstm_619/lstm_cell_595/add:z:05lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_619/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_619/lstm_cell_595/splitSplit/lstm_619/lstm_cell_595/split/split_dim:output:0'lstm_619/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_619/lstm_cell_595/SigmoidSigmoid%lstm_619/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_619/lstm_cell_595/Sigmoid_1Sigmoid%lstm_619/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mulMul$lstm_619/lstm_cell_595/Sigmoid_1:y:0lstm_619/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_619/lstm_cell_595/ReluRelu%lstm_619/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mul_1Mul"lstm_619/lstm_cell_595/Sigmoid:y:0)lstm_619/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/add_1AddV2lstm_619/lstm_cell_595/mul:z:0 lstm_619/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_619/lstm_cell_595/Sigmoid_2Sigmoid%lstm_619/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_619/lstm_cell_595/Relu_1Relu lstm_619/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mul_2Mul$lstm_619/lstm_cell_595/Sigmoid_2:y:0+lstm_619/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_619/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_619/TensorArrayV2_1TensorListReserve/lstm_619/TensorArrayV2_1/element_shape:output:0!lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_619/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_619/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_619/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_619/whileWhile$lstm_619/while/loop_counter:output:0*lstm_619/while/maximum_iterations:output:0lstm_619/time:output:0!lstm_619/TensorArrayV2_1:handle:0lstm_619/zeros:output:0lstm_619/zeros_1:output:0!lstm_619/strided_slice_1:output:0@lstm_619/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_619_lstm_cell_595_matmul_readvariableop_resource7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource6lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
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
lstm_619_while_body_3609208*'
condR
lstm_619_while_cond_3609207*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_619/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_619/TensorArrayV2Stack/TensorListStackTensorListStacklstm_619/while:output:3Blstm_619/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_619/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_619/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_3StridedSlice4lstm_619/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_619/strided_slice_3/stack:output:0)lstm_619/strided_slice_3/stack_1:output:0)lstm_619/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_619/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_619/transpose_1	Transpose4lstm_619/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_619/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_619/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_620/ShapeShapelstm_619/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_620/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_620/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_620/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_sliceStridedSlicelstm_620/Shape:output:0%lstm_620/strided_slice/stack:output:0'lstm_620/strided_slice/stack_1:output:0'lstm_620/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_620/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_620/zeros/packedPacklstm_620/strided_slice:output:0 lstm_620/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_620/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_620/zerosFilllstm_620/zeros/packed:output:0lstm_620/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_620/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_620/zeros_1/packedPacklstm_620/strided_slice:output:0"lstm_620/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_620/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_620/zeros_1Fill lstm_620/zeros_1/packed:output:0lstm_620/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_620/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_620/transpose	Transposelstm_619/transpose_1:y:0 lstm_620/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_620/Shape_1Shapelstm_620/transpose:y:0*
T0*
_output_shapes
:h
lstm_620/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_620/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_1StridedSlicelstm_620/Shape_1:output:0'lstm_620/strided_slice_1/stack:output:0)lstm_620/strided_slice_1/stack_1:output:0)lstm_620/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_620/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_620/TensorArrayV2TensorListReserve-lstm_620/TensorArrayV2/element_shape:output:0!lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_620/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_620/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_620/transpose:y:0Glstm_620/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_620/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_620/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_2StridedSlicelstm_620/transpose:y:0'lstm_620/strided_slice_2/stack:output:0)lstm_620/strided_slice_2/stack_1:output:0)lstm_620/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_620/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp5lstm_620_lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_620/lstm_cell_596/MatMulMatMul!lstm_620/strided_slice_2:output:04lstm_620/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_620/lstm_cell_596/MatMul_1MatMullstm_620/zeros:output:06lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_620/lstm_cell_596/addAddV2'lstm_620/lstm_cell_596/MatMul:product:0)lstm_620/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp6lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_620/lstm_cell_596/BiasAddBiasAddlstm_620/lstm_cell_596/add:z:05lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_620/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_620/lstm_cell_596/splitSplit/lstm_620/lstm_cell_596/split/split_dim:output:0'lstm_620/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_620/lstm_cell_596/SigmoidSigmoid%lstm_620/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_620/lstm_cell_596/Sigmoid_1Sigmoid%lstm_620/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mulMul$lstm_620/lstm_cell_596/Sigmoid_1:y:0lstm_620/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_620/lstm_cell_596/ReluRelu%lstm_620/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mul_1Mul"lstm_620/lstm_cell_596/Sigmoid:y:0)lstm_620/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/add_1AddV2lstm_620/lstm_cell_596/mul:z:0 lstm_620/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_620/lstm_cell_596/Sigmoid_2Sigmoid%lstm_620/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_620/lstm_cell_596/Relu_1Relu lstm_620/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mul_2Mul$lstm_620/lstm_cell_596/Sigmoid_2:y:0+lstm_620/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_620/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_620/TensorArrayV2_1TensorListReserve/lstm_620/TensorArrayV2_1/element_shape:output:0!lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_620/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_620/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_620/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_620/whileWhile$lstm_620/while/loop_counter:output:0*lstm_620/while/maximum_iterations:output:0lstm_620/time:output:0!lstm_620/TensorArrayV2_1:handle:0lstm_620/zeros:output:0lstm_620/zeros_1:output:0!lstm_620/strided_slice_1:output:0@lstm_620/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_620_lstm_cell_596_matmul_readvariableop_resource7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource6lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
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
lstm_620_while_body_3609347*'
condR
lstm_620_while_cond_3609346*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_620/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_620/TensorArrayV2Stack/TensorListStackTensorListStacklstm_620/while:output:3Blstm_620/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_620/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_620/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_3StridedSlice4lstm_620/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_620/strided_slice_3/stack:output:0)lstm_620/strided_slice_3/stack_1:output:0)lstm_620/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_620/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_620/transpose_1	Transpose4lstm_620/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_620/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_620/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_206/MatMulMatMul!lstm_620/strided_slice_3:output:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_206/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp.^lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp-^lstm_618/lstm_cell_594/MatMul/ReadVariableOp/^lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp^lstm_618/while.^lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp-^lstm_619/lstm_cell_595/MatMul/ReadVariableOp/^lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp^lstm_619/while.^lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp-^lstm_620/lstm_cell_596/MatMul/ReadVariableOp/^lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp^lstm_620/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp2^
-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp2\
,lstm_618/lstm_cell_594/MatMul/ReadVariableOp,lstm_618/lstm_cell_594/MatMul/ReadVariableOp2`
.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp2 
lstm_618/whilelstm_618/while2^
-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp2\
,lstm_619/lstm_cell_595/MatMul/ReadVariableOp,lstm_619/lstm_cell_595/MatMul/ReadVariableOp2`
.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp2 
lstm_619/whilelstm_619/while2^
-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp2\
,lstm_620/lstm_cell_596/MatMul/ReadVariableOp,lstm_620/lstm_cell_596/MatMul/ReadVariableOp2`
.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp2 
lstm_620/whilelstm_620/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607182

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
?T
?
*sequential_206_lstm_619_while_body_3606040L
Hsequential_206_lstm_619_while_sequential_206_lstm_619_while_loop_counterR
Nsequential_206_lstm_619_while_sequential_206_lstm_619_while_maximum_iterations-
)sequential_206_lstm_619_while_placeholder/
+sequential_206_lstm_619_while_placeholder_1/
+sequential_206_lstm_619_while_placeholder_2/
+sequential_206_lstm_619_while_placeholder_3K
Gsequential_206_lstm_619_while_sequential_206_lstm_619_strided_slice_1_0?
?sequential_206_lstm_619_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_619_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_206_lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0:	d?a
Nsequential_206_lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?\
Msequential_206_lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0:	?*
&sequential_206_lstm_619_while_identity,
(sequential_206_lstm_619_while_identity_1,
(sequential_206_lstm_619_while_identity_2,
(sequential_206_lstm_619_while_identity_3,
(sequential_206_lstm_619_while_identity_4,
(sequential_206_lstm_619_while_identity_5I
Esequential_206_lstm_619_while_sequential_206_lstm_619_strided_slice_1?
?sequential_206_lstm_619_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_619_tensorarrayunstack_tensorlistfromtensor]
Jsequential_206_lstm_619_while_lstm_cell_595_matmul_readvariableop_resource:	d?_
Lsequential_206_lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource:	2?Z
Ksequential_206_lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource:	???Bsequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp?Asequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp?Csequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp?
Osequential_206/lstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_206/lstm_619/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_206_lstm_619_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_619_tensorarrayunstack_tensorlistfromtensor_0)sequential_206_lstm_619_while_placeholderXsequential_206/lstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOpLsequential_206_lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_206/lstm_619/while/lstm_cell_595/MatMulMatMulHsequential_206/lstm_619/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOpNsequential_206_lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_206/lstm_619/while/lstm_cell_595/MatMul_1MatMul+sequential_206_lstm_619_while_placeholder_2Ksequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_206/lstm_619/while/lstm_cell_595/addAddV2<sequential_206/lstm_619/while/lstm_cell_595/MatMul:product:0>sequential_206/lstm_619/while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOpMsequential_206_lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_206/lstm_619/while/lstm_cell_595/BiasAddBiasAdd3sequential_206/lstm_619/while/lstm_cell_595/add:z:0Jsequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_206/lstm_619/while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_206/lstm_619/while/lstm_cell_595/splitSplitDsequential_206/lstm_619/while/lstm_cell_595/split/split_dim:output:0<sequential_206/lstm_619/while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_206/lstm_619/while/lstm_cell_595/SigmoidSigmoid:sequential_206/lstm_619/while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_206/lstm_619/while/lstm_cell_595/Sigmoid_1Sigmoid:sequential_206/lstm_619/while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_206/lstm_619/while/lstm_cell_595/mulMul9sequential_206/lstm_619/while/lstm_cell_595/Sigmoid_1:y:0+sequential_206_lstm_619_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_206/lstm_619/while/lstm_cell_595/ReluRelu:sequential_206/lstm_619/while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_206/lstm_619/while/lstm_cell_595/mul_1Mul7sequential_206/lstm_619/while/lstm_cell_595/Sigmoid:y:0>sequential_206/lstm_619/while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_206/lstm_619/while/lstm_cell_595/add_1AddV23sequential_206/lstm_619/while/lstm_cell_595/mul:z:05sequential_206/lstm_619/while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_206/lstm_619/while/lstm_cell_595/Sigmoid_2Sigmoid:sequential_206/lstm_619/while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_206/lstm_619/while/lstm_cell_595/Relu_1Relu5sequential_206/lstm_619/while/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_206/lstm_619/while/lstm_cell_595/mul_2Mul9sequential_206/lstm_619/while/lstm_cell_595/Sigmoid_2:y:0@sequential_206/lstm_619/while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_206/lstm_619/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_206_lstm_619_while_placeholder_1)sequential_206_lstm_619_while_placeholder5sequential_206/lstm_619/while/lstm_cell_595/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_206/lstm_619/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_206/lstm_619/while/addAddV2)sequential_206_lstm_619_while_placeholder,sequential_206/lstm_619/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_206/lstm_619/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_206/lstm_619/while/add_1AddV2Hsequential_206_lstm_619_while_sequential_206_lstm_619_while_loop_counter.sequential_206/lstm_619/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_206/lstm_619/while/IdentityIdentity'sequential_206/lstm_619/while/add_1:z:0#^sequential_206/lstm_619/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_619/while/Identity_1IdentityNsequential_206_lstm_619_while_sequential_206_lstm_619_while_maximum_iterations#^sequential_206/lstm_619/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_619/while/Identity_2Identity%sequential_206/lstm_619/while/add:z:0#^sequential_206/lstm_619/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_619/while/Identity_3IdentityRsequential_206/lstm_619/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_206/lstm_619/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_619/while/Identity_4Identity5sequential_206/lstm_619/while/lstm_cell_595/mul_2:z:0#^sequential_206/lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_206/lstm_619/while/Identity_5Identity5sequential_206/lstm_619/while/lstm_cell_595/add_1:z:0#^sequential_206/lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_206/lstm_619/while/NoOpNoOpC^sequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOpB^sequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOpD^sequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_206_lstm_619_while_identity/sequential_206/lstm_619/while/Identity:output:0"]
(sequential_206_lstm_619_while_identity_11sequential_206/lstm_619/while/Identity_1:output:0"]
(sequential_206_lstm_619_while_identity_21sequential_206/lstm_619/while/Identity_2:output:0"]
(sequential_206_lstm_619_while_identity_31sequential_206/lstm_619/while/Identity_3:output:0"]
(sequential_206_lstm_619_while_identity_41sequential_206/lstm_619/while/Identity_4:output:0"]
(sequential_206_lstm_619_while_identity_51sequential_206/lstm_619/while/Identity_5:output:0"?
Ksequential_206_lstm_619_while_lstm_cell_595_biasadd_readvariableop_resourceMsequential_206_lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0"?
Lsequential_206_lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resourceNsequential_206_lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0"?
Jsequential_206_lstm_619_while_lstm_cell_595_matmul_readvariableop_resourceLsequential_206_lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0"?
Esequential_206_lstm_619_while_sequential_206_lstm_619_strided_slice_1Gsequential_206_lstm_619_while_sequential_206_lstm_619_strided_slice_1_0"?
?sequential_206_lstm_619_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_619_tensorarrayunstack_tensorlistfromtensor?sequential_206_lstm_619_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_619_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOpBsequential_206/lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp2?
Asequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOpAsequential_206/lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp2?
Csequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOpCsequential_206/lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_618_layer_call_fn_3609481

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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3608314s
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
while_body_3610442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3610585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3610914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610914___redundant_placeholder05
1while_while_cond_3610914___redundant_placeholder15
1while_while_cond_3610914___redundant_placeholder25
1while_while_cond_3610914___redundant_placeholder3
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3607793

inputs#
lstm_618_3607469:	?#
lstm_618_3607471:	d?
lstm_618_3607473:	?#
lstm_619_3607619:	d?#
lstm_619_3607621:	2?
lstm_619_3607623:	?"
lstm_620_3607769:2("
lstm_620_3607771:
(
lstm_620_3607773:(#
dense_206_3607787:

dense_206_3607789:
identity??!dense_206/StatefulPartitionedCall? lstm_618/StatefulPartitionedCall? lstm_619/StatefulPartitionedCall? lstm_620/StatefulPartitionedCall?
 lstm_618/StatefulPartitionedCallStatefulPartitionedCallinputslstm_618_3607469lstm_618_3607471lstm_618_3607473*
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3607468?
 lstm_619/StatefulPartitionedCallStatefulPartitionedCall)lstm_618/StatefulPartitionedCall:output:0lstm_619_3607619lstm_619_3607621lstm_619_3607623*
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3607618?
 lstm_620/StatefulPartitionedCallStatefulPartitionedCall)lstm_619/StatefulPartitionedCall:output:0lstm_620_3607769lstm_620_3607771lstm_620_3607773*
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607768?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_620/StatefulPartitionedCall:output:0dense_206_3607787dense_206_3607789*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786y
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_206/StatefulPartitionedCall!^lstm_618/StatefulPartitionedCall!^lstm_619/StatefulPartitionedCall!^lstm_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2D
 lstm_618/StatefulPartitionedCall lstm_618/StatefulPartitionedCall2D
 lstm_619/StatefulPartitionedCall lstm_619/StatefulPartitionedCall2D
 lstm_620/StatefulPartitionedCall lstm_620/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3611201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_206_lstm_618_while_body_3605901L
Hsequential_206_lstm_618_while_sequential_206_lstm_618_while_loop_counterR
Nsequential_206_lstm_618_while_sequential_206_lstm_618_while_maximum_iterations-
)sequential_206_lstm_618_while_placeholder/
+sequential_206_lstm_618_while_placeholder_1/
+sequential_206_lstm_618_while_placeholder_2/
+sequential_206_lstm_618_while_placeholder_3K
Gsequential_206_lstm_618_while_sequential_206_lstm_618_strided_slice_1_0?
?sequential_206_lstm_618_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_618_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_206_lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0:	?a
Nsequential_206_lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?\
Msequential_206_lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0:	?*
&sequential_206_lstm_618_while_identity,
(sequential_206_lstm_618_while_identity_1,
(sequential_206_lstm_618_while_identity_2,
(sequential_206_lstm_618_while_identity_3,
(sequential_206_lstm_618_while_identity_4,
(sequential_206_lstm_618_while_identity_5I
Esequential_206_lstm_618_while_sequential_206_lstm_618_strided_slice_1?
?sequential_206_lstm_618_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_618_tensorarrayunstack_tensorlistfromtensor]
Jsequential_206_lstm_618_while_lstm_cell_594_matmul_readvariableop_resource:	?_
Lsequential_206_lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource:	d?Z
Ksequential_206_lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource:	???Bsequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp?Asequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp?Csequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp?
Osequential_206/lstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_206/lstm_618/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_206_lstm_618_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_618_tensorarrayunstack_tensorlistfromtensor_0)sequential_206_lstm_618_while_placeholderXsequential_206/lstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOpLsequential_206_lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_206/lstm_618/while/lstm_cell_594/MatMulMatMulHsequential_206/lstm_618/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOpNsequential_206_lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_206/lstm_618/while/lstm_cell_594/MatMul_1MatMul+sequential_206_lstm_618_while_placeholder_2Ksequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_206/lstm_618/while/lstm_cell_594/addAddV2<sequential_206/lstm_618/while/lstm_cell_594/MatMul:product:0>sequential_206/lstm_618/while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOpMsequential_206_lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_206/lstm_618/while/lstm_cell_594/BiasAddBiasAdd3sequential_206/lstm_618/while/lstm_cell_594/add:z:0Jsequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_206/lstm_618/while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_206/lstm_618/while/lstm_cell_594/splitSplitDsequential_206/lstm_618/while/lstm_cell_594/split/split_dim:output:0<sequential_206/lstm_618/while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_206/lstm_618/while/lstm_cell_594/SigmoidSigmoid:sequential_206/lstm_618/while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_206/lstm_618/while/lstm_cell_594/Sigmoid_1Sigmoid:sequential_206/lstm_618/while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_206/lstm_618/while/lstm_cell_594/mulMul9sequential_206/lstm_618/while/lstm_cell_594/Sigmoid_1:y:0+sequential_206_lstm_618_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_206/lstm_618/while/lstm_cell_594/ReluRelu:sequential_206/lstm_618/while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_206/lstm_618/while/lstm_cell_594/mul_1Mul7sequential_206/lstm_618/while/lstm_cell_594/Sigmoid:y:0>sequential_206/lstm_618/while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_206/lstm_618/while/lstm_cell_594/add_1AddV23sequential_206/lstm_618/while/lstm_cell_594/mul:z:05sequential_206/lstm_618/while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_206/lstm_618/while/lstm_cell_594/Sigmoid_2Sigmoid:sequential_206/lstm_618/while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_206/lstm_618/while/lstm_cell_594/Relu_1Relu5sequential_206/lstm_618/while/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_206/lstm_618/while/lstm_cell_594/mul_2Mul9sequential_206/lstm_618/while/lstm_cell_594/Sigmoid_2:y:0@sequential_206/lstm_618/while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_206/lstm_618/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_206_lstm_618_while_placeholder_1)sequential_206_lstm_618_while_placeholder5sequential_206/lstm_618/while/lstm_cell_594/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_206/lstm_618/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_206/lstm_618/while/addAddV2)sequential_206_lstm_618_while_placeholder,sequential_206/lstm_618/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_206/lstm_618/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_206/lstm_618/while/add_1AddV2Hsequential_206_lstm_618_while_sequential_206_lstm_618_while_loop_counter.sequential_206/lstm_618/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_206/lstm_618/while/IdentityIdentity'sequential_206/lstm_618/while/add_1:z:0#^sequential_206/lstm_618/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_618/while/Identity_1IdentityNsequential_206_lstm_618_while_sequential_206_lstm_618_while_maximum_iterations#^sequential_206/lstm_618/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_618/while/Identity_2Identity%sequential_206/lstm_618/while/add:z:0#^sequential_206/lstm_618/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_618/while/Identity_3IdentityRsequential_206/lstm_618/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_206/lstm_618/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_618/while/Identity_4Identity5sequential_206/lstm_618/while/lstm_cell_594/mul_2:z:0#^sequential_206/lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_206/lstm_618/while/Identity_5Identity5sequential_206/lstm_618/while/lstm_cell_594/add_1:z:0#^sequential_206/lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_206/lstm_618/while/NoOpNoOpC^sequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOpB^sequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOpD^sequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_206_lstm_618_while_identity/sequential_206/lstm_618/while/Identity:output:0"]
(sequential_206_lstm_618_while_identity_11sequential_206/lstm_618/while/Identity_1:output:0"]
(sequential_206_lstm_618_while_identity_21sequential_206/lstm_618/while/Identity_2:output:0"]
(sequential_206_lstm_618_while_identity_31sequential_206/lstm_618/while/Identity_3:output:0"]
(sequential_206_lstm_618_while_identity_41sequential_206/lstm_618/while/Identity_4:output:0"]
(sequential_206_lstm_618_while_identity_51sequential_206/lstm_618/while/Identity_5:output:0"?
Ksequential_206_lstm_618_while_lstm_cell_594_biasadd_readvariableop_resourceMsequential_206_lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0"?
Lsequential_206_lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resourceNsequential_206_lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0"?
Jsequential_206_lstm_618_while_lstm_cell_594_matmul_readvariableop_resourceLsequential_206_lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0"?
Esequential_206_lstm_618_while_sequential_206_lstm_618_strided_slice_1Gsequential_206_lstm_618_while_sequential_206_lstm_618_strided_slice_1_0"?
?sequential_206_lstm_618_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_618_tensorarrayunstack_tensorlistfromtensor?sequential_206_lstm_618_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_618_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOpBsequential_206/lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp2?
Asequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOpAsequential_206/lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp2?
Csequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOpCsequential_206/lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3609682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3609682___redundant_placeholder05
1while_while_cond_3609682___redundant_placeholder15
1while_while_cond_3609682___redundant_placeholder25
1while_while_cond_3609682___redundant_placeholder3
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
+__inference_dense_206_layer_call_fn_3611294

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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786o
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
/__inference_lstm_cell_594_layer_call_fn_3611338

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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606482o
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
while_cond_3606890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3606890___redundant_placeholder05
1while_while_cond_3606890___redundant_placeholder15
1while_while_cond_3606890___redundant_placeholder25
1while_while_cond_3606890___redundant_placeholder3
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610856
inputs_0>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3610772*
condR
while_cond_3610771*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_206_layer_call_fn_3608556

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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3607793o
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
?
/__inference_lstm_cell_596_layer_call_fn_3611534

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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607182o
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611566

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
?W
?
 __inference__traced_save_3611741
file_prefix/
+savev2_dense_206_kernel_read_readvariableop-
)savev2_dense_206_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_618_lstm_cell_618_kernel_read_readvariableopF
Bsavev2_lstm_618_lstm_cell_618_recurrent_kernel_read_readvariableop:
6savev2_lstm_618_lstm_cell_618_bias_read_readvariableop<
8savev2_lstm_619_lstm_cell_619_kernel_read_readvariableopF
Bsavev2_lstm_619_lstm_cell_619_recurrent_kernel_read_readvariableop:
6savev2_lstm_619_lstm_cell_619_bias_read_readvariableop<
8savev2_lstm_620_lstm_cell_620_kernel_read_readvariableopF
Bsavev2_lstm_620_lstm_cell_620_recurrent_kernel_read_readvariableop:
6savev2_lstm_620_lstm_cell_620_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_206_kernel_m_read_readvariableop4
0savev2_adam_dense_206_bias_m_read_readvariableopC
?savev2_adam_lstm_618_lstm_cell_618_kernel_m_read_readvariableopM
Isavev2_adam_lstm_618_lstm_cell_618_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_618_lstm_cell_618_bias_m_read_readvariableopC
?savev2_adam_lstm_619_lstm_cell_619_kernel_m_read_readvariableopM
Isavev2_adam_lstm_619_lstm_cell_619_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_619_lstm_cell_619_bias_m_read_readvariableopC
?savev2_adam_lstm_620_lstm_cell_620_kernel_m_read_readvariableopM
Isavev2_adam_lstm_620_lstm_cell_620_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_620_lstm_cell_620_bias_m_read_readvariableop6
2savev2_adam_dense_206_kernel_v_read_readvariableop4
0savev2_adam_dense_206_bias_v_read_readvariableopC
?savev2_adam_lstm_618_lstm_cell_618_kernel_v_read_readvariableopM
Isavev2_adam_lstm_618_lstm_cell_618_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_618_lstm_cell_618_bias_v_read_readvariableopC
?savev2_adam_lstm_619_lstm_cell_619_kernel_v_read_readvariableopM
Isavev2_adam_lstm_619_lstm_cell_619_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_619_lstm_cell_619_bias_v_read_readvariableopC
?savev2_adam_lstm_620_lstm_cell_620_kernel_v_read_readvariableopM
Isavev2_adam_lstm_620_lstm_cell_620_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_620_lstm_cell_620_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_206_kernel_read_readvariableop)savev2_dense_206_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_618_lstm_cell_618_kernel_read_readvariableopBsavev2_lstm_618_lstm_cell_618_recurrent_kernel_read_readvariableop6savev2_lstm_618_lstm_cell_618_bias_read_readvariableop8savev2_lstm_619_lstm_cell_619_kernel_read_readvariableopBsavev2_lstm_619_lstm_cell_619_recurrent_kernel_read_readvariableop6savev2_lstm_619_lstm_cell_619_bias_read_readvariableop8savev2_lstm_620_lstm_cell_620_kernel_read_readvariableopBsavev2_lstm_620_lstm_cell_620_recurrent_kernel_read_readvariableop6savev2_lstm_620_lstm_cell_620_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_206_kernel_m_read_readvariableop0savev2_adam_dense_206_bias_m_read_readvariableop?savev2_adam_lstm_618_lstm_cell_618_kernel_m_read_readvariableopIsavev2_adam_lstm_618_lstm_cell_618_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_618_lstm_cell_618_bias_m_read_readvariableop?savev2_adam_lstm_619_lstm_cell_619_kernel_m_read_readvariableopIsavev2_adam_lstm_619_lstm_cell_619_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_619_lstm_cell_619_bias_m_read_readvariableop?savev2_adam_lstm_620_lstm_cell_620_kernel_m_read_readvariableopIsavev2_adam_lstm_620_lstm_cell_620_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_620_lstm_cell_620_bias_m_read_readvariableop2savev2_adam_dense_206_kernel_v_read_readvariableop0savev2_adam_dense_206_bias_v_read_readvariableop?savev2_adam_lstm_618_lstm_cell_618_kernel_v_read_readvariableopIsavev2_adam_lstm_618_lstm_cell_618_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_618_lstm_cell_618_bias_v_read_readvariableop?savev2_adam_lstm_619_lstm_cell_619_kernel_v_read_readvariableopIsavev2_adam_lstm_619_lstm_cell_619_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_619_lstm_cell_619_bias_v_read_readvariableop?savev2_adam_lstm_620_lstm_cell_620_kernel_v_read_readvariableopIsavev2_adam_lstm_620_lstm_cell_620_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_620_lstm_cell_620_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3607900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_618_while_cond_3609068.
*lstm_618_while_lstm_618_while_loop_counter4
0lstm_618_while_lstm_618_while_maximum_iterations
lstm_618_while_placeholder 
lstm_618_while_placeholder_1 
lstm_618_while_placeholder_2 
lstm_618_while_placeholder_30
,lstm_618_while_less_lstm_618_strided_slice_1G
Clstm_618_while_lstm_618_while_cond_3609068___redundant_placeholder0G
Clstm_618_while_lstm_618_while_cond_3609068___redundant_placeholder1G
Clstm_618_while_lstm_618_while_cond_3609068___redundant_placeholder2G
Clstm_618_while_lstm_618_while_cond_3609068___redundant_placeholder3
lstm_618_while_identity
?
lstm_618/while/LessLesslstm_618_while_placeholder,lstm_618_while_less_lstm_618_strided_slice_1*
T0*
_output_shapes
: ]
lstm_618/while/IdentityIdentitylstm_618/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_618_while_identity lstm_618/while/Identity:output:0*(
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609624
inputs_0?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3609540*
condR
while_cond_3609539*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_619_while_body_3609208.
*lstm_619_while_lstm_619_while_loop_counter4
0lstm_619_while_lstm_619_while_maximum_iterations
lstm_619_while_placeholder 
lstm_619_while_placeholder_1 
lstm_619_while_placeholder_2 
lstm_619_while_placeholder_3-
)lstm_619_while_lstm_619_strided_slice_1_0i
elstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0:	d?R
?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?M
>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
lstm_619_while_identity
lstm_619_while_identity_1
lstm_619_while_identity_2
lstm_619_while_identity_3
lstm_619_while_identity_4
lstm_619_while_identity_5+
'lstm_619_while_lstm_619_strided_slice_1g
clstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensorN
;lstm_619_while_lstm_cell_595_matmul_readvariableop_resource:	d?P
=lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource:	2?K
<lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource:	???3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp?2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp?4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp?
@lstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_619/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0lstm_619_while_placeholderIlstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_619/while/lstm_cell_595/MatMulMatMul9lstm_619/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_619/while/lstm_cell_595/MatMul_1MatMullstm_619_while_placeholder_2<lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_619/while/lstm_cell_595/addAddV2-lstm_619/while/lstm_cell_595/MatMul:product:0/lstm_619/while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_619/while/lstm_cell_595/BiasAddBiasAdd$lstm_619/while/lstm_cell_595/add:z:0;lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_619/while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_619/while/lstm_cell_595/splitSplit5lstm_619/while/lstm_cell_595/split/split_dim:output:0-lstm_619/while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_619/while/lstm_cell_595/SigmoidSigmoid+lstm_619/while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_619/while/lstm_cell_595/Sigmoid_1Sigmoid+lstm_619/while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_619/while/lstm_cell_595/mulMul*lstm_619/while/lstm_cell_595/Sigmoid_1:y:0lstm_619_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_619/while/lstm_cell_595/ReluRelu+lstm_619/while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/mul_1Mul(lstm_619/while/lstm_cell_595/Sigmoid:y:0/lstm_619/while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/add_1AddV2$lstm_619/while/lstm_cell_595/mul:z:0&lstm_619/while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_619/while/lstm_cell_595/Sigmoid_2Sigmoid+lstm_619/while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_619/while/lstm_cell_595/Relu_1Relu&lstm_619/while/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/mul_2Mul*lstm_619/while/lstm_cell_595/Sigmoid_2:y:01lstm_619/while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_619/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_619_while_placeholder_1lstm_619_while_placeholder&lstm_619/while/lstm_cell_595/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_619/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_619/while/addAddV2lstm_619_while_placeholderlstm_619/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_619/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_619/while/add_1AddV2*lstm_619_while_lstm_619_while_loop_counterlstm_619/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_619/while/IdentityIdentitylstm_619/while/add_1:z:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_1Identity0lstm_619_while_lstm_619_while_maximum_iterations^lstm_619/while/NoOp*
T0*
_output_shapes
: t
lstm_619/while/Identity_2Identitylstm_619/while/add:z:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_3IdentityClstm_619/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_4Identity&lstm_619/while/lstm_cell_595/mul_2:z:0^lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_619/while/Identity_5Identity&lstm_619/while/lstm_cell_595/add_1:z:0^lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_619/while/NoOpNoOp4^lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp3^lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp5^lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_619_while_identity lstm_619/while/Identity:output:0"?
lstm_619_while_identity_1"lstm_619/while/Identity_1:output:0"?
lstm_619_while_identity_2"lstm_619/while/Identity_2:output:0"?
lstm_619_while_identity_3"lstm_619/while/Identity_3:output:0"?
lstm_619_while_identity_4"lstm_619/while/Identity_4:output:0"?
lstm_619_while_identity_5"lstm_619/while/Identity_5:output:0"T
'lstm_619_while_lstm_619_strided_slice_1)lstm_619_while_lstm_619_strided_slice_1_0"~
<lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0"?
=lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0"|
;lstm_619_while_lstm_cell_595_matmul_readvariableop_resource=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0"?
clstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensorelstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp2h
2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp2l
4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609010

inputsH
5lstm_618_lstm_cell_594_matmul_readvariableop_resource:	?J
7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource:	d?E
6lstm_618_lstm_cell_594_biasadd_readvariableop_resource:	?H
5lstm_619_lstm_cell_595_matmul_readvariableop_resource:	d?J
7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource:	2?E
6lstm_619_lstm_cell_595_biasadd_readvariableop_resource:	?G
5lstm_620_lstm_cell_596_matmul_readvariableop_resource:2(I
7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource:
(D
6lstm_620_lstm_cell_596_biasadd_readvariableop_resource:(:
(dense_206_matmul_readvariableop_resource:
7
)dense_206_biasadd_readvariableop_resource:
identity?? dense_206/BiasAdd/ReadVariableOp?dense_206/MatMul/ReadVariableOp?-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp?,lstm_618/lstm_cell_594/MatMul/ReadVariableOp?.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp?lstm_618/while?-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp?,lstm_619/lstm_cell_595/MatMul/ReadVariableOp?.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp?lstm_619/while?-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp?,lstm_620/lstm_cell_596/MatMul/ReadVariableOp?.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp?lstm_620/whileD
lstm_618/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_618/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_618/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_618/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_sliceStridedSlicelstm_618/Shape:output:0%lstm_618/strided_slice/stack:output:0'lstm_618/strided_slice/stack_1:output:0'lstm_618/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_618/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_618/zeros/packedPacklstm_618/strided_slice:output:0 lstm_618/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_618/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_618/zerosFilllstm_618/zeros/packed:output:0lstm_618/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_618/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_618/zeros_1/packedPacklstm_618/strided_slice:output:0"lstm_618/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_618/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_618/zeros_1Fill lstm_618/zeros_1/packed:output:0lstm_618/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_618/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_618/transpose	Transposeinputs lstm_618/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_618/Shape_1Shapelstm_618/transpose:y:0*
T0*
_output_shapes
:h
lstm_618/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_618/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_1StridedSlicelstm_618/Shape_1:output:0'lstm_618/strided_slice_1/stack:output:0)lstm_618/strided_slice_1/stack_1:output:0)lstm_618/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_618/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_618/TensorArrayV2TensorListReserve-lstm_618/TensorArrayV2/element_shape:output:0!lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_618/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_618/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_618/transpose:y:0Glstm_618/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_618/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_618/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_2StridedSlicelstm_618/transpose:y:0'lstm_618/strided_slice_2/stack:output:0)lstm_618/strided_slice_2/stack_1:output:0)lstm_618/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_618/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp5lstm_618_lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_618/lstm_cell_594/MatMulMatMul!lstm_618/strided_slice_2:output:04lstm_618/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_618/lstm_cell_594/MatMul_1MatMullstm_618/zeros:output:06lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_618/lstm_cell_594/addAddV2'lstm_618/lstm_cell_594/MatMul:product:0)lstm_618/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp6lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_618/lstm_cell_594/BiasAddBiasAddlstm_618/lstm_cell_594/add:z:05lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_618/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_618/lstm_cell_594/splitSplit/lstm_618/lstm_cell_594/split/split_dim:output:0'lstm_618/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_618/lstm_cell_594/SigmoidSigmoid%lstm_618/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_618/lstm_cell_594/Sigmoid_1Sigmoid%lstm_618/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mulMul$lstm_618/lstm_cell_594/Sigmoid_1:y:0lstm_618/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_618/lstm_cell_594/ReluRelu%lstm_618/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mul_1Mul"lstm_618/lstm_cell_594/Sigmoid:y:0)lstm_618/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/add_1AddV2lstm_618/lstm_cell_594/mul:z:0 lstm_618/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_618/lstm_cell_594/Sigmoid_2Sigmoid%lstm_618/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_618/lstm_cell_594/Relu_1Relu lstm_618/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_618/lstm_cell_594/mul_2Mul$lstm_618/lstm_cell_594/Sigmoid_2:y:0+lstm_618/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_618/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_618/TensorArrayV2_1TensorListReserve/lstm_618/TensorArrayV2_1/element_shape:output:0!lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_618/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_618/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_618/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_618/whileWhile$lstm_618/while/loop_counter:output:0*lstm_618/while/maximum_iterations:output:0lstm_618/time:output:0!lstm_618/TensorArrayV2_1:handle:0lstm_618/zeros:output:0lstm_618/zeros_1:output:0!lstm_618/strided_slice_1:output:0@lstm_618/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_618_lstm_cell_594_matmul_readvariableop_resource7lstm_618_lstm_cell_594_matmul_1_readvariableop_resource6lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
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
lstm_618_while_body_3608642*'
condR
lstm_618_while_cond_3608641*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_618/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_618/TensorArrayV2Stack/TensorListStackTensorListStacklstm_618/while:output:3Blstm_618/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_618/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_618/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_618/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_618/strided_slice_3StridedSlice4lstm_618/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_618/strided_slice_3/stack:output:0)lstm_618/strided_slice_3/stack_1:output:0)lstm_618/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_618/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_618/transpose_1	Transpose4lstm_618/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_618/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_618/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_619/ShapeShapelstm_618/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_619/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_619/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_619/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_sliceStridedSlicelstm_619/Shape:output:0%lstm_619/strided_slice/stack:output:0'lstm_619/strided_slice/stack_1:output:0'lstm_619/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_619/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_619/zeros/packedPacklstm_619/strided_slice:output:0 lstm_619/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_619/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_619/zerosFilllstm_619/zeros/packed:output:0lstm_619/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_619/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_619/zeros_1/packedPacklstm_619/strided_slice:output:0"lstm_619/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_619/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_619/zeros_1Fill lstm_619/zeros_1/packed:output:0lstm_619/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_619/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_619/transpose	Transposelstm_618/transpose_1:y:0 lstm_619/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_619/Shape_1Shapelstm_619/transpose:y:0*
T0*
_output_shapes
:h
lstm_619/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_619/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_1StridedSlicelstm_619/Shape_1:output:0'lstm_619/strided_slice_1/stack:output:0)lstm_619/strided_slice_1/stack_1:output:0)lstm_619/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_619/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_619/TensorArrayV2TensorListReserve-lstm_619/TensorArrayV2/element_shape:output:0!lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_619/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_619/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_619/transpose:y:0Glstm_619/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_619/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_619/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_2StridedSlicelstm_619/transpose:y:0'lstm_619/strided_slice_2/stack:output:0)lstm_619/strided_slice_2/stack_1:output:0)lstm_619/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_619/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp5lstm_619_lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_619/lstm_cell_595/MatMulMatMul!lstm_619/strided_slice_2:output:04lstm_619/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_619/lstm_cell_595/MatMul_1MatMullstm_619/zeros:output:06lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_619/lstm_cell_595/addAddV2'lstm_619/lstm_cell_595/MatMul:product:0)lstm_619/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp6lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_619/lstm_cell_595/BiasAddBiasAddlstm_619/lstm_cell_595/add:z:05lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_619/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_619/lstm_cell_595/splitSplit/lstm_619/lstm_cell_595/split/split_dim:output:0'lstm_619/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_619/lstm_cell_595/SigmoidSigmoid%lstm_619/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_619/lstm_cell_595/Sigmoid_1Sigmoid%lstm_619/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mulMul$lstm_619/lstm_cell_595/Sigmoid_1:y:0lstm_619/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_619/lstm_cell_595/ReluRelu%lstm_619/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mul_1Mul"lstm_619/lstm_cell_595/Sigmoid:y:0)lstm_619/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/add_1AddV2lstm_619/lstm_cell_595/mul:z:0 lstm_619/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_619/lstm_cell_595/Sigmoid_2Sigmoid%lstm_619/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_619/lstm_cell_595/Relu_1Relu lstm_619/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_619/lstm_cell_595/mul_2Mul$lstm_619/lstm_cell_595/Sigmoid_2:y:0+lstm_619/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_619/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_619/TensorArrayV2_1TensorListReserve/lstm_619/TensorArrayV2_1/element_shape:output:0!lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_619/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_619/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_619/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_619/whileWhile$lstm_619/while/loop_counter:output:0*lstm_619/while/maximum_iterations:output:0lstm_619/time:output:0!lstm_619/TensorArrayV2_1:handle:0lstm_619/zeros:output:0lstm_619/zeros_1:output:0!lstm_619/strided_slice_1:output:0@lstm_619/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_619_lstm_cell_595_matmul_readvariableop_resource7lstm_619_lstm_cell_595_matmul_1_readvariableop_resource6lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
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
lstm_619_while_body_3608781*'
condR
lstm_619_while_cond_3608780*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_619/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_619/TensorArrayV2Stack/TensorListStackTensorListStacklstm_619/while:output:3Blstm_619/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_619/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_619/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_619/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_619/strided_slice_3StridedSlice4lstm_619/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_619/strided_slice_3/stack:output:0)lstm_619/strided_slice_3/stack_1:output:0)lstm_619/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_619/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_619/transpose_1	Transpose4lstm_619/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_619/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_619/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_620/ShapeShapelstm_619/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_620/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_620/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_620/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_sliceStridedSlicelstm_620/Shape:output:0%lstm_620/strided_slice/stack:output:0'lstm_620/strided_slice/stack_1:output:0'lstm_620/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_620/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_620/zeros/packedPacklstm_620/strided_slice:output:0 lstm_620/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_620/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_620/zerosFilllstm_620/zeros/packed:output:0lstm_620/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_620/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_620/zeros_1/packedPacklstm_620/strided_slice:output:0"lstm_620/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_620/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_620/zeros_1Fill lstm_620/zeros_1/packed:output:0lstm_620/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_620/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_620/transpose	Transposelstm_619/transpose_1:y:0 lstm_620/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_620/Shape_1Shapelstm_620/transpose:y:0*
T0*
_output_shapes
:h
lstm_620/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_620/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_1StridedSlicelstm_620/Shape_1:output:0'lstm_620/strided_slice_1/stack:output:0)lstm_620/strided_slice_1/stack_1:output:0)lstm_620/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_620/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_620/TensorArrayV2TensorListReserve-lstm_620/TensorArrayV2/element_shape:output:0!lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_620/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_620/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_620/transpose:y:0Glstm_620/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_620/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_620/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_2StridedSlicelstm_620/transpose:y:0'lstm_620/strided_slice_2/stack:output:0)lstm_620/strided_slice_2/stack_1:output:0)lstm_620/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_620/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp5lstm_620_lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_620/lstm_cell_596/MatMulMatMul!lstm_620/strided_slice_2:output:04lstm_620/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_620/lstm_cell_596/MatMul_1MatMullstm_620/zeros:output:06lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_620/lstm_cell_596/addAddV2'lstm_620/lstm_cell_596/MatMul:product:0)lstm_620/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp6lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_620/lstm_cell_596/BiasAddBiasAddlstm_620/lstm_cell_596/add:z:05lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_620/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_620/lstm_cell_596/splitSplit/lstm_620/lstm_cell_596/split/split_dim:output:0'lstm_620/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_620/lstm_cell_596/SigmoidSigmoid%lstm_620/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_620/lstm_cell_596/Sigmoid_1Sigmoid%lstm_620/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mulMul$lstm_620/lstm_cell_596/Sigmoid_1:y:0lstm_620/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_620/lstm_cell_596/ReluRelu%lstm_620/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mul_1Mul"lstm_620/lstm_cell_596/Sigmoid:y:0)lstm_620/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/add_1AddV2lstm_620/lstm_cell_596/mul:z:0 lstm_620/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_620/lstm_cell_596/Sigmoid_2Sigmoid%lstm_620/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_620/lstm_cell_596/Relu_1Relu lstm_620/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_620/lstm_cell_596/mul_2Mul$lstm_620/lstm_cell_596/Sigmoid_2:y:0+lstm_620/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_620/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_620/TensorArrayV2_1TensorListReserve/lstm_620/TensorArrayV2_1/element_shape:output:0!lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_620/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_620/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_620/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_620/whileWhile$lstm_620/while/loop_counter:output:0*lstm_620/while/maximum_iterations:output:0lstm_620/time:output:0!lstm_620/TensorArrayV2_1:handle:0lstm_620/zeros:output:0lstm_620/zeros_1:output:0!lstm_620/strided_slice_1:output:0@lstm_620/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_620_lstm_cell_596_matmul_readvariableop_resource7lstm_620_lstm_cell_596_matmul_1_readvariableop_resource6lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
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
lstm_620_while_body_3608920*'
condR
lstm_620_while_cond_3608919*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_620/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_620/TensorArrayV2Stack/TensorListStackTensorListStacklstm_620/while:output:3Blstm_620/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_620/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_620/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_620/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_620/strided_slice_3StridedSlice4lstm_620/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_620/strided_slice_3/stack:output:0)lstm_620/strided_slice_3/stack_1:output:0)lstm_620/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_620/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_620/transpose_1	Transpose4lstm_620/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_620/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_620/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_206/MatMulMatMul!lstm_620/strided_slice_3:output:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_206/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp.^lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp-^lstm_618/lstm_cell_594/MatMul/ReadVariableOp/^lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp^lstm_618/while.^lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp-^lstm_619/lstm_cell_595/MatMul/ReadVariableOp/^lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp^lstm_619/while.^lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp-^lstm_620/lstm_cell_596/MatMul/ReadVariableOp/^lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp^lstm_620/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp2^
-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp-lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp2\
,lstm_618/lstm_cell_594/MatMul/ReadVariableOp,lstm_618/lstm_cell_594/MatMul/ReadVariableOp2`
.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp.lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp2 
lstm_618/whilelstm_618/while2^
-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp-lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp2\
,lstm_619/lstm_cell_595/MatMul/ReadVariableOp,lstm_619/lstm_cell_595/MatMul/ReadVariableOp2`
.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp.lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp2 
lstm_619/whilelstm_619/while2^
-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp-lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp2\
,lstm_620/lstm_cell_596/MatMul/ReadVariableOp,lstm_620/lstm_cell_596/MatMul/ReadVariableOp2`
.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp.lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp2 
lstm_620/whilelstm_620/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_619_layer_call_fn_3610097

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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3608149s
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
while_body_3607384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_618_while_body_3609069.
*lstm_618_while_lstm_618_while_loop_counter4
0lstm_618_while_lstm_618_while_maximum_iterations
lstm_618_while_placeholder 
lstm_618_while_placeholder_1 
lstm_618_while_placeholder_2 
lstm_618_while_placeholder_3-
)lstm_618_while_lstm_618_strided_slice_1_0i
elstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0:	?R
?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?M
>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
lstm_618_while_identity
lstm_618_while_identity_1
lstm_618_while_identity_2
lstm_618_while_identity_3
lstm_618_while_identity_4
lstm_618_while_identity_5+
'lstm_618_while_lstm_618_strided_slice_1g
clstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensorN
;lstm_618_while_lstm_cell_594_matmul_readvariableop_resource:	?P
=lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource:	d?K
<lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource:	???3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp?2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp?4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp?
@lstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_618/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0lstm_618_while_placeholderIlstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_618/while/lstm_cell_594/MatMulMatMul9lstm_618/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_618/while/lstm_cell_594/MatMul_1MatMullstm_618_while_placeholder_2<lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_618/while/lstm_cell_594/addAddV2-lstm_618/while/lstm_cell_594/MatMul:product:0/lstm_618/while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_618/while/lstm_cell_594/BiasAddBiasAdd$lstm_618/while/lstm_cell_594/add:z:0;lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_618/while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_618/while/lstm_cell_594/splitSplit5lstm_618/while/lstm_cell_594/split/split_dim:output:0-lstm_618/while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_618/while/lstm_cell_594/SigmoidSigmoid+lstm_618/while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_618/while/lstm_cell_594/Sigmoid_1Sigmoid+lstm_618/while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_618/while/lstm_cell_594/mulMul*lstm_618/while/lstm_cell_594/Sigmoid_1:y:0lstm_618_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_618/while/lstm_cell_594/ReluRelu+lstm_618/while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/mul_1Mul(lstm_618/while/lstm_cell_594/Sigmoid:y:0/lstm_618/while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/add_1AddV2$lstm_618/while/lstm_cell_594/mul:z:0&lstm_618/while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_618/while/lstm_cell_594/Sigmoid_2Sigmoid+lstm_618/while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_618/while/lstm_cell_594/Relu_1Relu&lstm_618/while/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/mul_2Mul*lstm_618/while/lstm_cell_594/Sigmoid_2:y:01lstm_618/while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_618/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_618_while_placeholder_1lstm_618_while_placeholder&lstm_618/while/lstm_cell_594/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_618/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_618/while/addAddV2lstm_618_while_placeholderlstm_618/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_618/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_618/while/add_1AddV2*lstm_618_while_lstm_618_while_loop_counterlstm_618/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_618/while/IdentityIdentitylstm_618/while/add_1:z:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_1Identity0lstm_618_while_lstm_618_while_maximum_iterations^lstm_618/while/NoOp*
T0*
_output_shapes
: t
lstm_618/while/Identity_2Identitylstm_618/while/add:z:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_3IdentityClstm_618/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_4Identity&lstm_618/while/lstm_cell_594/mul_2:z:0^lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_618/while/Identity_5Identity&lstm_618/while/lstm_cell_594/add_1:z:0^lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_618/while/NoOpNoOp4^lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp3^lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp5^lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_618_while_identity lstm_618/while/Identity:output:0"?
lstm_618_while_identity_1"lstm_618/while/Identity_1:output:0"?
lstm_618_while_identity_2"lstm_618/while/Identity_2:output:0"?
lstm_618_while_identity_3"lstm_618/while/Identity_3:output:0"?
lstm_618_while_identity_4"lstm_618/while/Identity_4:output:0"?
lstm_618_while_identity_5"lstm_618/while/Identity_5:output:0"T
'lstm_618_while_lstm_618_strided_slice_1)lstm_618_while_lstm_618_strided_slice_1_0"~
<lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0"?
=lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0"|
;lstm_618_while_lstm_cell_594_matmul_readvariableop_resource=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0"?
clstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensorelstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp2h
2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp2l
4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3611304

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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610240
inputs_0?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3610156*
condR
while_cond_3610155*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3611200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3611200___redundant_placeholder05
1while_while_cond_3611200___redundant_placeholder15
1while_while_cond_3611200___redundant_placeholder25
1while_while_cond_3611200___redundant_placeholder3
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611285

inputs>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3611201*
condR
while_cond_3611200*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_618_layer_call_fn_3609470

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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3607468s
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
?#
?
while_body_3607050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_596_3607074_0:2(/
while_lstm_cell_596_3607076_0:
(+
while_lstm_cell_596_3607078_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_596_3607074:2(-
while_lstm_cell_596_3607076:
()
while_lstm_cell_596_3607078:(??+while/lstm_cell_596/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_596/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_596_3607074_0while_lstm_cell_596_3607076_0while_lstm_cell_596_3607078_0*
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607036?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_596/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_596/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_596/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_596/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_596_3607074while_lstm_cell_596_3607074_0"<
while_lstm_cell_596_3607076while_lstm_cell_596_3607076_0"<
while_lstm_cell_596_3607078while_lstm_cell_596_3607078_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_596/StatefulPartitionedCall+while/lstm_cell_596/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3606419

inputs(
lstm_cell_594_3606337:	?(
lstm_cell_594_3606339:	d?$
lstm_cell_594_3606341:	?
identity??%lstm_cell_594/StatefulPartitionedCall?while;
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
%lstm_cell_594/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_594_3606337lstm_cell_594_3606339lstm_cell_594_3606341*
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606336n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_594_3606337lstm_cell_594_3606339lstm_cell_594_3606341*
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
while_body_3606350*
condR
while_cond_3606349*K
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
NoOpNoOp&^lstm_cell_594/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_594/StatefulPartitionedCall%lstm_cell_594/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_206_lstm_620_while_cond_3606178L
Hsequential_206_lstm_620_while_sequential_206_lstm_620_while_loop_counterR
Nsequential_206_lstm_620_while_sequential_206_lstm_620_while_maximum_iterations-
)sequential_206_lstm_620_while_placeholder/
+sequential_206_lstm_620_while_placeholder_1/
+sequential_206_lstm_620_while_placeholder_2/
+sequential_206_lstm_620_while_placeholder_3N
Jsequential_206_lstm_620_while_less_sequential_206_lstm_620_strided_slice_1e
asequential_206_lstm_620_while_sequential_206_lstm_620_while_cond_3606178___redundant_placeholder0e
asequential_206_lstm_620_while_sequential_206_lstm_620_while_cond_3606178___redundant_placeholder1e
asequential_206_lstm_620_while_sequential_206_lstm_620_while_cond_3606178___redundant_placeholder2e
asequential_206_lstm_620_while_sequential_206_lstm_620_while_cond_3606178___redundant_placeholder3*
&sequential_206_lstm_620_while_identity
?
"sequential_206/lstm_620/while/LessLess)sequential_206_lstm_620_while_placeholderJsequential_206_lstm_620_while_less_sequential_206_lstm_620_strided_slice_1*
T0*
_output_shapes
: {
&sequential_206/lstm_620/while/IdentityIdentity&sequential_206/lstm_620/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_206_lstm_620_while_identity/sequential_206/lstm_620/while/Identity:output:0*(
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611142

inputs>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3611058*
condR
while_cond_3611057*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607310

inputs'
lstm_cell_596_3607228:2('
lstm_cell_596_3607230:
(#
lstm_cell_596_3607232:(
identity??%lstm_cell_596/StatefulPartitionedCall?while;
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
%lstm_cell_596/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_596_3607228lstm_cell_596_3607230lstm_cell_596_3607232*
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607182n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_596_3607228lstm_cell_596_3607230lstm_cell_596_3607232*
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
while_body_3607241*
condR
while_cond_3607240*K
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
NoOpNoOp&^lstm_cell_596/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_596/StatefulPartitionedCall%lstm_cell_596/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3606960

inputs(
lstm_cell_595_3606878:	d?(
lstm_cell_595_3606880:	2?$
lstm_cell_595_3606882:	?
identity??%lstm_cell_595/StatefulPartitionedCall?while;
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
%lstm_cell_595/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_595_3606878lstm_cell_595_3606880lstm_cell_595_3606882*
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606832n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_595_3606878lstm_cell_595_3606880lstm_cell_595_3606882*
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
while_body_3606891*
condR
while_cond_3606890*K
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
NoOpNoOp&^lstm_cell_595/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_595/StatefulPartitionedCall%lstm_cell_595/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_618_layer_call_and_return_conditional_losses_3606610

inputs(
lstm_cell_594_3606528:	?(
lstm_cell_594_3606530:	d?$
lstm_cell_594_3606532:	?
identity??%lstm_cell_594/StatefulPartitionedCall?while;
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
%lstm_cell_594/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_594_3606528lstm_cell_594_3606530lstm_cell_594_3606532*
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606482n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_594_3606528lstm_cell_594_3606530lstm_cell_594_3606532*
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
while_body_3606541*
condR
while_cond_3606540*K
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
NoOpNoOp&^lstm_cell_594/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_594/StatefulPartitionedCall%lstm_cell_594/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610383
inputs_0?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3610299*
condR
while_cond_3610298*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_618_layer_call_and_return_conditional_losses_3608314

inputs?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3608230*
condR
while_cond_3608229*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3606269
lstm_618_inputW
Dsequential_206_lstm_618_lstm_cell_594_matmul_readvariableop_resource:	?Y
Fsequential_206_lstm_618_lstm_cell_594_matmul_1_readvariableop_resource:	d?T
Esequential_206_lstm_618_lstm_cell_594_biasadd_readvariableop_resource:	?W
Dsequential_206_lstm_619_lstm_cell_595_matmul_readvariableop_resource:	d?Y
Fsequential_206_lstm_619_lstm_cell_595_matmul_1_readvariableop_resource:	2?T
Esequential_206_lstm_619_lstm_cell_595_biasadd_readvariableop_resource:	?V
Dsequential_206_lstm_620_lstm_cell_596_matmul_readvariableop_resource:2(X
Fsequential_206_lstm_620_lstm_cell_596_matmul_1_readvariableop_resource:
(S
Esequential_206_lstm_620_lstm_cell_596_biasadd_readvariableop_resource:(I
7sequential_206_dense_206_matmul_readvariableop_resource:
F
8sequential_206_dense_206_biasadd_readvariableop_resource:
identity??/sequential_206/dense_206/BiasAdd/ReadVariableOp?.sequential_206/dense_206/MatMul/ReadVariableOp?<sequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp?;sequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOp?=sequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp?sequential_206/lstm_618/while?<sequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp?;sequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOp?=sequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp?sequential_206/lstm_619/while?<sequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp?;sequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOp?=sequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp?sequential_206/lstm_620/while[
sequential_206/lstm_618/ShapeShapelstm_618_input*
T0*
_output_shapes
:u
+sequential_206/lstm_618/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_206/lstm_618/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_206/lstm_618/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_206/lstm_618/strided_sliceStridedSlice&sequential_206/lstm_618/Shape:output:04sequential_206/lstm_618/strided_slice/stack:output:06sequential_206/lstm_618/strided_slice/stack_1:output:06sequential_206/lstm_618/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_206/lstm_618/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_206/lstm_618/zeros/packedPack.sequential_206/lstm_618/strided_slice:output:0/sequential_206/lstm_618/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_206/lstm_618/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_618/zerosFill-sequential_206/lstm_618/zeros/packed:output:0,sequential_206/lstm_618/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_206/lstm_618/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_206/lstm_618/zeros_1/packedPack.sequential_206/lstm_618/strided_slice:output:01sequential_206/lstm_618/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_206/lstm_618/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_618/zeros_1Fill/sequential_206/lstm_618/zeros_1/packed:output:0.sequential_206/lstm_618/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_206/lstm_618/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_206/lstm_618/transpose	Transposelstm_618_input/sequential_206/lstm_618/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_206/lstm_618/Shape_1Shape%sequential_206/lstm_618/transpose:y:0*
T0*
_output_shapes
:w
-sequential_206/lstm_618/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_618/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_618/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_618/strided_slice_1StridedSlice(sequential_206/lstm_618/Shape_1:output:06sequential_206/lstm_618/strided_slice_1/stack:output:08sequential_206/lstm_618/strided_slice_1/stack_1:output:08sequential_206/lstm_618/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_206/lstm_618/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_206/lstm_618/TensorArrayV2TensorListReserve<sequential_206/lstm_618/TensorArrayV2/element_shape:output:00sequential_206/lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_206/lstm_618/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_206/lstm_618/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_206/lstm_618/transpose:y:0Vsequential_206/lstm_618/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_206/lstm_618/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_618/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_618/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_618/strided_slice_2StridedSlice%sequential_206/lstm_618/transpose:y:06sequential_206/lstm_618/strided_slice_2/stack:output:08sequential_206/lstm_618/strided_slice_2/stack_1:output:08sequential_206/lstm_618/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOpReadVariableOpDsequential_206_lstm_618_lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_206/lstm_618/lstm_cell_594/MatMulMatMul0sequential_206/lstm_618/strided_slice_2:output:0Csequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOpFsequential_206_lstm_618_lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_206/lstm_618/lstm_cell_594/MatMul_1MatMul&sequential_206/lstm_618/zeros:output:0Esequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_206/lstm_618/lstm_cell_594/addAddV26sequential_206/lstm_618/lstm_cell_594/MatMul:product:08sequential_206/lstm_618/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOpEsequential_206_lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_206/lstm_618/lstm_cell_594/BiasAddBiasAdd-sequential_206/lstm_618/lstm_cell_594/add:z:0Dsequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_206/lstm_618/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_206/lstm_618/lstm_cell_594/splitSplit>sequential_206/lstm_618/lstm_cell_594/split/split_dim:output:06sequential_206/lstm_618/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_206/lstm_618/lstm_cell_594/SigmoidSigmoid4sequential_206/lstm_618/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_206/lstm_618/lstm_cell_594/Sigmoid_1Sigmoid4sequential_206/lstm_618/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_206/lstm_618/lstm_cell_594/mulMul3sequential_206/lstm_618/lstm_cell_594/Sigmoid_1:y:0(sequential_206/lstm_618/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_206/lstm_618/lstm_cell_594/ReluRelu4sequential_206/lstm_618/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_206/lstm_618/lstm_cell_594/mul_1Mul1sequential_206/lstm_618/lstm_cell_594/Sigmoid:y:08sequential_206/lstm_618/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_206/lstm_618/lstm_cell_594/add_1AddV2-sequential_206/lstm_618/lstm_cell_594/mul:z:0/sequential_206/lstm_618/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_206/lstm_618/lstm_cell_594/Sigmoid_2Sigmoid4sequential_206/lstm_618/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_206/lstm_618/lstm_cell_594/Relu_1Relu/sequential_206/lstm_618/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_206/lstm_618/lstm_cell_594/mul_2Mul3sequential_206/lstm_618/lstm_cell_594/Sigmoid_2:y:0:sequential_206/lstm_618/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_206/lstm_618/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_206/lstm_618/TensorArrayV2_1TensorListReserve>sequential_206/lstm_618/TensorArrayV2_1/element_shape:output:00sequential_206/lstm_618/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_206/lstm_618/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_206/lstm_618/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_206/lstm_618/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_206/lstm_618/whileWhile3sequential_206/lstm_618/while/loop_counter:output:09sequential_206/lstm_618/while/maximum_iterations:output:0%sequential_206/lstm_618/time:output:00sequential_206/lstm_618/TensorArrayV2_1:handle:0&sequential_206/lstm_618/zeros:output:0(sequential_206/lstm_618/zeros_1:output:00sequential_206/lstm_618/strided_slice_1:output:0Osequential_206/lstm_618/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_206_lstm_618_lstm_cell_594_matmul_readvariableop_resourceFsequential_206_lstm_618_lstm_cell_594_matmul_1_readvariableop_resourceEsequential_206_lstm_618_lstm_cell_594_biasadd_readvariableop_resource*
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
*sequential_206_lstm_618_while_body_3605901*6
cond.R,
*sequential_206_lstm_618_while_cond_3605900*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_206/lstm_618/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_206/lstm_618/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_206/lstm_618/while:output:3Qsequential_206/lstm_618/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_206/lstm_618/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_206/lstm_618/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_618/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_618/strided_slice_3StridedSliceCsequential_206/lstm_618/TensorArrayV2Stack/TensorListStack:tensor:06sequential_206/lstm_618/strided_slice_3/stack:output:08sequential_206/lstm_618/strided_slice_3/stack_1:output:08sequential_206/lstm_618/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_206/lstm_618/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_206/lstm_618/transpose_1	TransposeCsequential_206/lstm_618/TensorArrayV2Stack/TensorListStack:tensor:01sequential_206/lstm_618/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_206/lstm_618/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_206/lstm_619/ShapeShape'sequential_206/lstm_618/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_206/lstm_619/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_206/lstm_619/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_206/lstm_619/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_206/lstm_619/strided_sliceStridedSlice&sequential_206/lstm_619/Shape:output:04sequential_206/lstm_619/strided_slice/stack:output:06sequential_206/lstm_619/strided_slice/stack_1:output:06sequential_206/lstm_619/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_206/lstm_619/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_206/lstm_619/zeros/packedPack.sequential_206/lstm_619/strided_slice:output:0/sequential_206/lstm_619/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_206/lstm_619/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_619/zerosFill-sequential_206/lstm_619/zeros/packed:output:0,sequential_206/lstm_619/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_206/lstm_619/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_206/lstm_619/zeros_1/packedPack.sequential_206/lstm_619/strided_slice:output:01sequential_206/lstm_619/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_206/lstm_619/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_619/zeros_1Fill/sequential_206/lstm_619/zeros_1/packed:output:0.sequential_206/lstm_619/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_206/lstm_619/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_206/lstm_619/transpose	Transpose'sequential_206/lstm_618/transpose_1:y:0/sequential_206/lstm_619/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_206/lstm_619/Shape_1Shape%sequential_206/lstm_619/transpose:y:0*
T0*
_output_shapes
:w
-sequential_206/lstm_619/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_619/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_619/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_619/strided_slice_1StridedSlice(sequential_206/lstm_619/Shape_1:output:06sequential_206/lstm_619/strided_slice_1/stack:output:08sequential_206/lstm_619/strided_slice_1/stack_1:output:08sequential_206/lstm_619/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_206/lstm_619/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_206/lstm_619/TensorArrayV2TensorListReserve<sequential_206/lstm_619/TensorArrayV2/element_shape:output:00sequential_206/lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_206/lstm_619/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_206/lstm_619/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_206/lstm_619/transpose:y:0Vsequential_206/lstm_619/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_206/lstm_619/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_619/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_619/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_619/strided_slice_2StridedSlice%sequential_206/lstm_619/transpose:y:06sequential_206/lstm_619/strided_slice_2/stack:output:08sequential_206/lstm_619/strided_slice_2/stack_1:output:08sequential_206/lstm_619/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOpReadVariableOpDsequential_206_lstm_619_lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_206/lstm_619/lstm_cell_595/MatMulMatMul0sequential_206/lstm_619/strided_slice_2:output:0Csequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOpFsequential_206_lstm_619_lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_206/lstm_619/lstm_cell_595/MatMul_1MatMul&sequential_206/lstm_619/zeros:output:0Esequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_206/lstm_619/lstm_cell_595/addAddV26sequential_206/lstm_619/lstm_cell_595/MatMul:product:08sequential_206/lstm_619/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOpEsequential_206_lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_206/lstm_619/lstm_cell_595/BiasAddBiasAdd-sequential_206/lstm_619/lstm_cell_595/add:z:0Dsequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_206/lstm_619/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_206/lstm_619/lstm_cell_595/splitSplit>sequential_206/lstm_619/lstm_cell_595/split/split_dim:output:06sequential_206/lstm_619/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_206/lstm_619/lstm_cell_595/SigmoidSigmoid4sequential_206/lstm_619/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_206/lstm_619/lstm_cell_595/Sigmoid_1Sigmoid4sequential_206/lstm_619/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_206/lstm_619/lstm_cell_595/mulMul3sequential_206/lstm_619/lstm_cell_595/Sigmoid_1:y:0(sequential_206/lstm_619/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_206/lstm_619/lstm_cell_595/ReluRelu4sequential_206/lstm_619/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_206/lstm_619/lstm_cell_595/mul_1Mul1sequential_206/lstm_619/lstm_cell_595/Sigmoid:y:08sequential_206/lstm_619/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_206/lstm_619/lstm_cell_595/add_1AddV2-sequential_206/lstm_619/lstm_cell_595/mul:z:0/sequential_206/lstm_619/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_206/lstm_619/lstm_cell_595/Sigmoid_2Sigmoid4sequential_206/lstm_619/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_206/lstm_619/lstm_cell_595/Relu_1Relu/sequential_206/lstm_619/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_206/lstm_619/lstm_cell_595/mul_2Mul3sequential_206/lstm_619/lstm_cell_595/Sigmoid_2:y:0:sequential_206/lstm_619/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_206/lstm_619/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_206/lstm_619/TensorArrayV2_1TensorListReserve>sequential_206/lstm_619/TensorArrayV2_1/element_shape:output:00sequential_206/lstm_619/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_206/lstm_619/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_206/lstm_619/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_206/lstm_619/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_206/lstm_619/whileWhile3sequential_206/lstm_619/while/loop_counter:output:09sequential_206/lstm_619/while/maximum_iterations:output:0%sequential_206/lstm_619/time:output:00sequential_206/lstm_619/TensorArrayV2_1:handle:0&sequential_206/lstm_619/zeros:output:0(sequential_206/lstm_619/zeros_1:output:00sequential_206/lstm_619/strided_slice_1:output:0Osequential_206/lstm_619/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_206_lstm_619_lstm_cell_595_matmul_readvariableop_resourceFsequential_206_lstm_619_lstm_cell_595_matmul_1_readvariableop_resourceEsequential_206_lstm_619_lstm_cell_595_biasadd_readvariableop_resource*
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
*sequential_206_lstm_619_while_body_3606040*6
cond.R,
*sequential_206_lstm_619_while_cond_3606039*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_206/lstm_619/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_206/lstm_619/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_206/lstm_619/while:output:3Qsequential_206/lstm_619/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_206/lstm_619/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_206/lstm_619/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_619/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_619/strided_slice_3StridedSliceCsequential_206/lstm_619/TensorArrayV2Stack/TensorListStack:tensor:06sequential_206/lstm_619/strided_slice_3/stack:output:08sequential_206/lstm_619/strided_slice_3/stack_1:output:08sequential_206/lstm_619/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_206/lstm_619/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_206/lstm_619/transpose_1	TransposeCsequential_206/lstm_619/TensorArrayV2Stack/TensorListStack:tensor:01sequential_206/lstm_619/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_206/lstm_619/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_206/lstm_620/ShapeShape'sequential_206/lstm_619/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_206/lstm_620/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_206/lstm_620/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_206/lstm_620/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_206/lstm_620/strided_sliceStridedSlice&sequential_206/lstm_620/Shape:output:04sequential_206/lstm_620/strided_slice/stack:output:06sequential_206/lstm_620/strided_slice/stack_1:output:06sequential_206/lstm_620/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_206/lstm_620/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_206/lstm_620/zeros/packedPack.sequential_206/lstm_620/strided_slice:output:0/sequential_206/lstm_620/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_206/lstm_620/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_620/zerosFill-sequential_206/lstm_620/zeros/packed:output:0,sequential_206/lstm_620/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_206/lstm_620/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_206/lstm_620/zeros_1/packedPack.sequential_206/lstm_620/strided_slice:output:01sequential_206/lstm_620/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_206/lstm_620/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_206/lstm_620/zeros_1Fill/sequential_206/lstm_620/zeros_1/packed:output:0.sequential_206/lstm_620/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_206/lstm_620/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_206/lstm_620/transpose	Transpose'sequential_206/lstm_619/transpose_1:y:0/sequential_206/lstm_620/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_206/lstm_620/Shape_1Shape%sequential_206/lstm_620/transpose:y:0*
T0*
_output_shapes
:w
-sequential_206/lstm_620/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_620/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_620/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_620/strided_slice_1StridedSlice(sequential_206/lstm_620/Shape_1:output:06sequential_206/lstm_620/strided_slice_1/stack:output:08sequential_206/lstm_620/strided_slice_1/stack_1:output:08sequential_206/lstm_620/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_206/lstm_620/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_206/lstm_620/TensorArrayV2TensorListReserve<sequential_206/lstm_620/TensorArrayV2/element_shape:output:00sequential_206/lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_206/lstm_620/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_206/lstm_620/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_206/lstm_620/transpose:y:0Vsequential_206/lstm_620/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_206/lstm_620/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_620/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_206/lstm_620/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_620/strided_slice_2StridedSlice%sequential_206/lstm_620/transpose:y:06sequential_206/lstm_620/strided_slice_2/stack:output:08sequential_206/lstm_620/strided_slice_2/stack_1:output:08sequential_206/lstm_620/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOpReadVariableOpDsequential_206_lstm_620_lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_206/lstm_620/lstm_cell_596/MatMulMatMul0sequential_206/lstm_620/strided_slice_2:output:0Csequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOpFsequential_206_lstm_620_lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_206/lstm_620/lstm_cell_596/MatMul_1MatMul&sequential_206/lstm_620/zeros:output:0Esequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_206/lstm_620/lstm_cell_596/addAddV26sequential_206/lstm_620/lstm_cell_596/MatMul:product:08sequential_206/lstm_620/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOpEsequential_206_lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_206/lstm_620/lstm_cell_596/BiasAddBiasAdd-sequential_206/lstm_620/lstm_cell_596/add:z:0Dsequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_206/lstm_620/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_206/lstm_620/lstm_cell_596/splitSplit>sequential_206/lstm_620/lstm_cell_596/split/split_dim:output:06sequential_206/lstm_620/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_206/lstm_620/lstm_cell_596/SigmoidSigmoid4sequential_206/lstm_620/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_206/lstm_620/lstm_cell_596/Sigmoid_1Sigmoid4sequential_206/lstm_620/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_206/lstm_620/lstm_cell_596/mulMul3sequential_206/lstm_620/lstm_cell_596/Sigmoid_1:y:0(sequential_206/lstm_620/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_206/lstm_620/lstm_cell_596/ReluRelu4sequential_206/lstm_620/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_206/lstm_620/lstm_cell_596/mul_1Mul1sequential_206/lstm_620/lstm_cell_596/Sigmoid:y:08sequential_206/lstm_620/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_206/lstm_620/lstm_cell_596/add_1AddV2-sequential_206/lstm_620/lstm_cell_596/mul:z:0/sequential_206/lstm_620/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_206/lstm_620/lstm_cell_596/Sigmoid_2Sigmoid4sequential_206/lstm_620/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_206/lstm_620/lstm_cell_596/Relu_1Relu/sequential_206/lstm_620/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_206/lstm_620/lstm_cell_596/mul_2Mul3sequential_206/lstm_620/lstm_cell_596/Sigmoid_2:y:0:sequential_206/lstm_620/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_206/lstm_620/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_206/lstm_620/TensorArrayV2_1TensorListReserve>sequential_206/lstm_620/TensorArrayV2_1/element_shape:output:00sequential_206/lstm_620/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_206/lstm_620/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_206/lstm_620/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_206/lstm_620/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_206/lstm_620/whileWhile3sequential_206/lstm_620/while/loop_counter:output:09sequential_206/lstm_620/while/maximum_iterations:output:0%sequential_206/lstm_620/time:output:00sequential_206/lstm_620/TensorArrayV2_1:handle:0&sequential_206/lstm_620/zeros:output:0(sequential_206/lstm_620/zeros_1:output:00sequential_206/lstm_620/strided_slice_1:output:0Osequential_206/lstm_620/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_206_lstm_620_lstm_cell_596_matmul_readvariableop_resourceFsequential_206_lstm_620_lstm_cell_596_matmul_1_readvariableop_resourceEsequential_206_lstm_620_lstm_cell_596_biasadd_readvariableop_resource*
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
*sequential_206_lstm_620_while_body_3606179*6
cond.R,
*sequential_206_lstm_620_while_cond_3606178*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_206/lstm_620/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_206/lstm_620/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_206/lstm_620/while:output:3Qsequential_206/lstm_620/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_206/lstm_620/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_206/lstm_620/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_206/lstm_620/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_206/lstm_620/strided_slice_3StridedSliceCsequential_206/lstm_620/TensorArrayV2Stack/TensorListStack:tensor:06sequential_206/lstm_620/strided_slice_3/stack:output:08sequential_206/lstm_620/strided_slice_3/stack_1:output:08sequential_206/lstm_620/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_206/lstm_620/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_206/lstm_620/transpose_1	TransposeCsequential_206/lstm_620/TensorArrayV2Stack/TensorListStack:tensor:01sequential_206/lstm_620/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_206/lstm_620/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_206/dense_206/MatMul/ReadVariableOpReadVariableOp7sequential_206_dense_206_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_206/dense_206/MatMulMatMul0sequential_206/lstm_620/strided_slice_3:output:06sequential_206/dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_206/dense_206/BiasAdd/ReadVariableOpReadVariableOp8sequential_206_dense_206_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_206/dense_206/BiasAddBiasAdd)sequential_206/dense_206/MatMul:product:07sequential_206/dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_206/dense_206/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_206/dense_206/BiasAdd/ReadVariableOp/^sequential_206/dense_206/MatMul/ReadVariableOp=^sequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp<^sequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOp>^sequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp^sequential_206/lstm_618/while=^sequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp<^sequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOp>^sequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp^sequential_206/lstm_619/while=^sequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp<^sequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOp>^sequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp^sequential_206/lstm_620/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_206/dense_206/BiasAdd/ReadVariableOp/sequential_206/dense_206/BiasAdd/ReadVariableOp2`
.sequential_206/dense_206/MatMul/ReadVariableOp.sequential_206/dense_206/MatMul/ReadVariableOp2|
<sequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp<sequential_206/lstm_618/lstm_cell_594/BiasAdd/ReadVariableOp2z
;sequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOp;sequential_206/lstm_618/lstm_cell_594/MatMul/ReadVariableOp2~
=sequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp=sequential_206/lstm_618/lstm_cell_594/MatMul_1/ReadVariableOp2>
sequential_206/lstm_618/whilesequential_206/lstm_618/while2|
<sequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp<sequential_206/lstm_619/lstm_cell_595/BiasAdd/ReadVariableOp2z
;sequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOp;sequential_206/lstm_619/lstm_cell_595/MatMul/ReadVariableOp2~
=sequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp=sequential_206/lstm_619/lstm_cell_595/MatMul_1/ReadVariableOp2>
sequential_206/lstm_619/whilesequential_206/lstm_619/while2|
<sequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp<sequential_206/lstm_620/lstm_cell_596/BiasAdd/ReadVariableOp2z
;sequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOp;sequential_206/lstm_620/lstm_cell_596/MatMul/ReadVariableOp2~
=sequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp=sequential_206/lstm_620/lstm_cell_596/MatMul_1/ReadVariableOp2>
sequential_206/lstm_620/whilesequential_206/lstm_620/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_618_input
?J
?
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609910

inputs?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3609826*
condR
while_cond_3609825*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3610299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3610441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610441___redundant_placeholder05
1while_while_cond_3610441___redundant_placeholder15
1while_while_cond_3610441___redundant_placeholder25
1while_while_cond_3610441___redundant_placeholder3
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
while_cond_3610771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610771___redundant_placeholder05
1while_while_cond_3610771___redundant_placeholder15
1while_while_cond_3610771___redundant_placeholder25
1while_while_cond_3610771___redundant_placeholder3
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
while_body_3611058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3608149

inputs?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3608065*
condR
while_cond_3608064*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3606891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_595_3606915_0:	d?0
while_lstm_cell_595_3606917_0:	2?,
while_lstm_cell_595_3606919_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_595_3606915:	d?.
while_lstm_cell_595_3606917:	2?*
while_lstm_cell_595_3606919:	???+while/lstm_cell_595/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_595/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_595_3606915_0while_lstm_cell_595_3606917_0while_lstm_cell_595_3606919_0*
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606832?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_595/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_595/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_595/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_595/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_595_3606915while_lstm_cell_595_3606915_0"<
while_lstm_cell_595_3606917while_lstm_cell_595_3606917_0"<
while_lstm_cell_595_3606919while_lstm_cell_595_3606919_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_595/StatefulPartitionedCall+while/lstm_cell_595/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_596_layer_call_fn_3611517

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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607036o
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
while_body_3607684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3609540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3606349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3606349___redundant_placeholder05
1while_while_cond_3606349___redundant_placeholder15
1while_while_cond_3606349___redundant_placeholder25
1while_while_cond_3606349___redundant_placeholder3
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
while_body_3609969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_620_while_body_3609347.
*lstm_620_while_lstm_620_while_loop_counter4
0lstm_620_while_lstm_620_while_maximum_iterations
lstm_620_while_placeholder 
lstm_620_while_placeholder_1 
lstm_620_while_placeholder_2 
lstm_620_while_placeholder_3-
)lstm_620_while_lstm_620_strided_slice_1_0i
elstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0:2(Q
?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(L
>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0:(
lstm_620_while_identity
lstm_620_while_identity_1
lstm_620_while_identity_2
lstm_620_while_identity_3
lstm_620_while_identity_4
lstm_620_while_identity_5+
'lstm_620_while_lstm_620_strided_slice_1g
clstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensorM
;lstm_620_while_lstm_cell_596_matmul_readvariableop_resource:2(O
=lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource:
(J
<lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource:(??3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp?2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp?4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp?
@lstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_620/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0lstm_620_while_placeholderIlstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_620/while/lstm_cell_596/MatMulMatMul9lstm_620/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_620/while/lstm_cell_596/MatMul_1MatMullstm_620_while_placeholder_2<lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_620/while/lstm_cell_596/addAddV2-lstm_620/while/lstm_cell_596/MatMul:product:0/lstm_620/while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_620/while/lstm_cell_596/BiasAddBiasAdd$lstm_620/while/lstm_cell_596/add:z:0;lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_620/while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_620/while/lstm_cell_596/splitSplit5lstm_620/while/lstm_cell_596/split/split_dim:output:0-lstm_620/while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_620/while/lstm_cell_596/SigmoidSigmoid+lstm_620/while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_620/while/lstm_cell_596/Sigmoid_1Sigmoid+lstm_620/while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_620/while/lstm_cell_596/mulMul*lstm_620/while/lstm_cell_596/Sigmoid_1:y:0lstm_620_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_620/while/lstm_cell_596/ReluRelu+lstm_620/while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/mul_1Mul(lstm_620/while/lstm_cell_596/Sigmoid:y:0/lstm_620/while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/add_1AddV2$lstm_620/while/lstm_cell_596/mul:z:0&lstm_620/while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_620/while/lstm_cell_596/Sigmoid_2Sigmoid+lstm_620/while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_620/while/lstm_cell_596/Relu_1Relu&lstm_620/while/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/mul_2Mul*lstm_620/while/lstm_cell_596/Sigmoid_2:y:01lstm_620/while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_620/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_620_while_placeholder_1lstm_620_while_placeholder&lstm_620/while/lstm_cell_596/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_620/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_620/while/addAddV2lstm_620_while_placeholderlstm_620/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_620/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_620/while/add_1AddV2*lstm_620_while_lstm_620_while_loop_counterlstm_620/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_620/while/IdentityIdentitylstm_620/while/add_1:z:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_1Identity0lstm_620_while_lstm_620_while_maximum_iterations^lstm_620/while/NoOp*
T0*
_output_shapes
: t
lstm_620/while/Identity_2Identitylstm_620/while/add:z:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_3IdentityClstm_620/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_4Identity&lstm_620/while/lstm_cell_596/mul_2:z:0^lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_620/while/Identity_5Identity&lstm_620/while/lstm_cell_596/add_1:z:0^lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_620/while/NoOpNoOp4^lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp3^lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp5^lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_620_while_identity lstm_620/while/Identity:output:0"?
lstm_620_while_identity_1"lstm_620/while/Identity_1:output:0"?
lstm_620_while_identity_2"lstm_620/while/Identity_2:output:0"?
lstm_620_while_identity_3"lstm_620/while/Identity_3:output:0"?
lstm_620_while_identity_4"lstm_620/while/Identity_4:output:0"?
lstm_620_while_identity_5"lstm_620/while/Identity_5:output:0"T
'lstm_620_while_lstm_620_strided_slice_1)lstm_620_while_lstm_620_strided_slice_1_0"~
<lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0"?
=lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0"|
;lstm_620_while_lstm_cell_596_matmul_readvariableop_resource=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0"?
clstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensorelstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp2h
2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp2l
4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3609825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3609825___redundant_placeholder05
1while_while_cond_3609825___redundant_placeholder15
1while_while_cond_3609825___redundant_placeholder25
1while_while_cond_3609825___redundant_placeholder3
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

lstm_618_while_body_3608642.
*lstm_618_while_lstm_618_while_loop_counter4
0lstm_618_while_lstm_618_while_maximum_iterations
lstm_618_while_placeholder 
lstm_618_while_placeholder_1 
lstm_618_while_placeholder_2 
lstm_618_while_placeholder_3-
)lstm_618_while_lstm_618_strided_slice_1_0i
elstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0:	?R
?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?M
>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
lstm_618_while_identity
lstm_618_while_identity_1
lstm_618_while_identity_2
lstm_618_while_identity_3
lstm_618_while_identity_4
lstm_618_while_identity_5+
'lstm_618_while_lstm_618_strided_slice_1g
clstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensorN
;lstm_618_while_lstm_cell_594_matmul_readvariableop_resource:	?P
=lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource:	d?K
<lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource:	???3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp?2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp?4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp?
@lstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_618/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0lstm_618_while_placeholderIlstm_618/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_618/while/lstm_cell_594/MatMulMatMul9lstm_618/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_618/while/lstm_cell_594/MatMul_1MatMullstm_618_while_placeholder_2<lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_618/while/lstm_cell_594/addAddV2-lstm_618/while/lstm_cell_594/MatMul:product:0/lstm_618/while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_618/while/lstm_cell_594/BiasAddBiasAdd$lstm_618/while/lstm_cell_594/add:z:0;lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_618/while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_618/while/lstm_cell_594/splitSplit5lstm_618/while/lstm_cell_594/split/split_dim:output:0-lstm_618/while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_618/while/lstm_cell_594/SigmoidSigmoid+lstm_618/while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_618/while/lstm_cell_594/Sigmoid_1Sigmoid+lstm_618/while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_618/while/lstm_cell_594/mulMul*lstm_618/while/lstm_cell_594/Sigmoid_1:y:0lstm_618_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_618/while/lstm_cell_594/ReluRelu+lstm_618/while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/mul_1Mul(lstm_618/while/lstm_cell_594/Sigmoid:y:0/lstm_618/while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/add_1AddV2$lstm_618/while/lstm_cell_594/mul:z:0&lstm_618/while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_618/while/lstm_cell_594/Sigmoid_2Sigmoid+lstm_618/while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_618/while/lstm_cell_594/Relu_1Relu&lstm_618/while/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_618/while/lstm_cell_594/mul_2Mul*lstm_618/while/lstm_cell_594/Sigmoid_2:y:01lstm_618/while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_618/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_618_while_placeholder_1lstm_618_while_placeholder&lstm_618/while/lstm_cell_594/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_618/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_618/while/addAddV2lstm_618_while_placeholderlstm_618/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_618/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_618/while/add_1AddV2*lstm_618_while_lstm_618_while_loop_counterlstm_618/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_618/while/IdentityIdentitylstm_618/while/add_1:z:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_1Identity0lstm_618_while_lstm_618_while_maximum_iterations^lstm_618/while/NoOp*
T0*
_output_shapes
: t
lstm_618/while/Identity_2Identitylstm_618/while/add:z:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_3IdentityClstm_618/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_618/while/NoOp*
T0*
_output_shapes
: ?
lstm_618/while/Identity_4Identity&lstm_618/while/lstm_cell_594/mul_2:z:0^lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_618/while/Identity_5Identity&lstm_618/while/lstm_cell_594/add_1:z:0^lstm_618/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_618/while/NoOpNoOp4^lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp3^lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp5^lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_618_while_identity lstm_618/while/Identity:output:0"?
lstm_618_while_identity_1"lstm_618/while/Identity_1:output:0"?
lstm_618_while_identity_2"lstm_618/while/Identity_2:output:0"?
lstm_618_while_identity_3"lstm_618/while/Identity_3:output:0"?
lstm_618_while_identity_4"lstm_618/while/Identity_4:output:0"?
lstm_618_while_identity_5"lstm_618/while/Identity_5:output:0"T
'lstm_618_while_lstm_618_strided_slice_1)lstm_618_while_lstm_618_strided_slice_1_0"~
<lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource>lstm_618_while_lstm_cell_594_biasadd_readvariableop_resource_0"?
=lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource?lstm_618_while_lstm_cell_594_matmul_1_readvariableop_resource_0"|
;lstm_618_while_lstm_cell_594_matmul_readvariableop_resource=lstm_618_while_lstm_cell_594_matmul_readvariableop_resource_0"?
clstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensorelstm_618_while_tensorarrayv2read_tensorlistgetitem_lstm_618_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp3lstm_618/while/lstm_cell_594/BiasAdd/ReadVariableOp2h
2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp2lstm_618/while/lstm_cell_594/MatMul/ReadVariableOp2l
4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp4lstm_618/while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3607683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607683___redundant_placeholder05
1while_while_cond_3607683___redundant_placeholder15
1while_while_cond_3607683___redundant_placeholder25
1while_while_cond_3607683___redundant_placeholder3
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
while_cond_3609968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3609968___redundant_placeholder05
1while_while_cond_3609968___redundant_placeholder15
1while_while_cond_3609968___redundant_placeholder25
1while_while_cond_3609968___redundant_placeholder3
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606482

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
?
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608464
lstm_618_input#
lstm_618_3608437:	?#
lstm_618_3608439:	d?
lstm_618_3608441:	?#
lstm_619_3608444:	d?#
lstm_619_3608446:	2?
lstm_619_3608448:	?"
lstm_620_3608451:2("
lstm_620_3608453:
(
lstm_620_3608455:(#
dense_206_3608458:

dense_206_3608460:
identity??!dense_206/StatefulPartitionedCall? lstm_618/StatefulPartitionedCall? lstm_619/StatefulPartitionedCall? lstm_620/StatefulPartitionedCall?
 lstm_618/StatefulPartitionedCallStatefulPartitionedCalllstm_618_inputlstm_618_3608437lstm_618_3608439lstm_618_3608441*
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3607468?
 lstm_619/StatefulPartitionedCallStatefulPartitionedCall)lstm_618/StatefulPartitionedCall:output:0lstm_619_3608444lstm_619_3608446lstm_619_3608448*
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3607618?
 lstm_620/StatefulPartitionedCallStatefulPartitionedCall)lstm_619/StatefulPartitionedCall:output:0lstm_620_3608451lstm_620_3608453lstm_620_3608455*
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607768?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_620/StatefulPartitionedCall:output:0dense_206_3608458dense_206_3608460*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786y
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_206/StatefulPartitionedCall!^lstm_618/StatefulPartitionedCall!^lstm_619/StatefulPartitionedCall!^lstm_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2D
 lstm_618/StatefulPartitionedCall lstm_618/StatefulPartitionedCall2D
 lstm_619/StatefulPartitionedCall lstm_619/StatefulPartitionedCall2D
 lstm_620/StatefulPartitionedCall lstm_620/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_618_input
?
?
*__inference_lstm_619_layer_call_fn_3610064
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3606769|
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
?
?
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608494
lstm_618_input#
lstm_618_3608467:	?#
lstm_618_3608469:	d?
lstm_618_3608471:	?#
lstm_619_3608474:	d?#
lstm_619_3608476:	2?
lstm_619_3608478:	?"
lstm_620_3608481:2("
lstm_620_3608483:
(
lstm_620_3608485:(#
dense_206_3608488:

dense_206_3608490:
identity??!dense_206/StatefulPartitionedCall? lstm_618/StatefulPartitionedCall? lstm_619/StatefulPartitionedCall? lstm_620/StatefulPartitionedCall?
 lstm_618/StatefulPartitionedCallStatefulPartitionedCalllstm_618_inputlstm_618_3608467lstm_618_3608469lstm_618_3608471*
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3608314?
 lstm_619/StatefulPartitionedCallStatefulPartitionedCall)lstm_618/StatefulPartitionedCall:output:0lstm_619_3608474lstm_619_3608476lstm_619_3608478*
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3608149?
 lstm_620/StatefulPartitionedCallStatefulPartitionedCall)lstm_619/StatefulPartitionedCall:output:0lstm_620_3608481lstm_620_3608483lstm_620_3608485*
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607984?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_620/StatefulPartitionedCall:output:0dense_206_3608488dense_206_3608490*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786y
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_206/StatefulPartitionedCall!^lstm_618/StatefulPartitionedCall!^lstm_619/StatefulPartitionedCall!^lstm_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2D
 lstm_618/StatefulPartitionedCall lstm_618/StatefulPartitionedCall2D
 lstm_619/StatefulPartitionedCall lstm_619/StatefulPartitionedCall2D
 lstm_620/StatefulPartitionedCall lstm_620/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_618_input
?
?
while_cond_3606699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3606699___redundant_placeholder05
1while_while_cond_3606699___redundant_placeholder15
1while_while_cond_3606699___redundant_placeholder25
1while_while_cond_3606699___redundant_placeholder3
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
while_cond_3607049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607049___redundant_placeholder05
1while_while_cond_3607049___redundant_placeholder15
1while_while_cond_3607049___redundant_placeholder25
1while_while_cond_3607049___redundant_placeholder3
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
%__inference_signature_wrapper_3608529
lstm_618_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_618_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3606269o
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
_user_specified_namelstm_618_input
?
?
while_cond_3610155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610155___redundant_placeholder05
1while_while_cond_3610155___redundant_placeholder15
1while_while_cond_3610155___redundant_placeholder25
1while_while_cond_3610155___redundant_placeholder3
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
/__inference_lstm_cell_595_layer_call_fn_3611436

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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606832o
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
*__inference_lstm_620_layer_call_fn_3610691
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607310o
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

?
lstm_619_while_cond_3609207.
*lstm_619_while_lstm_619_while_loop_counter4
0lstm_619_while_lstm_619_while_maximum_iterations
lstm_619_while_placeholder 
lstm_619_while_placeholder_1 
lstm_619_while_placeholder_2 
lstm_619_while_placeholder_30
,lstm_619_while_less_lstm_619_strided_slice_1G
Clstm_619_while_lstm_619_while_cond_3609207___redundant_placeholder0G
Clstm_619_while_lstm_619_while_cond_3609207___redundant_placeholder1G
Clstm_619_while_lstm_619_while_cond_3609207___redundant_placeholder2G
Clstm_619_while_lstm_619_while_cond_3609207___redundant_placeholder3
lstm_619_while_identity
?
lstm_619/while/LessLesslstm_619_while_placeholder,lstm_619_while_less_lstm_619_strided_slice_1*
T0*
_output_shapes
: ]
lstm_619/while/IdentityIdentitylstm_619/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_619_while_identity lstm_619/while/Identity:output:0*(
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610526

inputs?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3610442*
condR
while_cond_3610441*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_206_layer_call_fn_3607818
lstm_618_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_618_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3607793o
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
_user_specified_namelstm_618_input
?8
?
while_body_3610156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_620_while_cond_3609346.
*lstm_620_while_lstm_620_while_loop_counter4
0lstm_620_while_lstm_620_while_maximum_iterations
lstm_620_while_placeholder 
lstm_620_while_placeholder_1 
lstm_620_while_placeholder_2 
lstm_620_while_placeholder_30
,lstm_620_while_less_lstm_620_strided_slice_1G
Clstm_620_while_lstm_620_while_cond_3609346___redundant_placeholder0G
Clstm_620_while_lstm_620_while_cond_3609346___redundant_placeholder1G
Clstm_620_while_lstm_620_while_cond_3609346___redundant_placeholder2G
Clstm_620_while_lstm_620_while_cond_3609346___redundant_placeholder3
lstm_620_while_identity
?
lstm_620/while/LessLesslstm_620_while_placeholder,lstm_620_while_less_lstm_620_strided_slice_1*
T0*
_output_shapes
: ]
lstm_620/while/IdentityIdentitylstm_620/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_620_while_identity lstm_620/while/Identity:output:0*(
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607984

inputs>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3607900*
condR
while_cond_3607899*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_620_layer_call_fn_3610702

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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607768o
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607768

inputs>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3607684*
condR
while_cond_3607683*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_618_layer_call_and_return_conditional_losses_3607468

inputs?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3607384*
condR
while_cond_3607383*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3608064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3608064___redundant_placeholder05
1while_while_cond_3608064___redundant_placeholder15
1while_while_cond_3608064___redundant_placeholder25
1while_while_cond_3608064___redundant_placeholder3
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
while_cond_3606540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3606540___redundant_placeholder05
1while_while_cond_3606540___redundant_placeholder15
1while_while_cond_3606540___redundant_placeholder25
1while_while_cond_3606540___redundant_placeholder3
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606832

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
*sequential_206_lstm_620_while_body_3606179L
Hsequential_206_lstm_620_while_sequential_206_lstm_620_while_loop_counterR
Nsequential_206_lstm_620_while_sequential_206_lstm_620_while_maximum_iterations-
)sequential_206_lstm_620_while_placeholder/
+sequential_206_lstm_620_while_placeholder_1/
+sequential_206_lstm_620_while_placeholder_2/
+sequential_206_lstm_620_while_placeholder_3K
Gsequential_206_lstm_620_while_sequential_206_lstm_620_strided_slice_1_0?
?sequential_206_lstm_620_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_620_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_206_lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0:2(`
Nsequential_206_lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0:
([
Msequential_206_lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0:(*
&sequential_206_lstm_620_while_identity,
(sequential_206_lstm_620_while_identity_1,
(sequential_206_lstm_620_while_identity_2,
(sequential_206_lstm_620_while_identity_3,
(sequential_206_lstm_620_while_identity_4,
(sequential_206_lstm_620_while_identity_5I
Esequential_206_lstm_620_while_sequential_206_lstm_620_strided_slice_1?
?sequential_206_lstm_620_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_620_tensorarrayunstack_tensorlistfromtensor\
Jsequential_206_lstm_620_while_lstm_cell_596_matmul_readvariableop_resource:2(^
Lsequential_206_lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource:
(Y
Ksequential_206_lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource:(??Bsequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp?Asequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp?Csequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp?
Osequential_206/lstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_206/lstm_620/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_206_lstm_620_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_620_tensorarrayunstack_tensorlistfromtensor_0)sequential_206_lstm_620_while_placeholderXsequential_206/lstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOpLsequential_206_lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_206/lstm_620/while/lstm_cell_596/MatMulMatMulHsequential_206/lstm_620/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOpNsequential_206_lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_206/lstm_620/while/lstm_cell_596/MatMul_1MatMul+sequential_206_lstm_620_while_placeholder_2Ksequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_206/lstm_620/while/lstm_cell_596/addAddV2<sequential_206/lstm_620/while/lstm_cell_596/MatMul:product:0>sequential_206/lstm_620/while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOpMsequential_206_lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_206/lstm_620/while/lstm_cell_596/BiasAddBiasAdd3sequential_206/lstm_620/while/lstm_cell_596/add:z:0Jsequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_206/lstm_620/while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_206/lstm_620/while/lstm_cell_596/splitSplitDsequential_206/lstm_620/while/lstm_cell_596/split/split_dim:output:0<sequential_206/lstm_620/while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_206/lstm_620/while/lstm_cell_596/SigmoidSigmoid:sequential_206/lstm_620/while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_206/lstm_620/while/lstm_cell_596/Sigmoid_1Sigmoid:sequential_206/lstm_620/while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_206/lstm_620/while/lstm_cell_596/mulMul9sequential_206/lstm_620/while/lstm_cell_596/Sigmoid_1:y:0+sequential_206_lstm_620_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_206/lstm_620/while/lstm_cell_596/ReluRelu:sequential_206/lstm_620/while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_206/lstm_620/while/lstm_cell_596/mul_1Mul7sequential_206/lstm_620/while/lstm_cell_596/Sigmoid:y:0>sequential_206/lstm_620/while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_206/lstm_620/while/lstm_cell_596/add_1AddV23sequential_206/lstm_620/while/lstm_cell_596/mul:z:05sequential_206/lstm_620/while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_206/lstm_620/while/lstm_cell_596/Sigmoid_2Sigmoid:sequential_206/lstm_620/while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_206/lstm_620/while/lstm_cell_596/Relu_1Relu5sequential_206/lstm_620/while/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_206/lstm_620/while/lstm_cell_596/mul_2Mul9sequential_206/lstm_620/while/lstm_cell_596/Sigmoid_2:y:0@sequential_206/lstm_620/while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_206/lstm_620/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_206_lstm_620_while_placeholder_1)sequential_206_lstm_620_while_placeholder5sequential_206/lstm_620/while/lstm_cell_596/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_206/lstm_620/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_206/lstm_620/while/addAddV2)sequential_206_lstm_620_while_placeholder,sequential_206/lstm_620/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_206/lstm_620/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_206/lstm_620/while/add_1AddV2Hsequential_206_lstm_620_while_sequential_206_lstm_620_while_loop_counter.sequential_206/lstm_620/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_206/lstm_620/while/IdentityIdentity'sequential_206/lstm_620/while/add_1:z:0#^sequential_206/lstm_620/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_620/while/Identity_1IdentityNsequential_206_lstm_620_while_sequential_206_lstm_620_while_maximum_iterations#^sequential_206/lstm_620/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_620/while/Identity_2Identity%sequential_206/lstm_620/while/add:z:0#^sequential_206/lstm_620/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_620/while/Identity_3IdentityRsequential_206/lstm_620/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_206/lstm_620/while/NoOp*
T0*
_output_shapes
: ?
(sequential_206/lstm_620/while/Identity_4Identity5sequential_206/lstm_620/while/lstm_cell_596/mul_2:z:0#^sequential_206/lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_206/lstm_620/while/Identity_5Identity5sequential_206/lstm_620/while/lstm_cell_596/add_1:z:0#^sequential_206/lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_206/lstm_620/while/NoOpNoOpC^sequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOpB^sequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOpD^sequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_206_lstm_620_while_identity/sequential_206/lstm_620/while/Identity:output:0"]
(sequential_206_lstm_620_while_identity_11sequential_206/lstm_620/while/Identity_1:output:0"]
(sequential_206_lstm_620_while_identity_21sequential_206/lstm_620/while/Identity_2:output:0"]
(sequential_206_lstm_620_while_identity_31sequential_206/lstm_620/while/Identity_3:output:0"]
(sequential_206_lstm_620_while_identity_41sequential_206/lstm_620/while/Identity_4:output:0"]
(sequential_206_lstm_620_while_identity_51sequential_206/lstm_620/while/Identity_5:output:0"?
Ksequential_206_lstm_620_while_lstm_cell_596_biasadd_readvariableop_resourceMsequential_206_lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0"?
Lsequential_206_lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resourceNsequential_206_lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0"?
Jsequential_206_lstm_620_while_lstm_cell_596_matmul_readvariableop_resourceLsequential_206_lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0"?
Esequential_206_lstm_620_while_sequential_206_lstm_620_strided_slice_1Gsequential_206_lstm_620_while_sequential_206_lstm_620_strided_slice_1_0"?
?sequential_206_lstm_620_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_620_tensorarrayunstack_tensorlistfromtensor?sequential_206_lstm_620_while_tensorarrayv2read_tensorlistgetitem_sequential_206_lstm_620_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOpBsequential_206/lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp2?
Asequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOpAsequential_206/lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp2?
Csequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOpCsequential_206/lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3610584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610584___redundant_placeholder05
1while_while_cond_3610584___redundant_placeholder15
1while_while_cond_3610584___redundant_placeholder25
1while_while_cond_3610584___redundant_placeholder3
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611598

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
*__inference_lstm_618_layer_call_fn_3609448
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3606419|
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607036

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
*sequential_206_lstm_618_while_cond_3605900L
Hsequential_206_lstm_618_while_sequential_206_lstm_618_while_loop_counterR
Nsequential_206_lstm_618_while_sequential_206_lstm_618_while_maximum_iterations-
)sequential_206_lstm_618_while_placeholder/
+sequential_206_lstm_618_while_placeholder_1/
+sequential_206_lstm_618_while_placeholder_2/
+sequential_206_lstm_618_while_placeholder_3N
Jsequential_206_lstm_618_while_less_sequential_206_lstm_618_strided_slice_1e
asequential_206_lstm_618_while_sequential_206_lstm_618_while_cond_3605900___redundant_placeholder0e
asequential_206_lstm_618_while_sequential_206_lstm_618_while_cond_3605900___redundant_placeholder1e
asequential_206_lstm_618_while_sequential_206_lstm_618_while_cond_3605900___redundant_placeholder2e
asequential_206_lstm_618_while_sequential_206_lstm_618_while_cond_3605900___redundant_placeholder3*
&sequential_206_lstm_618_while_identity
?
"sequential_206/lstm_618/while/LessLess)sequential_206_lstm_618_while_placeholderJsequential_206_lstm_618_while_less_sequential_206_lstm_618_strided_slice_1*
T0*
_output_shapes
: {
&sequential_206/lstm_618/while/IdentityIdentity&sequential_206/lstm_618/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_206_lstm_618_while_identity/sequential_206/lstm_618/while/Identity:output:0*(
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786

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
?J
?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610669

inputs?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3610585*
condR
while_cond_3610584*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608382

inputs#
lstm_618_3608355:	?#
lstm_618_3608357:	d?
lstm_618_3608359:	?#
lstm_619_3608362:	d?#
lstm_619_3608364:	2?
lstm_619_3608366:	?"
lstm_620_3608369:2("
lstm_620_3608371:
(
lstm_620_3608373:(#
dense_206_3608376:

dense_206_3608378:
identity??!dense_206/StatefulPartitionedCall? lstm_618/StatefulPartitionedCall? lstm_619/StatefulPartitionedCall? lstm_620/StatefulPartitionedCall?
 lstm_618/StatefulPartitionedCallStatefulPartitionedCallinputslstm_618_3608355lstm_618_3608357lstm_618_3608359*
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3608314?
 lstm_619/StatefulPartitionedCallStatefulPartitionedCall)lstm_618/StatefulPartitionedCall:output:0lstm_619_3608362lstm_619_3608364lstm_619_3608366*
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3608149?
 lstm_620/StatefulPartitionedCallStatefulPartitionedCall)lstm_619/StatefulPartitionedCall:output:0lstm_620_3608369lstm_620_3608371lstm_620_3608373*
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607984?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_620/StatefulPartitionedCall:output:0dense_206_3608376dense_206_3608378*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3607786y
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_206/StatefulPartitionedCall!^lstm_618/StatefulPartitionedCall!^lstm_619/StatefulPartitionedCall!^lstm_620/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2D
 lstm_618/StatefulPartitionedCall lstm_618/StatefulPartitionedCall2D
 lstm_619/StatefulPartitionedCall lstm_619/StatefulPartitionedCall2D
 lstm_620/StatefulPartitionedCall lstm_620/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3606769

inputs(
lstm_cell_595_3606687:	d?(
lstm_cell_595_3606689:	2?$
lstm_cell_595_3606691:	?
identity??%lstm_cell_595/StatefulPartitionedCall?while;
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
%lstm_cell_595/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_595_3606687lstm_cell_595_3606689lstm_cell_595_3606691*
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606686n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_595_3606687lstm_cell_595_3606689lstm_cell_595_3606691*
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
while_body_3606700*
condR
while_cond_3606699*K
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
NoOpNoOp&^lstm_cell_595/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_595/StatefulPartitionedCall%lstm_cell_595/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607119

inputs'
lstm_cell_596_3607037:2('
lstm_cell_596_3607039:
(#
lstm_cell_596_3607041:(
identity??%lstm_cell_596/StatefulPartitionedCall?while;
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
%lstm_cell_596/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_596_3607037lstm_cell_596_3607039lstm_cell_596_3607041*
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3607036n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_596_3607037lstm_cell_596_3607039lstm_cell_596_3607041*
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
while_body_3607050*
condR
while_cond_3607049*K
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
NoOpNoOp&^lstm_cell_596/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_596/StatefulPartitionedCall%lstm_cell_596/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3607618

inputs?
,lstm_cell_595_matmul_readvariableop_resource:	d?A
.lstm_cell_595_matmul_1_readvariableop_resource:	2?<
-lstm_cell_595_biasadd_readvariableop_resource:	?
identity??$lstm_cell_595/BiasAdd/ReadVariableOp?#lstm_cell_595/MatMul/ReadVariableOp?%lstm_cell_595/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_595/MatMul/ReadVariableOpReadVariableOp,lstm_cell_595_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_595/MatMulMatMulstrided_slice_2:output:0+lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_595_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_595/MatMul_1MatMulzeros:output:0-lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_595/addAddV2lstm_cell_595/MatMul:product:0 lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_595_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_595/BiasAddBiasAddlstm_cell_595/add:z:0,lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_595/splitSplit&lstm_cell_595/split/split_dim:output:0lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_595/SigmoidSigmoidlstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_1Sigmoidlstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_595/mulMullstm_cell_595/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_595/ReluRelulstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_1Mullstm_cell_595/Sigmoid:y:0 lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_595/add_1AddV2lstm_cell_595/mul:z:0lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_595/Sigmoid_2Sigmoidlstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_595/Relu_1Relulstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_595/mul_2Mullstm_cell_595/Sigmoid_2:y:0"lstm_cell_595/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_595_matmul_readvariableop_resource.lstm_cell_595_matmul_1_readvariableop_resource-lstm_cell_595_biasadd_readvariableop_resource*
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
while_body_3607534*
condR
while_cond_3607533*K
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
NoOpNoOp%^lstm_cell_595/BiasAdd/ReadVariableOp$^lstm_cell_595/MatMul/ReadVariableOp&^lstm_cell_595/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_595/BiasAdd/ReadVariableOp$lstm_cell_595/BiasAdd/ReadVariableOp2J
#lstm_cell_595/MatMul/ReadVariableOp#lstm_cell_595/MatMul/ReadVariableOp2N
%lstm_cell_595/MatMul_1/ReadVariableOp%lstm_cell_595/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_595_layer_call_fn_3611419

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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606686o
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
while_cond_3608229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3608229___redundant_placeholder05
1while_while_cond_3608229___redundant_placeholder15
1while_while_cond_3608229___redundant_placeholder25
1while_while_cond_3608229___redundant_placeholder3
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
while_cond_3607533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607533___redundant_placeholder05
1while_while_cond_3607533___redundant_placeholder15
1while_while_cond_3607533___redundant_placeholder25
1while_while_cond_3607533___redundant_placeholder3
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3610053

inputs?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3609969*
condR
while_cond_3609968*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611370

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

?
lstm_619_while_cond_3608780.
*lstm_619_while_lstm_619_while_loop_counter4
0lstm_619_while_lstm_619_while_maximum_iterations
lstm_619_while_placeholder 
lstm_619_while_placeholder_1 
lstm_619_while_placeholder_2 
lstm_619_while_placeholder_30
,lstm_619_while_less_lstm_619_strided_slice_1G
Clstm_619_while_lstm_619_while_cond_3608780___redundant_placeholder0G
Clstm_619_while_lstm_619_while_cond_3608780___redundant_placeholder1G
Clstm_619_while_lstm_619_while_cond_3608780___redundant_placeholder2G
Clstm_619_while_lstm_619_while_cond_3608780___redundant_placeholder3
lstm_619_while_identity
?
lstm_619/while/LessLesslstm_619_while_placeholder,lstm_619_while_less_lstm_619_strided_slice_1*
T0*
_output_shapes
: ]
lstm_619/while/IdentityIdentitylstm_619/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_619_while_identity lstm_619/while/Identity:output:0*(
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
lstm_620_while_cond_3608919.
*lstm_620_while_lstm_620_while_loop_counter4
0lstm_620_while_lstm_620_while_maximum_iterations
lstm_620_while_placeholder 
lstm_620_while_placeholder_1 
lstm_620_while_placeholder_2 
lstm_620_while_placeholder_30
,lstm_620_while_less_lstm_620_strided_slice_1G
Clstm_620_while_lstm_620_while_cond_3608919___redundant_placeholder0G
Clstm_620_while_lstm_620_while_cond_3608919___redundant_placeholder1G
Clstm_620_while_lstm_620_while_cond_3608919___redundant_placeholder2G
Clstm_620_while_lstm_620_while_cond_3608919___redundant_placeholder3
lstm_620_while_identity
?
lstm_620/while/LessLesslstm_620_while_placeholder,lstm_620_while_less_lstm_620_strided_slice_1*
T0*
_output_shapes
: ]
lstm_620/while/IdentityIdentitylstm_620/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_620_while_identity lstm_620/while/Identity:output:0*(
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
lstm_618_while_cond_3608641.
*lstm_618_while_lstm_618_while_loop_counter4
0lstm_618_while_lstm_618_while_maximum_iterations
lstm_618_while_placeholder 
lstm_618_while_placeholder_1 
lstm_618_while_placeholder_2 
lstm_618_while_placeholder_30
,lstm_618_while_less_lstm_618_strided_slice_1G
Clstm_618_while_lstm_618_while_cond_3608641___redundant_placeholder0G
Clstm_618_while_lstm_618_while_cond_3608641___redundant_placeholder1G
Clstm_618_while_lstm_618_while_cond_3608641___redundant_placeholder2G
Clstm_618_while_lstm_618_while_cond_3608641___redundant_placeholder3
lstm_618_while_identity
?
lstm_618/while/LessLesslstm_618_while_placeholder,lstm_618_while_less_lstm_618_strided_slice_1*
T0*
_output_shapes
: ]
lstm_618/while/IdentityIdentitylstm_618/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_618_while_identity lstm_618/while/Identity:output:0*(
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
while_body_3608230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_618_layer_call_fn_3609459
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3606610|
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
while_body_3609826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_594_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_594_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_594_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_594_matmul_readvariableop_resource:	?G
4while_lstm_cell_594_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_594_biasadd_readvariableop_resource:	???*while/lstm_cell_594/BiasAdd/ReadVariableOp?)while/lstm_cell_594/MatMul/ReadVariableOp?+while/lstm_cell_594/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_594/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_594_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_594/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_594_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_594/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_594/addAddV2$while/lstm_cell_594/MatMul:product:0&while/lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_594_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_594/BiasAddBiasAddwhile/lstm_cell_594/add:z:02while/lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_594/splitSplit,while/lstm_cell_594/split/split_dim:output:0$while/lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_594/SigmoidSigmoid"while/lstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_1Sigmoid"while/lstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mulMul!while/lstm_cell_594/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_594/ReluRelu"while/lstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_1Mulwhile/lstm_cell_594/Sigmoid:y:0&while/lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/add_1AddV2while/lstm_cell_594/mul:z:0while/lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_594/Sigmoid_2Sigmoid"while/lstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_594/Relu_1Reluwhile/lstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_594/mul_2Mul!while/lstm_cell_594/Sigmoid_2:y:0(while/lstm_cell_594/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_594/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_594/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_594/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_594/BiasAdd/ReadVariableOp*^while/lstm_cell_594/MatMul/ReadVariableOp,^while/lstm_cell_594/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_594_biasadd_readvariableop_resource5while_lstm_cell_594_biasadd_readvariableop_resource_0"n
4while_lstm_cell_594_matmul_1_readvariableop_resource6while_lstm_cell_594_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_594_matmul_readvariableop_resource4while_lstm_cell_594_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_594/BiasAdd/ReadVariableOp*while/lstm_cell_594/BiasAdd/ReadVariableOp2V
)while/lstm_cell_594/MatMul/ReadVariableOp)while/lstm_cell_594/MatMul/ReadVariableOp2Z
+while/lstm_cell_594/MatMul_1/ReadVariableOp+while/lstm_cell_594/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_620_layer_call_fn_3610713

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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3607984o
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
/__inference_lstm_cell_594_layer_call_fn_3611321

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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606336o
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609767
inputs_0?
,lstm_cell_594_matmul_readvariableop_resource:	?A
.lstm_cell_594_matmul_1_readvariableop_resource:	d?<
-lstm_cell_594_biasadd_readvariableop_resource:	?
identity??$lstm_cell_594/BiasAdd/ReadVariableOp?#lstm_cell_594/MatMul/ReadVariableOp?%lstm_cell_594/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_594/MatMul/ReadVariableOpReadVariableOp,lstm_cell_594_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_594/MatMulMatMulstrided_slice_2:output:0+lstm_cell_594/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_594/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_594_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_594/MatMul_1MatMulzeros:output:0-lstm_cell_594/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_594/addAddV2lstm_cell_594/MatMul:product:0 lstm_cell_594/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_594/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_594_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_594/BiasAddBiasAddlstm_cell_594/add:z:0,lstm_cell_594/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_594/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_594/splitSplit&lstm_cell_594/split/split_dim:output:0lstm_cell_594/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_594/SigmoidSigmoidlstm_cell_594/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_1Sigmoidlstm_cell_594/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_594/mulMullstm_cell_594/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_594/ReluRelulstm_cell_594/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_1Mullstm_cell_594/Sigmoid:y:0 lstm_cell_594/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_594/add_1AddV2lstm_cell_594/mul:z:0lstm_cell_594/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_594/Sigmoid_2Sigmoidlstm_cell_594/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_594/Relu_1Relulstm_cell_594/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_594/mul_2Mullstm_cell_594/Sigmoid_2:y:0"lstm_cell_594/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_594_matmul_readvariableop_resource.lstm_cell_594_matmul_1_readvariableop_resource-lstm_cell_594_biasadd_readvariableop_resource*
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
while_body_3609683*
condR
while_cond_3609682*K
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
NoOpNoOp%^lstm_cell_594/BiasAdd/ReadVariableOp$^lstm_cell_594/MatMul/ReadVariableOp&^lstm_cell_594/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_594/BiasAdd/ReadVariableOp$lstm_cell_594/BiasAdd/ReadVariableOp2J
#lstm_cell_594/MatMul/ReadVariableOp#lstm_cell_594/MatMul/ReadVariableOp2N
%lstm_cell_594/MatMul_1/ReadVariableOp%lstm_cell_594/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3610772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_596_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_596_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_596_matmul_readvariableop_resource:2(F
4while_lstm_cell_596_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_596_biasadd_readvariableop_resource:(??*while/lstm_cell_596/BiasAdd/ReadVariableOp?)while/lstm_cell_596/MatMul/ReadVariableOp?+while/lstm_cell_596/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_596/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_596/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_596/addAddV2$while/lstm_cell_596/MatMul:product:0&while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_596/BiasAddBiasAddwhile/lstm_cell_596/add:z:02while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_596/splitSplit,while/lstm_cell_596/split/split_dim:output:0$while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_596/SigmoidSigmoid"while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_1Sigmoid"while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mulMul!while/lstm_cell_596/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_596/ReluRelu"while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_1Mulwhile/lstm_cell_596/Sigmoid:y:0&while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/add_1AddV2while/lstm_cell_596/mul:z:0while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_596/Sigmoid_2Sigmoid"while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_596/Relu_1Reluwhile/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_596/mul_2Mul!while/lstm_cell_596/Sigmoid_2:y:0(while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_596/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_596/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_596/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_596/BiasAdd/ReadVariableOp*^while/lstm_cell_596/MatMul/ReadVariableOp,^while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_596_biasadd_readvariableop_resource5while_lstm_cell_596_biasadd_readvariableop_resource_0"n
4while_lstm_cell_596_matmul_1_readvariableop_resource6while_lstm_cell_596_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_596_matmul_readvariableop_resource4while_lstm_cell_596_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_596/BiasAdd/ReadVariableOp*while/lstm_cell_596/BiasAdd/ReadVariableOp2V
)while/lstm_cell_596/MatMul/ReadVariableOp)while/lstm_cell_596/MatMul/ReadVariableOp2Z
+while/lstm_cell_596/MatMul_1/ReadVariableOp+while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_620_while_body_3608920.
*lstm_620_while_lstm_620_while_loop_counter4
0lstm_620_while_lstm_620_while_maximum_iterations
lstm_620_while_placeholder 
lstm_620_while_placeholder_1 
lstm_620_while_placeholder_2 
lstm_620_while_placeholder_3-
)lstm_620_while_lstm_620_strided_slice_1_0i
elstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0:2(Q
?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0:
(L
>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0:(
lstm_620_while_identity
lstm_620_while_identity_1
lstm_620_while_identity_2
lstm_620_while_identity_3
lstm_620_while_identity_4
lstm_620_while_identity_5+
'lstm_620_while_lstm_620_strided_slice_1g
clstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensorM
;lstm_620_while_lstm_cell_596_matmul_readvariableop_resource:2(O
=lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource:
(J
<lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource:(??3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp?2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp?4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp?
@lstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_620/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0lstm_620_while_placeholderIlstm_620/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOpReadVariableOp=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_620/while/lstm_cell_596/MatMulMatMul9lstm_620/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_620/while/lstm_cell_596/MatMul_1MatMullstm_620_while_placeholder_2<lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_620/while/lstm_cell_596/addAddV2-lstm_620/while/lstm_cell_596/MatMul:product:0/lstm_620/while/lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_620/while/lstm_cell_596/BiasAddBiasAdd$lstm_620/while/lstm_cell_596/add:z:0;lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_620/while/lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_620/while/lstm_cell_596/splitSplit5lstm_620/while/lstm_cell_596/split/split_dim:output:0-lstm_620/while/lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_620/while/lstm_cell_596/SigmoidSigmoid+lstm_620/while/lstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_620/while/lstm_cell_596/Sigmoid_1Sigmoid+lstm_620/while/lstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_620/while/lstm_cell_596/mulMul*lstm_620/while/lstm_cell_596/Sigmoid_1:y:0lstm_620_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_620/while/lstm_cell_596/ReluRelu+lstm_620/while/lstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/mul_1Mul(lstm_620/while/lstm_cell_596/Sigmoid:y:0/lstm_620/while/lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/add_1AddV2$lstm_620/while/lstm_cell_596/mul:z:0&lstm_620/while/lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_620/while/lstm_cell_596/Sigmoid_2Sigmoid+lstm_620/while/lstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_620/while/lstm_cell_596/Relu_1Relu&lstm_620/while/lstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_620/while/lstm_cell_596/mul_2Mul*lstm_620/while/lstm_cell_596/Sigmoid_2:y:01lstm_620/while/lstm_cell_596/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_620/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_620_while_placeholder_1lstm_620_while_placeholder&lstm_620/while/lstm_cell_596/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_620/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_620/while/addAddV2lstm_620_while_placeholderlstm_620/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_620/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_620/while/add_1AddV2*lstm_620_while_lstm_620_while_loop_counterlstm_620/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_620/while/IdentityIdentitylstm_620/while/add_1:z:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_1Identity0lstm_620_while_lstm_620_while_maximum_iterations^lstm_620/while/NoOp*
T0*
_output_shapes
: t
lstm_620/while/Identity_2Identitylstm_620/while/add:z:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_3IdentityClstm_620/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_620/while/NoOp*
T0*
_output_shapes
: ?
lstm_620/while/Identity_4Identity&lstm_620/while/lstm_cell_596/mul_2:z:0^lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_620/while/Identity_5Identity&lstm_620/while/lstm_cell_596/add_1:z:0^lstm_620/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_620/while/NoOpNoOp4^lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp3^lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp5^lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_620_while_identity lstm_620/while/Identity:output:0"?
lstm_620_while_identity_1"lstm_620/while/Identity_1:output:0"?
lstm_620_while_identity_2"lstm_620/while/Identity_2:output:0"?
lstm_620_while_identity_3"lstm_620/while/Identity_3:output:0"?
lstm_620_while_identity_4"lstm_620/while/Identity_4:output:0"?
lstm_620_while_identity_5"lstm_620/while/Identity_5:output:0"T
'lstm_620_while_lstm_620_strided_slice_1)lstm_620_while_lstm_620_strided_slice_1_0"~
<lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource>lstm_620_while_lstm_cell_596_biasadd_readvariableop_resource_0"?
=lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource?lstm_620_while_lstm_cell_596_matmul_1_readvariableop_resource_0"|
;lstm_620_while_lstm_cell_596_matmul_readvariableop_resource=lstm_620_while_lstm_cell_596_matmul_readvariableop_resource_0"?
clstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensorelstm_620_while_tensorarrayv2read_tensorlistgetitem_lstm_620_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp3lstm_620/while/lstm_cell_596/BiasAdd/ReadVariableOp2h
2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp2lstm_620/while/lstm_cell_596/MatMul/ReadVariableOp2l
4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp4lstm_620/while/lstm_cell_596/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_619_layer_call_fn_3610086

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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3607618s
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

?
0__inference_sequential_206_layer_call_fn_3608583

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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608382o
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
??
?
#__inference__traced_restore_3611871
file_prefix3
!assignvariableop_dense_206_kernel:
/
!assignvariableop_1_dense_206_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_618_lstm_cell_618_kernel:	?M
:assignvariableop_8_lstm_618_lstm_cell_618_recurrent_kernel:	d?=
.assignvariableop_9_lstm_618_lstm_cell_618_bias:	?D
1assignvariableop_10_lstm_619_lstm_cell_619_kernel:	d?N
;assignvariableop_11_lstm_619_lstm_cell_619_recurrent_kernel:	2?>
/assignvariableop_12_lstm_619_lstm_cell_619_bias:	?C
1assignvariableop_13_lstm_620_lstm_cell_620_kernel:2(M
;assignvariableop_14_lstm_620_lstm_cell_620_recurrent_kernel:
(=
/assignvariableop_15_lstm_620_lstm_cell_620_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_206_kernel_m:
7
)assignvariableop_19_adam_dense_206_bias_m:K
8assignvariableop_20_adam_lstm_618_lstm_cell_618_kernel_m:	?U
Bassignvariableop_21_adam_lstm_618_lstm_cell_618_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_618_lstm_cell_618_bias_m:	?K
8assignvariableop_23_adam_lstm_619_lstm_cell_619_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_619_lstm_cell_619_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_619_lstm_cell_619_bias_m:	?J
8assignvariableop_26_adam_lstm_620_lstm_cell_620_kernel_m:2(T
Bassignvariableop_27_adam_lstm_620_lstm_cell_620_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_620_lstm_cell_620_bias_m:(=
+assignvariableop_29_adam_dense_206_kernel_v:
7
)assignvariableop_30_adam_dense_206_bias_v:K
8assignvariableop_31_adam_lstm_618_lstm_cell_618_kernel_v:	?U
Bassignvariableop_32_adam_lstm_618_lstm_cell_618_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_618_lstm_cell_618_bias_v:	?K
8assignvariableop_34_adam_lstm_619_lstm_cell_619_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_619_lstm_cell_619_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_619_lstm_cell_619_bias_v:	?J
8assignvariableop_37_adam_lstm_620_lstm_cell_620_kernel_v:2(T
Bassignvariableop_38_adam_lstm_620_lstm_cell_620_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_620_lstm_cell_620_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_206_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_206_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_618_lstm_cell_618_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_618_lstm_cell_618_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_618_lstm_cell_618_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_619_lstm_cell_619_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_619_lstm_cell_619_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_619_lstm_cell_619_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_620_lstm_cell_620_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_620_lstm_cell_620_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_620_lstm_cell_620_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_206_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_206_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_618_lstm_cell_618_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_618_lstm_cell_618_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_618_lstm_cell_618_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_619_lstm_cell_619_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_619_lstm_cell_619_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_619_lstm_cell_619_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_620_lstm_cell_620_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_620_lstm_cell_620_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_620_lstm_cell_620_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_206_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_206_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_618_lstm_cell_618_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_618_lstm_cell_618_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_618_lstm_cell_618_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_619_lstm_cell_619_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_619_lstm_cell_619_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_619_lstm_cell_619_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_620_lstm_cell_620_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_620_lstm_cell_620_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_620_lstm_cell_620_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3606336

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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611468

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
?K
?
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610999
inputs_0>
,lstm_cell_596_matmul_readvariableop_resource:2(@
.lstm_cell_596_matmul_1_readvariableop_resource:
(;
-lstm_cell_596_biasadd_readvariableop_resource:(
identity??$lstm_cell_596/BiasAdd/ReadVariableOp?#lstm_cell_596/MatMul/ReadVariableOp?%lstm_cell_596/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_596/MatMul/ReadVariableOpReadVariableOp,lstm_cell_596_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_596/MatMulMatMulstrided_slice_2:output:0+lstm_cell_596/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_596/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_596_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_596/MatMul_1MatMulzeros:output:0-lstm_cell_596/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_596/addAddV2lstm_cell_596/MatMul:product:0 lstm_cell_596/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_596/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_596_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_596/BiasAddBiasAddlstm_cell_596/add:z:0,lstm_cell_596/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_596/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_596/splitSplit&lstm_cell_596/split/split_dim:output:0lstm_cell_596/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_596/SigmoidSigmoidlstm_cell_596/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_1Sigmoidlstm_cell_596/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_596/mulMullstm_cell_596/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_596/ReluRelulstm_cell_596/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_1Mullstm_cell_596/Sigmoid:y:0 lstm_cell_596/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_596/add_1AddV2lstm_cell_596/mul:z:0lstm_cell_596/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_596/Sigmoid_2Sigmoidlstm_cell_596/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_596/Relu_1Relulstm_cell_596/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_596/mul_2Mullstm_cell_596/Sigmoid_2:y:0"lstm_cell_596/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_596_matmul_readvariableop_resource.lstm_cell_596_matmul_1_readvariableop_resource-lstm_cell_596_biasadd_readvariableop_resource*
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
while_body_3610915*
condR
while_cond_3610914*K
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
NoOpNoOp%^lstm_cell_596/BiasAdd/ReadVariableOp$^lstm_cell_596/MatMul/ReadVariableOp&^lstm_cell_596/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_596/BiasAdd/ReadVariableOp$lstm_cell_596/BiasAdd/ReadVariableOp2J
#lstm_cell_596/MatMul/ReadVariableOp#lstm_cell_596/MatMul/ReadVariableOp2N
%lstm_cell_596/MatMul_1/ReadVariableOp%lstm_cell_596/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3609539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3609539___redundant_placeholder05
1while_while_cond_3609539___redundant_placeholder15
1while_while_cond_3609539___redundant_placeholder25
1while_while_cond_3609539___redundant_placeholder3
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

lstm_619_while_body_3608781.
*lstm_619_while_lstm_619_while_loop_counter4
0lstm_619_while_lstm_619_while_maximum_iterations
lstm_619_while_placeholder 
lstm_619_while_placeholder_1 
lstm_619_while_placeholder_2 
lstm_619_while_placeholder_3-
)lstm_619_while_lstm_619_strided_slice_1_0i
elstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0:	d?R
?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?M
>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
lstm_619_while_identity
lstm_619_while_identity_1
lstm_619_while_identity_2
lstm_619_while_identity_3
lstm_619_while_identity_4
lstm_619_while_identity_5+
'lstm_619_while_lstm_619_strided_slice_1g
clstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensorN
;lstm_619_while_lstm_cell_595_matmul_readvariableop_resource:	d?P
=lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource:	2?K
<lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource:	???3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp?2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp?4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp?
@lstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_619/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0lstm_619_while_placeholderIlstm_619/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_619/while/lstm_cell_595/MatMulMatMul9lstm_619/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_619/while/lstm_cell_595/MatMul_1MatMullstm_619_while_placeholder_2<lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_619/while/lstm_cell_595/addAddV2-lstm_619/while/lstm_cell_595/MatMul:product:0/lstm_619/while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_619/while/lstm_cell_595/BiasAddBiasAdd$lstm_619/while/lstm_cell_595/add:z:0;lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_619/while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_619/while/lstm_cell_595/splitSplit5lstm_619/while/lstm_cell_595/split/split_dim:output:0-lstm_619/while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_619/while/lstm_cell_595/SigmoidSigmoid+lstm_619/while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_619/while/lstm_cell_595/Sigmoid_1Sigmoid+lstm_619/while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_619/while/lstm_cell_595/mulMul*lstm_619/while/lstm_cell_595/Sigmoid_1:y:0lstm_619_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_619/while/lstm_cell_595/ReluRelu+lstm_619/while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/mul_1Mul(lstm_619/while/lstm_cell_595/Sigmoid:y:0/lstm_619/while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/add_1AddV2$lstm_619/while/lstm_cell_595/mul:z:0&lstm_619/while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_619/while/lstm_cell_595/Sigmoid_2Sigmoid+lstm_619/while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_619/while/lstm_cell_595/Relu_1Relu&lstm_619/while/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_619/while/lstm_cell_595/mul_2Mul*lstm_619/while/lstm_cell_595/Sigmoid_2:y:01lstm_619/while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_619/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_619_while_placeholder_1lstm_619_while_placeholder&lstm_619/while/lstm_cell_595/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_619/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_619/while/addAddV2lstm_619_while_placeholderlstm_619/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_619/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_619/while/add_1AddV2*lstm_619_while_lstm_619_while_loop_counterlstm_619/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_619/while/IdentityIdentitylstm_619/while/add_1:z:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_1Identity0lstm_619_while_lstm_619_while_maximum_iterations^lstm_619/while/NoOp*
T0*
_output_shapes
: t
lstm_619/while/Identity_2Identitylstm_619/while/add:z:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_3IdentityClstm_619/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_619/while/NoOp*
T0*
_output_shapes
: ?
lstm_619/while/Identity_4Identity&lstm_619/while/lstm_cell_595/mul_2:z:0^lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_619/while/Identity_5Identity&lstm_619/while/lstm_cell_595/add_1:z:0^lstm_619/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_619/while/NoOpNoOp4^lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp3^lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp5^lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_619_while_identity lstm_619/while/Identity:output:0"?
lstm_619_while_identity_1"lstm_619/while/Identity_1:output:0"?
lstm_619_while_identity_2"lstm_619/while/Identity_2:output:0"?
lstm_619_while_identity_3"lstm_619/while/Identity_3:output:0"?
lstm_619_while_identity_4"lstm_619/while/Identity_4:output:0"?
lstm_619_while_identity_5"lstm_619/while/Identity_5:output:0"T
'lstm_619_while_lstm_619_strided_slice_1)lstm_619_while_lstm_619_strided_slice_1_0"~
<lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource>lstm_619_while_lstm_cell_595_biasadd_readvariableop_resource_0"?
=lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource?lstm_619_while_lstm_cell_595_matmul_1_readvariableop_resource_0"|
;lstm_619_while_lstm_cell_595_matmul_readvariableop_resource=lstm_619_while_lstm_cell_595_matmul_readvariableop_resource_0"?
clstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensorelstm_619_while_tensorarrayv2read_tensorlistgetitem_lstm_619_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp3lstm_619/while/lstm_cell_595/BiasAdd/ReadVariableOp2h
2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp2lstm_619/while/lstm_cell_595/MatMul/ReadVariableOp2l
4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp4lstm_619/while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3608065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_206_lstm_619_while_cond_3606039L
Hsequential_206_lstm_619_while_sequential_206_lstm_619_while_loop_counterR
Nsequential_206_lstm_619_while_sequential_206_lstm_619_while_maximum_iterations-
)sequential_206_lstm_619_while_placeholder/
+sequential_206_lstm_619_while_placeholder_1/
+sequential_206_lstm_619_while_placeholder_2/
+sequential_206_lstm_619_while_placeholder_3N
Jsequential_206_lstm_619_while_less_sequential_206_lstm_619_strided_slice_1e
asequential_206_lstm_619_while_sequential_206_lstm_619_while_cond_3606039___redundant_placeholder0e
asequential_206_lstm_619_while_sequential_206_lstm_619_while_cond_3606039___redundant_placeholder1e
asequential_206_lstm_619_while_sequential_206_lstm_619_while_cond_3606039___redundant_placeholder2e
asequential_206_lstm_619_while_sequential_206_lstm_619_while_cond_3606039___redundant_placeholder3*
&sequential_206_lstm_619_while_identity
?
"sequential_206/lstm_619/while/LessLess)sequential_206_lstm_619_while_placeholderJsequential_206_lstm_619_while_less_sequential_206_lstm_619_strided_slice_1*
T0*
_output_shapes
: {
&sequential_206/lstm_619/while/IdentityIdentity&sequential_206/lstm_619/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_206_lstm_619_while_identity/sequential_206/lstm_619/while/Identity:output:0*(
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3606686

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
while_cond_3607383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3607383___redundant_placeholder05
1while_while_cond_3607383___redundant_placeholder15
1while_while_cond_3607383___redundant_placeholder25
1while_while_cond_3607383___redundant_placeholder3
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
while_body_3607534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_595_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_595_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_595_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_595_matmul_readvariableop_resource:	d?G
4while_lstm_cell_595_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_595_biasadd_readvariableop_resource:	???*while/lstm_cell_595/BiasAdd/ReadVariableOp?)while/lstm_cell_595/MatMul/ReadVariableOp?+while/lstm_cell_595/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_595/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_595_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_595/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_595/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_595/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_595_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_595/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_595/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_595/addAddV2$while/lstm_cell_595/MatMul:product:0&while/lstm_cell_595/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_595/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_595_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_595/BiasAddBiasAddwhile/lstm_cell_595/add:z:02while/lstm_cell_595/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_595/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_595/splitSplit,while/lstm_cell_595/split/split_dim:output:0$while/lstm_cell_595/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_595/SigmoidSigmoid"while/lstm_cell_595/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_1Sigmoid"while/lstm_cell_595/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mulMul!while/lstm_cell_595/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_595/ReluRelu"while/lstm_cell_595/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_1Mulwhile/lstm_cell_595/Sigmoid:y:0&while/lstm_cell_595/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/add_1AddV2while/lstm_cell_595/mul:z:0while/lstm_cell_595/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_595/Sigmoid_2Sigmoid"while/lstm_cell_595/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_595/Relu_1Reluwhile/lstm_cell_595/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_595/mul_2Mul!while/lstm_cell_595/Sigmoid_2:y:0(while/lstm_cell_595/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_595/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_595/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_595/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_595/BiasAdd/ReadVariableOp*^while/lstm_cell_595/MatMul/ReadVariableOp,^while/lstm_cell_595/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_595_biasadd_readvariableop_resource5while_lstm_cell_595_biasadd_readvariableop_resource_0"n
4while_lstm_cell_595_matmul_1_readvariableop_resource6while_lstm_cell_595_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_595_matmul_readvariableop_resource4while_lstm_cell_595_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_595/BiasAdd/ReadVariableOp*while/lstm_cell_595/BiasAdd/ReadVariableOp2V
)while/lstm_cell_595/MatMul/ReadVariableOp)while/lstm_cell_595/MatMul/ReadVariableOp2Z
+while/lstm_cell_595/MatMul_1/ReadVariableOp+while/lstm_cell_595/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3610298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3610298___redundant_placeholder05
1while_while_cond_3610298___redundant_placeholder15
1while_while_cond_3610298___redundant_placeholder25
1while_while_cond_3610298___redundant_placeholder3
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611500

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
while_cond_3611057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3611057___redundant_placeholder05
1while_while_cond_3611057___redundant_placeholder15
1while_while_cond_3611057___redundant_placeholder25
1while_while_cond_3611057___redundant_placeholder3
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
lstm_618_input;
 serving_default_lstm_618_input:0?????????=
	dense_2060
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
2dense_206/kernel
:2dense_206/bias
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
0:.	?2lstm_618/lstm_cell_618/kernel
::8	d?2'lstm_618/lstm_cell_618/recurrent_kernel
*:(?2lstm_618/lstm_cell_618/bias
0:.	d?2lstm_619/lstm_cell_619/kernel
::8	2?2'lstm_619/lstm_cell_619/recurrent_kernel
*:(?2lstm_619/lstm_cell_619/bias
/:-2(2lstm_620/lstm_cell_620/kernel
9:7
(2'lstm_620/lstm_cell_620/recurrent_kernel
):'(2lstm_620/lstm_cell_620/bias
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
2Adam/dense_206/kernel/m
!:2Adam/dense_206/bias/m
5:3	?2$Adam/lstm_618/lstm_cell_618/kernel/m
?:=	d?2.Adam/lstm_618/lstm_cell_618/recurrent_kernel/m
/:-?2"Adam/lstm_618/lstm_cell_618/bias/m
5:3	d?2$Adam/lstm_619/lstm_cell_619/kernel/m
?:=	2?2.Adam/lstm_619/lstm_cell_619/recurrent_kernel/m
/:-?2"Adam/lstm_619/lstm_cell_619/bias/m
4:22(2$Adam/lstm_620/lstm_cell_620/kernel/m
>:<
(2.Adam/lstm_620/lstm_cell_620/recurrent_kernel/m
.:,(2"Adam/lstm_620/lstm_cell_620/bias/m
':%
2Adam/dense_206/kernel/v
!:2Adam/dense_206/bias/v
5:3	?2$Adam/lstm_618/lstm_cell_618/kernel/v
?:=	d?2.Adam/lstm_618/lstm_cell_618/recurrent_kernel/v
/:-?2"Adam/lstm_618/lstm_cell_618/bias/v
5:3	d?2$Adam/lstm_619/lstm_cell_619/kernel/v
?:=	2?2.Adam/lstm_619/lstm_cell_619/recurrent_kernel/v
/:-?2"Adam/lstm_619/lstm_cell_619/bias/v
4:22(2$Adam/lstm_620/lstm_cell_620/kernel/v
>:<
(2.Adam/lstm_620/lstm_cell_620/recurrent_kernel/v
.:,(2"Adam/lstm_620/lstm_cell_620/bias/v
?2?
0__inference_sequential_206_layer_call_fn_3607818
0__inference_sequential_206_layer_call_fn_3608556
0__inference_sequential_206_layer_call_fn_3608583
0__inference_sequential_206_layer_call_fn_3608434?
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609010
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609437
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608464
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608494?
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
"__inference__wrapped_model_3606269lstm_618_input"?
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
*__inference_lstm_618_layer_call_fn_3609448
*__inference_lstm_618_layer_call_fn_3609459
*__inference_lstm_618_layer_call_fn_3609470
*__inference_lstm_618_layer_call_fn_3609481?
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609624
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609767
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609910
E__inference_lstm_618_layer_call_and_return_conditional_losses_3610053?
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
*__inference_lstm_619_layer_call_fn_3610064
*__inference_lstm_619_layer_call_fn_3610075
*__inference_lstm_619_layer_call_fn_3610086
*__inference_lstm_619_layer_call_fn_3610097?
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610240
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610383
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610526
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610669?
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
*__inference_lstm_620_layer_call_fn_3610680
*__inference_lstm_620_layer_call_fn_3610691
*__inference_lstm_620_layer_call_fn_3610702
*__inference_lstm_620_layer_call_fn_3610713?
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610856
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610999
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611142
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611285?
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
+__inference_dense_206_layer_call_fn_3611294?
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
F__inference_dense_206_layer_call_and_return_conditional_losses_3611304?
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
%__inference_signature_wrapper_3608529lstm_618_input"?
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
/__inference_lstm_cell_594_layer_call_fn_3611321
/__inference_lstm_cell_594_layer_call_fn_3611338?
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611370
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611402?
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
/__inference_lstm_cell_595_layer_call_fn_3611419
/__inference_lstm_cell_595_layer_call_fn_3611436?
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611468
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611500?
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
/__inference_lstm_cell_596_layer_call_fn_3611517
/__inference_lstm_cell_596_layer_call_fn_3611534?
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611566
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611598?
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
"__inference__wrapped_model_3606269?-./012345!";?8
1?.
,?)
lstm_618_input?????????
? "5?2
0
	dense_206#? 
	dense_206??????????
F__inference_dense_206_layer_call_and_return_conditional_losses_3611304\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_206_layer_call_fn_3611294O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609624?-./O?L
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609767?-./O?L
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3609910q-./??<
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
E__inference_lstm_618_layer_call_and_return_conditional_losses_3610053q-./??<
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
*__inference_lstm_618_layer_call_fn_3609448}-./O?L
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
*__inference_lstm_618_layer_call_fn_3609459}-./O?L
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
*__inference_lstm_618_layer_call_fn_3609470d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_618_layer_call_fn_3609481d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610240?012O?L
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610383?012O?L
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610526q012??<
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
E__inference_lstm_619_layer_call_and_return_conditional_losses_3610669q012??<
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
*__inference_lstm_619_layer_call_fn_3610064}012O?L
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
*__inference_lstm_619_layer_call_fn_3610075}012O?L
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
*__inference_lstm_619_layer_call_fn_3610086d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_619_layer_call_fn_3610097d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610856}345O?L
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3610999}345O?L
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611142m345??<
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
E__inference_lstm_620_layer_call_and_return_conditional_losses_3611285m345??<
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
*__inference_lstm_620_layer_call_fn_3610680p345O?L
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
*__inference_lstm_620_layer_call_fn_3610691p345O?L
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
*__inference_lstm_620_layer_call_fn_3610702`345??<
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
*__inference_lstm_620_layer_call_fn_3610713`345??<
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611370?-./??}
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
J__inference_lstm_cell_594_layer_call_and_return_conditional_losses_3611402?-./??}
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
/__inference_lstm_cell_594_layer_call_fn_3611321?-./??}
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
/__inference_lstm_cell_594_layer_call_fn_3611338?-./??}
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611468?012??}
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
J__inference_lstm_cell_595_layer_call_and_return_conditional_losses_3611500?012??}
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
/__inference_lstm_cell_595_layer_call_fn_3611419?012??}
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
/__inference_lstm_cell_595_layer_call_fn_3611436?012??}
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611566?345??}
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
J__inference_lstm_cell_596_layer_call_and_return_conditional_losses_3611598?345??}
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
/__inference_lstm_cell_596_layer_call_fn_3611517?345??}
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
/__inference_lstm_cell_596_layer_call_fn_3611534?345??}
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608464y-./012345!"C?@
9?6
,?)
lstm_618_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_206_layer_call_and_return_conditional_losses_3608494y-./012345!"C?@
9?6
,?)
lstm_618_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609010q-./012345!";?8
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
K__inference_sequential_206_layer_call_and_return_conditional_losses_3609437q-./012345!";?8
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
0__inference_sequential_206_layer_call_fn_3607818l-./012345!"C?@
9?6
,?)
lstm_618_input?????????
p 

 
? "???????????
0__inference_sequential_206_layer_call_fn_3608434l-./012345!"C?@
9?6
,?)
lstm_618_input?????????
p

 
? "???????????
0__inference_sequential_206_layer_call_fn_3608556d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_206_layer_call_fn_3608583d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3608529?-./012345!"M?J
? 
C?@
>
lstm_618_input,?)
lstm_618_input?????????"5?2
0
	dense_206#? 
	dense_206?????????