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
dense_176/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_176/kernel
u
$dense_176/kernel/Read/ReadVariableOpReadVariableOpdense_176/kernel*
_output_shapes

:
*
dtype0
t
dense_176/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_176/bias
m
"dense_176/bias/Read/ReadVariableOpReadVariableOpdense_176/bias*
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
lstm_528/lstm_cell_528/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_528/lstm_cell_528/kernel
?
1lstm_528/lstm_cell_528/kernel/Read/ReadVariableOpReadVariableOplstm_528/lstm_cell_528/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_528/lstm_cell_528/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_528/lstm_cell_528/recurrent_kernel
?
;lstm_528/lstm_cell_528/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_528/lstm_cell_528/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_528/lstm_cell_528/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_528/lstm_cell_528/bias
?
/lstm_528/lstm_cell_528/bias/Read/ReadVariableOpReadVariableOplstm_528/lstm_cell_528/bias*
_output_shapes	
:?*
dtype0
?
lstm_529/lstm_cell_529/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_529/lstm_cell_529/kernel
?
1lstm_529/lstm_cell_529/kernel/Read/ReadVariableOpReadVariableOplstm_529/lstm_cell_529/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_529/lstm_cell_529/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_529/lstm_cell_529/recurrent_kernel
?
;lstm_529/lstm_cell_529/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_529/lstm_cell_529/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_529/lstm_cell_529/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_529/lstm_cell_529/bias
?
/lstm_529/lstm_cell_529/bias/Read/ReadVariableOpReadVariableOplstm_529/lstm_cell_529/bias*
_output_shapes	
:?*
dtype0
?
lstm_530/lstm_cell_530/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_530/lstm_cell_530/kernel
?
1lstm_530/lstm_cell_530/kernel/Read/ReadVariableOpReadVariableOplstm_530/lstm_cell_530/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_530/lstm_cell_530/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_530/lstm_cell_530/recurrent_kernel
?
;lstm_530/lstm_cell_530/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_530/lstm_cell_530/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_530/lstm_cell_530/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_530/lstm_cell_530/bias
?
/lstm_530/lstm_cell_530/bias/Read/ReadVariableOpReadVariableOplstm_530/lstm_cell_530/bias*
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
Adam/dense_176/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_176/kernel/m
?
+Adam/dense_176/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_176/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_176/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_176/bias/m
{
)Adam/dense_176/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_176/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_528/lstm_cell_528/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_528/lstm_cell_528/kernel/m
?
8Adam/lstm_528/lstm_cell_528/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_528/lstm_cell_528/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_528/lstm_cell_528/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_528/lstm_cell_528/recurrent_kernel/m
?
BAdam/lstm_528/lstm_cell_528/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_528/lstm_cell_528/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_528/lstm_cell_528/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_528/lstm_cell_528/bias/m
?
6Adam/lstm_528/lstm_cell_528/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_528/lstm_cell_528/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_529/lstm_cell_529/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_529/lstm_cell_529/kernel/m
?
8Adam/lstm_529/lstm_cell_529/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_529/lstm_cell_529/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_529/lstm_cell_529/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_529/lstm_cell_529/recurrent_kernel/m
?
BAdam/lstm_529/lstm_cell_529/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_529/lstm_cell_529/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_529/lstm_cell_529/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_529/lstm_cell_529/bias/m
?
6Adam/lstm_529/lstm_cell_529/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_529/lstm_cell_529/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_530/lstm_cell_530/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_530/lstm_cell_530/kernel/m
?
8Adam/lstm_530/lstm_cell_530/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_530/lstm_cell_530/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_530/lstm_cell_530/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_530/lstm_cell_530/recurrent_kernel/m
?
BAdam/lstm_530/lstm_cell_530/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_530/lstm_cell_530/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_530/lstm_cell_530/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_530/lstm_cell_530/bias/m
?
6Adam/lstm_530/lstm_cell_530/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_530/lstm_cell_530/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_176/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_176/kernel/v
?
+Adam/dense_176/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_176/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_176/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_176/bias/v
{
)Adam/dense_176/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_176/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_528/lstm_cell_528/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_528/lstm_cell_528/kernel/v
?
8Adam/lstm_528/lstm_cell_528/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_528/lstm_cell_528/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_528/lstm_cell_528/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_528/lstm_cell_528/recurrent_kernel/v
?
BAdam/lstm_528/lstm_cell_528/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_528/lstm_cell_528/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_528/lstm_cell_528/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_528/lstm_cell_528/bias/v
?
6Adam/lstm_528/lstm_cell_528/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_528/lstm_cell_528/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_529/lstm_cell_529/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_529/lstm_cell_529/kernel/v
?
8Adam/lstm_529/lstm_cell_529/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_529/lstm_cell_529/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_529/lstm_cell_529/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_529/lstm_cell_529/recurrent_kernel/v
?
BAdam/lstm_529/lstm_cell_529/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_529/lstm_cell_529/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_529/lstm_cell_529/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_529/lstm_cell_529/bias/v
?
6Adam/lstm_529/lstm_cell_529/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_529/lstm_cell_529/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_530/lstm_cell_530/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_530/lstm_cell_530/kernel/v
?
8Adam/lstm_530/lstm_cell_530/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_530/lstm_cell_530/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_530/lstm_cell_530/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_530/lstm_cell_530/recurrent_kernel/v
?
BAdam/lstm_530/lstm_cell_530/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_530/lstm_cell_530/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_530/lstm_cell_530/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_530/lstm_cell_530/bias/v
?
6Adam/lstm_530/lstm_cell_530/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_530/lstm_cell_530/bias/v*
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
VARIABLE_VALUEdense_176/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_176/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_528/lstm_cell_528/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_528/lstm_cell_528/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_528/lstm_cell_528/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_529/lstm_cell_529/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_529/lstm_cell_529/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_529/lstm_cell_529/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_530/lstm_cell_530/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_530/lstm_cell_530/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_530/lstm_cell_530/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_176/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_176/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_528/lstm_cell_528/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_528/lstm_cell_528/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_528/lstm_cell_528/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_529/lstm_cell_529/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_529/lstm_cell_529/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_529/lstm_cell_529/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_530/lstm_cell_530/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_530/lstm_cell_530/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_530/lstm_cell_530/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_176/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_176/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_528/lstm_cell_528/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_528/lstm_cell_528/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_528/lstm_cell_528/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_529/lstm_cell_529/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_529/lstm_cell_529/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_529/lstm_cell_529/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_530/lstm_cell_530/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_530/lstm_cell_530/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_530/lstm_cell_530/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_528_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_528_inputlstm_528/lstm_cell_528/kernel'lstm_528/lstm_cell_528/recurrent_kernellstm_528/lstm_cell_528/biaslstm_529/lstm_cell_529/kernel'lstm_529/lstm_cell_529/recurrent_kernellstm_529/lstm_cell_529/biaslstm_530/lstm_cell_530/kernel'lstm_530/lstm_cell_530/recurrent_kernellstm_530/lstm_cell_530/biasdense_176/kerneldense_176/bias*
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
$__inference_signature_wrapper_958314
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_176/kernel/Read/ReadVariableOp"dense_176/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_528/lstm_cell_528/kernel/Read/ReadVariableOp;lstm_528/lstm_cell_528/recurrent_kernel/Read/ReadVariableOp/lstm_528/lstm_cell_528/bias/Read/ReadVariableOp1lstm_529/lstm_cell_529/kernel/Read/ReadVariableOp;lstm_529/lstm_cell_529/recurrent_kernel/Read/ReadVariableOp/lstm_529/lstm_cell_529/bias/Read/ReadVariableOp1lstm_530/lstm_cell_530/kernel/Read/ReadVariableOp;lstm_530/lstm_cell_530/recurrent_kernel/Read/ReadVariableOp/lstm_530/lstm_cell_530/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_176/kernel/m/Read/ReadVariableOp)Adam/dense_176/bias/m/Read/ReadVariableOp8Adam/lstm_528/lstm_cell_528/kernel/m/Read/ReadVariableOpBAdam/lstm_528/lstm_cell_528/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_528/lstm_cell_528/bias/m/Read/ReadVariableOp8Adam/lstm_529/lstm_cell_529/kernel/m/Read/ReadVariableOpBAdam/lstm_529/lstm_cell_529/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_529/lstm_cell_529/bias/m/Read/ReadVariableOp8Adam/lstm_530/lstm_cell_530/kernel/m/Read/ReadVariableOpBAdam/lstm_530/lstm_cell_530/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_530/lstm_cell_530/bias/m/Read/ReadVariableOp+Adam/dense_176/kernel/v/Read/ReadVariableOp)Adam/dense_176/bias/v/Read/ReadVariableOp8Adam/lstm_528/lstm_cell_528/kernel/v/Read/ReadVariableOpBAdam/lstm_528/lstm_cell_528/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_528/lstm_cell_528/bias/v/Read/ReadVariableOp8Adam/lstm_529/lstm_cell_529/kernel/v/Read/ReadVariableOpBAdam/lstm_529/lstm_cell_529/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_529/lstm_cell_529/bias/v/Read/ReadVariableOp8Adam/lstm_530/lstm_cell_530/kernel/v/Read/ReadVariableOpBAdam/lstm_530/lstm_cell_530/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_530/lstm_cell_530/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_961526
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_176/kerneldense_176/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_528/lstm_cell_528/kernel'lstm_528/lstm_cell_528/recurrent_kernellstm_528/lstm_cell_528/biaslstm_529/lstm_cell_529/kernel'lstm_529/lstm_cell_529/recurrent_kernellstm_529/lstm_cell_529/biaslstm_530/lstm_cell_530/kernel'lstm_530/lstm_cell_530/recurrent_kernellstm_530/lstm_cell_530/biastotalcountAdam/dense_176/kernel/mAdam/dense_176/bias/m$Adam/lstm_528/lstm_cell_528/kernel/m.Adam/lstm_528/lstm_cell_528/recurrent_kernel/m"Adam/lstm_528/lstm_cell_528/bias/m$Adam/lstm_529/lstm_cell_529/kernel/m.Adam/lstm_529/lstm_cell_529/recurrent_kernel/m"Adam/lstm_529/lstm_cell_529/bias/m$Adam/lstm_530/lstm_cell_530/kernel/m.Adam/lstm_530/lstm_cell_530/recurrent_kernel/m"Adam/lstm_530/lstm_cell_530/bias/mAdam/dense_176/kernel/vAdam/dense_176/bias/v$Adam/lstm_528/lstm_cell_528/kernel/v.Adam/lstm_528/lstm_cell_528/recurrent_kernel/v"Adam/lstm_528/lstm_cell_528/bias/v$Adam/lstm_529/lstm_cell_529/kernel/v.Adam/lstm_529/lstm_cell_529/recurrent_kernel/v"Adam/lstm_529/lstm_cell_529/bias/v$Adam/lstm_530/lstm_cell_530/kernel/v.Adam/lstm_530/lstm_cell_530/recurrent_kernel/v"Adam/lstm_530/lstm_cell_530/bias/v*4
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
"__inference__traced_restore_961656??+
?8
?
while_body_960084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_960556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960556___redundant_placeholder04
0while_while_cond_960556___redundant_placeholder14
0while_while_cond_960556___redundant_placeholder24
0while_while_cond_960556___redundant_placeholder3
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
while_body_957319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_960784
inputs_0>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_960700*
condR
while_cond_960699*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
!__inference__wrapped_model_956054
lstm_528_inputW
Dsequential_176_lstm_528_lstm_cell_156_matmul_readvariableop_resource:	?Y
Fsequential_176_lstm_528_lstm_cell_156_matmul_1_readvariableop_resource:	d?T
Esequential_176_lstm_528_lstm_cell_156_biasadd_readvariableop_resource:	?W
Dsequential_176_lstm_529_lstm_cell_157_matmul_readvariableop_resource:	d?Y
Fsequential_176_lstm_529_lstm_cell_157_matmul_1_readvariableop_resource:	2?T
Esequential_176_lstm_529_lstm_cell_157_biasadd_readvariableop_resource:	?V
Dsequential_176_lstm_530_lstm_cell_158_matmul_readvariableop_resource:2(X
Fsequential_176_lstm_530_lstm_cell_158_matmul_1_readvariableop_resource:
(S
Esequential_176_lstm_530_lstm_cell_158_biasadd_readvariableop_resource:(I
7sequential_176_dense_176_matmul_readvariableop_resource:
F
8sequential_176_dense_176_biasadd_readvariableop_resource:
identity??/sequential_176/dense_176/BiasAdd/ReadVariableOp?.sequential_176/dense_176/MatMul/ReadVariableOp?<sequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp?;sequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOp?=sequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp?sequential_176/lstm_528/while?<sequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp?;sequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOp?=sequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp?sequential_176/lstm_529/while?<sequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp?;sequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOp?=sequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp?sequential_176/lstm_530/while[
sequential_176/lstm_528/ShapeShapelstm_528_input*
T0*
_output_shapes
:u
+sequential_176/lstm_528/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_176/lstm_528/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_176/lstm_528/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_176/lstm_528/strided_sliceStridedSlice&sequential_176/lstm_528/Shape:output:04sequential_176/lstm_528/strided_slice/stack:output:06sequential_176/lstm_528/strided_slice/stack_1:output:06sequential_176/lstm_528/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_176/lstm_528/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_176/lstm_528/zeros/packedPack.sequential_176/lstm_528/strided_slice:output:0/sequential_176/lstm_528/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_176/lstm_528/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_528/zerosFill-sequential_176/lstm_528/zeros/packed:output:0,sequential_176/lstm_528/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_176/lstm_528/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_176/lstm_528/zeros_1/packedPack.sequential_176/lstm_528/strided_slice:output:01sequential_176/lstm_528/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_176/lstm_528/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_528/zeros_1Fill/sequential_176/lstm_528/zeros_1/packed:output:0.sequential_176/lstm_528/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_176/lstm_528/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_176/lstm_528/transpose	Transposelstm_528_input/sequential_176/lstm_528/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_176/lstm_528/Shape_1Shape%sequential_176/lstm_528/transpose:y:0*
T0*
_output_shapes
:w
-sequential_176/lstm_528/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_528/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_528/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_528/strided_slice_1StridedSlice(sequential_176/lstm_528/Shape_1:output:06sequential_176/lstm_528/strided_slice_1/stack:output:08sequential_176/lstm_528/strided_slice_1/stack_1:output:08sequential_176/lstm_528/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_176/lstm_528/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_176/lstm_528/TensorArrayV2TensorListReserve<sequential_176/lstm_528/TensorArrayV2/element_shape:output:00sequential_176/lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_176/lstm_528/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_176/lstm_528/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_176/lstm_528/transpose:y:0Vsequential_176/lstm_528/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_176/lstm_528/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_528/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_528/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_528/strided_slice_2StridedSlice%sequential_176/lstm_528/transpose:y:06sequential_176/lstm_528/strided_slice_2/stack:output:08sequential_176/lstm_528/strided_slice_2/stack_1:output:08sequential_176/lstm_528/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOpReadVariableOpDsequential_176_lstm_528_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_176/lstm_528/lstm_cell_156/MatMulMatMul0sequential_176/lstm_528/strided_slice_2:output:0Csequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOpFsequential_176_lstm_528_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_176/lstm_528/lstm_cell_156/MatMul_1MatMul&sequential_176/lstm_528/zeros:output:0Esequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_176/lstm_528/lstm_cell_156/addAddV26sequential_176/lstm_528/lstm_cell_156/MatMul:product:08sequential_176/lstm_528/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOpEsequential_176_lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_176/lstm_528/lstm_cell_156/BiasAddBiasAdd-sequential_176/lstm_528/lstm_cell_156/add:z:0Dsequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_176/lstm_528/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_176/lstm_528/lstm_cell_156/splitSplit>sequential_176/lstm_528/lstm_cell_156/split/split_dim:output:06sequential_176/lstm_528/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_176/lstm_528/lstm_cell_156/SigmoidSigmoid4sequential_176/lstm_528/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_176/lstm_528/lstm_cell_156/Sigmoid_1Sigmoid4sequential_176/lstm_528/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_176/lstm_528/lstm_cell_156/mulMul3sequential_176/lstm_528/lstm_cell_156/Sigmoid_1:y:0(sequential_176/lstm_528/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_176/lstm_528/lstm_cell_156/ReluRelu4sequential_176/lstm_528/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_176/lstm_528/lstm_cell_156/mul_1Mul1sequential_176/lstm_528/lstm_cell_156/Sigmoid:y:08sequential_176/lstm_528/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_176/lstm_528/lstm_cell_156/add_1AddV2-sequential_176/lstm_528/lstm_cell_156/mul:z:0/sequential_176/lstm_528/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_176/lstm_528/lstm_cell_156/Sigmoid_2Sigmoid4sequential_176/lstm_528/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_176/lstm_528/lstm_cell_156/Relu_1Relu/sequential_176/lstm_528/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_176/lstm_528/lstm_cell_156/mul_2Mul3sequential_176/lstm_528/lstm_cell_156/Sigmoid_2:y:0:sequential_176/lstm_528/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_176/lstm_528/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_176/lstm_528/TensorArrayV2_1TensorListReserve>sequential_176/lstm_528/TensorArrayV2_1/element_shape:output:00sequential_176/lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_176/lstm_528/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_176/lstm_528/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_176/lstm_528/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_176/lstm_528/whileWhile3sequential_176/lstm_528/while/loop_counter:output:09sequential_176/lstm_528/while/maximum_iterations:output:0%sequential_176/lstm_528/time:output:00sequential_176/lstm_528/TensorArrayV2_1:handle:0&sequential_176/lstm_528/zeros:output:0(sequential_176/lstm_528/zeros_1:output:00sequential_176/lstm_528/strided_slice_1:output:0Osequential_176/lstm_528/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_176_lstm_528_lstm_cell_156_matmul_readvariableop_resourceFsequential_176_lstm_528_lstm_cell_156_matmul_1_readvariableop_resourceEsequential_176_lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
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
)sequential_176_lstm_528_while_body_955686*5
cond-R+
)sequential_176_lstm_528_while_cond_955685*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_176/lstm_528/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_176/lstm_528/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_176/lstm_528/while:output:3Qsequential_176/lstm_528/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_176/lstm_528/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_176/lstm_528/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_528/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_528/strided_slice_3StridedSliceCsequential_176/lstm_528/TensorArrayV2Stack/TensorListStack:tensor:06sequential_176/lstm_528/strided_slice_3/stack:output:08sequential_176/lstm_528/strided_slice_3/stack_1:output:08sequential_176/lstm_528/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_176/lstm_528/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_176/lstm_528/transpose_1	TransposeCsequential_176/lstm_528/TensorArrayV2Stack/TensorListStack:tensor:01sequential_176/lstm_528/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_176/lstm_528/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_176/lstm_529/ShapeShape'sequential_176/lstm_528/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_176/lstm_529/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_176/lstm_529/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_176/lstm_529/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_176/lstm_529/strided_sliceStridedSlice&sequential_176/lstm_529/Shape:output:04sequential_176/lstm_529/strided_slice/stack:output:06sequential_176/lstm_529/strided_slice/stack_1:output:06sequential_176/lstm_529/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_176/lstm_529/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_176/lstm_529/zeros/packedPack.sequential_176/lstm_529/strided_slice:output:0/sequential_176/lstm_529/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_176/lstm_529/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_529/zerosFill-sequential_176/lstm_529/zeros/packed:output:0,sequential_176/lstm_529/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_176/lstm_529/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_176/lstm_529/zeros_1/packedPack.sequential_176/lstm_529/strided_slice:output:01sequential_176/lstm_529/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_176/lstm_529/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_529/zeros_1Fill/sequential_176/lstm_529/zeros_1/packed:output:0.sequential_176/lstm_529/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_176/lstm_529/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_176/lstm_529/transpose	Transpose'sequential_176/lstm_528/transpose_1:y:0/sequential_176/lstm_529/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_176/lstm_529/Shape_1Shape%sequential_176/lstm_529/transpose:y:0*
T0*
_output_shapes
:w
-sequential_176/lstm_529/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_529/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_529/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_529/strided_slice_1StridedSlice(sequential_176/lstm_529/Shape_1:output:06sequential_176/lstm_529/strided_slice_1/stack:output:08sequential_176/lstm_529/strided_slice_1/stack_1:output:08sequential_176/lstm_529/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_176/lstm_529/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_176/lstm_529/TensorArrayV2TensorListReserve<sequential_176/lstm_529/TensorArrayV2/element_shape:output:00sequential_176/lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_176/lstm_529/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_176/lstm_529/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_176/lstm_529/transpose:y:0Vsequential_176/lstm_529/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_176/lstm_529/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_529/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_529/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_529/strided_slice_2StridedSlice%sequential_176/lstm_529/transpose:y:06sequential_176/lstm_529/strided_slice_2/stack:output:08sequential_176/lstm_529/strided_slice_2/stack_1:output:08sequential_176/lstm_529/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOpReadVariableOpDsequential_176_lstm_529_lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_176/lstm_529/lstm_cell_157/MatMulMatMul0sequential_176/lstm_529/strided_slice_2:output:0Csequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOpFsequential_176_lstm_529_lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_176/lstm_529/lstm_cell_157/MatMul_1MatMul&sequential_176/lstm_529/zeros:output:0Esequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_176/lstm_529/lstm_cell_157/addAddV26sequential_176/lstm_529/lstm_cell_157/MatMul:product:08sequential_176/lstm_529/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOpEsequential_176_lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_176/lstm_529/lstm_cell_157/BiasAddBiasAdd-sequential_176/lstm_529/lstm_cell_157/add:z:0Dsequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_176/lstm_529/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_176/lstm_529/lstm_cell_157/splitSplit>sequential_176/lstm_529/lstm_cell_157/split/split_dim:output:06sequential_176/lstm_529/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_176/lstm_529/lstm_cell_157/SigmoidSigmoid4sequential_176/lstm_529/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_176/lstm_529/lstm_cell_157/Sigmoid_1Sigmoid4sequential_176/lstm_529/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_176/lstm_529/lstm_cell_157/mulMul3sequential_176/lstm_529/lstm_cell_157/Sigmoid_1:y:0(sequential_176/lstm_529/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_176/lstm_529/lstm_cell_157/ReluRelu4sequential_176/lstm_529/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_176/lstm_529/lstm_cell_157/mul_1Mul1sequential_176/lstm_529/lstm_cell_157/Sigmoid:y:08sequential_176/lstm_529/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_176/lstm_529/lstm_cell_157/add_1AddV2-sequential_176/lstm_529/lstm_cell_157/mul:z:0/sequential_176/lstm_529/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_176/lstm_529/lstm_cell_157/Sigmoid_2Sigmoid4sequential_176/lstm_529/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_176/lstm_529/lstm_cell_157/Relu_1Relu/sequential_176/lstm_529/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_176/lstm_529/lstm_cell_157/mul_2Mul3sequential_176/lstm_529/lstm_cell_157/Sigmoid_2:y:0:sequential_176/lstm_529/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_176/lstm_529/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_176/lstm_529/TensorArrayV2_1TensorListReserve>sequential_176/lstm_529/TensorArrayV2_1/element_shape:output:00sequential_176/lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_176/lstm_529/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_176/lstm_529/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_176/lstm_529/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_176/lstm_529/whileWhile3sequential_176/lstm_529/while/loop_counter:output:09sequential_176/lstm_529/while/maximum_iterations:output:0%sequential_176/lstm_529/time:output:00sequential_176/lstm_529/TensorArrayV2_1:handle:0&sequential_176/lstm_529/zeros:output:0(sequential_176/lstm_529/zeros_1:output:00sequential_176/lstm_529/strided_slice_1:output:0Osequential_176/lstm_529/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_176_lstm_529_lstm_cell_157_matmul_readvariableop_resourceFsequential_176_lstm_529_lstm_cell_157_matmul_1_readvariableop_resourceEsequential_176_lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
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
)sequential_176_lstm_529_while_body_955825*5
cond-R+
)sequential_176_lstm_529_while_cond_955824*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_176/lstm_529/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_176/lstm_529/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_176/lstm_529/while:output:3Qsequential_176/lstm_529/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_176/lstm_529/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_176/lstm_529/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_529/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_529/strided_slice_3StridedSliceCsequential_176/lstm_529/TensorArrayV2Stack/TensorListStack:tensor:06sequential_176/lstm_529/strided_slice_3/stack:output:08sequential_176/lstm_529/strided_slice_3/stack_1:output:08sequential_176/lstm_529/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_176/lstm_529/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_176/lstm_529/transpose_1	TransposeCsequential_176/lstm_529/TensorArrayV2Stack/TensorListStack:tensor:01sequential_176/lstm_529/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_176/lstm_529/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_176/lstm_530/ShapeShape'sequential_176/lstm_529/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_176/lstm_530/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_176/lstm_530/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_176/lstm_530/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_176/lstm_530/strided_sliceStridedSlice&sequential_176/lstm_530/Shape:output:04sequential_176/lstm_530/strided_slice/stack:output:06sequential_176/lstm_530/strided_slice/stack_1:output:06sequential_176/lstm_530/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_176/lstm_530/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_176/lstm_530/zeros/packedPack.sequential_176/lstm_530/strided_slice:output:0/sequential_176/lstm_530/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_176/lstm_530/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_530/zerosFill-sequential_176/lstm_530/zeros/packed:output:0,sequential_176/lstm_530/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_176/lstm_530/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_176/lstm_530/zeros_1/packedPack.sequential_176/lstm_530/strided_slice:output:01sequential_176/lstm_530/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_176/lstm_530/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_176/lstm_530/zeros_1Fill/sequential_176/lstm_530/zeros_1/packed:output:0.sequential_176/lstm_530/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_176/lstm_530/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_176/lstm_530/transpose	Transpose'sequential_176/lstm_529/transpose_1:y:0/sequential_176/lstm_530/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_176/lstm_530/Shape_1Shape%sequential_176/lstm_530/transpose:y:0*
T0*
_output_shapes
:w
-sequential_176/lstm_530/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_530/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_530/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_530/strided_slice_1StridedSlice(sequential_176/lstm_530/Shape_1:output:06sequential_176/lstm_530/strided_slice_1/stack:output:08sequential_176/lstm_530/strided_slice_1/stack_1:output:08sequential_176/lstm_530/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_176/lstm_530/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_176/lstm_530/TensorArrayV2TensorListReserve<sequential_176/lstm_530/TensorArrayV2/element_shape:output:00sequential_176/lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_176/lstm_530/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_176/lstm_530/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_176/lstm_530/transpose:y:0Vsequential_176/lstm_530/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_176/lstm_530/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_530/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_176/lstm_530/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_530/strided_slice_2StridedSlice%sequential_176/lstm_530/transpose:y:06sequential_176/lstm_530/strided_slice_2/stack:output:08sequential_176/lstm_530/strided_slice_2/stack_1:output:08sequential_176/lstm_530/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOpReadVariableOpDsequential_176_lstm_530_lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_176/lstm_530/lstm_cell_158/MatMulMatMul0sequential_176/lstm_530/strided_slice_2:output:0Csequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOpFsequential_176_lstm_530_lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_176/lstm_530/lstm_cell_158/MatMul_1MatMul&sequential_176/lstm_530/zeros:output:0Esequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_176/lstm_530/lstm_cell_158/addAddV26sequential_176/lstm_530/lstm_cell_158/MatMul:product:08sequential_176/lstm_530/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOpEsequential_176_lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_176/lstm_530/lstm_cell_158/BiasAddBiasAdd-sequential_176/lstm_530/lstm_cell_158/add:z:0Dsequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_176/lstm_530/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_176/lstm_530/lstm_cell_158/splitSplit>sequential_176/lstm_530/lstm_cell_158/split/split_dim:output:06sequential_176/lstm_530/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_176/lstm_530/lstm_cell_158/SigmoidSigmoid4sequential_176/lstm_530/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_176/lstm_530/lstm_cell_158/Sigmoid_1Sigmoid4sequential_176/lstm_530/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_176/lstm_530/lstm_cell_158/mulMul3sequential_176/lstm_530/lstm_cell_158/Sigmoid_1:y:0(sequential_176/lstm_530/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_176/lstm_530/lstm_cell_158/ReluRelu4sequential_176/lstm_530/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_176/lstm_530/lstm_cell_158/mul_1Mul1sequential_176/lstm_530/lstm_cell_158/Sigmoid:y:08sequential_176/lstm_530/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_176/lstm_530/lstm_cell_158/add_1AddV2-sequential_176/lstm_530/lstm_cell_158/mul:z:0/sequential_176/lstm_530/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_176/lstm_530/lstm_cell_158/Sigmoid_2Sigmoid4sequential_176/lstm_530/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_176/lstm_530/lstm_cell_158/Relu_1Relu/sequential_176/lstm_530/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_176/lstm_530/lstm_cell_158/mul_2Mul3sequential_176/lstm_530/lstm_cell_158/Sigmoid_2:y:0:sequential_176/lstm_530/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_176/lstm_530/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_176/lstm_530/TensorArrayV2_1TensorListReserve>sequential_176/lstm_530/TensorArrayV2_1/element_shape:output:00sequential_176/lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_176/lstm_530/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_176/lstm_530/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_176/lstm_530/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_176/lstm_530/whileWhile3sequential_176/lstm_530/while/loop_counter:output:09sequential_176/lstm_530/while/maximum_iterations:output:0%sequential_176/lstm_530/time:output:00sequential_176/lstm_530/TensorArrayV2_1:handle:0&sequential_176/lstm_530/zeros:output:0(sequential_176/lstm_530/zeros_1:output:00sequential_176/lstm_530/strided_slice_1:output:0Osequential_176/lstm_530/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_176_lstm_530_lstm_cell_158_matmul_readvariableop_resourceFsequential_176_lstm_530_lstm_cell_158_matmul_1_readvariableop_resourceEsequential_176_lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
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
)sequential_176_lstm_530_while_body_955964*5
cond-R+
)sequential_176_lstm_530_while_cond_955963*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_176/lstm_530/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_176/lstm_530/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_176/lstm_530/while:output:3Qsequential_176/lstm_530/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_176/lstm_530/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_176/lstm_530/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_176/lstm_530/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_176/lstm_530/strided_slice_3StridedSliceCsequential_176/lstm_530/TensorArrayV2Stack/TensorListStack:tensor:06sequential_176/lstm_530/strided_slice_3/stack:output:08sequential_176/lstm_530/strided_slice_3/stack_1:output:08sequential_176/lstm_530/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_176/lstm_530/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_176/lstm_530/transpose_1	TransposeCsequential_176/lstm_530/TensorArrayV2Stack/TensorListStack:tensor:01sequential_176/lstm_530/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_176/lstm_530/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_176/dense_176/MatMul/ReadVariableOpReadVariableOp7sequential_176_dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_176/dense_176/MatMulMatMul0sequential_176/lstm_530/strided_slice_3:output:06sequential_176/dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_176/dense_176/BiasAdd/ReadVariableOpReadVariableOp8sequential_176_dense_176_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_176/dense_176/BiasAddBiasAdd)sequential_176/dense_176/MatMul:product:07sequential_176/dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_176/dense_176/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_176/dense_176/BiasAdd/ReadVariableOp/^sequential_176/dense_176/MatMul/ReadVariableOp=^sequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp<^sequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOp>^sequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp^sequential_176/lstm_528/while=^sequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp<^sequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOp>^sequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp^sequential_176/lstm_529/while=^sequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp<^sequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOp>^sequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp^sequential_176/lstm_530/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_176/dense_176/BiasAdd/ReadVariableOp/sequential_176/dense_176/BiasAdd/ReadVariableOp2`
.sequential_176/dense_176/MatMul/ReadVariableOp.sequential_176/dense_176/MatMul/ReadVariableOp2|
<sequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp<sequential_176/lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp2z
;sequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOp;sequential_176/lstm_528/lstm_cell_156/MatMul/ReadVariableOp2~
=sequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp=sequential_176/lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp2>
sequential_176/lstm_528/whilesequential_176/lstm_528/while2|
<sequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp<sequential_176/lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp2z
;sequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOp;sequential_176/lstm_529/lstm_cell_157/MatMul/ReadVariableOp2~
=sequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp=sequential_176/lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp2>
sequential_176/lstm_529/whilesequential_176/lstm_529/while2|
<sequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp<sequential_176/lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp2z
;sequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOp;sequential_176/lstm_530/lstm_cell_158/MatMul/ReadVariableOp2~
=sequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp=sequential_176/lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp2>
sequential_176/lstm_530/whilesequential_176/lstm_530/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_528_input
?
?
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956471

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
$__inference_signature_wrapper_958314
lstm_528_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_528_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_956054o
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
_user_specified_namelstm_528_input
?
?
J__inference_sequential_176_layer_call_and_return_conditional_losses_958279
lstm_528_input"
lstm_528_958252:	?"
lstm_528_958254:	d?
lstm_528_958256:	?"
lstm_529_958259:	d?"
lstm_529_958261:	2?
lstm_529_958263:	?!
lstm_530_958266:2(!
lstm_530_958268:
(
lstm_530_958270:("
dense_176_958273:

dense_176_958275:
identity??!dense_176/StatefulPartitionedCall? lstm_528/StatefulPartitionedCall? lstm_529/StatefulPartitionedCall? lstm_530/StatefulPartitionedCall?
 lstm_528/StatefulPartitionedCallStatefulPartitionedCalllstm_528_inputlstm_528_958252lstm_528_958254lstm_528_958256*
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_958099?
 lstm_529/StatefulPartitionedCallStatefulPartitionedCall)lstm_528/StatefulPartitionedCall:output:0lstm_529_958259lstm_529_958261lstm_529_958263*
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957934?
 lstm_530/StatefulPartitionedCallStatefulPartitionedCall)lstm_529/StatefulPartitionedCall:output:0lstm_530_958266lstm_530_958268lstm_530_958270*
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957769?
!dense_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_530/StatefulPartitionedCall:output:0dense_176_958273dense_176_958275*
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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571y
IdentityIdentity*dense_176/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall!^lstm_528/StatefulPartitionedCall!^lstm_529/StatefulPartitionedCall!^lstm_530/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2D
 lstm_528/StatefulPartitionedCall lstm_528/StatefulPartitionedCall2D
 lstm_529/StatefulPartitionedCall lstm_529/StatefulPartitionedCall2D
 lstm_530/StatefulPartitionedCall lstm_530/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_528_input
?8
?
D__inference_lstm_530_layer_call_and_return_conditional_losses_956904

inputs&
lstm_cell_158_956822:2(&
lstm_cell_158_956824:
("
lstm_cell_158_956826:(
identity??%lstm_cell_158/StatefulPartitionedCall?while;
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
%lstm_cell_158/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_158_956822lstm_cell_158_956824lstm_cell_158_956826*
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956821n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_158_956822lstm_cell_158_956824lstm_cell_158_956826*
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
while_body_956835*
condR
while_cond_956834*K
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
NoOpNoOp&^lstm_cell_158/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_158/StatefulPartitionedCall%lstm_cell_158/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
J__inference_sequential_176_layer_call_and_return_conditional_losses_959222

inputsH
5lstm_528_lstm_cell_156_matmul_readvariableop_resource:	?J
7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource:	d?E
6lstm_528_lstm_cell_156_biasadd_readvariableop_resource:	?H
5lstm_529_lstm_cell_157_matmul_readvariableop_resource:	d?J
7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource:	2?E
6lstm_529_lstm_cell_157_biasadd_readvariableop_resource:	?G
5lstm_530_lstm_cell_158_matmul_readvariableop_resource:2(I
7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource:
(D
6lstm_530_lstm_cell_158_biasadd_readvariableop_resource:(:
(dense_176_matmul_readvariableop_resource:
7
)dense_176_biasadd_readvariableop_resource:
identity?? dense_176/BiasAdd/ReadVariableOp?dense_176/MatMul/ReadVariableOp?-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp?,lstm_528/lstm_cell_156/MatMul/ReadVariableOp?.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp?lstm_528/while?-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp?,lstm_529/lstm_cell_157/MatMul/ReadVariableOp?.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp?lstm_529/while?-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp?,lstm_530/lstm_cell_158/MatMul/ReadVariableOp?.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp?lstm_530/whileD
lstm_528/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_528/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_528/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_528/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_sliceStridedSlicelstm_528/Shape:output:0%lstm_528/strided_slice/stack:output:0'lstm_528/strided_slice/stack_1:output:0'lstm_528/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_528/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_528/zeros/packedPacklstm_528/strided_slice:output:0 lstm_528/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_528/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_528/zerosFilllstm_528/zeros/packed:output:0lstm_528/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_528/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_528/zeros_1/packedPacklstm_528/strided_slice:output:0"lstm_528/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_528/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_528/zeros_1Fill lstm_528/zeros_1/packed:output:0lstm_528/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_528/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_528/transpose	Transposeinputs lstm_528/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_528/Shape_1Shapelstm_528/transpose:y:0*
T0*
_output_shapes
:h
lstm_528/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_528/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_1StridedSlicelstm_528/Shape_1:output:0'lstm_528/strided_slice_1/stack:output:0)lstm_528/strided_slice_1/stack_1:output:0)lstm_528/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_528/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_528/TensorArrayV2TensorListReserve-lstm_528/TensorArrayV2/element_shape:output:0!lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_528/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_528/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_528/transpose:y:0Glstm_528/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_528/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_528/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_2StridedSlicelstm_528/transpose:y:0'lstm_528/strided_slice_2/stack:output:0)lstm_528/strided_slice_2/stack_1:output:0)lstm_528/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_528/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp5lstm_528_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_528/lstm_cell_156/MatMulMatMul!lstm_528/strided_slice_2:output:04lstm_528/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_528/lstm_cell_156/MatMul_1MatMullstm_528/zeros:output:06lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_528/lstm_cell_156/addAddV2'lstm_528/lstm_cell_156/MatMul:product:0)lstm_528/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp6lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_528/lstm_cell_156/BiasAddBiasAddlstm_528/lstm_cell_156/add:z:05lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_528/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_528/lstm_cell_156/splitSplit/lstm_528/lstm_cell_156/split/split_dim:output:0'lstm_528/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_528/lstm_cell_156/SigmoidSigmoid%lstm_528/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_528/lstm_cell_156/Sigmoid_1Sigmoid%lstm_528/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mulMul$lstm_528/lstm_cell_156/Sigmoid_1:y:0lstm_528/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_528/lstm_cell_156/ReluRelu%lstm_528/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mul_1Mul"lstm_528/lstm_cell_156/Sigmoid:y:0)lstm_528/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/add_1AddV2lstm_528/lstm_cell_156/mul:z:0 lstm_528/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_528/lstm_cell_156/Sigmoid_2Sigmoid%lstm_528/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_528/lstm_cell_156/Relu_1Relu lstm_528/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mul_2Mul$lstm_528/lstm_cell_156/Sigmoid_2:y:0+lstm_528/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_528/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_528/TensorArrayV2_1TensorListReserve/lstm_528/TensorArrayV2_1/element_shape:output:0!lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_528/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_528/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_528/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_528/whileWhile$lstm_528/while/loop_counter:output:0*lstm_528/while/maximum_iterations:output:0lstm_528/time:output:0!lstm_528/TensorArrayV2_1:handle:0lstm_528/zeros:output:0lstm_528/zeros_1:output:0!lstm_528/strided_slice_1:output:0@lstm_528/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_528_lstm_cell_156_matmul_readvariableop_resource7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource6lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
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
lstm_528_while_body_958854*&
condR
lstm_528_while_cond_958853*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_528/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_528/TensorArrayV2Stack/TensorListStackTensorListStacklstm_528/while:output:3Blstm_528/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_528/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_528/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_3StridedSlice4lstm_528/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_528/strided_slice_3/stack:output:0)lstm_528/strided_slice_3/stack_1:output:0)lstm_528/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_528/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_528/transpose_1	Transpose4lstm_528/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_528/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_528/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_529/ShapeShapelstm_528/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_529/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_529/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_529/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_sliceStridedSlicelstm_529/Shape:output:0%lstm_529/strided_slice/stack:output:0'lstm_529/strided_slice/stack_1:output:0'lstm_529/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_529/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_529/zeros/packedPacklstm_529/strided_slice:output:0 lstm_529/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_529/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_529/zerosFilllstm_529/zeros/packed:output:0lstm_529/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_529/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_529/zeros_1/packedPacklstm_529/strided_slice:output:0"lstm_529/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_529/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_529/zeros_1Fill lstm_529/zeros_1/packed:output:0lstm_529/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_529/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_529/transpose	Transposelstm_528/transpose_1:y:0 lstm_529/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_529/Shape_1Shapelstm_529/transpose:y:0*
T0*
_output_shapes
:h
lstm_529/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_529/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_1StridedSlicelstm_529/Shape_1:output:0'lstm_529/strided_slice_1/stack:output:0)lstm_529/strided_slice_1/stack_1:output:0)lstm_529/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_529/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_529/TensorArrayV2TensorListReserve-lstm_529/TensorArrayV2/element_shape:output:0!lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_529/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_529/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_529/transpose:y:0Glstm_529/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_529/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_529/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_2StridedSlicelstm_529/transpose:y:0'lstm_529/strided_slice_2/stack:output:0)lstm_529/strided_slice_2/stack_1:output:0)lstm_529/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_529/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp5lstm_529_lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_529/lstm_cell_157/MatMulMatMul!lstm_529/strided_slice_2:output:04lstm_529/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_529/lstm_cell_157/MatMul_1MatMullstm_529/zeros:output:06lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_529/lstm_cell_157/addAddV2'lstm_529/lstm_cell_157/MatMul:product:0)lstm_529/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp6lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_529/lstm_cell_157/BiasAddBiasAddlstm_529/lstm_cell_157/add:z:05lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_529/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_529/lstm_cell_157/splitSplit/lstm_529/lstm_cell_157/split/split_dim:output:0'lstm_529/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_529/lstm_cell_157/SigmoidSigmoid%lstm_529/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_529/lstm_cell_157/Sigmoid_1Sigmoid%lstm_529/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mulMul$lstm_529/lstm_cell_157/Sigmoid_1:y:0lstm_529/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_529/lstm_cell_157/ReluRelu%lstm_529/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mul_1Mul"lstm_529/lstm_cell_157/Sigmoid:y:0)lstm_529/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/add_1AddV2lstm_529/lstm_cell_157/mul:z:0 lstm_529/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_529/lstm_cell_157/Sigmoid_2Sigmoid%lstm_529/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_529/lstm_cell_157/Relu_1Relu lstm_529/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mul_2Mul$lstm_529/lstm_cell_157/Sigmoid_2:y:0+lstm_529/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_529/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_529/TensorArrayV2_1TensorListReserve/lstm_529/TensorArrayV2_1/element_shape:output:0!lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_529/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_529/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_529/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_529/whileWhile$lstm_529/while/loop_counter:output:0*lstm_529/while/maximum_iterations:output:0lstm_529/time:output:0!lstm_529/TensorArrayV2_1:handle:0lstm_529/zeros:output:0lstm_529/zeros_1:output:0!lstm_529/strided_slice_1:output:0@lstm_529/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_529_lstm_cell_157_matmul_readvariableop_resource7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource6lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
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
lstm_529_while_body_958993*&
condR
lstm_529_while_cond_958992*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_529/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_529/TensorArrayV2Stack/TensorListStackTensorListStacklstm_529/while:output:3Blstm_529/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_529/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_529/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_3StridedSlice4lstm_529/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_529/strided_slice_3/stack:output:0)lstm_529/strided_slice_3/stack_1:output:0)lstm_529/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_529/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_529/transpose_1	Transpose4lstm_529/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_529/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_529/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_530/ShapeShapelstm_529/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_530/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_530/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_530/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_sliceStridedSlicelstm_530/Shape:output:0%lstm_530/strided_slice/stack:output:0'lstm_530/strided_slice/stack_1:output:0'lstm_530/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_530/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_530/zeros/packedPacklstm_530/strided_slice:output:0 lstm_530/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_530/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_530/zerosFilllstm_530/zeros/packed:output:0lstm_530/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_530/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_530/zeros_1/packedPacklstm_530/strided_slice:output:0"lstm_530/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_530/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_530/zeros_1Fill lstm_530/zeros_1/packed:output:0lstm_530/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_530/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_530/transpose	Transposelstm_529/transpose_1:y:0 lstm_530/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_530/Shape_1Shapelstm_530/transpose:y:0*
T0*
_output_shapes
:h
lstm_530/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_530/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_1StridedSlicelstm_530/Shape_1:output:0'lstm_530/strided_slice_1/stack:output:0)lstm_530/strided_slice_1/stack_1:output:0)lstm_530/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_530/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_530/TensorArrayV2TensorListReserve-lstm_530/TensorArrayV2/element_shape:output:0!lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_530/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_530/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_530/transpose:y:0Glstm_530/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_530/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_530/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_2StridedSlicelstm_530/transpose:y:0'lstm_530/strided_slice_2/stack:output:0)lstm_530/strided_slice_2/stack_1:output:0)lstm_530/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_530/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp5lstm_530_lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_530/lstm_cell_158/MatMulMatMul!lstm_530/strided_slice_2:output:04lstm_530/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_530/lstm_cell_158/MatMul_1MatMullstm_530/zeros:output:06lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_530/lstm_cell_158/addAddV2'lstm_530/lstm_cell_158/MatMul:product:0)lstm_530/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp6lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_530/lstm_cell_158/BiasAddBiasAddlstm_530/lstm_cell_158/add:z:05lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_530/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_530/lstm_cell_158/splitSplit/lstm_530/lstm_cell_158/split/split_dim:output:0'lstm_530/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_530/lstm_cell_158/SigmoidSigmoid%lstm_530/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_530/lstm_cell_158/Sigmoid_1Sigmoid%lstm_530/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mulMul$lstm_530/lstm_cell_158/Sigmoid_1:y:0lstm_530/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_530/lstm_cell_158/ReluRelu%lstm_530/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mul_1Mul"lstm_530/lstm_cell_158/Sigmoid:y:0)lstm_530/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/add_1AddV2lstm_530/lstm_cell_158/mul:z:0 lstm_530/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_530/lstm_cell_158/Sigmoid_2Sigmoid%lstm_530/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_530/lstm_cell_158/Relu_1Relu lstm_530/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mul_2Mul$lstm_530/lstm_cell_158/Sigmoid_2:y:0+lstm_530/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_530/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_530/TensorArrayV2_1TensorListReserve/lstm_530/TensorArrayV2_1/element_shape:output:0!lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_530/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_530/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_530/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_530/whileWhile$lstm_530/while/loop_counter:output:0*lstm_530/while/maximum_iterations:output:0lstm_530/time:output:0!lstm_530/TensorArrayV2_1:handle:0lstm_530/zeros:output:0lstm_530/zeros_1:output:0!lstm_530/strided_slice_1:output:0@lstm_530/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_530_lstm_cell_158_matmul_readvariableop_resource7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource6lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
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
lstm_530_while_body_959132*&
condR
lstm_530_while_cond_959131*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_530/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_530/TensorArrayV2Stack/TensorListStackTensorListStacklstm_530/while:output:3Blstm_530/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_530/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_530/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_3StridedSlice4lstm_530/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_530/strided_slice_3/stack:output:0)lstm_530/strided_slice_3/stack_1:output:0)lstm_530/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_530/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_530/transpose_1	Transpose4lstm_530/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_530/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_530/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_176/MatMul/ReadVariableOpReadVariableOp(dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_176/MatMulMatMul!lstm_530/strided_slice_3:output:0'dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_176/BiasAdd/ReadVariableOpReadVariableOp)dense_176_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_176/BiasAddBiasAdddense_176/MatMul:product:0(dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_176/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_176/BiasAdd/ReadVariableOp ^dense_176/MatMul/ReadVariableOp.^lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp-^lstm_528/lstm_cell_156/MatMul/ReadVariableOp/^lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp^lstm_528/while.^lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp-^lstm_529/lstm_cell_157/MatMul/ReadVariableOp/^lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp^lstm_529/while.^lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp-^lstm_530/lstm_cell_158/MatMul/ReadVariableOp/^lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp^lstm_530/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_176/BiasAdd/ReadVariableOp dense_176/BiasAdd/ReadVariableOp2B
dense_176/MatMul/ReadVariableOpdense_176/MatMul/ReadVariableOp2^
-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp2\
,lstm_528/lstm_cell_156/MatMul/ReadVariableOp,lstm_528/lstm_cell_156/MatMul/ReadVariableOp2`
.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp2 
lstm_528/whilelstm_528/while2^
-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp2\
,lstm_529/lstm_cell_157/MatMul/ReadVariableOp,lstm_529/lstm_cell_157/MatMul/ReadVariableOp2`
.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp2 
lstm_529/whilelstm_529/while2^
-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp2\
,lstm_530/lstm_cell_158/MatMul/ReadVariableOp,lstm_530/lstm_cell_158/MatMul/ReadVariableOp2`
.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp2 
lstm_530/whilelstm_530/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_960083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960083___redundant_placeholder04
0while_while_cond_960083___redundant_placeholder14
0while_while_cond_960083___redundant_placeholder24
0while_while_cond_960083___redundant_placeholder3
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
__inference__traced_save_961526
file_prefix/
+savev2_dense_176_kernel_read_readvariableop-
)savev2_dense_176_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_528_lstm_cell_528_kernel_read_readvariableopF
Bsavev2_lstm_528_lstm_cell_528_recurrent_kernel_read_readvariableop:
6savev2_lstm_528_lstm_cell_528_bias_read_readvariableop<
8savev2_lstm_529_lstm_cell_529_kernel_read_readvariableopF
Bsavev2_lstm_529_lstm_cell_529_recurrent_kernel_read_readvariableop:
6savev2_lstm_529_lstm_cell_529_bias_read_readvariableop<
8savev2_lstm_530_lstm_cell_530_kernel_read_readvariableopF
Bsavev2_lstm_530_lstm_cell_530_recurrent_kernel_read_readvariableop:
6savev2_lstm_530_lstm_cell_530_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_176_kernel_m_read_readvariableop4
0savev2_adam_dense_176_bias_m_read_readvariableopC
?savev2_adam_lstm_528_lstm_cell_528_kernel_m_read_readvariableopM
Isavev2_adam_lstm_528_lstm_cell_528_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_528_lstm_cell_528_bias_m_read_readvariableopC
?savev2_adam_lstm_529_lstm_cell_529_kernel_m_read_readvariableopM
Isavev2_adam_lstm_529_lstm_cell_529_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_529_lstm_cell_529_bias_m_read_readvariableopC
?savev2_adam_lstm_530_lstm_cell_530_kernel_m_read_readvariableopM
Isavev2_adam_lstm_530_lstm_cell_530_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_530_lstm_cell_530_bias_m_read_readvariableop6
2savev2_adam_dense_176_kernel_v_read_readvariableop4
0savev2_adam_dense_176_bias_v_read_readvariableopC
?savev2_adam_lstm_528_lstm_cell_528_kernel_v_read_readvariableopM
Isavev2_adam_lstm_528_lstm_cell_528_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_528_lstm_cell_528_bias_v_read_readvariableopC
?savev2_adam_lstm_529_lstm_cell_529_kernel_v_read_readvariableopM
Isavev2_adam_lstm_529_lstm_cell_529_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_529_lstm_cell_529_bias_v_read_readvariableopC
?savev2_adam_lstm_530_lstm_cell_530_kernel_v_read_readvariableopM
Isavev2_adam_lstm_530_lstm_cell_530_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_530_lstm_cell_530_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_176_kernel_read_readvariableop)savev2_dense_176_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_528_lstm_cell_528_kernel_read_readvariableopBsavev2_lstm_528_lstm_cell_528_recurrent_kernel_read_readvariableop6savev2_lstm_528_lstm_cell_528_bias_read_readvariableop8savev2_lstm_529_lstm_cell_529_kernel_read_readvariableopBsavev2_lstm_529_lstm_cell_529_recurrent_kernel_read_readvariableop6savev2_lstm_529_lstm_cell_529_bias_read_readvariableop8savev2_lstm_530_lstm_cell_530_kernel_read_readvariableopBsavev2_lstm_530_lstm_cell_530_recurrent_kernel_read_readvariableop6savev2_lstm_530_lstm_cell_530_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_176_kernel_m_read_readvariableop0savev2_adam_dense_176_bias_m_read_readvariableop?savev2_adam_lstm_528_lstm_cell_528_kernel_m_read_readvariableopIsavev2_adam_lstm_528_lstm_cell_528_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_528_lstm_cell_528_bias_m_read_readvariableop?savev2_adam_lstm_529_lstm_cell_529_kernel_m_read_readvariableopIsavev2_adam_lstm_529_lstm_cell_529_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_529_lstm_cell_529_bias_m_read_readvariableop?savev2_adam_lstm_530_lstm_cell_530_kernel_m_read_readvariableopIsavev2_adam_lstm_530_lstm_cell_530_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_530_lstm_cell_530_bias_m_read_readvariableop2savev2_adam_dense_176_kernel_v_read_readvariableop0savev2_adam_dense_176_bias_v_read_readvariableop?savev2_adam_lstm_528_lstm_cell_528_kernel_v_read_readvariableopIsavev2_adam_lstm_528_lstm_cell_528_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_528_lstm_cell_528_bias_v_read_readvariableop?savev2_adam_lstm_529_lstm_cell_529_kernel_v_read_readvariableopIsavev2_adam_lstm_529_lstm_cell_529_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_529_lstm_cell_529_bias_v_read_readvariableop?savev2_adam_lstm_530_lstm_cell_530_kernel_v_read_readvariableopIsavev2_adam_lstm_530_lstm_cell_530_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_530_lstm_cell_530_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
)__inference_lstm_529_layer_call_fn_959871

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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957403s
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959695

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_959611*
condR
while_cond_959610*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956121

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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956617

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
?
D__inference_lstm_530_layer_call_and_return_conditional_losses_957095

inputs&
lstm_cell_158_957013:2(&
lstm_cell_158_957015:
("
lstm_cell_158_957017:(
identity??%lstm_cell_158/StatefulPartitionedCall?while;
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
%lstm_cell_158/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_158_957013lstm_cell_158_957015lstm_cell_158_957017*
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956967n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_158_957013lstm_cell_158_957015lstm_cell_158_957017*
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
while_body_957026*
condR
while_cond_957025*K
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
NoOpNoOp&^lstm_cell_158/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_158/StatefulPartitionedCall%lstm_cell_158/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_530_while_cond_959131.
*lstm_530_while_lstm_530_while_loop_counter4
0lstm_530_while_lstm_530_while_maximum_iterations
lstm_530_while_placeholder 
lstm_530_while_placeholder_1 
lstm_530_while_placeholder_2 
lstm_530_while_placeholder_30
,lstm_530_while_less_lstm_530_strided_slice_1F
Blstm_530_while_lstm_530_while_cond_959131___redundant_placeholder0F
Blstm_530_while_lstm_530_while_cond_959131___redundant_placeholder1F
Blstm_530_while_lstm_530_while_cond_959131___redundant_placeholder2F
Blstm_530_while_lstm_530_while_cond_959131___redundant_placeholder3
lstm_530_while_identity
?
lstm_530/while/LessLesslstm_530_while_placeholder,lstm_530_while_less_lstm_530_strided_slice_1*
T0*
_output_shapes
: ]
lstm_530/while/IdentityIdentitylstm_530/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_530_while_identity lstm_530/while/Identity:output:0*(
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960168
inputs_0?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_960084*
condR
while_cond_960083*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_960985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960985___redundant_placeholder04
0while_while_cond_960985___redundant_placeholder14
0while_while_cond_960985___redundant_placeholder24
0while_while_cond_960985___redundant_placeholder3
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
/__inference_sequential_176_layer_call_fn_957603
lstm_528_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_528_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_957578o
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
_user_specified_namelstm_528_input
?8
?
D__inference_lstm_529_layer_call_and_return_conditional_losses_956745

inputs'
lstm_cell_157_956663:	d?'
lstm_cell_157_956665:	2?#
lstm_cell_157_956667:	?
identity??%lstm_cell_157/StatefulPartitionedCall?while;
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
%lstm_cell_157/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_157_956663lstm_cell_157_956665lstm_cell_157_956667*
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956617n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_157_956663lstm_cell_157_956665lstm_cell_157_956667*
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
while_body_956676*
condR
while_cond_956675*K
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
NoOpNoOp&^lstm_cell_157/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_157/StatefulPartitionedCall%lstm_cell_157/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_530_layer_call_and_return_conditional_losses_960641
inputs_0>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_960557*
condR
while_cond_960556*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_960843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571

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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956967

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
while_cond_957849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957849___redundant_placeholder04
0while_while_cond_957849___redundant_placeholder14
0while_while_cond_957849___redundant_placeholder24
0while_while_cond_957849___redundant_placeholder3
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
while_cond_959610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_959610___redundant_placeholder04
0while_while_cond_959610___redundant_placeholder14
0while_while_cond_959610___redundant_placeholder24
0while_while_cond_959610___redundant_placeholder3
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
while_body_960986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_176_layer_call_fn_958219
lstm_528_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_528_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_958167o
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
_user_specified_namelstm_528_input
?
?
J__inference_sequential_176_layer_call_and_return_conditional_losses_958167

inputs"
lstm_528_958140:	?"
lstm_528_958142:	d?
lstm_528_958144:	?"
lstm_529_958147:	d?"
lstm_529_958149:	2?
lstm_529_958151:	?!
lstm_530_958154:2(!
lstm_530_958156:
(
lstm_530_958158:("
dense_176_958161:

dense_176_958163:
identity??!dense_176/StatefulPartitionedCall? lstm_528/StatefulPartitionedCall? lstm_529/StatefulPartitionedCall? lstm_530/StatefulPartitionedCall?
 lstm_528/StatefulPartitionedCallStatefulPartitionedCallinputslstm_528_958140lstm_528_958142lstm_528_958144*
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_958099?
 lstm_529/StatefulPartitionedCallStatefulPartitionedCall)lstm_528/StatefulPartitionedCall:output:0lstm_529_958147lstm_529_958149lstm_529_958151*
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957934?
 lstm_530/StatefulPartitionedCallStatefulPartitionedCall)lstm_529/StatefulPartitionedCall:output:0lstm_530_958154lstm_530_958156lstm_530_958158*
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957769?
!dense_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_530/StatefulPartitionedCall:output:0dense_176_958161dense_176_958163*
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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571y
IdentityIdentity*dense_176/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall!^lstm_528/StatefulPartitionedCall!^lstm_529/StatefulPartitionedCall!^lstm_530/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2D
 lstm_528/StatefulPartitionedCall lstm_528/StatefulPartitionedCall2D
 lstm_529/StatefulPartitionedCall lstm_529/StatefulPartitionedCall2D
 lstm_530/StatefulPartitionedCall lstm_530/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_528_layer_call_fn_959255

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
D__inference_lstm_528_layer_call_and_return_conditional_losses_957253s
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
while_cond_956484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_956484___redundant_placeholder04
0while_while_cond_956484___redundant_placeholder14
0while_while_cond_956484___redundant_placeholder24
0while_while_cond_956484___redundant_placeholder3
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_961070

inputs>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_960986*
condR
while_cond_960985*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_529_layer_call_fn_959849
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_956554|
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961187

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
)__inference_lstm_528_layer_call_fn_959233
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_956204|
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
while_cond_960369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960369___redundant_placeholder04
0while_while_cond_960369___redundant_placeholder14
0while_while_cond_960369___redundant_placeholder24
0while_while_cond_960369___redundant_placeholder3
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
?"
?
while_body_956676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_157_956700_0:	d?/
while_lstm_cell_157_956702_0:	2?+
while_lstm_cell_157_956704_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_157_956700:	d?-
while_lstm_cell_157_956702:	2?)
while_lstm_cell_157_956704:	???+while/lstm_cell_157/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_157/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_157_956700_0while_lstm_cell_157_956702_0while_lstm_cell_157_956704_0*
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956617?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_157/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_157/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_157/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_157/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_157_956700while_lstm_cell_157_956700_0":
while_lstm_cell_157_956702while_lstm_cell_157_956702_0":
while_lstm_cell_157_956704while_lstm_cell_157_956704_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_157/StatefulPartitionedCall+while/lstm_cell_157/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_158_layer_call_fn_961302

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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956821o
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
while_body_959325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_530_layer_call_fn_960487

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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957553o
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
??
?
"__inference__traced_restore_961656
file_prefix3
!assignvariableop_dense_176_kernel:
/
!assignvariableop_1_dense_176_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_528_lstm_cell_528_kernel:	?M
:assignvariableop_8_lstm_528_lstm_cell_528_recurrent_kernel:	d?=
.assignvariableop_9_lstm_528_lstm_cell_528_bias:	?D
1assignvariableop_10_lstm_529_lstm_cell_529_kernel:	d?N
;assignvariableop_11_lstm_529_lstm_cell_529_recurrent_kernel:	2?>
/assignvariableop_12_lstm_529_lstm_cell_529_bias:	?C
1assignvariableop_13_lstm_530_lstm_cell_530_kernel:2(M
;assignvariableop_14_lstm_530_lstm_cell_530_recurrent_kernel:
(=
/assignvariableop_15_lstm_530_lstm_cell_530_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_176_kernel_m:
7
)assignvariableop_19_adam_dense_176_bias_m:K
8assignvariableop_20_adam_lstm_528_lstm_cell_528_kernel_m:	?U
Bassignvariableop_21_adam_lstm_528_lstm_cell_528_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_528_lstm_cell_528_bias_m:	?K
8assignvariableop_23_adam_lstm_529_lstm_cell_529_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_529_lstm_cell_529_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_529_lstm_cell_529_bias_m:	?J
8assignvariableop_26_adam_lstm_530_lstm_cell_530_kernel_m:2(T
Bassignvariableop_27_adam_lstm_530_lstm_cell_530_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_530_lstm_cell_530_bias_m:(=
+assignvariableop_29_adam_dense_176_kernel_v:
7
)assignvariableop_30_adam_dense_176_bias_v:K
8assignvariableop_31_adam_lstm_528_lstm_cell_528_kernel_v:	?U
Bassignvariableop_32_adam_lstm_528_lstm_cell_528_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_528_lstm_cell_528_bias_v:	?K
8assignvariableop_34_adam_lstm_529_lstm_cell_529_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_529_lstm_cell_529_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_529_lstm_cell_529_bias_v:	?J
8assignvariableop_37_adam_lstm_530_lstm_cell_530_kernel_v:2(T
Bassignvariableop_38_adam_lstm_530_lstm_cell_530_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_530_lstm_cell_530_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_176_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_176_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_528_lstm_cell_528_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_528_lstm_cell_528_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_528_lstm_cell_528_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_529_lstm_cell_529_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_529_lstm_cell_529_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_529_lstm_cell_529_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_530_lstm_cell_530_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_530_lstm_cell_530_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_530_lstm_cell_530_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_176_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_176_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_528_lstm_cell_528_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_528_lstm_cell_528_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_528_lstm_cell_528_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_529_lstm_cell_529_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_529_lstm_cell_529_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_529_lstm_cell_529_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_530_lstm_cell_530_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_530_lstm_cell_530_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_530_lstm_cell_530_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_176_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_176_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_528_lstm_cell_528_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_528_lstm_cell_528_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_528_lstm_cell_528_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_529_lstm_cell_529_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_529_lstm_cell_529_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_529_lstm_cell_529_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_530_lstm_cell_530_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_530_lstm_cell_530_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_530_lstm_cell_530_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
)__inference_lstm_530_layer_call_fn_960498

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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957769o
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
?"
?
while_body_956135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_156_956159_0:	?/
while_lstm_cell_156_956161_0:	d?+
while_lstm_cell_156_956163_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_156_956159:	?-
while_lstm_cell_156_956161:	d?)
while_lstm_cell_156_956163:	???+while/lstm_cell_156/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_156_956159_0while_lstm_cell_156_956161_0while_lstm_cell_156_956163_0*
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956121?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_156/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_156/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_156/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_156_956159while_lstm_cell_156_956159_0":
while_lstm_cell_156_956161while_lstm_cell_156_956161_0":
while_lstm_cell_156_956163while_lstm_cell_156_956163_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_156/StatefulPartitionedCall+while/lstm_cell_156/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_176_layer_call_fn_958341

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
J__inference_sequential_176_layer_call_and_return_conditional_losses_957578o
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
while_cond_956834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_956834___redundant_placeholder04
0while_while_cond_956834___redundant_placeholder14
0while_while_cond_956834___redundant_placeholder24
0while_while_cond_956834___redundant_placeholder3
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
lstm_530_while_cond_958704.
*lstm_530_while_lstm_530_while_loop_counter4
0lstm_530_while_lstm_530_while_maximum_iterations
lstm_530_while_placeholder 
lstm_530_while_placeholder_1 
lstm_530_while_placeholder_2 
lstm_530_while_placeholder_30
,lstm_530_while_less_lstm_530_strided_slice_1F
Blstm_530_while_lstm_530_while_cond_958704___redundant_placeholder0F
Blstm_530_while_lstm_530_while_cond_958704___redundant_placeholder1F
Blstm_530_while_lstm_530_while_cond_958704___redundant_placeholder2F
Blstm_530_while_lstm_530_while_cond_958704___redundant_placeholder3
lstm_530_while_identity
?
lstm_530/while/LessLesslstm_530_while_placeholder,lstm_530_while_less_lstm_530_strided_slice_1*
T0*
_output_shapes
: ]
lstm_530/while/IdentityIdentitylstm_530/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_530_while_identity lstm_530/while/Identity:output:0*(
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
while_body_957685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_957253

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_957169*
condR
while_cond_957168*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_959467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_959467___redundant_placeholder04
0while_while_cond_959467___redundant_placeholder14
0while_while_cond_959467___redundant_placeholder24
0while_while_cond_959467___redundant_placeholder3
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957769

inputs>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_957685*
condR
while_cond_957684*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_176_layer_call_fn_958368

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
J__inference_sequential_176_layer_call_and_return_conditional_losses_958167o
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
while_cond_958014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_958014___redundant_placeholder04
0while_while_cond_958014___redundant_placeholder14
0while_while_cond_958014___redundant_placeholder24
0while_while_cond_958014___redundant_placeholder3
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959552
inputs_0?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_959468*
condR
while_cond_959467*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_960557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_176_lstm_530_while_cond_955963L
Hsequential_176_lstm_530_while_sequential_176_lstm_530_while_loop_counterR
Nsequential_176_lstm_530_while_sequential_176_lstm_530_while_maximum_iterations-
)sequential_176_lstm_530_while_placeholder/
+sequential_176_lstm_530_while_placeholder_1/
+sequential_176_lstm_530_while_placeholder_2/
+sequential_176_lstm_530_while_placeholder_3N
Jsequential_176_lstm_530_while_less_sequential_176_lstm_530_strided_slice_1d
`sequential_176_lstm_530_while_sequential_176_lstm_530_while_cond_955963___redundant_placeholder0d
`sequential_176_lstm_530_while_sequential_176_lstm_530_while_cond_955963___redundant_placeholder1d
`sequential_176_lstm_530_while_sequential_176_lstm_530_while_cond_955963___redundant_placeholder2d
`sequential_176_lstm_530_while_sequential_176_lstm_530_while_cond_955963___redundant_placeholder3*
&sequential_176_lstm_530_while_identity
?
"sequential_176/lstm_530/while/LessLess)sequential_176_lstm_530_while_placeholderJsequential_176_lstm_530_while_less_sequential_176_lstm_530_strided_slice_1*
T0*
_output_shapes
: {
&sequential_176/lstm_530/while/IdentityIdentity&sequential_176/lstm_530/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_176_lstm_530_while_identity/sequential_176/lstm_530/while/Identity:output:0*(
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960311

inputs?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_960227*
condR
while_cond_960226*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_176_layer_call_and_return_conditional_losses_961089

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
while_body_959468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_960700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957403

inputs?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_957319*
condR
while_cond_957318*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961285

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
?T
?
)sequential_176_lstm_529_while_body_955825L
Hsequential_176_lstm_529_while_sequential_176_lstm_529_while_loop_counterR
Nsequential_176_lstm_529_while_sequential_176_lstm_529_while_maximum_iterations-
)sequential_176_lstm_529_while_placeholder/
+sequential_176_lstm_529_while_placeholder_1/
+sequential_176_lstm_529_while_placeholder_2/
+sequential_176_lstm_529_while_placeholder_3K
Gsequential_176_lstm_529_while_sequential_176_lstm_529_strided_slice_1_0?
?sequential_176_lstm_529_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_529_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_176_lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0:	d?a
Nsequential_176_lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?\
Msequential_176_lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0:	?*
&sequential_176_lstm_529_while_identity,
(sequential_176_lstm_529_while_identity_1,
(sequential_176_lstm_529_while_identity_2,
(sequential_176_lstm_529_while_identity_3,
(sequential_176_lstm_529_while_identity_4,
(sequential_176_lstm_529_while_identity_5I
Esequential_176_lstm_529_while_sequential_176_lstm_529_strided_slice_1?
?sequential_176_lstm_529_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_529_tensorarrayunstack_tensorlistfromtensor]
Jsequential_176_lstm_529_while_lstm_cell_157_matmul_readvariableop_resource:	d?_
Lsequential_176_lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource:	2?Z
Ksequential_176_lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource:	???Bsequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp?Asequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp?Csequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp?
Osequential_176/lstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_176/lstm_529/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_176_lstm_529_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_529_tensorarrayunstack_tensorlistfromtensor_0)sequential_176_lstm_529_while_placeholderXsequential_176/lstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOpLsequential_176_lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_176/lstm_529/while/lstm_cell_157/MatMulMatMulHsequential_176/lstm_529/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOpNsequential_176_lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_176/lstm_529/while/lstm_cell_157/MatMul_1MatMul+sequential_176_lstm_529_while_placeholder_2Ksequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_176/lstm_529/while/lstm_cell_157/addAddV2<sequential_176/lstm_529/while/lstm_cell_157/MatMul:product:0>sequential_176/lstm_529/while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOpMsequential_176_lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_176/lstm_529/while/lstm_cell_157/BiasAddBiasAdd3sequential_176/lstm_529/while/lstm_cell_157/add:z:0Jsequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_176/lstm_529/while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_176/lstm_529/while/lstm_cell_157/splitSplitDsequential_176/lstm_529/while/lstm_cell_157/split/split_dim:output:0<sequential_176/lstm_529/while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_176/lstm_529/while/lstm_cell_157/SigmoidSigmoid:sequential_176/lstm_529/while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_176/lstm_529/while/lstm_cell_157/Sigmoid_1Sigmoid:sequential_176/lstm_529/while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_176/lstm_529/while/lstm_cell_157/mulMul9sequential_176/lstm_529/while/lstm_cell_157/Sigmoid_1:y:0+sequential_176_lstm_529_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_176/lstm_529/while/lstm_cell_157/ReluRelu:sequential_176/lstm_529/while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_176/lstm_529/while/lstm_cell_157/mul_1Mul7sequential_176/lstm_529/while/lstm_cell_157/Sigmoid:y:0>sequential_176/lstm_529/while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_176/lstm_529/while/lstm_cell_157/add_1AddV23sequential_176/lstm_529/while/lstm_cell_157/mul:z:05sequential_176/lstm_529/while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_176/lstm_529/while/lstm_cell_157/Sigmoid_2Sigmoid:sequential_176/lstm_529/while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_176/lstm_529/while/lstm_cell_157/Relu_1Relu5sequential_176/lstm_529/while/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_176/lstm_529/while/lstm_cell_157/mul_2Mul9sequential_176/lstm_529/while/lstm_cell_157/Sigmoid_2:y:0@sequential_176/lstm_529/while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_176/lstm_529/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_176_lstm_529_while_placeholder_1)sequential_176_lstm_529_while_placeholder5sequential_176/lstm_529/while/lstm_cell_157/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_176/lstm_529/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_176/lstm_529/while/addAddV2)sequential_176_lstm_529_while_placeholder,sequential_176/lstm_529/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_176/lstm_529/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_176/lstm_529/while/add_1AddV2Hsequential_176_lstm_529_while_sequential_176_lstm_529_while_loop_counter.sequential_176/lstm_529/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_176/lstm_529/while/IdentityIdentity'sequential_176/lstm_529/while/add_1:z:0#^sequential_176/lstm_529/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_529/while/Identity_1IdentityNsequential_176_lstm_529_while_sequential_176_lstm_529_while_maximum_iterations#^sequential_176/lstm_529/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_529/while/Identity_2Identity%sequential_176/lstm_529/while/add:z:0#^sequential_176/lstm_529/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_529/while/Identity_3IdentityRsequential_176/lstm_529/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_176/lstm_529/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_529/while/Identity_4Identity5sequential_176/lstm_529/while/lstm_cell_157/mul_2:z:0#^sequential_176/lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_176/lstm_529/while/Identity_5Identity5sequential_176/lstm_529/while/lstm_cell_157/add_1:z:0#^sequential_176/lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_176/lstm_529/while/NoOpNoOpC^sequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOpB^sequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOpD^sequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_176_lstm_529_while_identity/sequential_176/lstm_529/while/Identity:output:0"]
(sequential_176_lstm_529_while_identity_11sequential_176/lstm_529/while/Identity_1:output:0"]
(sequential_176_lstm_529_while_identity_21sequential_176/lstm_529/while/Identity_2:output:0"]
(sequential_176_lstm_529_while_identity_31sequential_176/lstm_529/while/Identity_3:output:0"]
(sequential_176_lstm_529_while_identity_41sequential_176/lstm_529/while/Identity_4:output:0"]
(sequential_176_lstm_529_while_identity_51sequential_176/lstm_529/while/Identity_5:output:0"?
Ksequential_176_lstm_529_while_lstm_cell_157_biasadd_readvariableop_resourceMsequential_176_lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0"?
Lsequential_176_lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resourceNsequential_176_lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0"?
Jsequential_176_lstm_529_while_lstm_cell_157_matmul_readvariableop_resourceLsequential_176_lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0"?
Esequential_176_lstm_529_while_sequential_176_lstm_529_strided_slice_1Gsequential_176_lstm_529_while_sequential_176_lstm_529_strided_slice_1_0"?
?sequential_176_lstm_529_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_529_tensorarrayunstack_tensorlistfromtensor?sequential_176_lstm_529_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_529_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOpBsequential_176/lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp2?
Asequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOpAsequential_176/lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp2?
Csequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOpCsequential_176/lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_529_while_body_958993.
*lstm_529_while_lstm_529_while_loop_counter4
0lstm_529_while_lstm_529_while_maximum_iterations
lstm_529_while_placeholder 
lstm_529_while_placeholder_1 
lstm_529_while_placeholder_2 
lstm_529_while_placeholder_3-
)lstm_529_while_lstm_529_strided_slice_1_0i
elstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0:	d?R
?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?M
>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
lstm_529_while_identity
lstm_529_while_identity_1
lstm_529_while_identity_2
lstm_529_while_identity_3
lstm_529_while_identity_4
lstm_529_while_identity_5+
'lstm_529_while_lstm_529_strided_slice_1g
clstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensorN
;lstm_529_while_lstm_cell_157_matmul_readvariableop_resource:	d?P
=lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource:	2?K
<lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource:	???3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp?2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp?4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp?
@lstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_529/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0lstm_529_while_placeholderIlstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_529/while/lstm_cell_157/MatMulMatMul9lstm_529/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_529/while/lstm_cell_157/MatMul_1MatMullstm_529_while_placeholder_2<lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_529/while/lstm_cell_157/addAddV2-lstm_529/while/lstm_cell_157/MatMul:product:0/lstm_529/while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_529/while/lstm_cell_157/BiasAddBiasAdd$lstm_529/while/lstm_cell_157/add:z:0;lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_529/while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_529/while/lstm_cell_157/splitSplit5lstm_529/while/lstm_cell_157/split/split_dim:output:0-lstm_529/while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_529/while/lstm_cell_157/SigmoidSigmoid+lstm_529/while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_529/while/lstm_cell_157/Sigmoid_1Sigmoid+lstm_529/while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_529/while/lstm_cell_157/mulMul*lstm_529/while/lstm_cell_157/Sigmoid_1:y:0lstm_529_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_529/while/lstm_cell_157/ReluRelu+lstm_529/while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/mul_1Mul(lstm_529/while/lstm_cell_157/Sigmoid:y:0/lstm_529/while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/add_1AddV2$lstm_529/while/lstm_cell_157/mul:z:0&lstm_529/while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_529/while/lstm_cell_157/Sigmoid_2Sigmoid+lstm_529/while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_529/while/lstm_cell_157/Relu_1Relu&lstm_529/while/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/mul_2Mul*lstm_529/while/lstm_cell_157/Sigmoid_2:y:01lstm_529/while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_529/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_529_while_placeholder_1lstm_529_while_placeholder&lstm_529/while/lstm_cell_157/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_529/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_529/while/addAddV2lstm_529_while_placeholderlstm_529/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_529/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_529/while/add_1AddV2*lstm_529_while_lstm_529_while_loop_counterlstm_529/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_529/while/IdentityIdentitylstm_529/while/add_1:z:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_1Identity0lstm_529_while_lstm_529_while_maximum_iterations^lstm_529/while/NoOp*
T0*
_output_shapes
: t
lstm_529/while/Identity_2Identitylstm_529/while/add:z:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_3IdentityClstm_529/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_4Identity&lstm_529/while/lstm_cell_157/mul_2:z:0^lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_529/while/Identity_5Identity&lstm_529/while/lstm_cell_157/add_1:z:0^lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_529/while/NoOpNoOp4^lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp3^lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp5^lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_529_while_identity lstm_529/while/Identity:output:0"?
lstm_529_while_identity_1"lstm_529/while/Identity_1:output:0"?
lstm_529_while_identity_2"lstm_529/while/Identity_2:output:0"?
lstm_529_while_identity_3"lstm_529/while/Identity_3:output:0"?
lstm_529_while_identity_4"lstm_529/while/Identity_4:output:0"?
lstm_529_while_identity_5"lstm_529/while/Identity_5:output:0"T
'lstm_529_while_lstm_529_strided_slice_1)lstm_529_while_lstm_529_strided_slice_1_0"~
<lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0"?
=lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0"|
;lstm_529_while_lstm_cell_157_matmul_readvariableop_resource=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0"?
clstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensorelstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp2h
2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp2l
4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_956395

inputs'
lstm_cell_156_956313:	?'
lstm_cell_156_956315:	d?#
lstm_cell_156_956317:	?
identity??%lstm_cell_156/StatefulPartitionedCall?while;
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
%lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_156_956313lstm_cell_156_956315lstm_cell_156_956317*
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956267n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_156_956313lstm_cell_156_956315lstm_cell_156_956317*
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
while_body_956326*
condR
while_cond_956325*K
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
NoOpNoOp&^lstm_cell_156/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_156/StatefulPartitionedCall%lstm_cell_156/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_528_layer_call_and_return_conditional_losses_959409
inputs_0?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_959325*
condR
while_cond_959324*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956267

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
)__inference_lstm_529_layer_call_fn_959882

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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957934s
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
?
?
*__inference_dense_176_layer_call_fn_961079

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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571o
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
?
?
)__inference_lstm_530_layer_call_fn_960476
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957095o
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
lstm_529_while_cond_958992.
*lstm_529_while_lstm_529_while_loop_counter4
0lstm_529_while_lstm_529_while_maximum_iterations
lstm_529_while_placeholder 
lstm_529_while_placeholder_1 
lstm_529_while_placeholder_2 
lstm_529_while_placeholder_30
,lstm_529_while_less_lstm_529_strided_slice_1F
Blstm_529_while_lstm_529_while_cond_958992___redundant_placeholder0F
Blstm_529_while_lstm_529_while_cond_958992___redundant_placeholder1F
Blstm_529_while_lstm_529_while_cond_958992___redundant_placeholder2F
Blstm_529_while_lstm_529_while_cond_958992___redundant_placeholder3
lstm_529_while_identity
?
lstm_529/while/LessLesslstm_529_while_placeholder,lstm_529_while_less_lstm_529_strided_slice_1*
T0*
_output_shapes
: ]
lstm_529/while/IdentityIdentitylstm_529/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_529_while_identity lstm_529/while/Identity:output:0*(
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956821

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
?
while_body_957169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_960842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960842___redundant_placeholder04
0while_while_cond_960842___redundant_placeholder14
0while_while_cond_960842___redundant_placeholder24
0while_while_cond_960842___redundant_placeholder3
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960454

inputs?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_960370*
condR
while_cond_960369*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_959611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_957168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957168___redundant_placeholder04
0while_while_cond_957168___redundant_placeholder14
0while_while_cond_957168___redundant_placeholder24
0while_while_cond_957168___redundant_placeholder3
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
while_body_960370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_956326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_156_956350_0:	?/
while_lstm_cell_156_956352_0:	d?+
while_lstm_cell_156_956354_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_156_956350:	?-
while_lstm_cell_156_956352:	d?)
while_lstm_cell_156_956354:	???+while/lstm_cell_156/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_156_956350_0while_lstm_cell_156_956352_0while_lstm_cell_156_956354_0*
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956267?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_156/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_156/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_156/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_156_956350while_lstm_cell_156_956350_0":
while_lstm_cell_156_956352while_lstm_cell_156_956352_0":
while_lstm_cell_156_956354while_lstm_cell_156_956354_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_156/StatefulPartitionedCall+while/lstm_cell_156/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961351

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

lstm_529_while_body_958566.
*lstm_529_while_lstm_529_while_loop_counter4
0lstm_529_while_lstm_529_while_maximum_iterations
lstm_529_while_placeholder 
lstm_529_while_placeholder_1 
lstm_529_while_placeholder_2 
lstm_529_while_placeholder_3-
)lstm_529_while_lstm_529_strided_slice_1_0i
elstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0:	d?R
?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?M
>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
lstm_529_while_identity
lstm_529_while_identity_1
lstm_529_while_identity_2
lstm_529_while_identity_3
lstm_529_while_identity_4
lstm_529_while_identity_5+
'lstm_529_while_lstm_529_strided_slice_1g
clstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensorN
;lstm_529_while_lstm_cell_157_matmul_readvariableop_resource:	d?P
=lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource:	2?K
<lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource:	???3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp?2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp?4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp?
@lstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_529/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0lstm_529_while_placeholderIlstm_529/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_529/while/lstm_cell_157/MatMulMatMul9lstm_529/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_529/while/lstm_cell_157/MatMul_1MatMullstm_529_while_placeholder_2<lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_529/while/lstm_cell_157/addAddV2-lstm_529/while/lstm_cell_157/MatMul:product:0/lstm_529/while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_529/while/lstm_cell_157/BiasAddBiasAdd$lstm_529/while/lstm_cell_157/add:z:0;lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_529/while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_529/while/lstm_cell_157/splitSplit5lstm_529/while/lstm_cell_157/split/split_dim:output:0-lstm_529/while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_529/while/lstm_cell_157/SigmoidSigmoid+lstm_529/while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_529/while/lstm_cell_157/Sigmoid_1Sigmoid+lstm_529/while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_529/while/lstm_cell_157/mulMul*lstm_529/while/lstm_cell_157/Sigmoid_1:y:0lstm_529_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_529/while/lstm_cell_157/ReluRelu+lstm_529/while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/mul_1Mul(lstm_529/while/lstm_cell_157/Sigmoid:y:0/lstm_529/while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/add_1AddV2$lstm_529/while/lstm_cell_157/mul:z:0&lstm_529/while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_529/while/lstm_cell_157/Sigmoid_2Sigmoid+lstm_529/while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_529/while/lstm_cell_157/Relu_1Relu&lstm_529/while/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_529/while/lstm_cell_157/mul_2Mul*lstm_529/while/lstm_cell_157/Sigmoid_2:y:01lstm_529/while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_529/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_529_while_placeholder_1lstm_529_while_placeholder&lstm_529/while/lstm_cell_157/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_529/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_529/while/addAddV2lstm_529_while_placeholderlstm_529/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_529/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_529/while/add_1AddV2*lstm_529_while_lstm_529_while_loop_counterlstm_529/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_529/while/IdentityIdentitylstm_529/while/add_1:z:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_1Identity0lstm_529_while_lstm_529_while_maximum_iterations^lstm_529/while/NoOp*
T0*
_output_shapes
: t
lstm_529/while/Identity_2Identitylstm_529/while/add:z:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_3IdentityClstm_529/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_529/while/NoOp*
T0*
_output_shapes
: ?
lstm_529/while/Identity_4Identity&lstm_529/while/lstm_cell_157/mul_2:z:0^lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_529/while/Identity_5Identity&lstm_529/while/lstm_cell_157/add_1:z:0^lstm_529/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_529/while/NoOpNoOp4^lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp3^lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp5^lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_529_while_identity lstm_529/while/Identity:output:0"?
lstm_529_while_identity_1"lstm_529/while/Identity_1:output:0"?
lstm_529_while_identity_2"lstm_529/while/Identity_2:output:0"?
lstm_529_while_identity_3"lstm_529/while/Identity_3:output:0"?
lstm_529_while_identity_4"lstm_529/while/Identity_4:output:0"?
lstm_529_while_identity_5"lstm_529/while/Identity_5:output:0"T
'lstm_529_while_lstm_529_strided_slice_1)lstm_529_while_lstm_529_strided_slice_1_0"~
<lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource>lstm_529_while_lstm_cell_157_biasadd_readvariableop_resource_0"?
=lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource?lstm_529_while_lstm_cell_157_matmul_1_readvariableop_resource_0"|
;lstm_529_while_lstm_cell_157_matmul_readvariableop_resource=lstm_529_while_lstm_cell_157_matmul_readvariableop_resource_0"?
clstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensorelstm_529_while_tensorarrayv2read_tensorlistgetitem_lstm_529_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp3lstm_529/while/lstm_cell_157/BiasAdd/ReadVariableOp2h
2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp2lstm_529/while/lstm_cell_157/MatMul/ReadVariableOp2l
4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp4lstm_529/while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_957026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_158_957050_0:2(.
while_lstm_cell_158_957052_0:
(*
while_lstm_cell_158_957054_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_158_957050:2(,
while_lstm_cell_158_957052:
((
while_lstm_cell_158_957054:(??+while/lstm_cell_158/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_158/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_158_957050_0while_lstm_cell_158_957052_0while_lstm_cell_158_957054_0*
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956967?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_158/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_158/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_158/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_158_957050while_lstm_cell_158_957050_0":
while_lstm_cell_158_957052while_lstm_cell_158_957052_0":
while_lstm_cell_158_957054while_lstm_cell_158_957054_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_158/StatefulPartitionedCall+while/lstm_cell_158/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_158_layer_call_fn_961319

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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956967o
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
?
)sequential_176_lstm_529_while_cond_955824L
Hsequential_176_lstm_529_while_sequential_176_lstm_529_while_loop_counterR
Nsequential_176_lstm_529_while_sequential_176_lstm_529_while_maximum_iterations-
)sequential_176_lstm_529_while_placeholder/
+sequential_176_lstm_529_while_placeholder_1/
+sequential_176_lstm_529_while_placeholder_2/
+sequential_176_lstm_529_while_placeholder_3N
Jsequential_176_lstm_529_while_less_sequential_176_lstm_529_strided_slice_1d
`sequential_176_lstm_529_while_sequential_176_lstm_529_while_cond_955824___redundant_placeholder0d
`sequential_176_lstm_529_while_sequential_176_lstm_529_while_cond_955824___redundant_placeholder1d
`sequential_176_lstm_529_while_sequential_176_lstm_529_while_cond_955824___redundant_placeholder2d
`sequential_176_lstm_529_while_sequential_176_lstm_529_while_cond_955824___redundant_placeholder3*
&sequential_176_lstm_529_while_identity
?
"sequential_176/lstm_529/while/LessLess)sequential_176_lstm_529_while_placeholderJsequential_176_lstm_529_while_less_sequential_176_lstm_529_strided_slice_1*
T0*
_output_shapes
: {
&sequential_176/lstm_529/while/IdentityIdentity&sequential_176/lstm_529/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_176_lstm_529_while_identity/sequential_176/lstm_529/while/Identity:output:0*(
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
while_cond_956134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_956134___redundant_placeholder04
0while_while_cond_956134___redundant_placeholder14
0while_while_cond_956134___redundant_placeholder24
0while_while_cond_956134___redundant_placeholder3
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
while_body_959754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_956485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_157_956509_0:	d?/
while_lstm_cell_157_956511_0:	2?+
while_lstm_cell_157_956513_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_157_956509:	d?-
while_lstm_cell_157_956511:	2?)
while_lstm_cell_157_956513:	???+while/lstm_cell_157/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_157/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_157_956509_0while_lstm_cell_157_956511_0while_lstm_cell_157_956513_0*
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956471?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_157/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_157/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_157/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_157/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_157_956509while_lstm_cell_157_956509_0":
while_lstm_cell_157_956511while_lstm_cell_157_956511_0":
while_lstm_cell_157_956513while_lstm_cell_157_956513_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_157/StatefulPartitionedCall+while/lstm_cell_157/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_957850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_156_layer_call_fn_961123

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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956267o
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
while_body_958015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_957025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957025___redundant_placeholder04
0while_while_cond_957025___redundant_placeholder14
0while_while_cond_957025___redundant_placeholder24
0while_while_cond_957025___redundant_placeholder3
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961155

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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957553

inputs>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_957469*
condR
while_cond_957468*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_528_layer_call_and_return_conditional_losses_959838

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_959754*
condR
while_cond_959753*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_529_layer_call_and_return_conditional_losses_957934

inputs?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_957850*
condR
while_cond_957849*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_957318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957318___redundant_placeholder04
0while_while_cond_957318___redundant_placeholder14
0while_while_cond_957318___redundant_placeholder24
0while_while_cond_957318___redundant_placeholder3
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
.__inference_lstm_cell_157_layer_call_fn_961204

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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956471o
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
?
?
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961383

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
?
D__inference_lstm_528_layer_call_and_return_conditional_losses_956204

inputs'
lstm_cell_156_956122:	?'
lstm_cell_156_956124:	d?#
lstm_cell_156_956126:	?
identity??%lstm_cell_156/StatefulPartitionedCall?while;
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
%lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_156_956122lstm_cell_156_956124lstm_cell_156_956126*
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956121n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_156_956122lstm_cell_156_956124lstm_cell_156_956126*
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
while_body_956135*
condR
while_cond_956134*K
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
NoOpNoOp&^lstm_cell_156/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_156/StatefulPartitionedCall%lstm_cell_156/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_529_layer_call_and_return_conditional_losses_956554

inputs'
lstm_cell_157_956472:	d?'
lstm_cell_157_956474:	2?#
lstm_cell_157_956476:	?
identity??%lstm_cell_157/StatefulPartitionedCall?while;
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
%lstm_cell_157/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_157_956472lstm_cell_157_956474lstm_cell_157_956476*
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956471n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_157_956472lstm_cell_157_956474lstm_cell_157_956476*
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
while_body_956485*
condR
while_cond_956484*K
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
NoOpNoOp&^lstm_cell_157/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_157/StatefulPartitionedCall%lstm_cell_157/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_530_while_body_959132.
*lstm_530_while_lstm_530_while_loop_counter4
0lstm_530_while_lstm_530_while_maximum_iterations
lstm_530_while_placeholder 
lstm_530_while_placeholder_1 
lstm_530_while_placeholder_2 
lstm_530_while_placeholder_3-
)lstm_530_while_lstm_530_strided_slice_1_0i
elstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0:2(Q
?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(L
>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0:(
lstm_530_while_identity
lstm_530_while_identity_1
lstm_530_while_identity_2
lstm_530_while_identity_3
lstm_530_while_identity_4
lstm_530_while_identity_5+
'lstm_530_while_lstm_530_strided_slice_1g
clstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensorM
;lstm_530_while_lstm_cell_158_matmul_readvariableop_resource:2(O
=lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource:
(J
<lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource:(??3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp?2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp?4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp?
@lstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_530/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0lstm_530_while_placeholderIlstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_530/while/lstm_cell_158/MatMulMatMul9lstm_530/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_530/while/lstm_cell_158/MatMul_1MatMullstm_530_while_placeholder_2<lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_530/while/lstm_cell_158/addAddV2-lstm_530/while/lstm_cell_158/MatMul:product:0/lstm_530/while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_530/while/lstm_cell_158/BiasAddBiasAdd$lstm_530/while/lstm_cell_158/add:z:0;lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_530/while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_530/while/lstm_cell_158/splitSplit5lstm_530/while/lstm_cell_158/split/split_dim:output:0-lstm_530/while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_530/while/lstm_cell_158/SigmoidSigmoid+lstm_530/while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_530/while/lstm_cell_158/Sigmoid_1Sigmoid+lstm_530/while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_530/while/lstm_cell_158/mulMul*lstm_530/while/lstm_cell_158/Sigmoid_1:y:0lstm_530_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_530/while/lstm_cell_158/ReluRelu+lstm_530/while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/mul_1Mul(lstm_530/while/lstm_cell_158/Sigmoid:y:0/lstm_530/while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/add_1AddV2$lstm_530/while/lstm_cell_158/mul:z:0&lstm_530/while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_530/while/lstm_cell_158/Sigmoid_2Sigmoid+lstm_530/while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_530/while/lstm_cell_158/Relu_1Relu&lstm_530/while/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/mul_2Mul*lstm_530/while/lstm_cell_158/Sigmoid_2:y:01lstm_530/while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_530/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_530_while_placeholder_1lstm_530_while_placeholder&lstm_530/while/lstm_cell_158/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_530/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_530/while/addAddV2lstm_530_while_placeholderlstm_530/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_530/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_530/while/add_1AddV2*lstm_530_while_lstm_530_while_loop_counterlstm_530/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_530/while/IdentityIdentitylstm_530/while/add_1:z:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_1Identity0lstm_530_while_lstm_530_while_maximum_iterations^lstm_530/while/NoOp*
T0*
_output_shapes
: t
lstm_530/while/Identity_2Identitylstm_530/while/add:z:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_3IdentityClstm_530/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_4Identity&lstm_530/while/lstm_cell_158/mul_2:z:0^lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_530/while/Identity_5Identity&lstm_530/while/lstm_cell_158/add_1:z:0^lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_530/while/NoOpNoOp4^lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp3^lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp5^lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_530_while_identity lstm_530/while/Identity:output:0"?
lstm_530_while_identity_1"lstm_530/while/Identity_1:output:0"?
lstm_530_while_identity_2"lstm_530/while/Identity_2:output:0"?
lstm_530_while_identity_3"lstm_530/while/Identity_3:output:0"?
lstm_530_while_identity_4"lstm_530/while/Identity_4:output:0"?
lstm_530_while_identity_5"lstm_530/while/Identity_5:output:0"T
'lstm_530_while_lstm_530_strided_slice_1)lstm_530_while_lstm_530_strided_slice_1_0"~
<lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0"?
=lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0"|
;lstm_530_while_lstm_cell_158_matmul_readvariableop_resource=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0"?
clstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensorelstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp2h
2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp2l
4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_176_lstm_530_while_body_955964L
Hsequential_176_lstm_530_while_sequential_176_lstm_530_while_loop_counterR
Nsequential_176_lstm_530_while_sequential_176_lstm_530_while_maximum_iterations-
)sequential_176_lstm_530_while_placeholder/
+sequential_176_lstm_530_while_placeholder_1/
+sequential_176_lstm_530_while_placeholder_2/
+sequential_176_lstm_530_while_placeholder_3K
Gsequential_176_lstm_530_while_sequential_176_lstm_530_strided_slice_1_0?
?sequential_176_lstm_530_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_530_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_176_lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0:2(`
Nsequential_176_lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0:
([
Msequential_176_lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0:(*
&sequential_176_lstm_530_while_identity,
(sequential_176_lstm_530_while_identity_1,
(sequential_176_lstm_530_while_identity_2,
(sequential_176_lstm_530_while_identity_3,
(sequential_176_lstm_530_while_identity_4,
(sequential_176_lstm_530_while_identity_5I
Esequential_176_lstm_530_while_sequential_176_lstm_530_strided_slice_1?
?sequential_176_lstm_530_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_530_tensorarrayunstack_tensorlistfromtensor\
Jsequential_176_lstm_530_while_lstm_cell_158_matmul_readvariableop_resource:2(^
Lsequential_176_lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource:
(Y
Ksequential_176_lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource:(??Bsequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp?Asequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp?Csequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp?
Osequential_176/lstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_176/lstm_530/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_176_lstm_530_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_530_tensorarrayunstack_tensorlistfromtensor_0)sequential_176_lstm_530_while_placeholderXsequential_176/lstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOpLsequential_176_lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_176/lstm_530/while/lstm_cell_158/MatMulMatMulHsequential_176/lstm_530/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOpNsequential_176_lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_176/lstm_530/while/lstm_cell_158/MatMul_1MatMul+sequential_176_lstm_530_while_placeholder_2Ksequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_176/lstm_530/while/lstm_cell_158/addAddV2<sequential_176/lstm_530/while/lstm_cell_158/MatMul:product:0>sequential_176/lstm_530/while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOpMsequential_176_lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_176/lstm_530/while/lstm_cell_158/BiasAddBiasAdd3sequential_176/lstm_530/while/lstm_cell_158/add:z:0Jsequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_176/lstm_530/while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_176/lstm_530/while/lstm_cell_158/splitSplitDsequential_176/lstm_530/while/lstm_cell_158/split/split_dim:output:0<sequential_176/lstm_530/while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_176/lstm_530/while/lstm_cell_158/SigmoidSigmoid:sequential_176/lstm_530/while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_176/lstm_530/while/lstm_cell_158/Sigmoid_1Sigmoid:sequential_176/lstm_530/while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_176/lstm_530/while/lstm_cell_158/mulMul9sequential_176/lstm_530/while/lstm_cell_158/Sigmoid_1:y:0+sequential_176_lstm_530_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_176/lstm_530/while/lstm_cell_158/ReluRelu:sequential_176/lstm_530/while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_176/lstm_530/while/lstm_cell_158/mul_1Mul7sequential_176/lstm_530/while/lstm_cell_158/Sigmoid:y:0>sequential_176/lstm_530/while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_176/lstm_530/while/lstm_cell_158/add_1AddV23sequential_176/lstm_530/while/lstm_cell_158/mul:z:05sequential_176/lstm_530/while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_176/lstm_530/while/lstm_cell_158/Sigmoid_2Sigmoid:sequential_176/lstm_530/while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_176/lstm_530/while/lstm_cell_158/Relu_1Relu5sequential_176/lstm_530/while/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_176/lstm_530/while/lstm_cell_158/mul_2Mul9sequential_176/lstm_530/while/lstm_cell_158/Sigmoid_2:y:0@sequential_176/lstm_530/while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_176/lstm_530/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_176_lstm_530_while_placeholder_1)sequential_176_lstm_530_while_placeholder5sequential_176/lstm_530/while/lstm_cell_158/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_176/lstm_530/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_176/lstm_530/while/addAddV2)sequential_176_lstm_530_while_placeholder,sequential_176/lstm_530/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_176/lstm_530/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_176/lstm_530/while/add_1AddV2Hsequential_176_lstm_530_while_sequential_176_lstm_530_while_loop_counter.sequential_176/lstm_530/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_176/lstm_530/while/IdentityIdentity'sequential_176/lstm_530/while/add_1:z:0#^sequential_176/lstm_530/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_530/while/Identity_1IdentityNsequential_176_lstm_530_while_sequential_176_lstm_530_while_maximum_iterations#^sequential_176/lstm_530/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_530/while/Identity_2Identity%sequential_176/lstm_530/while/add:z:0#^sequential_176/lstm_530/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_530/while/Identity_3IdentityRsequential_176/lstm_530/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_176/lstm_530/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_530/while/Identity_4Identity5sequential_176/lstm_530/while/lstm_cell_158/mul_2:z:0#^sequential_176/lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_176/lstm_530/while/Identity_5Identity5sequential_176/lstm_530/while/lstm_cell_158/add_1:z:0#^sequential_176/lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_176/lstm_530/while/NoOpNoOpC^sequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOpB^sequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOpD^sequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_176_lstm_530_while_identity/sequential_176/lstm_530/while/Identity:output:0"]
(sequential_176_lstm_530_while_identity_11sequential_176/lstm_530/while/Identity_1:output:0"]
(sequential_176_lstm_530_while_identity_21sequential_176/lstm_530/while/Identity_2:output:0"]
(sequential_176_lstm_530_while_identity_31sequential_176/lstm_530/while/Identity_3:output:0"]
(sequential_176_lstm_530_while_identity_41sequential_176/lstm_530/while/Identity_4:output:0"]
(sequential_176_lstm_530_while_identity_51sequential_176/lstm_530/while/Identity_5:output:0"?
Ksequential_176_lstm_530_while_lstm_cell_158_biasadd_readvariableop_resourceMsequential_176_lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0"?
Lsequential_176_lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resourceNsequential_176_lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0"?
Jsequential_176_lstm_530_while_lstm_cell_158_matmul_readvariableop_resourceLsequential_176_lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0"?
Esequential_176_lstm_530_while_sequential_176_lstm_530_strided_slice_1Gsequential_176_lstm_530_while_sequential_176_lstm_530_strided_slice_1_0"?
?sequential_176_lstm_530_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_530_tensorarrayunstack_tensorlistfromtensor?sequential_176_lstm_530_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_530_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOpBsequential_176/lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp2?
Asequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOpAsequential_176/lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp2?
Csequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOpCsequential_176/lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_176_lstm_528_while_body_955686L
Hsequential_176_lstm_528_while_sequential_176_lstm_528_while_loop_counterR
Nsequential_176_lstm_528_while_sequential_176_lstm_528_while_maximum_iterations-
)sequential_176_lstm_528_while_placeholder/
+sequential_176_lstm_528_while_placeholder_1/
+sequential_176_lstm_528_while_placeholder_2/
+sequential_176_lstm_528_while_placeholder_3K
Gsequential_176_lstm_528_while_sequential_176_lstm_528_strided_slice_1_0?
?sequential_176_lstm_528_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_528_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_176_lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0:	?a
Nsequential_176_lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?\
Msequential_176_lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?*
&sequential_176_lstm_528_while_identity,
(sequential_176_lstm_528_while_identity_1,
(sequential_176_lstm_528_while_identity_2,
(sequential_176_lstm_528_while_identity_3,
(sequential_176_lstm_528_while_identity_4,
(sequential_176_lstm_528_while_identity_5I
Esequential_176_lstm_528_while_sequential_176_lstm_528_strided_slice_1?
?sequential_176_lstm_528_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_528_tensorarrayunstack_tensorlistfromtensor]
Jsequential_176_lstm_528_while_lstm_cell_156_matmul_readvariableop_resource:	?_
Lsequential_176_lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource:	d?Z
Ksequential_176_lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource:	???Bsequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp?Asequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp?Csequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp?
Osequential_176/lstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_176/lstm_528/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_176_lstm_528_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_528_tensorarrayunstack_tensorlistfromtensor_0)sequential_176_lstm_528_while_placeholderXsequential_176/lstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOpLsequential_176_lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_176/lstm_528/while/lstm_cell_156/MatMulMatMulHsequential_176/lstm_528/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOpNsequential_176_lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_176/lstm_528/while/lstm_cell_156/MatMul_1MatMul+sequential_176_lstm_528_while_placeholder_2Ksequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_176/lstm_528/while/lstm_cell_156/addAddV2<sequential_176/lstm_528/while/lstm_cell_156/MatMul:product:0>sequential_176/lstm_528/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOpMsequential_176_lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_176/lstm_528/while/lstm_cell_156/BiasAddBiasAdd3sequential_176/lstm_528/while/lstm_cell_156/add:z:0Jsequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_176/lstm_528/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_176/lstm_528/while/lstm_cell_156/splitSplitDsequential_176/lstm_528/while/lstm_cell_156/split/split_dim:output:0<sequential_176/lstm_528/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_176/lstm_528/while/lstm_cell_156/SigmoidSigmoid:sequential_176/lstm_528/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_176/lstm_528/while/lstm_cell_156/Sigmoid_1Sigmoid:sequential_176/lstm_528/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_176/lstm_528/while/lstm_cell_156/mulMul9sequential_176/lstm_528/while/lstm_cell_156/Sigmoid_1:y:0+sequential_176_lstm_528_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_176/lstm_528/while/lstm_cell_156/ReluRelu:sequential_176/lstm_528/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_176/lstm_528/while/lstm_cell_156/mul_1Mul7sequential_176/lstm_528/while/lstm_cell_156/Sigmoid:y:0>sequential_176/lstm_528/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_176/lstm_528/while/lstm_cell_156/add_1AddV23sequential_176/lstm_528/while/lstm_cell_156/mul:z:05sequential_176/lstm_528/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_176/lstm_528/while/lstm_cell_156/Sigmoid_2Sigmoid:sequential_176/lstm_528/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_176/lstm_528/while/lstm_cell_156/Relu_1Relu5sequential_176/lstm_528/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_176/lstm_528/while/lstm_cell_156/mul_2Mul9sequential_176/lstm_528/while/lstm_cell_156/Sigmoid_2:y:0@sequential_176/lstm_528/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_176/lstm_528/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_176_lstm_528_while_placeholder_1)sequential_176_lstm_528_while_placeholder5sequential_176/lstm_528/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_176/lstm_528/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_176/lstm_528/while/addAddV2)sequential_176_lstm_528_while_placeholder,sequential_176/lstm_528/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_176/lstm_528/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_176/lstm_528/while/add_1AddV2Hsequential_176_lstm_528_while_sequential_176_lstm_528_while_loop_counter.sequential_176/lstm_528/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_176/lstm_528/while/IdentityIdentity'sequential_176/lstm_528/while/add_1:z:0#^sequential_176/lstm_528/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_528/while/Identity_1IdentityNsequential_176_lstm_528_while_sequential_176_lstm_528_while_maximum_iterations#^sequential_176/lstm_528/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_528/while/Identity_2Identity%sequential_176/lstm_528/while/add:z:0#^sequential_176/lstm_528/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_528/while/Identity_3IdentityRsequential_176/lstm_528/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_176/lstm_528/while/NoOp*
T0*
_output_shapes
: ?
(sequential_176/lstm_528/while/Identity_4Identity5sequential_176/lstm_528/while/lstm_cell_156/mul_2:z:0#^sequential_176/lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_176/lstm_528/while/Identity_5Identity5sequential_176/lstm_528/while/lstm_cell_156/add_1:z:0#^sequential_176/lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_176/lstm_528/while/NoOpNoOpC^sequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOpB^sequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOpD^sequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_176_lstm_528_while_identity/sequential_176/lstm_528/while/Identity:output:0"]
(sequential_176_lstm_528_while_identity_11sequential_176/lstm_528/while/Identity_1:output:0"]
(sequential_176_lstm_528_while_identity_21sequential_176/lstm_528/while/Identity_2:output:0"]
(sequential_176_lstm_528_while_identity_31sequential_176/lstm_528/while/Identity_3:output:0"]
(sequential_176_lstm_528_while_identity_41sequential_176/lstm_528/while/Identity_4:output:0"]
(sequential_176_lstm_528_while_identity_51sequential_176/lstm_528/while/Identity_5:output:0"?
Ksequential_176_lstm_528_while_lstm_cell_156_biasadd_readvariableop_resourceMsequential_176_lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
Lsequential_176_lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resourceNsequential_176_lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0"?
Jsequential_176_lstm_528_while_lstm_cell_156_matmul_readvariableop_resourceLsequential_176_lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0"?
Esequential_176_lstm_528_while_sequential_176_lstm_528_strided_slice_1Gsequential_176_lstm_528_while_sequential_176_lstm_528_strided_slice_1_0"?
?sequential_176_lstm_528_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_528_tensorarrayunstack_tensorlistfromtensor?sequential_176_lstm_528_while_tensorarrayv2read_tensorlistgetitem_sequential_176_lstm_528_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOpBsequential_176/lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp2?
Asequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOpAsequential_176/lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp2?
Csequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOpCsequential_176/lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_959940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_959940___redundant_placeholder04
0while_while_cond_959940___redundant_placeholder14
0while_while_cond_959940___redundant_placeholder24
0while_while_cond_959940___redundant_placeholder3
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
while_body_957469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_158_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_158_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_158_matmul_readvariableop_resource:2(F
4while_lstm_cell_158_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_158_biasadd_readvariableop_resource:(??*while/lstm_cell_158/BiasAdd/ReadVariableOp?)while/lstm_cell_158/MatMul/ReadVariableOp?+while/lstm_cell_158/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_158/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_158/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_158/addAddV2$while/lstm_cell_158/MatMul:product:0&while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_158/BiasAddBiasAddwhile/lstm_cell_158/add:z:02while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_158/splitSplit,while/lstm_cell_158/split/split_dim:output:0$while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_158/SigmoidSigmoid"while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_1Sigmoid"while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mulMul!while/lstm_cell_158/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_158/ReluRelu"while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_1Mulwhile/lstm_cell_158/Sigmoid:y:0&while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/add_1AddV2while/lstm_cell_158/mul:z:0while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_158/Sigmoid_2Sigmoid"while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_158/Relu_1Reluwhile/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_158/mul_2Mul!while/lstm_cell_158/Sigmoid_2:y:0(while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_158/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_158/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_158/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_158/BiasAdd/ReadVariableOp*^while/lstm_cell_158/MatMul/ReadVariableOp,^while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_158_biasadd_readvariableop_resource5while_lstm_cell_158_biasadd_readvariableop_resource_0"n
4while_lstm_cell_158_matmul_1_readvariableop_resource6while_lstm_cell_158_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_158_matmul_readvariableop_resource4while_lstm_cell_158_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_158/BiasAdd/ReadVariableOp*while/lstm_cell_158/BiasAdd/ReadVariableOp2V
)while/lstm_cell_158/MatMul/ReadVariableOp)while/lstm_cell_158/MatMul/ReadVariableOp2Z
+while/lstm_cell_158/MatMul_1/ReadVariableOp+while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_958099

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	d?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
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
while_body_958015*
condR
while_cond_958014*K
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
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_530_layer_call_and_return_conditional_losses_960927

inputs>
,lstm_cell_158_matmul_readvariableop_resource:2(@
.lstm_cell_158_matmul_1_readvariableop_resource:
(;
-lstm_cell_158_biasadd_readvariableop_resource:(
identity??$lstm_cell_158/BiasAdd/ReadVariableOp?#lstm_cell_158/MatMul/ReadVariableOp?%lstm_cell_158/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_158/MatMul/ReadVariableOpReadVariableOp,lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_158/MatMulMatMulstrided_slice_2:output:0+lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_158/MatMul_1MatMulzeros:output:0-lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_158/addAddV2lstm_cell_158/MatMul:product:0 lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_158/BiasAddBiasAddlstm_cell_158/add:z:0,lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_158/splitSplit&lstm_cell_158/split/split_dim:output:0lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_158/SigmoidSigmoidlstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_1Sigmoidlstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_158/mulMullstm_cell_158/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_158/ReluRelulstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_1Mullstm_cell_158/Sigmoid:y:0 lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_158/add_1AddV2lstm_cell_158/mul:z:0lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_158/Sigmoid_2Sigmoidlstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_158/Relu_1Relulstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_158/mul_2Mullstm_cell_158/Sigmoid_2:y:0"lstm_cell_158/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_158_matmul_readvariableop_resource.lstm_cell_158_matmul_1_readvariableop_resource-lstm_cell_158_biasadd_readvariableop_resource*
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
while_body_960843*
condR
while_cond_960842*K
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
NoOpNoOp%^lstm_cell_158/BiasAdd/ReadVariableOp$^lstm_cell_158/MatMul/ReadVariableOp&^lstm_cell_158/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_158/BiasAdd/ReadVariableOp$lstm_cell_158/BiasAdd/ReadVariableOp2J
#lstm_cell_158/MatMul/ReadVariableOp#lstm_cell_158/MatMul/ReadVariableOp2N
%lstm_cell_158/MatMul_1/ReadVariableOp%lstm_cell_158/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_957468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957468___redundant_placeholder04
0while_while_cond_957468___redundant_placeholder14
0while_while_cond_957468___redundant_placeholder24
0while_while_cond_957468___redundant_placeholder3
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
?"
?
while_body_956835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_158_956859_0:2(.
while_lstm_cell_158_956861_0:
(*
while_lstm_cell_158_956863_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_158_956859:2(,
while_lstm_cell_158_956861:
((
while_lstm_cell_158_956863:(??+while/lstm_cell_158/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_158/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_158_956859_0while_lstm_cell_158_956861_0while_lstm_cell_158_956863_0*
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_956821?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_158/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_158/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_158/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_158_956859while_lstm_cell_158_956859_0":
while_lstm_cell_158_956861while_lstm_cell_158_956861_0":
while_lstm_cell_158_956863while_lstm_cell_158_956863_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_158/StatefulPartitionedCall+while/lstm_cell_158/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_176_lstm_528_while_cond_955685L
Hsequential_176_lstm_528_while_sequential_176_lstm_528_while_loop_counterR
Nsequential_176_lstm_528_while_sequential_176_lstm_528_while_maximum_iterations-
)sequential_176_lstm_528_while_placeholder/
+sequential_176_lstm_528_while_placeholder_1/
+sequential_176_lstm_528_while_placeholder_2/
+sequential_176_lstm_528_while_placeholder_3N
Jsequential_176_lstm_528_while_less_sequential_176_lstm_528_strided_slice_1d
`sequential_176_lstm_528_while_sequential_176_lstm_528_while_cond_955685___redundant_placeholder0d
`sequential_176_lstm_528_while_sequential_176_lstm_528_while_cond_955685___redundant_placeholder1d
`sequential_176_lstm_528_while_sequential_176_lstm_528_while_cond_955685___redundant_placeholder2d
`sequential_176_lstm_528_while_sequential_176_lstm_528_while_cond_955685___redundant_placeholder3*
&sequential_176_lstm_528_while_identity
?
"sequential_176/lstm_528/while/LessLess)sequential_176_lstm_528_while_placeholderJsequential_176_lstm_528_while_less_sequential_176_lstm_528_strided_slice_1*
T0*
_output_shapes
: {
&sequential_176/lstm_528/while/IdentityIdentity&sequential_176/lstm_528/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_176_lstm_528_while_identity/sequential_176/lstm_528/while/Identity:output:0*(
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
while_cond_960699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960699___redundant_placeholder04
0while_while_cond_960699___redundant_placeholder14
0while_while_cond_960699___redundant_placeholder24
0while_while_cond_960699___redundant_placeholder3
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

lstm_528_while_body_958427.
*lstm_528_while_lstm_528_while_loop_counter4
0lstm_528_while_lstm_528_while_maximum_iterations
lstm_528_while_placeholder 
lstm_528_while_placeholder_1 
lstm_528_while_placeholder_2 
lstm_528_while_placeholder_3-
)lstm_528_while_lstm_528_strided_slice_1_0i
elstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0:	?R
?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?M
>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
lstm_528_while_identity
lstm_528_while_identity_1
lstm_528_while_identity_2
lstm_528_while_identity_3
lstm_528_while_identity_4
lstm_528_while_identity_5+
'lstm_528_while_lstm_528_strided_slice_1g
clstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensorN
;lstm_528_while_lstm_cell_156_matmul_readvariableop_resource:	?P
=lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource:	d?K
<lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource:	???3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp?2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp?4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp?
@lstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_528/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0lstm_528_while_placeholderIlstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_528/while/lstm_cell_156/MatMulMatMul9lstm_528/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_528/while/lstm_cell_156/MatMul_1MatMullstm_528_while_placeholder_2<lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_528/while/lstm_cell_156/addAddV2-lstm_528/while/lstm_cell_156/MatMul:product:0/lstm_528/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_528/while/lstm_cell_156/BiasAddBiasAdd$lstm_528/while/lstm_cell_156/add:z:0;lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_528/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_528/while/lstm_cell_156/splitSplit5lstm_528/while/lstm_cell_156/split/split_dim:output:0-lstm_528/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_528/while/lstm_cell_156/SigmoidSigmoid+lstm_528/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_528/while/lstm_cell_156/Sigmoid_1Sigmoid+lstm_528/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_528/while/lstm_cell_156/mulMul*lstm_528/while/lstm_cell_156/Sigmoid_1:y:0lstm_528_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_528/while/lstm_cell_156/ReluRelu+lstm_528/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/mul_1Mul(lstm_528/while/lstm_cell_156/Sigmoid:y:0/lstm_528/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/add_1AddV2$lstm_528/while/lstm_cell_156/mul:z:0&lstm_528/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_528/while/lstm_cell_156/Sigmoid_2Sigmoid+lstm_528/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_528/while/lstm_cell_156/Relu_1Relu&lstm_528/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/mul_2Mul*lstm_528/while/lstm_cell_156/Sigmoid_2:y:01lstm_528/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_528/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_528_while_placeholder_1lstm_528_while_placeholder&lstm_528/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_528/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_528/while/addAddV2lstm_528_while_placeholderlstm_528/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_528/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_528/while/add_1AddV2*lstm_528_while_lstm_528_while_loop_counterlstm_528/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_528/while/IdentityIdentitylstm_528/while/add_1:z:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_1Identity0lstm_528_while_lstm_528_while_maximum_iterations^lstm_528/while/NoOp*
T0*
_output_shapes
: t
lstm_528/while/Identity_2Identitylstm_528/while/add:z:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_3IdentityClstm_528/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_4Identity&lstm_528/while/lstm_cell_156/mul_2:z:0^lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_528/while/Identity_5Identity&lstm_528/while/lstm_cell_156/add_1:z:0^lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_528/while/NoOpNoOp4^lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp3^lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp5^lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_528_while_identity lstm_528/while/Identity:output:0"?
lstm_528_while_identity_1"lstm_528/while/Identity_1:output:0"?
lstm_528_while_identity_2"lstm_528/while/Identity_2:output:0"?
lstm_528_while_identity_3"lstm_528/while/Identity_3:output:0"?
lstm_528_while_identity_4"lstm_528/while/Identity_4:output:0"?
lstm_528_while_identity_5"lstm_528/while/Identity_5:output:0"T
'lstm_528_while_lstm_528_strided_slice_1)lstm_528_while_lstm_528_strided_slice_1_0"~
<lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
=lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0"|
;lstm_528_while_lstm_cell_156_matmul_readvariableop_resource=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0"?
clstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensorelstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp2h
2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp2l
4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_528_while_cond_958426.
*lstm_528_while_lstm_528_while_loop_counter4
0lstm_528_while_lstm_528_while_maximum_iterations
lstm_528_while_placeholder 
lstm_528_while_placeholder_1 
lstm_528_while_placeholder_2 
lstm_528_while_placeholder_30
,lstm_528_while_less_lstm_528_strided_slice_1F
Blstm_528_while_lstm_528_while_cond_958426___redundant_placeholder0F
Blstm_528_while_lstm_528_while_cond_958426___redundant_placeholder1F
Blstm_528_while_lstm_528_while_cond_958426___redundant_placeholder2F
Blstm_528_while_lstm_528_while_cond_958426___redundant_placeholder3
lstm_528_while_identity
?
lstm_528/while/LessLesslstm_528_while_placeholder,lstm_528_while_less_lstm_528_strided_slice_1*
T0*
_output_shapes
: ]
lstm_528/while/IdentityIdentitylstm_528/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_528_while_identity lstm_528/while/Identity:output:0*(
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
while_body_959941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_959324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_959324___redundant_placeholder04
0while_while_cond_959324___redundant_placeholder14
0while_while_cond_959324___redundant_placeholder24
0while_while_cond_959324___redundant_placeholder3
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
while_body_960227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_157_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_157_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_157_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_157_matmul_readvariableop_resource:	d?G
4while_lstm_cell_157_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_157_biasadd_readvariableop_resource:	???*while/lstm_cell_157/BiasAdd/ReadVariableOp?)while/lstm_cell_157/MatMul/ReadVariableOp?+while/lstm_cell_157/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_157_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_157/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_157_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_157/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_157/addAddV2$while/lstm_cell_157/MatMul:product:0&while/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_157_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_157/BiasAddBiasAddwhile/lstm_cell_157/add:z:02while/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_157/splitSplit,while/lstm_cell_157/split/split_dim:output:0$while/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_157/SigmoidSigmoid"while/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_1Sigmoid"while/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mulMul!while/lstm_cell_157/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_157/ReluRelu"while/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_1Mulwhile/lstm_cell_157/Sigmoid:y:0&while/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/add_1AddV2while/lstm_cell_157/mul:z:0while/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_157/Sigmoid_2Sigmoid"while/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_157/Relu_1Reluwhile/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_157/mul_2Mul!while/lstm_cell_157/Sigmoid_2:y:0(while/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_157/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_157/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_157/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_157/BiasAdd/ReadVariableOp*^while/lstm_cell_157/MatMul/ReadVariableOp,^while/lstm_cell_157/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_157_biasadd_readvariableop_resource5while_lstm_cell_157_biasadd_readvariableop_resource_0"n
4while_lstm_cell_157_matmul_1_readvariableop_resource6while_lstm_cell_157_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_157_matmul_readvariableop_resource4while_lstm_cell_157_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_157/BiasAdd/ReadVariableOp*while/lstm_cell_157/BiasAdd/ReadVariableOp2V
)while/lstm_cell_157/MatMul/ReadVariableOp)while/lstm_cell_157/MatMul/ReadVariableOp2Z
+while/lstm_cell_157/MatMul_1/ReadVariableOp+while/lstm_cell_157/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_956325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_956325___redundant_placeholder04
0while_while_cond_956325___redundant_placeholder14
0while_while_cond_956325___redundant_placeholder24
0while_while_cond_956325___redundant_placeholder3
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
??
?
J__inference_sequential_176_layer_call_and_return_conditional_losses_958795

inputsH
5lstm_528_lstm_cell_156_matmul_readvariableop_resource:	?J
7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource:	d?E
6lstm_528_lstm_cell_156_biasadd_readvariableop_resource:	?H
5lstm_529_lstm_cell_157_matmul_readvariableop_resource:	d?J
7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource:	2?E
6lstm_529_lstm_cell_157_biasadd_readvariableop_resource:	?G
5lstm_530_lstm_cell_158_matmul_readvariableop_resource:2(I
7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource:
(D
6lstm_530_lstm_cell_158_biasadd_readvariableop_resource:(:
(dense_176_matmul_readvariableop_resource:
7
)dense_176_biasadd_readvariableop_resource:
identity?? dense_176/BiasAdd/ReadVariableOp?dense_176/MatMul/ReadVariableOp?-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp?,lstm_528/lstm_cell_156/MatMul/ReadVariableOp?.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp?lstm_528/while?-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp?,lstm_529/lstm_cell_157/MatMul/ReadVariableOp?.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp?lstm_529/while?-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp?,lstm_530/lstm_cell_158/MatMul/ReadVariableOp?.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp?lstm_530/whileD
lstm_528/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_528/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_528/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_528/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_sliceStridedSlicelstm_528/Shape:output:0%lstm_528/strided_slice/stack:output:0'lstm_528/strided_slice/stack_1:output:0'lstm_528/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_528/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_528/zeros/packedPacklstm_528/strided_slice:output:0 lstm_528/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_528/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_528/zerosFilllstm_528/zeros/packed:output:0lstm_528/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_528/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_528/zeros_1/packedPacklstm_528/strided_slice:output:0"lstm_528/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_528/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_528/zeros_1Fill lstm_528/zeros_1/packed:output:0lstm_528/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_528/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_528/transpose	Transposeinputs lstm_528/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_528/Shape_1Shapelstm_528/transpose:y:0*
T0*
_output_shapes
:h
lstm_528/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_528/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_1StridedSlicelstm_528/Shape_1:output:0'lstm_528/strided_slice_1/stack:output:0)lstm_528/strided_slice_1/stack_1:output:0)lstm_528/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_528/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_528/TensorArrayV2TensorListReserve-lstm_528/TensorArrayV2/element_shape:output:0!lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_528/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_528/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_528/transpose:y:0Glstm_528/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_528/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_528/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_2StridedSlicelstm_528/transpose:y:0'lstm_528/strided_slice_2/stack:output:0)lstm_528/strided_slice_2/stack_1:output:0)lstm_528/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_528/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp5lstm_528_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_528/lstm_cell_156/MatMulMatMul!lstm_528/strided_slice_2:output:04lstm_528/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_528/lstm_cell_156/MatMul_1MatMullstm_528/zeros:output:06lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_528/lstm_cell_156/addAddV2'lstm_528/lstm_cell_156/MatMul:product:0)lstm_528/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp6lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_528/lstm_cell_156/BiasAddBiasAddlstm_528/lstm_cell_156/add:z:05lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_528/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_528/lstm_cell_156/splitSplit/lstm_528/lstm_cell_156/split/split_dim:output:0'lstm_528/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_528/lstm_cell_156/SigmoidSigmoid%lstm_528/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_528/lstm_cell_156/Sigmoid_1Sigmoid%lstm_528/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mulMul$lstm_528/lstm_cell_156/Sigmoid_1:y:0lstm_528/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_528/lstm_cell_156/ReluRelu%lstm_528/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mul_1Mul"lstm_528/lstm_cell_156/Sigmoid:y:0)lstm_528/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/add_1AddV2lstm_528/lstm_cell_156/mul:z:0 lstm_528/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_528/lstm_cell_156/Sigmoid_2Sigmoid%lstm_528/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_528/lstm_cell_156/Relu_1Relu lstm_528/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_528/lstm_cell_156/mul_2Mul$lstm_528/lstm_cell_156/Sigmoid_2:y:0+lstm_528/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_528/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_528/TensorArrayV2_1TensorListReserve/lstm_528/TensorArrayV2_1/element_shape:output:0!lstm_528/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_528/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_528/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_528/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_528/whileWhile$lstm_528/while/loop_counter:output:0*lstm_528/while/maximum_iterations:output:0lstm_528/time:output:0!lstm_528/TensorArrayV2_1:handle:0lstm_528/zeros:output:0lstm_528/zeros_1:output:0!lstm_528/strided_slice_1:output:0@lstm_528/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_528_lstm_cell_156_matmul_readvariableop_resource7lstm_528_lstm_cell_156_matmul_1_readvariableop_resource6lstm_528_lstm_cell_156_biasadd_readvariableop_resource*
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
lstm_528_while_body_958427*&
condR
lstm_528_while_cond_958426*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_528/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_528/TensorArrayV2Stack/TensorListStackTensorListStacklstm_528/while:output:3Blstm_528/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_528/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_528/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_528/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_528/strided_slice_3StridedSlice4lstm_528/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_528/strided_slice_3/stack:output:0)lstm_528/strided_slice_3/stack_1:output:0)lstm_528/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_528/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_528/transpose_1	Transpose4lstm_528/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_528/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_528/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_529/ShapeShapelstm_528/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_529/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_529/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_529/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_sliceStridedSlicelstm_529/Shape:output:0%lstm_529/strided_slice/stack:output:0'lstm_529/strided_slice/stack_1:output:0'lstm_529/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_529/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_529/zeros/packedPacklstm_529/strided_slice:output:0 lstm_529/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_529/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_529/zerosFilllstm_529/zeros/packed:output:0lstm_529/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_529/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_529/zeros_1/packedPacklstm_529/strided_slice:output:0"lstm_529/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_529/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_529/zeros_1Fill lstm_529/zeros_1/packed:output:0lstm_529/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_529/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_529/transpose	Transposelstm_528/transpose_1:y:0 lstm_529/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_529/Shape_1Shapelstm_529/transpose:y:0*
T0*
_output_shapes
:h
lstm_529/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_529/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_1StridedSlicelstm_529/Shape_1:output:0'lstm_529/strided_slice_1/stack:output:0)lstm_529/strided_slice_1/stack_1:output:0)lstm_529/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_529/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_529/TensorArrayV2TensorListReserve-lstm_529/TensorArrayV2/element_shape:output:0!lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_529/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_529/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_529/transpose:y:0Glstm_529/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_529/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_529/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_2StridedSlicelstm_529/transpose:y:0'lstm_529/strided_slice_2/stack:output:0)lstm_529/strided_slice_2/stack_1:output:0)lstm_529/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_529/lstm_cell_157/MatMul/ReadVariableOpReadVariableOp5lstm_529_lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_529/lstm_cell_157/MatMulMatMul!lstm_529/strided_slice_2:output:04lstm_529/lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_529/lstm_cell_157/MatMul_1MatMullstm_529/zeros:output:06lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_529/lstm_cell_157/addAddV2'lstm_529/lstm_cell_157/MatMul:product:0)lstm_529/lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp6lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_529/lstm_cell_157/BiasAddBiasAddlstm_529/lstm_cell_157/add:z:05lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_529/lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_529/lstm_cell_157/splitSplit/lstm_529/lstm_cell_157/split/split_dim:output:0'lstm_529/lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_529/lstm_cell_157/SigmoidSigmoid%lstm_529/lstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_529/lstm_cell_157/Sigmoid_1Sigmoid%lstm_529/lstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mulMul$lstm_529/lstm_cell_157/Sigmoid_1:y:0lstm_529/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_529/lstm_cell_157/ReluRelu%lstm_529/lstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mul_1Mul"lstm_529/lstm_cell_157/Sigmoid:y:0)lstm_529/lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/add_1AddV2lstm_529/lstm_cell_157/mul:z:0 lstm_529/lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_529/lstm_cell_157/Sigmoid_2Sigmoid%lstm_529/lstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_529/lstm_cell_157/Relu_1Relu lstm_529/lstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_529/lstm_cell_157/mul_2Mul$lstm_529/lstm_cell_157/Sigmoid_2:y:0+lstm_529/lstm_cell_157/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_529/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_529/TensorArrayV2_1TensorListReserve/lstm_529/TensorArrayV2_1/element_shape:output:0!lstm_529/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_529/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_529/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_529/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_529/whileWhile$lstm_529/while/loop_counter:output:0*lstm_529/while/maximum_iterations:output:0lstm_529/time:output:0!lstm_529/TensorArrayV2_1:handle:0lstm_529/zeros:output:0lstm_529/zeros_1:output:0!lstm_529/strided_slice_1:output:0@lstm_529/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_529_lstm_cell_157_matmul_readvariableop_resource7lstm_529_lstm_cell_157_matmul_1_readvariableop_resource6lstm_529_lstm_cell_157_biasadd_readvariableop_resource*
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
lstm_529_while_body_958566*&
condR
lstm_529_while_cond_958565*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_529/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_529/TensorArrayV2Stack/TensorListStackTensorListStacklstm_529/while:output:3Blstm_529/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_529/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_529/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_529/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_529/strided_slice_3StridedSlice4lstm_529/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_529/strided_slice_3/stack:output:0)lstm_529/strided_slice_3/stack_1:output:0)lstm_529/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_529/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_529/transpose_1	Transpose4lstm_529/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_529/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_529/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_530/ShapeShapelstm_529/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_530/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_530/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_530/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_sliceStridedSlicelstm_530/Shape:output:0%lstm_530/strided_slice/stack:output:0'lstm_530/strided_slice/stack_1:output:0'lstm_530/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_530/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_530/zeros/packedPacklstm_530/strided_slice:output:0 lstm_530/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_530/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_530/zerosFilllstm_530/zeros/packed:output:0lstm_530/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_530/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_530/zeros_1/packedPacklstm_530/strided_slice:output:0"lstm_530/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_530/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_530/zeros_1Fill lstm_530/zeros_1/packed:output:0lstm_530/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_530/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_530/transpose	Transposelstm_529/transpose_1:y:0 lstm_530/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_530/Shape_1Shapelstm_530/transpose:y:0*
T0*
_output_shapes
:h
lstm_530/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_530/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_1StridedSlicelstm_530/Shape_1:output:0'lstm_530/strided_slice_1/stack:output:0)lstm_530/strided_slice_1/stack_1:output:0)lstm_530/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_530/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_530/TensorArrayV2TensorListReserve-lstm_530/TensorArrayV2/element_shape:output:0!lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_530/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_530/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_530/transpose:y:0Glstm_530/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_530/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_530/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_2StridedSlicelstm_530/transpose:y:0'lstm_530/strided_slice_2/stack:output:0)lstm_530/strided_slice_2/stack_1:output:0)lstm_530/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_530/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp5lstm_530_lstm_cell_158_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_530/lstm_cell_158/MatMulMatMul!lstm_530/strided_slice_2:output:04lstm_530/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_530/lstm_cell_158/MatMul_1MatMullstm_530/zeros:output:06lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_530/lstm_cell_158/addAddV2'lstm_530/lstm_cell_158/MatMul:product:0)lstm_530/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp6lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_530/lstm_cell_158/BiasAddBiasAddlstm_530/lstm_cell_158/add:z:05lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_530/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_530/lstm_cell_158/splitSplit/lstm_530/lstm_cell_158/split/split_dim:output:0'lstm_530/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_530/lstm_cell_158/SigmoidSigmoid%lstm_530/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_530/lstm_cell_158/Sigmoid_1Sigmoid%lstm_530/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mulMul$lstm_530/lstm_cell_158/Sigmoid_1:y:0lstm_530/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_530/lstm_cell_158/ReluRelu%lstm_530/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mul_1Mul"lstm_530/lstm_cell_158/Sigmoid:y:0)lstm_530/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/add_1AddV2lstm_530/lstm_cell_158/mul:z:0 lstm_530/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_530/lstm_cell_158/Sigmoid_2Sigmoid%lstm_530/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_530/lstm_cell_158/Relu_1Relu lstm_530/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_530/lstm_cell_158/mul_2Mul$lstm_530/lstm_cell_158/Sigmoid_2:y:0+lstm_530/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_530/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_530/TensorArrayV2_1TensorListReserve/lstm_530/TensorArrayV2_1/element_shape:output:0!lstm_530/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_530/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_530/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_530/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_530/whileWhile$lstm_530/while/loop_counter:output:0*lstm_530/while/maximum_iterations:output:0lstm_530/time:output:0!lstm_530/TensorArrayV2_1:handle:0lstm_530/zeros:output:0lstm_530/zeros_1:output:0!lstm_530/strided_slice_1:output:0@lstm_530/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_530_lstm_cell_158_matmul_readvariableop_resource7lstm_530_lstm_cell_158_matmul_1_readvariableop_resource6lstm_530_lstm_cell_158_biasadd_readvariableop_resource*
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
lstm_530_while_body_958705*&
condR
lstm_530_while_cond_958704*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_530/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_530/TensorArrayV2Stack/TensorListStackTensorListStacklstm_530/while:output:3Blstm_530/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_530/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_530/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_530/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_530/strided_slice_3StridedSlice4lstm_530/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_530/strided_slice_3/stack:output:0)lstm_530/strided_slice_3/stack_1:output:0)lstm_530/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_530/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_530/transpose_1	Transpose4lstm_530/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_530/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_530/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_176/MatMul/ReadVariableOpReadVariableOp(dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_176/MatMulMatMul!lstm_530/strided_slice_3:output:0'dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_176/BiasAdd/ReadVariableOpReadVariableOp)dense_176_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_176/BiasAddBiasAdddense_176/MatMul:product:0(dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_176/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_176/BiasAdd/ReadVariableOp ^dense_176/MatMul/ReadVariableOp.^lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp-^lstm_528/lstm_cell_156/MatMul/ReadVariableOp/^lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp^lstm_528/while.^lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp-^lstm_529/lstm_cell_157/MatMul/ReadVariableOp/^lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp^lstm_529/while.^lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp-^lstm_530/lstm_cell_158/MatMul/ReadVariableOp/^lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp^lstm_530/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_176/BiasAdd/ReadVariableOp dense_176/BiasAdd/ReadVariableOp2B
dense_176/MatMul/ReadVariableOpdense_176/MatMul/ReadVariableOp2^
-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp-lstm_528/lstm_cell_156/BiasAdd/ReadVariableOp2\
,lstm_528/lstm_cell_156/MatMul/ReadVariableOp,lstm_528/lstm_cell_156/MatMul/ReadVariableOp2`
.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp.lstm_528/lstm_cell_156/MatMul_1/ReadVariableOp2 
lstm_528/whilelstm_528/while2^
-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp-lstm_529/lstm_cell_157/BiasAdd/ReadVariableOp2\
,lstm_529/lstm_cell_157/MatMul/ReadVariableOp,lstm_529/lstm_cell_157/MatMul/ReadVariableOp2`
.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp.lstm_529/lstm_cell_157/MatMul_1/ReadVariableOp2 
lstm_529/whilelstm_529/while2^
-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp-lstm_530/lstm_cell_158/BiasAdd/ReadVariableOp2\
,lstm_530/lstm_cell_158/MatMul/ReadVariableOp,lstm_530/lstm_cell_158/MatMul/ReadVariableOp2`
.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp.lstm_530/lstm_cell_158/MatMul_1/ReadVariableOp2 
lstm_530/whilelstm_530/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_528_layer_call_fn_959266

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
D__inference_lstm_528_layer_call_and_return_conditional_losses_958099s
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
while_cond_959753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_959753___redundant_placeholder04
0while_while_cond_959753___redundant_placeholder14
0while_while_cond_959753___redundant_placeholder24
0while_while_cond_959753___redundant_placeholder3
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
while_cond_956675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_956675___redundant_placeholder04
0while_while_cond_956675___redundant_placeholder14
0while_while_cond_956675___redundant_placeholder24
0while_while_cond_956675___redundant_placeholder3
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
?
J__inference_sequential_176_layer_call_and_return_conditional_losses_957578

inputs"
lstm_528_957254:	?"
lstm_528_957256:	d?
lstm_528_957258:	?"
lstm_529_957404:	d?"
lstm_529_957406:	2?
lstm_529_957408:	?!
lstm_530_957554:2(!
lstm_530_957556:
(
lstm_530_957558:("
dense_176_957572:

dense_176_957574:
identity??!dense_176/StatefulPartitionedCall? lstm_528/StatefulPartitionedCall? lstm_529/StatefulPartitionedCall? lstm_530/StatefulPartitionedCall?
 lstm_528/StatefulPartitionedCallStatefulPartitionedCallinputslstm_528_957254lstm_528_957256lstm_528_957258*
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_957253?
 lstm_529/StatefulPartitionedCallStatefulPartitionedCall)lstm_528/StatefulPartitionedCall:output:0lstm_529_957404lstm_529_957406lstm_529_957408*
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957403?
 lstm_530/StatefulPartitionedCallStatefulPartitionedCall)lstm_529/StatefulPartitionedCall:output:0lstm_530_957554lstm_530_957556lstm_530_957558*
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957553?
!dense_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_530/StatefulPartitionedCall:output:0dense_176_957572dense_176_957574*
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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571y
IdentityIdentity*dense_176/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall!^lstm_528/StatefulPartitionedCall!^lstm_529/StatefulPartitionedCall!^lstm_530/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2D
 lstm_528/StatefulPartitionedCall lstm_528/StatefulPartitionedCall2D
 lstm_529/StatefulPartitionedCall lstm_529/StatefulPartitionedCall2D
 lstm_530/StatefulPartitionedCall lstm_530/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_529_while_cond_958565.
*lstm_529_while_lstm_529_while_loop_counter4
0lstm_529_while_lstm_529_while_maximum_iterations
lstm_529_while_placeholder 
lstm_529_while_placeholder_1 
lstm_529_while_placeholder_2 
lstm_529_while_placeholder_30
,lstm_529_while_less_lstm_529_strided_slice_1F
Blstm_529_while_lstm_529_while_cond_958565___redundant_placeholder0F
Blstm_529_while_lstm_529_while_cond_958565___redundant_placeholder1F
Blstm_529_while_lstm_529_while_cond_958565___redundant_placeholder2F
Blstm_529_while_lstm_529_while_cond_958565___redundant_placeholder3
lstm_529_while_identity
?
lstm_529/while/LessLesslstm_529_while_placeholder,lstm_529_while_less_lstm_529_strided_slice_1*
T0*
_output_shapes
: ]
lstm_529/while/IdentityIdentitylstm_529/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_529_while_identity lstm_529/while/Identity:output:0*(
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
while_cond_957684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_957684___redundant_placeholder04
0while_while_cond_957684___redundant_placeholder14
0while_while_cond_957684___redundant_placeholder24
0while_while_cond_957684___redundant_placeholder3
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_958249
lstm_528_input"
lstm_528_958222:	?"
lstm_528_958224:	d?
lstm_528_958226:	?"
lstm_529_958229:	d?"
lstm_529_958231:	2?
lstm_529_958233:	?!
lstm_530_958236:2(!
lstm_530_958238:
(
lstm_530_958240:("
dense_176_958243:

dense_176_958245:
identity??!dense_176/StatefulPartitionedCall? lstm_528/StatefulPartitionedCall? lstm_529/StatefulPartitionedCall? lstm_530/StatefulPartitionedCall?
 lstm_528/StatefulPartitionedCallStatefulPartitionedCalllstm_528_inputlstm_528_958222lstm_528_958224lstm_528_958226*
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_957253?
 lstm_529/StatefulPartitionedCallStatefulPartitionedCall)lstm_528/StatefulPartitionedCall:output:0lstm_529_958229lstm_529_958231lstm_529_958233*
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_957403?
 lstm_530/StatefulPartitionedCallStatefulPartitionedCall)lstm_529/StatefulPartitionedCall:output:0lstm_530_958236lstm_530_958238lstm_530_958240*
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_957553?
!dense_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_530/StatefulPartitionedCall:output:0dense_176_958243dense_176_958245*
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
E__inference_dense_176_layer_call_and_return_conditional_losses_957571y
IdentityIdentity*dense_176/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall!^lstm_528/StatefulPartitionedCall!^lstm_529/StatefulPartitionedCall!^lstm_530/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2D
 lstm_528/StatefulPartitionedCall lstm_528/StatefulPartitionedCall2D
 lstm_529/StatefulPartitionedCall lstm_529/StatefulPartitionedCall2D
 lstm_530/StatefulPartitionedCall lstm_530/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_528_input
?
?
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961253

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

?
lstm_528_while_cond_958853.
*lstm_528_while_lstm_528_while_loop_counter4
0lstm_528_while_lstm_528_while_maximum_iterations
lstm_528_while_placeholder 
lstm_528_while_placeholder_1 
lstm_528_while_placeholder_2 
lstm_528_while_placeholder_30
,lstm_528_while_less_lstm_528_strided_slice_1F
Blstm_528_while_lstm_528_while_cond_958853___redundant_placeholder0F
Blstm_528_while_lstm_528_while_cond_958853___redundant_placeholder1F
Blstm_528_while_lstm_528_while_cond_958853___redundant_placeholder2F
Blstm_528_while_lstm_528_while_cond_958853___redundant_placeholder3
lstm_528_while_identity
?
lstm_528/while/LessLesslstm_528_while_placeholder,lstm_528_while_less_lstm_528_strided_slice_1*
T0*
_output_shapes
: ]
lstm_528/while/IdentityIdentitylstm_528/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_528_while_identity lstm_528/while/Identity:output:0*(
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
)__inference_lstm_530_layer_call_fn_960465
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_956904o
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
?C
?

lstm_530_while_body_958705.
*lstm_530_while_lstm_530_while_loop_counter4
0lstm_530_while_lstm_530_while_maximum_iterations
lstm_530_while_placeholder 
lstm_530_while_placeholder_1 
lstm_530_while_placeholder_2 
lstm_530_while_placeholder_3-
)lstm_530_while_lstm_530_strided_slice_1_0i
elstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0:2(Q
?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0:
(L
>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0:(
lstm_530_while_identity
lstm_530_while_identity_1
lstm_530_while_identity_2
lstm_530_while_identity_3
lstm_530_while_identity_4
lstm_530_while_identity_5+
'lstm_530_while_lstm_530_strided_slice_1g
clstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensorM
;lstm_530_while_lstm_cell_158_matmul_readvariableop_resource:2(O
=lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource:
(J
<lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource:(??3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp?2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp?4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp?
@lstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_530/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0lstm_530_while_placeholderIlstm_530/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOpReadVariableOp=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_530/while/lstm_cell_158/MatMulMatMul9lstm_530/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOpReadVariableOp?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_530/while/lstm_cell_158/MatMul_1MatMullstm_530_while_placeholder_2<lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_530/while/lstm_cell_158/addAddV2-lstm_530/while/lstm_cell_158/MatMul:product:0/lstm_530/while/lstm_cell_158/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOpReadVariableOp>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_530/while/lstm_cell_158/BiasAddBiasAdd$lstm_530/while/lstm_cell_158/add:z:0;lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_530/while/lstm_cell_158/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_530/while/lstm_cell_158/splitSplit5lstm_530/while/lstm_cell_158/split/split_dim:output:0-lstm_530/while/lstm_cell_158/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_530/while/lstm_cell_158/SigmoidSigmoid+lstm_530/while/lstm_cell_158/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_530/while/lstm_cell_158/Sigmoid_1Sigmoid+lstm_530/while/lstm_cell_158/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_530/while/lstm_cell_158/mulMul*lstm_530/while/lstm_cell_158/Sigmoid_1:y:0lstm_530_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_530/while/lstm_cell_158/ReluRelu+lstm_530/while/lstm_cell_158/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/mul_1Mul(lstm_530/while/lstm_cell_158/Sigmoid:y:0/lstm_530/while/lstm_cell_158/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/add_1AddV2$lstm_530/while/lstm_cell_158/mul:z:0&lstm_530/while/lstm_cell_158/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_530/while/lstm_cell_158/Sigmoid_2Sigmoid+lstm_530/while/lstm_cell_158/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_530/while/lstm_cell_158/Relu_1Relu&lstm_530/while/lstm_cell_158/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_530/while/lstm_cell_158/mul_2Mul*lstm_530/while/lstm_cell_158/Sigmoid_2:y:01lstm_530/while/lstm_cell_158/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_530/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_530_while_placeholder_1lstm_530_while_placeholder&lstm_530/while/lstm_cell_158/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_530/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_530/while/addAddV2lstm_530_while_placeholderlstm_530/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_530/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_530/while/add_1AddV2*lstm_530_while_lstm_530_while_loop_counterlstm_530/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_530/while/IdentityIdentitylstm_530/while/add_1:z:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_1Identity0lstm_530_while_lstm_530_while_maximum_iterations^lstm_530/while/NoOp*
T0*
_output_shapes
: t
lstm_530/while/Identity_2Identitylstm_530/while/add:z:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_3IdentityClstm_530/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_530/while/NoOp*
T0*
_output_shapes
: ?
lstm_530/while/Identity_4Identity&lstm_530/while/lstm_cell_158/mul_2:z:0^lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_530/while/Identity_5Identity&lstm_530/while/lstm_cell_158/add_1:z:0^lstm_530/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_530/while/NoOpNoOp4^lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp3^lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp5^lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_530_while_identity lstm_530/while/Identity:output:0"?
lstm_530_while_identity_1"lstm_530/while/Identity_1:output:0"?
lstm_530_while_identity_2"lstm_530/while/Identity_2:output:0"?
lstm_530_while_identity_3"lstm_530/while/Identity_3:output:0"?
lstm_530_while_identity_4"lstm_530/while/Identity_4:output:0"?
lstm_530_while_identity_5"lstm_530/while/Identity_5:output:0"T
'lstm_530_while_lstm_530_strided_slice_1)lstm_530_while_lstm_530_strided_slice_1_0"~
<lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource>lstm_530_while_lstm_cell_158_biasadd_readvariableop_resource_0"?
=lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource?lstm_530_while_lstm_cell_158_matmul_1_readvariableop_resource_0"|
;lstm_530_while_lstm_cell_158_matmul_readvariableop_resource=lstm_530_while_lstm_cell_158_matmul_readvariableop_resource_0"?
clstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensorelstm_530_while_tensorarrayv2read_tensorlistgetitem_lstm_530_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp3lstm_530/while/lstm_cell_158/BiasAdd/ReadVariableOp2h
2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp2lstm_530/while/lstm_cell_158/MatMul/ReadVariableOp2l
4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp4lstm_530/while/lstm_cell_158/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960025
inputs_0?
,lstm_cell_157_matmul_readvariableop_resource:	d?A
.lstm_cell_157_matmul_1_readvariableop_resource:	2?<
-lstm_cell_157_biasadd_readvariableop_resource:	?
identity??$lstm_cell_157/BiasAdd/ReadVariableOp?#lstm_cell_157/MatMul/ReadVariableOp?%lstm_cell_157/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_157/MatMul/ReadVariableOpReadVariableOp,lstm_cell_157_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_157/MatMulMatMulstrided_slice_2:output:0+lstm_cell_157/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_157/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_157_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_157/MatMul_1MatMulzeros:output:0-lstm_cell_157/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_157/addAddV2lstm_cell_157/MatMul:product:0 lstm_cell_157/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_157/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_157_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_157/BiasAddBiasAddlstm_cell_157/add:z:0,lstm_cell_157/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_157/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_157/splitSplit&lstm_cell_157/split/split_dim:output:0lstm_cell_157/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_157/SigmoidSigmoidlstm_cell_157/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_1Sigmoidlstm_cell_157/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_157/mulMullstm_cell_157/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_157/ReluRelulstm_cell_157/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_1Mullstm_cell_157/Sigmoid:y:0 lstm_cell_157/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_157/add_1AddV2lstm_cell_157/mul:z:0lstm_cell_157/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_157/Sigmoid_2Sigmoidlstm_cell_157/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_157/Relu_1Relulstm_cell_157/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_157/mul_2Mullstm_cell_157/Sigmoid_2:y:0"lstm_cell_157/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_157_matmul_readvariableop_resource.lstm_cell_157_matmul_1_readvariableop_resource-lstm_cell_157_biasadd_readvariableop_resource*
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
while_body_959941*
condR
while_cond_959940*K
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
NoOpNoOp%^lstm_cell_157/BiasAdd/ReadVariableOp$^lstm_cell_157/MatMul/ReadVariableOp&^lstm_cell_157/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_157/BiasAdd/ReadVariableOp$lstm_cell_157/BiasAdd/ReadVariableOp2J
#lstm_cell_157/MatMul/ReadVariableOp#lstm_cell_157/MatMul/ReadVariableOp2N
%lstm_cell_157/MatMul_1/ReadVariableOp%lstm_cell_157/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_960226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_960226___redundant_placeholder04
0while_while_cond_960226___redundant_placeholder14
0while_while_cond_960226___redundant_placeholder24
0while_while_cond_960226___redundant_placeholder3
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

lstm_528_while_body_958854.
*lstm_528_while_lstm_528_while_loop_counter4
0lstm_528_while_lstm_528_while_maximum_iterations
lstm_528_while_placeholder 
lstm_528_while_placeholder_1 
lstm_528_while_placeholder_2 
lstm_528_while_placeholder_3-
)lstm_528_while_lstm_528_strided_slice_1_0i
elstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0:	?R
?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	d?M
>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
lstm_528_while_identity
lstm_528_while_identity_1
lstm_528_while_identity_2
lstm_528_while_identity_3
lstm_528_while_identity_4
lstm_528_while_identity_5+
'lstm_528_while_lstm_528_strided_slice_1g
clstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensorN
;lstm_528_while_lstm_cell_156_matmul_readvariableop_resource:	?P
=lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource:	d?K
<lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource:	???3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp?2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp?4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp?
@lstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_528/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0lstm_528_while_placeholderIlstm_528/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_528/while/lstm_cell_156/MatMulMatMul9lstm_528/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_528/while/lstm_cell_156/MatMul_1MatMullstm_528_while_placeholder_2<lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_528/while/lstm_cell_156/addAddV2-lstm_528/while/lstm_cell_156/MatMul:product:0/lstm_528/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_528/while/lstm_cell_156/BiasAddBiasAdd$lstm_528/while/lstm_cell_156/add:z:0;lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_528/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_528/while/lstm_cell_156/splitSplit5lstm_528/while/lstm_cell_156/split/split_dim:output:0-lstm_528/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_528/while/lstm_cell_156/SigmoidSigmoid+lstm_528/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_528/while/lstm_cell_156/Sigmoid_1Sigmoid+lstm_528/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_528/while/lstm_cell_156/mulMul*lstm_528/while/lstm_cell_156/Sigmoid_1:y:0lstm_528_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_528/while/lstm_cell_156/ReluRelu+lstm_528/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/mul_1Mul(lstm_528/while/lstm_cell_156/Sigmoid:y:0/lstm_528/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/add_1AddV2$lstm_528/while/lstm_cell_156/mul:z:0&lstm_528/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_528/while/lstm_cell_156/Sigmoid_2Sigmoid+lstm_528/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_528/while/lstm_cell_156/Relu_1Relu&lstm_528/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_528/while/lstm_cell_156/mul_2Mul*lstm_528/while/lstm_cell_156/Sigmoid_2:y:01lstm_528/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_528/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_528_while_placeholder_1lstm_528_while_placeholder&lstm_528/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_528/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_528/while/addAddV2lstm_528_while_placeholderlstm_528/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_528/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_528/while/add_1AddV2*lstm_528_while_lstm_528_while_loop_counterlstm_528/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_528/while/IdentityIdentitylstm_528/while/add_1:z:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_1Identity0lstm_528_while_lstm_528_while_maximum_iterations^lstm_528/while/NoOp*
T0*
_output_shapes
: t
lstm_528/while/Identity_2Identitylstm_528/while/add:z:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_3IdentityClstm_528/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_528/while/NoOp*
T0*
_output_shapes
: ?
lstm_528/while/Identity_4Identity&lstm_528/while/lstm_cell_156/mul_2:z:0^lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_528/while/Identity_5Identity&lstm_528/while/lstm_cell_156/add_1:z:0^lstm_528/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_528/while/NoOpNoOp4^lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp3^lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp5^lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_528_while_identity lstm_528/while/Identity:output:0"?
lstm_528_while_identity_1"lstm_528/while/Identity_1:output:0"?
lstm_528_while_identity_2"lstm_528/while/Identity_2:output:0"?
lstm_528_while_identity_3"lstm_528/while/Identity_3:output:0"?
lstm_528_while_identity_4"lstm_528/while/Identity_4:output:0"?
lstm_528_while_identity_5"lstm_528/while/Identity_5:output:0"T
'lstm_528_while_lstm_528_strided_slice_1)lstm_528_while_lstm_528_strided_slice_1_0"~
<lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource>lstm_528_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
=lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource?lstm_528_while_lstm_cell_156_matmul_1_readvariableop_resource_0"|
;lstm_528_while_lstm_cell_156_matmul_readvariableop_resource=lstm_528_while_lstm_cell_156_matmul_readvariableop_resource_0"?
clstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensorelstm_528_while_tensorarrayv2read_tensorlistgetitem_lstm_528_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp3lstm_528/while/lstm_cell_156/BiasAdd/ReadVariableOp2h
2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp2lstm_528/while/lstm_cell_156/MatMul/ReadVariableOp2l
4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp4lstm_528/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_528_layer_call_fn_959244
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_956395|
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
)__inference_lstm_529_layer_call_fn_959860
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_956745|
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
?
?
.__inference_lstm_cell_156_layer_call_fn_961106

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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_956121o
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
.__inference_lstm_cell_157_layer_call_fn_961221

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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_956617o
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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_528_input;
 serving_default_lstm_528_input:0?????????=
	dense_1760
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
2dense_176/kernel
:2dense_176/bias
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
0:.	?2lstm_528/lstm_cell_528/kernel
::8	d?2'lstm_528/lstm_cell_528/recurrent_kernel
*:(?2lstm_528/lstm_cell_528/bias
0:.	d?2lstm_529/lstm_cell_529/kernel
::8	2?2'lstm_529/lstm_cell_529/recurrent_kernel
*:(?2lstm_529/lstm_cell_529/bias
/:-2(2lstm_530/lstm_cell_530/kernel
9:7
(2'lstm_530/lstm_cell_530/recurrent_kernel
):'(2lstm_530/lstm_cell_530/bias
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
2Adam/dense_176/kernel/m
!:2Adam/dense_176/bias/m
5:3	?2$Adam/lstm_528/lstm_cell_528/kernel/m
?:=	d?2.Adam/lstm_528/lstm_cell_528/recurrent_kernel/m
/:-?2"Adam/lstm_528/lstm_cell_528/bias/m
5:3	d?2$Adam/lstm_529/lstm_cell_529/kernel/m
?:=	2?2.Adam/lstm_529/lstm_cell_529/recurrent_kernel/m
/:-?2"Adam/lstm_529/lstm_cell_529/bias/m
4:22(2$Adam/lstm_530/lstm_cell_530/kernel/m
>:<
(2.Adam/lstm_530/lstm_cell_530/recurrent_kernel/m
.:,(2"Adam/lstm_530/lstm_cell_530/bias/m
':%
2Adam/dense_176/kernel/v
!:2Adam/dense_176/bias/v
5:3	?2$Adam/lstm_528/lstm_cell_528/kernel/v
?:=	d?2.Adam/lstm_528/lstm_cell_528/recurrent_kernel/v
/:-?2"Adam/lstm_528/lstm_cell_528/bias/v
5:3	d?2$Adam/lstm_529/lstm_cell_529/kernel/v
?:=	2?2.Adam/lstm_529/lstm_cell_529/recurrent_kernel/v
/:-?2"Adam/lstm_529/lstm_cell_529/bias/v
4:22(2$Adam/lstm_530/lstm_cell_530/kernel/v
>:<
(2.Adam/lstm_530/lstm_cell_530/recurrent_kernel/v
.:,(2"Adam/lstm_530/lstm_cell_530/bias/v
?2?
/__inference_sequential_176_layer_call_fn_957603
/__inference_sequential_176_layer_call_fn_958341
/__inference_sequential_176_layer_call_fn_958368
/__inference_sequential_176_layer_call_fn_958219?
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_958795
J__inference_sequential_176_layer_call_and_return_conditional_losses_959222
J__inference_sequential_176_layer_call_and_return_conditional_losses_958249
J__inference_sequential_176_layer_call_and_return_conditional_losses_958279?
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
!__inference__wrapped_model_956054lstm_528_input"?
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
)__inference_lstm_528_layer_call_fn_959233
)__inference_lstm_528_layer_call_fn_959244
)__inference_lstm_528_layer_call_fn_959255
)__inference_lstm_528_layer_call_fn_959266?
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959409
D__inference_lstm_528_layer_call_and_return_conditional_losses_959552
D__inference_lstm_528_layer_call_and_return_conditional_losses_959695
D__inference_lstm_528_layer_call_and_return_conditional_losses_959838?
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
)__inference_lstm_529_layer_call_fn_959849
)__inference_lstm_529_layer_call_fn_959860
)__inference_lstm_529_layer_call_fn_959871
)__inference_lstm_529_layer_call_fn_959882?
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960025
D__inference_lstm_529_layer_call_and_return_conditional_losses_960168
D__inference_lstm_529_layer_call_and_return_conditional_losses_960311
D__inference_lstm_529_layer_call_and_return_conditional_losses_960454?
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
)__inference_lstm_530_layer_call_fn_960465
)__inference_lstm_530_layer_call_fn_960476
)__inference_lstm_530_layer_call_fn_960487
)__inference_lstm_530_layer_call_fn_960498?
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_960641
D__inference_lstm_530_layer_call_and_return_conditional_losses_960784
D__inference_lstm_530_layer_call_and_return_conditional_losses_960927
D__inference_lstm_530_layer_call_and_return_conditional_losses_961070?
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
*__inference_dense_176_layer_call_fn_961079?
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
E__inference_dense_176_layer_call_and_return_conditional_losses_961089?
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
$__inference_signature_wrapper_958314lstm_528_input"?
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
.__inference_lstm_cell_156_layer_call_fn_961106
.__inference_lstm_cell_156_layer_call_fn_961123?
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961155
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961187?
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
.__inference_lstm_cell_157_layer_call_fn_961204
.__inference_lstm_cell_157_layer_call_fn_961221?
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961253
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961285?
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
.__inference_lstm_cell_158_layer_call_fn_961302
.__inference_lstm_cell_158_layer_call_fn_961319?
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961351
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961383?
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
!__inference__wrapped_model_956054?-./012345!";?8
1?.
,?)
lstm_528_input?????????
? "5?2
0
	dense_176#? 
	dense_176??????????
E__inference_dense_176_layer_call_and_return_conditional_losses_961089\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_176_layer_call_fn_961079O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_528_layer_call_and_return_conditional_losses_959409?-./O?L
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959552?-./O?L
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959695q-./??<
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
D__inference_lstm_528_layer_call_and_return_conditional_losses_959838q-./??<
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
)__inference_lstm_528_layer_call_fn_959233}-./O?L
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
)__inference_lstm_528_layer_call_fn_959244}-./O?L
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
)__inference_lstm_528_layer_call_fn_959255d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_528_layer_call_fn_959266d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_529_layer_call_and_return_conditional_losses_960025?012O?L
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960168?012O?L
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960311q012??<
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
D__inference_lstm_529_layer_call_and_return_conditional_losses_960454q012??<
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
)__inference_lstm_529_layer_call_fn_959849}012O?L
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
)__inference_lstm_529_layer_call_fn_959860}012O?L
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
)__inference_lstm_529_layer_call_fn_959871d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_529_layer_call_fn_959882d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_530_layer_call_and_return_conditional_losses_960641}345O?L
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_960784}345O?L
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_960927m345??<
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
D__inference_lstm_530_layer_call_and_return_conditional_losses_961070m345??<
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
)__inference_lstm_530_layer_call_fn_960465p345O?L
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
)__inference_lstm_530_layer_call_fn_960476p345O?L
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
)__inference_lstm_530_layer_call_fn_960487`345??<
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
)__inference_lstm_530_layer_call_fn_960498`345??<
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961155?-./??}
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
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_961187?-./??}
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
.__inference_lstm_cell_156_layer_call_fn_961106?-./??}
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
.__inference_lstm_cell_156_layer_call_fn_961123?-./??}
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961253?012??}
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
I__inference_lstm_cell_157_layer_call_and_return_conditional_losses_961285?012??}
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
.__inference_lstm_cell_157_layer_call_fn_961204?012??}
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
.__inference_lstm_cell_157_layer_call_fn_961221?012??}
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961351?345??}
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
I__inference_lstm_cell_158_layer_call_and_return_conditional_losses_961383?345??}
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
.__inference_lstm_cell_158_layer_call_fn_961302?345??}
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
.__inference_lstm_cell_158_layer_call_fn_961319?345??}
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_958249y-./012345!"C?@
9?6
,?)
lstm_528_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_176_layer_call_and_return_conditional_losses_958279y-./012345!"C?@
9?6
,?)
lstm_528_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_176_layer_call_and_return_conditional_losses_958795q-./012345!";?8
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
J__inference_sequential_176_layer_call_and_return_conditional_losses_959222q-./012345!";?8
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
/__inference_sequential_176_layer_call_fn_957603l-./012345!"C?@
9?6
,?)
lstm_528_input?????????
p 

 
? "???????????
/__inference_sequential_176_layer_call_fn_958219l-./012345!"C?@
9?6
,?)
lstm_528_input?????????
p

 
? "???????????
/__inference_sequential_176_layer_call_fn_958341d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_176_layer_call_fn_958368d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_958314?-./012345!"M?J
? 
C?@
>
lstm_528_input,?)
lstm_528_input?????????"5?2
0
	dense_176#? 
	dense_176?????????