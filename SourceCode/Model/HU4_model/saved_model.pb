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
dense_234/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_234/kernel
u
$dense_234/kernel/Read/ReadVariableOpReadVariableOpdense_234/kernel*
_output_shapes

:
*
dtype0
t
dense_234/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_234/bias
m
"dense_234/bias/Read/ReadVariableOpReadVariableOpdense_234/bias*
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
lstm_702/lstm_cell_702/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_702/lstm_cell_702/kernel
?
1lstm_702/lstm_cell_702/kernel/Read/ReadVariableOpReadVariableOplstm_702/lstm_cell_702/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_702/lstm_cell_702/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_702/lstm_cell_702/recurrent_kernel
?
;lstm_702/lstm_cell_702/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_702/lstm_cell_702/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_702/lstm_cell_702/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_702/lstm_cell_702/bias
?
/lstm_702/lstm_cell_702/bias/Read/ReadVariableOpReadVariableOplstm_702/lstm_cell_702/bias*
_output_shapes	
:?*
dtype0
?
lstm_703/lstm_cell_703/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_703/lstm_cell_703/kernel
?
1lstm_703/lstm_cell_703/kernel/Read/ReadVariableOpReadVariableOplstm_703/lstm_cell_703/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_703/lstm_cell_703/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_703/lstm_cell_703/recurrent_kernel
?
;lstm_703/lstm_cell_703/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_703/lstm_cell_703/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_703/lstm_cell_703/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_703/lstm_cell_703/bias
?
/lstm_703/lstm_cell_703/bias/Read/ReadVariableOpReadVariableOplstm_703/lstm_cell_703/bias*
_output_shapes	
:?*
dtype0
?
lstm_704/lstm_cell_704/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_704/lstm_cell_704/kernel
?
1lstm_704/lstm_cell_704/kernel/Read/ReadVariableOpReadVariableOplstm_704/lstm_cell_704/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_704/lstm_cell_704/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_704/lstm_cell_704/recurrent_kernel
?
;lstm_704/lstm_cell_704/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_704/lstm_cell_704/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_704/lstm_cell_704/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_704/lstm_cell_704/bias
?
/lstm_704/lstm_cell_704/bias/Read/ReadVariableOpReadVariableOplstm_704/lstm_cell_704/bias*
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
Adam/dense_234/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_234/kernel/m
?
+Adam/dense_234/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_234/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_234/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_234/bias/m
{
)Adam/dense_234/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_234/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_702/lstm_cell_702/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_702/lstm_cell_702/kernel/m
?
8Adam/lstm_702/lstm_cell_702/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_702/lstm_cell_702/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_702/lstm_cell_702/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_702/lstm_cell_702/recurrent_kernel/m
?
BAdam/lstm_702/lstm_cell_702/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_702/lstm_cell_702/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_702/lstm_cell_702/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_702/lstm_cell_702/bias/m
?
6Adam/lstm_702/lstm_cell_702/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_702/lstm_cell_702/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_703/lstm_cell_703/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_703/lstm_cell_703/kernel/m
?
8Adam/lstm_703/lstm_cell_703/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_703/lstm_cell_703/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_703/lstm_cell_703/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_703/lstm_cell_703/recurrent_kernel/m
?
BAdam/lstm_703/lstm_cell_703/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_703/lstm_cell_703/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_703/lstm_cell_703/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_703/lstm_cell_703/bias/m
?
6Adam/lstm_703/lstm_cell_703/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_703/lstm_cell_703/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_704/lstm_cell_704/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_704/lstm_cell_704/kernel/m
?
8Adam/lstm_704/lstm_cell_704/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_704/lstm_cell_704/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_704/lstm_cell_704/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_704/lstm_cell_704/recurrent_kernel/m
?
BAdam/lstm_704/lstm_cell_704/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_704/lstm_cell_704/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_704/lstm_cell_704/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_704/lstm_cell_704/bias/m
?
6Adam/lstm_704/lstm_cell_704/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_704/lstm_cell_704/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_234/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_234/kernel/v
?
+Adam/dense_234/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_234/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_234/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_234/bias/v
{
)Adam/dense_234/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_234/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_702/lstm_cell_702/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_702/lstm_cell_702/kernel/v
?
8Adam/lstm_702/lstm_cell_702/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_702/lstm_cell_702/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_702/lstm_cell_702/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_702/lstm_cell_702/recurrent_kernel/v
?
BAdam/lstm_702/lstm_cell_702/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_702/lstm_cell_702/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_702/lstm_cell_702/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_702/lstm_cell_702/bias/v
?
6Adam/lstm_702/lstm_cell_702/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_702/lstm_cell_702/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_703/lstm_cell_703/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_703/lstm_cell_703/kernel/v
?
8Adam/lstm_703/lstm_cell_703/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_703/lstm_cell_703/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_703/lstm_cell_703/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_703/lstm_cell_703/recurrent_kernel/v
?
BAdam/lstm_703/lstm_cell_703/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_703/lstm_cell_703/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_703/lstm_cell_703/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_703/lstm_cell_703/bias/v
?
6Adam/lstm_703/lstm_cell_703/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_703/lstm_cell_703/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_704/lstm_cell_704/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_704/lstm_cell_704/kernel/v
?
8Adam/lstm_704/lstm_cell_704/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_704/lstm_cell_704/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_704/lstm_cell_704/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_704/lstm_cell_704/recurrent_kernel/v
?
BAdam/lstm_704/lstm_cell_704/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_704/lstm_cell_704/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_704/lstm_cell_704/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_704/lstm_cell_704/bias/v
?
6Adam/lstm_704/lstm_cell_704/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_704/lstm_cell_704/bias/v*
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
VARIABLE_VALUEdense_234/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_234/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_702/lstm_cell_702/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_702/lstm_cell_702/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_702/lstm_cell_702/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_703/lstm_cell_703/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_703/lstm_cell_703/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_703/lstm_cell_703/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_704/lstm_cell_704/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_704/lstm_cell_704/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_704/lstm_cell_704/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_234/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_234/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_702/lstm_cell_702/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_702/lstm_cell_702/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_702/lstm_cell_702/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_703/lstm_cell_703/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_703/lstm_cell_703/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_703/lstm_cell_703/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_704/lstm_cell_704/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_704/lstm_cell_704/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_704/lstm_cell_704/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_234/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_234/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_702/lstm_cell_702/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_702/lstm_cell_702/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_702/lstm_cell_702/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_703/lstm_cell_703/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_703/lstm_cell_703/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_703/lstm_cell_703/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_704/lstm_cell_704/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_704/lstm_cell_704/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_704/lstm_cell_704/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_702_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_702_inputlstm_702/lstm_cell_702/kernel'lstm_702/lstm_cell_702/recurrent_kernellstm_702/lstm_cell_702/biaslstm_703/lstm_cell_703/kernel'lstm_703/lstm_cell_703/recurrent_kernellstm_703/lstm_cell_703/biaslstm_704/lstm_cell_704/kernel'lstm_704/lstm_cell_704/recurrent_kernellstm_704/lstm_cell_704/biasdense_234/kerneldense_234/bias*
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
%__inference_signature_wrapper_4352384
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_234/kernel/Read/ReadVariableOp"dense_234/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_702/lstm_cell_702/kernel/Read/ReadVariableOp;lstm_702/lstm_cell_702/recurrent_kernel/Read/ReadVariableOp/lstm_702/lstm_cell_702/bias/Read/ReadVariableOp1lstm_703/lstm_cell_703/kernel/Read/ReadVariableOp;lstm_703/lstm_cell_703/recurrent_kernel/Read/ReadVariableOp/lstm_703/lstm_cell_703/bias/Read/ReadVariableOp1lstm_704/lstm_cell_704/kernel/Read/ReadVariableOp;lstm_704/lstm_cell_704/recurrent_kernel/Read/ReadVariableOp/lstm_704/lstm_cell_704/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_234/kernel/m/Read/ReadVariableOp)Adam/dense_234/bias/m/Read/ReadVariableOp8Adam/lstm_702/lstm_cell_702/kernel/m/Read/ReadVariableOpBAdam/lstm_702/lstm_cell_702/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_702/lstm_cell_702/bias/m/Read/ReadVariableOp8Adam/lstm_703/lstm_cell_703/kernel/m/Read/ReadVariableOpBAdam/lstm_703/lstm_cell_703/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_703/lstm_cell_703/bias/m/Read/ReadVariableOp8Adam/lstm_704/lstm_cell_704/kernel/m/Read/ReadVariableOpBAdam/lstm_704/lstm_cell_704/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_704/lstm_cell_704/bias/m/Read/ReadVariableOp+Adam/dense_234/kernel/v/Read/ReadVariableOp)Adam/dense_234/bias/v/Read/ReadVariableOp8Adam/lstm_702/lstm_cell_702/kernel/v/Read/ReadVariableOpBAdam/lstm_702/lstm_cell_702/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_702/lstm_cell_702/bias/v/Read/ReadVariableOp8Adam/lstm_703/lstm_cell_703/kernel/v/Read/ReadVariableOpBAdam/lstm_703/lstm_cell_703/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_703/lstm_cell_703/bias/v/Read/ReadVariableOp8Adam/lstm_704/lstm_cell_704/kernel/v/Read/ReadVariableOpBAdam/lstm_704/lstm_cell_704/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_704/lstm_cell_704/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4355596
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_234/kerneldense_234/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_702/lstm_cell_702/kernel'lstm_702/lstm_cell_702/recurrent_kernellstm_702/lstm_cell_702/biaslstm_703/lstm_cell_703/kernel'lstm_703/lstm_cell_703/recurrent_kernellstm_703/lstm_cell_703/biaslstm_704/lstm_cell_704/kernel'lstm_704/lstm_cell_704/recurrent_kernellstm_704/lstm_cell_704/biastotalcountAdam/dense_234/kernel/mAdam/dense_234/bias/m$Adam/lstm_702/lstm_cell_702/kernel/m.Adam/lstm_702/lstm_cell_702/recurrent_kernel/m"Adam/lstm_702/lstm_cell_702/bias/m$Adam/lstm_703/lstm_cell_703/kernel/m.Adam/lstm_703/lstm_cell_703/recurrent_kernel/m"Adam/lstm_703/lstm_cell_703/bias/m$Adam/lstm_704/lstm_cell_704/kernel/m.Adam/lstm_704/lstm_cell_704/recurrent_kernel/m"Adam/lstm_704/lstm_cell_704/bias/mAdam/dense_234/kernel/vAdam/dense_234/bias/v$Adam/lstm_702/lstm_cell_702/kernel/v.Adam/lstm_702/lstm_cell_702/recurrent_kernel/v"Adam/lstm_702/lstm_cell_702/bias/v$Adam/lstm_703/lstm_cell_703/kernel/v.Adam/lstm_703/lstm_cell_703/recurrent_kernel/v"Adam/lstm_703/lstm_cell_703/bias/v$Adam/lstm_704/lstm_cell_704/kernel/v.Adam/lstm_704/lstm_cell_704/recurrent_kernel/v"Adam/lstm_704/lstm_cell_704/bias/v*4
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
#__inference__traced_restore_4355726??+
?
?
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355225

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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641

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
while_body_4354627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352865

inputsH
5lstm_702_lstm_cell_717_matmul_readvariableop_resource:	?J
7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource:	d?E
6lstm_702_lstm_cell_717_biasadd_readvariableop_resource:	?H
5lstm_703_lstm_cell_718_matmul_readvariableop_resource:	d?J
7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource:	2?E
6lstm_703_lstm_cell_718_biasadd_readvariableop_resource:	?G
5lstm_704_lstm_cell_719_matmul_readvariableop_resource:2(I
7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource:
(D
6lstm_704_lstm_cell_719_biasadd_readvariableop_resource:(:
(dense_234_matmul_readvariableop_resource:
7
)dense_234_biasadd_readvariableop_resource:
identity?? dense_234/BiasAdd/ReadVariableOp?dense_234/MatMul/ReadVariableOp?-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp?,lstm_702/lstm_cell_717/MatMul/ReadVariableOp?.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp?lstm_702/while?-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp?,lstm_703/lstm_cell_718/MatMul/ReadVariableOp?.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp?lstm_703/while?-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp?,lstm_704/lstm_cell_719/MatMul/ReadVariableOp?.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp?lstm_704/whileD
lstm_702/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_702/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_702/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_702/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_sliceStridedSlicelstm_702/Shape:output:0%lstm_702/strided_slice/stack:output:0'lstm_702/strided_slice/stack_1:output:0'lstm_702/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_702/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_702/zeros/packedPacklstm_702/strided_slice:output:0 lstm_702/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_702/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_702/zerosFilllstm_702/zeros/packed:output:0lstm_702/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_702/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_702/zeros_1/packedPacklstm_702/strided_slice:output:0"lstm_702/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_702/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_702/zeros_1Fill lstm_702/zeros_1/packed:output:0lstm_702/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_702/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_702/transpose	Transposeinputs lstm_702/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_702/Shape_1Shapelstm_702/transpose:y:0*
T0*
_output_shapes
:h
lstm_702/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_702/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_1StridedSlicelstm_702/Shape_1:output:0'lstm_702/strided_slice_1/stack:output:0)lstm_702/strided_slice_1/stack_1:output:0)lstm_702/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_702/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_702/TensorArrayV2TensorListReserve-lstm_702/TensorArrayV2/element_shape:output:0!lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_702/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_702/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_702/transpose:y:0Glstm_702/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_702/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_702/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_2StridedSlicelstm_702/transpose:y:0'lstm_702/strided_slice_2/stack:output:0)lstm_702/strided_slice_2/stack_1:output:0)lstm_702/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_702/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp5lstm_702_lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_702/lstm_cell_717/MatMulMatMul!lstm_702/strided_slice_2:output:04lstm_702/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_702/lstm_cell_717/MatMul_1MatMullstm_702/zeros:output:06lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_702/lstm_cell_717/addAddV2'lstm_702/lstm_cell_717/MatMul:product:0)lstm_702/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp6lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_702/lstm_cell_717/BiasAddBiasAddlstm_702/lstm_cell_717/add:z:05lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_702/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_702/lstm_cell_717/splitSplit/lstm_702/lstm_cell_717/split/split_dim:output:0'lstm_702/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_702/lstm_cell_717/SigmoidSigmoid%lstm_702/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_702/lstm_cell_717/Sigmoid_1Sigmoid%lstm_702/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mulMul$lstm_702/lstm_cell_717/Sigmoid_1:y:0lstm_702/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_702/lstm_cell_717/ReluRelu%lstm_702/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mul_1Mul"lstm_702/lstm_cell_717/Sigmoid:y:0)lstm_702/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/add_1AddV2lstm_702/lstm_cell_717/mul:z:0 lstm_702/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_702/lstm_cell_717/Sigmoid_2Sigmoid%lstm_702/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_702/lstm_cell_717/Relu_1Relu lstm_702/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mul_2Mul$lstm_702/lstm_cell_717/Sigmoid_2:y:0+lstm_702/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_702/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_702/TensorArrayV2_1TensorListReserve/lstm_702/TensorArrayV2_1/element_shape:output:0!lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_702/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_702/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_702/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_702/whileWhile$lstm_702/while/loop_counter:output:0*lstm_702/while/maximum_iterations:output:0lstm_702/time:output:0!lstm_702/TensorArrayV2_1:handle:0lstm_702/zeros:output:0lstm_702/zeros_1:output:0!lstm_702/strided_slice_1:output:0@lstm_702/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_702_lstm_cell_717_matmul_readvariableop_resource7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource6lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
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
lstm_702_while_body_4352497*'
condR
lstm_702_while_cond_4352496*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_702/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_702/TensorArrayV2Stack/TensorListStackTensorListStacklstm_702/while:output:3Blstm_702/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_702/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_702/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_3StridedSlice4lstm_702/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_702/strided_slice_3/stack:output:0)lstm_702/strided_slice_3/stack_1:output:0)lstm_702/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_702/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_702/transpose_1	Transpose4lstm_702/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_702/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_702/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_703/ShapeShapelstm_702/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_703/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_703/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_703/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_sliceStridedSlicelstm_703/Shape:output:0%lstm_703/strided_slice/stack:output:0'lstm_703/strided_slice/stack_1:output:0'lstm_703/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_703/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_703/zeros/packedPacklstm_703/strided_slice:output:0 lstm_703/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_703/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_703/zerosFilllstm_703/zeros/packed:output:0lstm_703/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_703/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_703/zeros_1/packedPacklstm_703/strided_slice:output:0"lstm_703/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_703/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_703/zeros_1Fill lstm_703/zeros_1/packed:output:0lstm_703/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_703/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_703/transpose	Transposelstm_702/transpose_1:y:0 lstm_703/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_703/Shape_1Shapelstm_703/transpose:y:0*
T0*
_output_shapes
:h
lstm_703/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_703/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_1StridedSlicelstm_703/Shape_1:output:0'lstm_703/strided_slice_1/stack:output:0)lstm_703/strided_slice_1/stack_1:output:0)lstm_703/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_703/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_703/TensorArrayV2TensorListReserve-lstm_703/TensorArrayV2/element_shape:output:0!lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_703/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_703/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_703/transpose:y:0Glstm_703/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_703/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_703/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_2StridedSlicelstm_703/transpose:y:0'lstm_703/strided_slice_2/stack:output:0)lstm_703/strided_slice_2/stack_1:output:0)lstm_703/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_703/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp5lstm_703_lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_703/lstm_cell_718/MatMulMatMul!lstm_703/strided_slice_2:output:04lstm_703/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_703/lstm_cell_718/MatMul_1MatMullstm_703/zeros:output:06lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_703/lstm_cell_718/addAddV2'lstm_703/lstm_cell_718/MatMul:product:0)lstm_703/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp6lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_703/lstm_cell_718/BiasAddBiasAddlstm_703/lstm_cell_718/add:z:05lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_703/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_703/lstm_cell_718/splitSplit/lstm_703/lstm_cell_718/split/split_dim:output:0'lstm_703/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_703/lstm_cell_718/SigmoidSigmoid%lstm_703/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_703/lstm_cell_718/Sigmoid_1Sigmoid%lstm_703/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mulMul$lstm_703/lstm_cell_718/Sigmoid_1:y:0lstm_703/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_703/lstm_cell_718/ReluRelu%lstm_703/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mul_1Mul"lstm_703/lstm_cell_718/Sigmoid:y:0)lstm_703/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/add_1AddV2lstm_703/lstm_cell_718/mul:z:0 lstm_703/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_703/lstm_cell_718/Sigmoid_2Sigmoid%lstm_703/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_703/lstm_cell_718/Relu_1Relu lstm_703/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mul_2Mul$lstm_703/lstm_cell_718/Sigmoid_2:y:0+lstm_703/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_703/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_703/TensorArrayV2_1TensorListReserve/lstm_703/TensorArrayV2_1/element_shape:output:0!lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_703/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_703/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_703/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_703/whileWhile$lstm_703/while/loop_counter:output:0*lstm_703/while/maximum_iterations:output:0lstm_703/time:output:0!lstm_703/TensorArrayV2_1:handle:0lstm_703/zeros:output:0lstm_703/zeros_1:output:0!lstm_703/strided_slice_1:output:0@lstm_703/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_703_lstm_cell_718_matmul_readvariableop_resource7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource6lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
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
lstm_703_while_body_4352636*'
condR
lstm_703_while_cond_4352635*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_703/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_703/TensorArrayV2Stack/TensorListStackTensorListStacklstm_703/while:output:3Blstm_703/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_703/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_703/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_3StridedSlice4lstm_703/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_703/strided_slice_3/stack:output:0)lstm_703/strided_slice_3/stack_1:output:0)lstm_703/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_703/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_703/transpose_1	Transpose4lstm_703/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_703/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_703/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_704/ShapeShapelstm_703/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_704/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_704/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_704/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_sliceStridedSlicelstm_704/Shape:output:0%lstm_704/strided_slice/stack:output:0'lstm_704/strided_slice/stack_1:output:0'lstm_704/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_704/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_704/zeros/packedPacklstm_704/strided_slice:output:0 lstm_704/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_704/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_704/zerosFilllstm_704/zeros/packed:output:0lstm_704/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_704/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_704/zeros_1/packedPacklstm_704/strided_slice:output:0"lstm_704/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_704/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_704/zeros_1Fill lstm_704/zeros_1/packed:output:0lstm_704/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_704/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_704/transpose	Transposelstm_703/transpose_1:y:0 lstm_704/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_704/Shape_1Shapelstm_704/transpose:y:0*
T0*
_output_shapes
:h
lstm_704/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_704/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_1StridedSlicelstm_704/Shape_1:output:0'lstm_704/strided_slice_1/stack:output:0)lstm_704/strided_slice_1/stack_1:output:0)lstm_704/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_704/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_704/TensorArrayV2TensorListReserve-lstm_704/TensorArrayV2/element_shape:output:0!lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_704/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_704/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_704/transpose:y:0Glstm_704/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_704/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_704/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_2StridedSlicelstm_704/transpose:y:0'lstm_704/strided_slice_2/stack:output:0)lstm_704/strided_slice_2/stack_1:output:0)lstm_704/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_704/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp5lstm_704_lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_704/lstm_cell_719/MatMulMatMul!lstm_704/strided_slice_2:output:04lstm_704/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_704/lstm_cell_719/MatMul_1MatMullstm_704/zeros:output:06lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_704/lstm_cell_719/addAddV2'lstm_704/lstm_cell_719/MatMul:product:0)lstm_704/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp6lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_704/lstm_cell_719/BiasAddBiasAddlstm_704/lstm_cell_719/add:z:05lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_704/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_704/lstm_cell_719/splitSplit/lstm_704/lstm_cell_719/split/split_dim:output:0'lstm_704/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_704/lstm_cell_719/SigmoidSigmoid%lstm_704/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_704/lstm_cell_719/Sigmoid_1Sigmoid%lstm_704/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mulMul$lstm_704/lstm_cell_719/Sigmoid_1:y:0lstm_704/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_704/lstm_cell_719/ReluRelu%lstm_704/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mul_1Mul"lstm_704/lstm_cell_719/Sigmoid:y:0)lstm_704/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/add_1AddV2lstm_704/lstm_cell_719/mul:z:0 lstm_704/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_704/lstm_cell_719/Sigmoid_2Sigmoid%lstm_704/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_704/lstm_cell_719/Relu_1Relu lstm_704/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mul_2Mul$lstm_704/lstm_cell_719/Sigmoid_2:y:0+lstm_704/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_704/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_704/TensorArrayV2_1TensorListReserve/lstm_704/TensorArrayV2_1/element_shape:output:0!lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_704/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_704/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_704/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_704/whileWhile$lstm_704/while/loop_counter:output:0*lstm_704/while/maximum_iterations:output:0lstm_704/time:output:0!lstm_704/TensorArrayV2_1:handle:0lstm_704/zeros:output:0lstm_704/zeros_1:output:0!lstm_704/strided_slice_1:output:0@lstm_704/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_704_lstm_cell_719_matmul_readvariableop_resource7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource6lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
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
lstm_704_while_body_4352775*'
condR
lstm_704_while_cond_4352774*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_704/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_704/TensorArrayV2Stack/TensorListStackTensorListStacklstm_704/while:output:3Blstm_704/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_704/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_704/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_3StridedSlice4lstm_704/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_704/strided_slice_3/stack:output:0)lstm_704/strided_slice_3/stack_1:output:0)lstm_704/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_704/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_704/transpose_1	Transpose4lstm_704/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_704/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_704/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_234/MatMul/ReadVariableOpReadVariableOp(dense_234_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_234/MatMulMatMul!lstm_704/strided_slice_3:output:0'dense_234/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_234/BiasAdd/ReadVariableOpReadVariableOp)dense_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_234/BiasAddBiasAdddense_234/MatMul:product:0(dense_234/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_234/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_234/BiasAdd/ReadVariableOp ^dense_234/MatMul/ReadVariableOp.^lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp-^lstm_702/lstm_cell_717/MatMul/ReadVariableOp/^lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp^lstm_702/while.^lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp-^lstm_703/lstm_cell_718/MatMul/ReadVariableOp/^lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp^lstm_703/while.^lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp-^lstm_704/lstm_cell_719/MatMul/ReadVariableOp/^lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp^lstm_704/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_234/BiasAdd/ReadVariableOp dense_234/BiasAdd/ReadVariableOp2B
dense_234/MatMul/ReadVariableOpdense_234/MatMul/ReadVariableOp2^
-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp2\
,lstm_702/lstm_cell_717/MatMul/ReadVariableOp,lstm_702/lstm_cell_717/MatMul/ReadVariableOp2`
.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp2 
lstm_702/whilelstm_702/while2^
-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp2\
,lstm_703/lstm_cell_718/MatMul/ReadVariableOp,lstm_703/lstm_cell_718/MatMul/ReadVariableOp2`
.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp2 
lstm_703/whilelstm_703/while2^
-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp2\
,lstm_704/lstm_cell_719/MatMul/ReadVariableOp,lstm_704/lstm_cell_719/MatMul/ReadVariableOp2`
.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp2 
lstm_704/whilelstm_704/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_704_layer_call_fn_4354557

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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351623o
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
/__inference_lstm_cell_718_layer_call_fn_4355291

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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350687o
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354997

inputs>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4354913*
condR
while_cond_4354912*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4351239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4354912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354912___redundant_placeholder05
1while_while_cond_4354912___redundant_placeholder15
1while_while_cond_4354912___redundant_placeholder25
1while_while_cond_4354912___redundant_placeholder3
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354381

inputs?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4354297*
condR
while_cond_4354296*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_234_layer_call_fn_4352289
lstm_702_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_702_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352237o
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
_user_specified_namelstm_702_input
?8
?
while_body_4351539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_234_lstm_704_while_body_4350034L
Hsequential_234_lstm_704_while_sequential_234_lstm_704_while_loop_counterR
Nsequential_234_lstm_704_while_sequential_234_lstm_704_while_maximum_iterations-
)sequential_234_lstm_704_while_placeholder/
+sequential_234_lstm_704_while_placeholder_1/
+sequential_234_lstm_704_while_placeholder_2/
+sequential_234_lstm_704_while_placeholder_3K
Gsequential_234_lstm_704_while_sequential_234_lstm_704_strided_slice_1_0?
?sequential_234_lstm_704_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_704_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_234_lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0:2(`
Nsequential_234_lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0:
([
Msequential_234_lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0:(*
&sequential_234_lstm_704_while_identity,
(sequential_234_lstm_704_while_identity_1,
(sequential_234_lstm_704_while_identity_2,
(sequential_234_lstm_704_while_identity_3,
(sequential_234_lstm_704_while_identity_4,
(sequential_234_lstm_704_while_identity_5I
Esequential_234_lstm_704_while_sequential_234_lstm_704_strided_slice_1?
?sequential_234_lstm_704_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_704_tensorarrayunstack_tensorlistfromtensor\
Jsequential_234_lstm_704_while_lstm_cell_719_matmul_readvariableop_resource:2(^
Lsequential_234_lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource:
(Y
Ksequential_234_lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource:(??Bsequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp?Asequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp?Csequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp?
Osequential_234/lstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_234/lstm_704/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_234_lstm_704_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_704_tensorarrayunstack_tensorlistfromtensor_0)sequential_234_lstm_704_while_placeholderXsequential_234/lstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOpLsequential_234_lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_234/lstm_704/while/lstm_cell_719/MatMulMatMulHsequential_234/lstm_704/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOpNsequential_234_lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_234/lstm_704/while/lstm_cell_719/MatMul_1MatMul+sequential_234_lstm_704_while_placeholder_2Ksequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_234/lstm_704/while/lstm_cell_719/addAddV2<sequential_234/lstm_704/while/lstm_cell_719/MatMul:product:0>sequential_234/lstm_704/while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOpMsequential_234_lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_234/lstm_704/while/lstm_cell_719/BiasAddBiasAdd3sequential_234/lstm_704/while/lstm_cell_719/add:z:0Jsequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_234/lstm_704/while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_234/lstm_704/while/lstm_cell_719/splitSplitDsequential_234/lstm_704/while/lstm_cell_719/split/split_dim:output:0<sequential_234/lstm_704/while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_234/lstm_704/while/lstm_cell_719/SigmoidSigmoid:sequential_234/lstm_704/while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_234/lstm_704/while/lstm_cell_719/Sigmoid_1Sigmoid:sequential_234/lstm_704/while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_234/lstm_704/while/lstm_cell_719/mulMul9sequential_234/lstm_704/while/lstm_cell_719/Sigmoid_1:y:0+sequential_234_lstm_704_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_234/lstm_704/while/lstm_cell_719/ReluRelu:sequential_234/lstm_704/while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_234/lstm_704/while/lstm_cell_719/mul_1Mul7sequential_234/lstm_704/while/lstm_cell_719/Sigmoid:y:0>sequential_234/lstm_704/while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_234/lstm_704/while/lstm_cell_719/add_1AddV23sequential_234/lstm_704/while/lstm_cell_719/mul:z:05sequential_234/lstm_704/while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_234/lstm_704/while/lstm_cell_719/Sigmoid_2Sigmoid:sequential_234/lstm_704/while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_234/lstm_704/while/lstm_cell_719/Relu_1Relu5sequential_234/lstm_704/while/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_234/lstm_704/while/lstm_cell_719/mul_2Mul9sequential_234/lstm_704/while/lstm_cell_719/Sigmoid_2:y:0@sequential_234/lstm_704/while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_234/lstm_704/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_234_lstm_704_while_placeholder_1)sequential_234_lstm_704_while_placeholder5sequential_234/lstm_704/while/lstm_cell_719/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_234/lstm_704/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_234/lstm_704/while/addAddV2)sequential_234_lstm_704_while_placeholder,sequential_234/lstm_704/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_234/lstm_704/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_234/lstm_704/while/add_1AddV2Hsequential_234_lstm_704_while_sequential_234_lstm_704_while_loop_counter.sequential_234/lstm_704/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_234/lstm_704/while/IdentityIdentity'sequential_234/lstm_704/while/add_1:z:0#^sequential_234/lstm_704/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_704/while/Identity_1IdentityNsequential_234_lstm_704_while_sequential_234_lstm_704_while_maximum_iterations#^sequential_234/lstm_704/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_704/while/Identity_2Identity%sequential_234/lstm_704/while/add:z:0#^sequential_234/lstm_704/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_704/while/Identity_3IdentityRsequential_234/lstm_704/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_234/lstm_704/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_704/while/Identity_4Identity5sequential_234/lstm_704/while/lstm_cell_719/mul_2:z:0#^sequential_234/lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_234/lstm_704/while/Identity_5Identity5sequential_234/lstm_704/while/lstm_cell_719/add_1:z:0#^sequential_234/lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_234/lstm_704/while/NoOpNoOpC^sequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOpB^sequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOpD^sequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_234_lstm_704_while_identity/sequential_234/lstm_704/while/Identity:output:0"]
(sequential_234_lstm_704_while_identity_11sequential_234/lstm_704/while/Identity_1:output:0"]
(sequential_234_lstm_704_while_identity_21sequential_234/lstm_704/while/Identity_2:output:0"]
(sequential_234_lstm_704_while_identity_31sequential_234/lstm_704/while/Identity_3:output:0"]
(sequential_234_lstm_704_while_identity_41sequential_234/lstm_704/while/Identity_4:output:0"]
(sequential_234_lstm_704_while_identity_51sequential_234/lstm_704/while/Identity_5:output:0"?
Ksequential_234_lstm_704_while_lstm_cell_719_biasadd_readvariableop_resourceMsequential_234_lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0"?
Lsequential_234_lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resourceNsequential_234_lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0"?
Jsequential_234_lstm_704_while_lstm_cell_719_matmul_readvariableop_resourceLsequential_234_lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0"?
Esequential_234_lstm_704_while_sequential_234_lstm_704_strided_slice_1Gsequential_234_lstm_704_while_sequential_234_lstm_704_strided_slice_1_0"?
?sequential_234_lstm_704_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_704_tensorarrayunstack_tensorlistfromtensor?sequential_234_lstm_704_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_704_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOpBsequential_234/lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp2?
Asequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOpAsequential_234/lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp2?
Csequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOpCsequential_234/lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4351919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351919___redundant_placeholder05
1while_while_cond_4351919___redundant_placeholder15
1while_while_cond_4351919___redundant_placeholder25
1while_while_cond_4351919___redundant_placeholder3
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
while_body_4350205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_717_4350229_0:	?0
while_lstm_cell_717_4350231_0:	d?,
while_lstm_cell_717_4350233_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_717_4350229:	?.
while_lstm_cell_717_4350231:	d?*
while_lstm_cell_717_4350233:	???+while/lstm_cell_717/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_717/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_717_4350229_0while_lstm_cell_717_4350231_0while_lstm_cell_717_4350233_0*
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350191?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_717/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_717/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_717/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_717/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_717_4350229while_lstm_cell_717_4350229_0"<
while_lstm_cell_717_4350231while_lstm_cell_717_4350231_0"<
while_lstm_cell_717_4350233while_lstm_cell_717_4350233_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_717/StatefulPartitionedCall+while/lstm_cell_717/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4350465

inputs(
lstm_cell_717_4350383:	?(
lstm_cell_717_4350385:	d?$
lstm_cell_717_4350387:	?
identity??%lstm_cell_717/StatefulPartitionedCall?while;
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
%lstm_cell_717/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_717_4350383lstm_cell_717_4350385lstm_cell_717_4350387*
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350337n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_717_4350383lstm_cell_717_4350385lstm_cell_717_4350387*
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
while_body_4350396*
condR
while_cond_4350395*K
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
NoOpNoOp&^lstm_cell_717/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_717/StatefulPartitionedCall%lstm_cell_717/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4353537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4353537___redundant_placeholder05
1while_while_cond_4353537___redundant_placeholder15
1while_while_cond_4353537___redundant_placeholder25
1while_while_cond_4353537___redundant_placeholder3
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
while_cond_4350395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4350395___redundant_placeholder05
1while_while_cond_4350395___redundant_placeholder15
1while_while_cond_4350395___redundant_placeholder25
1while_while_cond_4350395___redundant_placeholder3
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
while_body_4354297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4351538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351538___redundant_placeholder05
1while_while_cond_4351538___redundant_placeholder15
1while_while_cond_4351538___redundant_placeholder25
1while_while_cond_4351538___redundant_placeholder3
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355355

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
while_cond_4351095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351095___redundant_placeholder05
1while_while_cond_4351095___redundant_placeholder15
1while_while_cond_4351095___redundant_placeholder25
1while_while_cond_4351095___redundant_placeholder3
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
while_body_4353681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_234_lstm_703_while_body_4349895L
Hsequential_234_lstm_703_while_sequential_234_lstm_703_while_loop_counterR
Nsequential_234_lstm_703_while_sequential_234_lstm_703_while_maximum_iterations-
)sequential_234_lstm_703_while_placeholder/
+sequential_234_lstm_703_while_placeholder_1/
+sequential_234_lstm_703_while_placeholder_2/
+sequential_234_lstm_703_while_placeholder_3K
Gsequential_234_lstm_703_while_sequential_234_lstm_703_strided_slice_1_0?
?sequential_234_lstm_703_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_703_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_234_lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0:	d?a
Nsequential_234_lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?\
Msequential_234_lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0:	?*
&sequential_234_lstm_703_while_identity,
(sequential_234_lstm_703_while_identity_1,
(sequential_234_lstm_703_while_identity_2,
(sequential_234_lstm_703_while_identity_3,
(sequential_234_lstm_703_while_identity_4,
(sequential_234_lstm_703_while_identity_5I
Esequential_234_lstm_703_while_sequential_234_lstm_703_strided_slice_1?
?sequential_234_lstm_703_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_703_tensorarrayunstack_tensorlistfromtensor]
Jsequential_234_lstm_703_while_lstm_cell_718_matmul_readvariableop_resource:	d?_
Lsequential_234_lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource:	2?Z
Ksequential_234_lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource:	???Bsequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp?Asequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp?Csequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp?
Osequential_234/lstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_234/lstm_703/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_234_lstm_703_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_703_tensorarrayunstack_tensorlistfromtensor_0)sequential_234_lstm_703_while_placeholderXsequential_234/lstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOpLsequential_234_lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_234/lstm_703/while/lstm_cell_718/MatMulMatMulHsequential_234/lstm_703/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOpNsequential_234_lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_234/lstm_703/while/lstm_cell_718/MatMul_1MatMul+sequential_234_lstm_703_while_placeholder_2Ksequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_234/lstm_703/while/lstm_cell_718/addAddV2<sequential_234/lstm_703/while/lstm_cell_718/MatMul:product:0>sequential_234/lstm_703/while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOpMsequential_234_lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_234/lstm_703/while/lstm_cell_718/BiasAddBiasAdd3sequential_234/lstm_703/while/lstm_cell_718/add:z:0Jsequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_234/lstm_703/while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_234/lstm_703/while/lstm_cell_718/splitSplitDsequential_234/lstm_703/while/lstm_cell_718/split/split_dim:output:0<sequential_234/lstm_703/while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_234/lstm_703/while/lstm_cell_718/SigmoidSigmoid:sequential_234/lstm_703/while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_234/lstm_703/while/lstm_cell_718/Sigmoid_1Sigmoid:sequential_234/lstm_703/while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_234/lstm_703/while/lstm_cell_718/mulMul9sequential_234/lstm_703/while/lstm_cell_718/Sigmoid_1:y:0+sequential_234_lstm_703_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_234/lstm_703/while/lstm_cell_718/ReluRelu:sequential_234/lstm_703/while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_234/lstm_703/while/lstm_cell_718/mul_1Mul7sequential_234/lstm_703/while/lstm_cell_718/Sigmoid:y:0>sequential_234/lstm_703/while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_234/lstm_703/while/lstm_cell_718/add_1AddV23sequential_234/lstm_703/while/lstm_cell_718/mul:z:05sequential_234/lstm_703/while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_234/lstm_703/while/lstm_cell_718/Sigmoid_2Sigmoid:sequential_234/lstm_703/while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_234/lstm_703/while/lstm_cell_718/Relu_1Relu5sequential_234/lstm_703/while/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_234/lstm_703/while/lstm_cell_718/mul_2Mul9sequential_234/lstm_703/while/lstm_cell_718/Sigmoid_2:y:0@sequential_234/lstm_703/while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_234/lstm_703/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_234_lstm_703_while_placeholder_1)sequential_234_lstm_703_while_placeholder5sequential_234/lstm_703/while/lstm_cell_718/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_234/lstm_703/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_234/lstm_703/while/addAddV2)sequential_234_lstm_703_while_placeholder,sequential_234/lstm_703/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_234/lstm_703/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_234/lstm_703/while/add_1AddV2Hsequential_234_lstm_703_while_sequential_234_lstm_703_while_loop_counter.sequential_234/lstm_703/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_234/lstm_703/while/IdentityIdentity'sequential_234/lstm_703/while/add_1:z:0#^sequential_234/lstm_703/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_703/while/Identity_1IdentityNsequential_234_lstm_703_while_sequential_234_lstm_703_while_maximum_iterations#^sequential_234/lstm_703/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_703/while/Identity_2Identity%sequential_234/lstm_703/while/add:z:0#^sequential_234/lstm_703/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_703/while/Identity_3IdentityRsequential_234/lstm_703/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_234/lstm_703/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_703/while/Identity_4Identity5sequential_234/lstm_703/while/lstm_cell_718/mul_2:z:0#^sequential_234/lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_234/lstm_703/while/Identity_5Identity5sequential_234/lstm_703/while/lstm_cell_718/add_1:z:0#^sequential_234/lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_234/lstm_703/while/NoOpNoOpC^sequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOpB^sequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOpD^sequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_234_lstm_703_while_identity/sequential_234/lstm_703/while/Identity:output:0"]
(sequential_234_lstm_703_while_identity_11sequential_234/lstm_703/while/Identity_1:output:0"]
(sequential_234_lstm_703_while_identity_21sequential_234/lstm_703/while/Identity_2:output:0"]
(sequential_234_lstm_703_while_identity_31sequential_234/lstm_703/while/Identity_3:output:0"]
(sequential_234_lstm_703_while_identity_41sequential_234/lstm_703/while/Identity_4:output:0"]
(sequential_234_lstm_703_while_identity_51sequential_234/lstm_703/while/Identity_5:output:0"?
Ksequential_234_lstm_703_while_lstm_cell_718_biasadd_readvariableop_resourceMsequential_234_lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0"?
Lsequential_234_lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resourceNsequential_234_lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0"?
Jsequential_234_lstm_703_while_lstm_cell_718_matmul_readvariableop_resourceLsequential_234_lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0"?
Esequential_234_lstm_703_while_sequential_234_lstm_703_strided_slice_1Gsequential_234_lstm_703_while_sequential_234_lstm_703_strided_slice_1_0"?
?sequential_234_lstm_703_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_703_tensorarrayunstack_tensorlistfromtensor?sequential_234_lstm_703_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_703_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOpBsequential_234/lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp2?
Asequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOpAsequential_234/lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp2?
Csequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOpCsequential_234/lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4351755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_719_layer_call_fn_4355372

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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4350891o
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
*__inference_lstm_704_layer_call_fn_4354568

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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351839o
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
?
*sequential_234_lstm_704_while_cond_4350033L
Hsequential_234_lstm_704_while_sequential_234_lstm_704_while_loop_counterR
Nsequential_234_lstm_704_while_sequential_234_lstm_704_while_maximum_iterations-
)sequential_234_lstm_704_while_placeholder/
+sequential_234_lstm_704_while_placeholder_1/
+sequential_234_lstm_704_while_placeholder_2/
+sequential_234_lstm_704_while_placeholder_3N
Jsequential_234_lstm_704_while_less_sequential_234_lstm_704_strided_slice_1e
asequential_234_lstm_704_while_sequential_234_lstm_704_while_cond_4350033___redundant_placeholder0e
asequential_234_lstm_704_while_sequential_234_lstm_704_while_cond_4350033___redundant_placeholder1e
asequential_234_lstm_704_while_sequential_234_lstm_704_while_cond_4350033___redundant_placeholder2e
asequential_234_lstm_704_while_sequential_234_lstm_704_while_cond_4350033___redundant_placeholder3*
&sequential_234_lstm_704_while_identity
?
"sequential_234/lstm_704/while/LessLess)sequential_234_lstm_704_while_placeholderJsequential_234_lstm_704_while_less_sequential_234_lstm_704_strided_slice_1*
T0*
_output_shapes
: {
&sequential_234/lstm_704/while/IdentityIdentity&sequential_234/lstm_704/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_234_lstm_704_while_identity/sequential_234/lstm_704/while/Identity:output:0*(
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353479
inputs_0?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4353395*
condR
while_cond_4353394*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_702_layer_call_and_return_conditional_losses_4352169

inputs?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4352085*
condR
while_cond_4352084*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350541

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
while_body_4354913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354711
inputs_0>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4354627*
condR
while_cond_4354626*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_702_layer_call_and_return_conditional_losses_4350274

inputs(
lstm_cell_717_4350192:	?(
lstm_cell_717_4350194:	d?$
lstm_cell_717_4350196:	?
identity??%lstm_cell_717/StatefulPartitionedCall?while;
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
%lstm_cell_717/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_717_4350192lstm_cell_717_4350194lstm_cell_717_4350196*
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350191n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_717_4350192lstm_cell_717_4350194lstm_cell_717_4350196*
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
while_body_4350205*
condR
while_cond_4350204*K
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
NoOpNoOp&^lstm_cell_717/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_717/StatefulPartitionedCall%lstm_cell_717/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355323

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
?
?
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355421

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
while_cond_4354439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354439___redundant_placeholder05
1while_while_cond_4354439___redundant_placeholder15
1while_while_cond_4354439___redundant_placeholder25
1while_while_cond_4354439___redundant_placeholder3
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

lstm_703_while_body_4353063.
*lstm_703_while_lstm_703_while_loop_counter4
0lstm_703_while_lstm_703_while_maximum_iterations
lstm_703_while_placeholder 
lstm_703_while_placeholder_1 
lstm_703_while_placeholder_2 
lstm_703_while_placeholder_3-
)lstm_703_while_lstm_703_strided_slice_1_0i
elstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0:	d?R
?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?M
>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
lstm_703_while_identity
lstm_703_while_identity_1
lstm_703_while_identity_2
lstm_703_while_identity_3
lstm_703_while_identity_4
lstm_703_while_identity_5+
'lstm_703_while_lstm_703_strided_slice_1g
clstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensorN
;lstm_703_while_lstm_cell_718_matmul_readvariableop_resource:	d?P
=lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource:	2?K
<lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource:	???3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp?2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp?4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp?
@lstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_703/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0lstm_703_while_placeholderIlstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_703/while/lstm_cell_718/MatMulMatMul9lstm_703/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_703/while/lstm_cell_718/MatMul_1MatMullstm_703_while_placeholder_2<lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_703/while/lstm_cell_718/addAddV2-lstm_703/while/lstm_cell_718/MatMul:product:0/lstm_703/while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_703/while/lstm_cell_718/BiasAddBiasAdd$lstm_703/while/lstm_cell_718/add:z:0;lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_703/while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_703/while/lstm_cell_718/splitSplit5lstm_703/while/lstm_cell_718/split/split_dim:output:0-lstm_703/while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_703/while/lstm_cell_718/SigmoidSigmoid+lstm_703/while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_703/while/lstm_cell_718/Sigmoid_1Sigmoid+lstm_703/while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_703/while/lstm_cell_718/mulMul*lstm_703/while/lstm_cell_718/Sigmoid_1:y:0lstm_703_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_703/while/lstm_cell_718/ReluRelu+lstm_703/while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/mul_1Mul(lstm_703/while/lstm_cell_718/Sigmoid:y:0/lstm_703/while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/add_1AddV2$lstm_703/while/lstm_cell_718/mul:z:0&lstm_703/while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_703/while/lstm_cell_718/Sigmoid_2Sigmoid+lstm_703/while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_703/while/lstm_cell_718/Relu_1Relu&lstm_703/while/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/mul_2Mul*lstm_703/while/lstm_cell_718/Sigmoid_2:y:01lstm_703/while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_703/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_703_while_placeholder_1lstm_703_while_placeholder&lstm_703/while/lstm_cell_718/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_703/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_703/while/addAddV2lstm_703_while_placeholderlstm_703/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_703/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_703/while/add_1AddV2*lstm_703_while_lstm_703_while_loop_counterlstm_703/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_703/while/IdentityIdentitylstm_703/while/add_1:z:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_1Identity0lstm_703_while_lstm_703_while_maximum_iterations^lstm_703/while/NoOp*
T0*
_output_shapes
: t
lstm_703/while/Identity_2Identitylstm_703/while/add:z:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_3IdentityClstm_703/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_4Identity&lstm_703/while/lstm_cell_718/mul_2:z:0^lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_703/while/Identity_5Identity&lstm_703/while/lstm_cell_718/add_1:z:0^lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_703/while/NoOpNoOp4^lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp3^lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp5^lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_703_while_identity lstm_703/while/Identity:output:0"?
lstm_703_while_identity_1"lstm_703/while/Identity_1:output:0"?
lstm_703_while_identity_2"lstm_703/while/Identity_2:output:0"?
lstm_703_while_identity_3"lstm_703/while/Identity_3:output:0"?
lstm_703_while_identity_4"lstm_703/while/Identity_4:output:0"?
lstm_703_while_identity_5"lstm_703/while/Identity_5:output:0"T
'lstm_703_while_lstm_703_strided_slice_1)lstm_703_while_lstm_703_strided_slice_1_0"~
<lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0"?
=lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0"|
;lstm_703_while_lstm_cell_718_matmul_readvariableop_resource=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0"?
clstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensorelstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp2h
2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp2l
4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353908

inputs?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4353824*
condR
while_cond_4353823*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_702_while_body_4352924.
*lstm_702_while_lstm_702_while_loop_counter4
0lstm_702_while_lstm_702_while_maximum_iterations
lstm_702_while_placeholder 
lstm_702_while_placeholder_1 
lstm_702_while_placeholder_2 
lstm_702_while_placeholder_3-
)lstm_702_while_lstm_702_strided_slice_1_0i
elstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0:	?R
?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?M
>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
lstm_702_while_identity
lstm_702_while_identity_1
lstm_702_while_identity_2
lstm_702_while_identity_3
lstm_702_while_identity_4
lstm_702_while_identity_5+
'lstm_702_while_lstm_702_strided_slice_1g
clstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensorN
;lstm_702_while_lstm_cell_717_matmul_readvariableop_resource:	?P
=lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource:	d?K
<lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource:	???3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp?2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp?4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp?
@lstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_702/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0lstm_702_while_placeholderIlstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_702/while/lstm_cell_717/MatMulMatMul9lstm_702/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_702/while/lstm_cell_717/MatMul_1MatMullstm_702_while_placeholder_2<lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_702/while/lstm_cell_717/addAddV2-lstm_702/while/lstm_cell_717/MatMul:product:0/lstm_702/while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_702/while/lstm_cell_717/BiasAddBiasAdd$lstm_702/while/lstm_cell_717/add:z:0;lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_702/while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_702/while/lstm_cell_717/splitSplit5lstm_702/while/lstm_cell_717/split/split_dim:output:0-lstm_702/while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_702/while/lstm_cell_717/SigmoidSigmoid+lstm_702/while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_702/while/lstm_cell_717/Sigmoid_1Sigmoid+lstm_702/while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_702/while/lstm_cell_717/mulMul*lstm_702/while/lstm_cell_717/Sigmoid_1:y:0lstm_702_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_702/while/lstm_cell_717/ReluRelu+lstm_702/while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/mul_1Mul(lstm_702/while/lstm_cell_717/Sigmoid:y:0/lstm_702/while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/add_1AddV2$lstm_702/while/lstm_cell_717/mul:z:0&lstm_702/while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_702/while/lstm_cell_717/Sigmoid_2Sigmoid+lstm_702/while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_702/while/lstm_cell_717/Relu_1Relu&lstm_702/while/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/mul_2Mul*lstm_702/while/lstm_cell_717/Sigmoid_2:y:01lstm_702/while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_702/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_702_while_placeholder_1lstm_702_while_placeholder&lstm_702/while/lstm_cell_717/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_702/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_702/while/addAddV2lstm_702_while_placeholderlstm_702/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_702/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_702/while/add_1AddV2*lstm_702_while_lstm_702_while_loop_counterlstm_702/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_702/while/IdentityIdentitylstm_702/while/add_1:z:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_1Identity0lstm_702_while_lstm_702_while_maximum_iterations^lstm_702/while/NoOp*
T0*
_output_shapes
: t
lstm_702/while/Identity_2Identitylstm_702/while/add:z:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_3IdentityClstm_702/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_4Identity&lstm_702/while/lstm_cell_717/mul_2:z:0^lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_702/while/Identity_5Identity&lstm_702/while/lstm_cell_717/add_1:z:0^lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_702/while/NoOpNoOp4^lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp3^lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp5^lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_702_while_identity lstm_702/while/Identity:output:0"?
lstm_702_while_identity_1"lstm_702/while/Identity_1:output:0"?
lstm_702_while_identity_2"lstm_702/while/Identity_2:output:0"?
lstm_702_while_identity_3"lstm_702/while/Identity_3:output:0"?
lstm_702_while_identity_4"lstm_702/while/Identity_4:output:0"?
lstm_702_while_identity_5"lstm_702/while/Identity_5:output:0"T
'lstm_702_while_lstm_702_strided_slice_1)lstm_702_while_lstm_702_strided_slice_1_0"~
<lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0"?
=lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0"|
;lstm_702_while_lstm_cell_717_matmul_readvariableop_resource=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0"?
clstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensorelstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp2h
2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp2l
4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4353292

inputsH
5lstm_702_lstm_cell_717_matmul_readvariableop_resource:	?J
7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource:	d?E
6lstm_702_lstm_cell_717_biasadd_readvariableop_resource:	?H
5lstm_703_lstm_cell_718_matmul_readvariableop_resource:	d?J
7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource:	2?E
6lstm_703_lstm_cell_718_biasadd_readvariableop_resource:	?G
5lstm_704_lstm_cell_719_matmul_readvariableop_resource:2(I
7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource:
(D
6lstm_704_lstm_cell_719_biasadd_readvariableop_resource:(:
(dense_234_matmul_readvariableop_resource:
7
)dense_234_biasadd_readvariableop_resource:
identity?? dense_234/BiasAdd/ReadVariableOp?dense_234/MatMul/ReadVariableOp?-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp?,lstm_702/lstm_cell_717/MatMul/ReadVariableOp?.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp?lstm_702/while?-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp?,lstm_703/lstm_cell_718/MatMul/ReadVariableOp?.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp?lstm_703/while?-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp?,lstm_704/lstm_cell_719/MatMul/ReadVariableOp?.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp?lstm_704/whileD
lstm_702/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_702/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_702/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_702/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_sliceStridedSlicelstm_702/Shape:output:0%lstm_702/strided_slice/stack:output:0'lstm_702/strided_slice/stack_1:output:0'lstm_702/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_702/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_702/zeros/packedPacklstm_702/strided_slice:output:0 lstm_702/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_702/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_702/zerosFilllstm_702/zeros/packed:output:0lstm_702/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_702/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_702/zeros_1/packedPacklstm_702/strided_slice:output:0"lstm_702/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_702/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_702/zeros_1Fill lstm_702/zeros_1/packed:output:0lstm_702/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_702/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_702/transpose	Transposeinputs lstm_702/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_702/Shape_1Shapelstm_702/transpose:y:0*
T0*
_output_shapes
:h
lstm_702/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_702/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_1StridedSlicelstm_702/Shape_1:output:0'lstm_702/strided_slice_1/stack:output:0)lstm_702/strided_slice_1/stack_1:output:0)lstm_702/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_702/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_702/TensorArrayV2TensorListReserve-lstm_702/TensorArrayV2/element_shape:output:0!lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_702/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_702/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_702/transpose:y:0Glstm_702/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_702/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_702/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_2StridedSlicelstm_702/transpose:y:0'lstm_702/strided_slice_2/stack:output:0)lstm_702/strided_slice_2/stack_1:output:0)lstm_702/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_702/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp5lstm_702_lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_702/lstm_cell_717/MatMulMatMul!lstm_702/strided_slice_2:output:04lstm_702/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_702/lstm_cell_717/MatMul_1MatMullstm_702/zeros:output:06lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_702/lstm_cell_717/addAddV2'lstm_702/lstm_cell_717/MatMul:product:0)lstm_702/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp6lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_702/lstm_cell_717/BiasAddBiasAddlstm_702/lstm_cell_717/add:z:05lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_702/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_702/lstm_cell_717/splitSplit/lstm_702/lstm_cell_717/split/split_dim:output:0'lstm_702/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_702/lstm_cell_717/SigmoidSigmoid%lstm_702/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_702/lstm_cell_717/Sigmoid_1Sigmoid%lstm_702/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mulMul$lstm_702/lstm_cell_717/Sigmoid_1:y:0lstm_702/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_702/lstm_cell_717/ReluRelu%lstm_702/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mul_1Mul"lstm_702/lstm_cell_717/Sigmoid:y:0)lstm_702/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/add_1AddV2lstm_702/lstm_cell_717/mul:z:0 lstm_702/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_702/lstm_cell_717/Sigmoid_2Sigmoid%lstm_702/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_702/lstm_cell_717/Relu_1Relu lstm_702/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_702/lstm_cell_717/mul_2Mul$lstm_702/lstm_cell_717/Sigmoid_2:y:0+lstm_702/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_702/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_702/TensorArrayV2_1TensorListReserve/lstm_702/TensorArrayV2_1/element_shape:output:0!lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_702/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_702/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_702/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_702/whileWhile$lstm_702/while/loop_counter:output:0*lstm_702/while/maximum_iterations:output:0lstm_702/time:output:0!lstm_702/TensorArrayV2_1:handle:0lstm_702/zeros:output:0lstm_702/zeros_1:output:0!lstm_702/strided_slice_1:output:0@lstm_702/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_702_lstm_cell_717_matmul_readvariableop_resource7lstm_702_lstm_cell_717_matmul_1_readvariableop_resource6lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
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
lstm_702_while_body_4352924*'
condR
lstm_702_while_cond_4352923*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_702/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_702/TensorArrayV2Stack/TensorListStackTensorListStacklstm_702/while:output:3Blstm_702/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_702/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_702/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_702/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_702/strided_slice_3StridedSlice4lstm_702/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_702/strided_slice_3/stack:output:0)lstm_702/strided_slice_3/stack_1:output:0)lstm_702/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_702/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_702/transpose_1	Transpose4lstm_702/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_702/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_702/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_703/ShapeShapelstm_702/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_703/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_703/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_703/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_sliceStridedSlicelstm_703/Shape:output:0%lstm_703/strided_slice/stack:output:0'lstm_703/strided_slice/stack_1:output:0'lstm_703/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_703/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_703/zeros/packedPacklstm_703/strided_slice:output:0 lstm_703/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_703/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_703/zerosFilllstm_703/zeros/packed:output:0lstm_703/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_703/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_703/zeros_1/packedPacklstm_703/strided_slice:output:0"lstm_703/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_703/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_703/zeros_1Fill lstm_703/zeros_1/packed:output:0lstm_703/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_703/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_703/transpose	Transposelstm_702/transpose_1:y:0 lstm_703/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_703/Shape_1Shapelstm_703/transpose:y:0*
T0*
_output_shapes
:h
lstm_703/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_703/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_1StridedSlicelstm_703/Shape_1:output:0'lstm_703/strided_slice_1/stack:output:0)lstm_703/strided_slice_1/stack_1:output:0)lstm_703/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_703/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_703/TensorArrayV2TensorListReserve-lstm_703/TensorArrayV2/element_shape:output:0!lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_703/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_703/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_703/transpose:y:0Glstm_703/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_703/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_703/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_2StridedSlicelstm_703/transpose:y:0'lstm_703/strided_slice_2/stack:output:0)lstm_703/strided_slice_2/stack_1:output:0)lstm_703/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_703/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp5lstm_703_lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_703/lstm_cell_718/MatMulMatMul!lstm_703/strided_slice_2:output:04lstm_703/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_703/lstm_cell_718/MatMul_1MatMullstm_703/zeros:output:06lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_703/lstm_cell_718/addAddV2'lstm_703/lstm_cell_718/MatMul:product:0)lstm_703/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp6lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_703/lstm_cell_718/BiasAddBiasAddlstm_703/lstm_cell_718/add:z:05lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_703/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_703/lstm_cell_718/splitSplit/lstm_703/lstm_cell_718/split/split_dim:output:0'lstm_703/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_703/lstm_cell_718/SigmoidSigmoid%lstm_703/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_703/lstm_cell_718/Sigmoid_1Sigmoid%lstm_703/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mulMul$lstm_703/lstm_cell_718/Sigmoid_1:y:0lstm_703/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_703/lstm_cell_718/ReluRelu%lstm_703/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mul_1Mul"lstm_703/lstm_cell_718/Sigmoid:y:0)lstm_703/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/add_1AddV2lstm_703/lstm_cell_718/mul:z:0 lstm_703/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_703/lstm_cell_718/Sigmoid_2Sigmoid%lstm_703/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_703/lstm_cell_718/Relu_1Relu lstm_703/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_703/lstm_cell_718/mul_2Mul$lstm_703/lstm_cell_718/Sigmoid_2:y:0+lstm_703/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_703/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_703/TensorArrayV2_1TensorListReserve/lstm_703/TensorArrayV2_1/element_shape:output:0!lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_703/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_703/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_703/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_703/whileWhile$lstm_703/while/loop_counter:output:0*lstm_703/while/maximum_iterations:output:0lstm_703/time:output:0!lstm_703/TensorArrayV2_1:handle:0lstm_703/zeros:output:0lstm_703/zeros_1:output:0!lstm_703/strided_slice_1:output:0@lstm_703/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_703_lstm_cell_718_matmul_readvariableop_resource7lstm_703_lstm_cell_718_matmul_1_readvariableop_resource6lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
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
lstm_703_while_body_4353063*'
condR
lstm_703_while_cond_4353062*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_703/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_703/TensorArrayV2Stack/TensorListStackTensorListStacklstm_703/while:output:3Blstm_703/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_703/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_703/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_703/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_703/strided_slice_3StridedSlice4lstm_703/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_703/strided_slice_3/stack:output:0)lstm_703/strided_slice_3/stack_1:output:0)lstm_703/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_703/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_703/transpose_1	Transpose4lstm_703/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_703/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_703/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_704/ShapeShapelstm_703/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_704/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_704/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_704/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_sliceStridedSlicelstm_704/Shape:output:0%lstm_704/strided_slice/stack:output:0'lstm_704/strided_slice/stack_1:output:0'lstm_704/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_704/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_704/zeros/packedPacklstm_704/strided_slice:output:0 lstm_704/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_704/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_704/zerosFilllstm_704/zeros/packed:output:0lstm_704/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_704/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_704/zeros_1/packedPacklstm_704/strided_slice:output:0"lstm_704/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_704/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_704/zeros_1Fill lstm_704/zeros_1/packed:output:0lstm_704/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_704/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_704/transpose	Transposelstm_703/transpose_1:y:0 lstm_704/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_704/Shape_1Shapelstm_704/transpose:y:0*
T0*
_output_shapes
:h
lstm_704/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_704/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_1StridedSlicelstm_704/Shape_1:output:0'lstm_704/strided_slice_1/stack:output:0)lstm_704/strided_slice_1/stack_1:output:0)lstm_704/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_704/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_704/TensorArrayV2TensorListReserve-lstm_704/TensorArrayV2/element_shape:output:0!lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_704/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_704/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_704/transpose:y:0Glstm_704/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_704/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_704/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_2StridedSlicelstm_704/transpose:y:0'lstm_704/strided_slice_2/stack:output:0)lstm_704/strided_slice_2/stack_1:output:0)lstm_704/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_704/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp5lstm_704_lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_704/lstm_cell_719/MatMulMatMul!lstm_704/strided_slice_2:output:04lstm_704/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_704/lstm_cell_719/MatMul_1MatMullstm_704/zeros:output:06lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_704/lstm_cell_719/addAddV2'lstm_704/lstm_cell_719/MatMul:product:0)lstm_704/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp6lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_704/lstm_cell_719/BiasAddBiasAddlstm_704/lstm_cell_719/add:z:05lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_704/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_704/lstm_cell_719/splitSplit/lstm_704/lstm_cell_719/split/split_dim:output:0'lstm_704/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_704/lstm_cell_719/SigmoidSigmoid%lstm_704/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_704/lstm_cell_719/Sigmoid_1Sigmoid%lstm_704/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mulMul$lstm_704/lstm_cell_719/Sigmoid_1:y:0lstm_704/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_704/lstm_cell_719/ReluRelu%lstm_704/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mul_1Mul"lstm_704/lstm_cell_719/Sigmoid:y:0)lstm_704/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/add_1AddV2lstm_704/lstm_cell_719/mul:z:0 lstm_704/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_704/lstm_cell_719/Sigmoid_2Sigmoid%lstm_704/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_704/lstm_cell_719/Relu_1Relu lstm_704/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_704/lstm_cell_719/mul_2Mul$lstm_704/lstm_cell_719/Sigmoid_2:y:0+lstm_704/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_704/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_704/TensorArrayV2_1TensorListReserve/lstm_704/TensorArrayV2_1/element_shape:output:0!lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_704/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_704/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_704/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_704/whileWhile$lstm_704/while/loop_counter:output:0*lstm_704/while/maximum_iterations:output:0lstm_704/time:output:0!lstm_704/TensorArrayV2_1:handle:0lstm_704/zeros:output:0lstm_704/zeros_1:output:0!lstm_704/strided_slice_1:output:0@lstm_704/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_704_lstm_cell_719_matmul_readvariableop_resource7lstm_704_lstm_cell_719_matmul_1_readvariableop_resource6lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
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
lstm_704_while_body_4353202*'
condR
lstm_704_while_cond_4353201*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_704/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_704/TensorArrayV2Stack/TensorListStackTensorListStacklstm_704/while:output:3Blstm_704/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_704/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_704/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_704/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_704/strided_slice_3StridedSlice4lstm_704/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_704/strided_slice_3/stack:output:0)lstm_704/strided_slice_3/stack_1:output:0)lstm_704/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_704/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_704/transpose_1	Transpose4lstm_704/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_704/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_704/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_234/MatMul/ReadVariableOpReadVariableOp(dense_234_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_234/MatMulMatMul!lstm_704/strided_slice_3:output:0'dense_234/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_234/BiasAdd/ReadVariableOpReadVariableOp)dense_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_234/BiasAddBiasAdddense_234/MatMul:product:0(dense_234/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_234/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_234/BiasAdd/ReadVariableOp ^dense_234/MatMul/ReadVariableOp.^lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp-^lstm_702/lstm_cell_717/MatMul/ReadVariableOp/^lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp^lstm_702/while.^lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp-^lstm_703/lstm_cell_718/MatMul/ReadVariableOp/^lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp^lstm_703/while.^lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp-^lstm_704/lstm_cell_719/MatMul/ReadVariableOp/^lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp^lstm_704/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_234/BiasAdd/ReadVariableOp dense_234/BiasAdd/ReadVariableOp2B
dense_234/MatMul/ReadVariableOpdense_234/MatMul/ReadVariableOp2^
-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp-lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp2\
,lstm_702/lstm_cell_717/MatMul/ReadVariableOp,lstm_702/lstm_cell_717/MatMul/ReadVariableOp2`
.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp.lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp2 
lstm_702/whilelstm_702/while2^
-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp-lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp2\
,lstm_703/lstm_cell_718/MatMul/ReadVariableOp,lstm_703/lstm_cell_718/MatMul/ReadVariableOp2`
.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp.lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp2 
lstm_703/whilelstm_703/while2^
-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp-lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp2\
,lstm_704/lstm_cell_719/MatMul/ReadVariableOp,lstm_704/lstm_cell_719/MatMul/ReadVariableOp2`
.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp.lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp2 
lstm_704/whilelstm_704/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_234_layer_call_fn_4355149

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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641o
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352349
lstm_702_input#
lstm_702_4352322:	?#
lstm_702_4352324:	d?
lstm_702_4352326:	?#
lstm_703_4352329:	d?#
lstm_703_4352331:	2?
lstm_703_4352333:	?"
lstm_704_4352336:2("
lstm_704_4352338:
(
lstm_704_4352340:(#
dense_234_4352343:

dense_234_4352345:
identity??!dense_234/StatefulPartitionedCall? lstm_702/StatefulPartitionedCall? lstm_703/StatefulPartitionedCall? lstm_704/StatefulPartitionedCall?
 lstm_702/StatefulPartitionedCallStatefulPartitionedCalllstm_702_inputlstm_702_4352322lstm_702_4352324lstm_702_4352326*
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4352169?
 lstm_703/StatefulPartitionedCallStatefulPartitionedCall)lstm_702/StatefulPartitionedCall:output:0lstm_703_4352329lstm_703_4352331lstm_703_4352333*
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4352004?
 lstm_704/StatefulPartitionedCallStatefulPartitionedCall)lstm_703/StatefulPartitionedCall:output:0lstm_704_4352336lstm_704_4352338lstm_704_4352340*
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351839?
!dense_234/StatefulPartitionedCallStatefulPartitionedCall)lstm_704/StatefulPartitionedCall:output:0dense_234_4352343dense_234_4352345*
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641y
IdentityIdentity*dense_234/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_234/StatefulPartitionedCall!^lstm_702/StatefulPartitionedCall!^lstm_703/StatefulPartitionedCall!^lstm_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_234/StatefulPartitionedCall!dense_234/StatefulPartitionedCall2D
 lstm_702/StatefulPartitionedCall lstm_702/StatefulPartitionedCall2D
 lstm_703/StatefulPartitionedCall lstm_703/StatefulPartitionedCall2D
 lstm_704/StatefulPartitionedCall lstm_704/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_702_input
?
?
*__inference_lstm_703_layer_call_fn_4353930
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4350815|
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
?
K__inference_sequential_234_layer_call_and_return_conditional_losses_4351648

inputs#
lstm_702_4351324:	?#
lstm_702_4351326:	d?
lstm_702_4351328:	?#
lstm_703_4351474:	d?#
lstm_703_4351476:	2?
lstm_703_4351478:	?"
lstm_704_4351624:2("
lstm_704_4351626:
(
lstm_704_4351628:(#
dense_234_4351642:

dense_234_4351644:
identity??!dense_234/StatefulPartitionedCall? lstm_702/StatefulPartitionedCall? lstm_703/StatefulPartitionedCall? lstm_704/StatefulPartitionedCall?
 lstm_702/StatefulPartitionedCallStatefulPartitionedCallinputslstm_702_4351324lstm_702_4351326lstm_702_4351328*
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4351323?
 lstm_703/StatefulPartitionedCallStatefulPartitionedCall)lstm_702/StatefulPartitionedCall:output:0lstm_703_4351474lstm_703_4351476lstm_703_4351478*
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4351473?
 lstm_704/StatefulPartitionedCallStatefulPartitionedCall)lstm_703/StatefulPartitionedCall:output:0lstm_704_4351624lstm_704_4351626lstm_704_4351628*
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351623?
!dense_234/StatefulPartitionedCallStatefulPartitionedCall)lstm_704/StatefulPartitionedCall:output:0dense_234_4351642dense_234_4351644*
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641y
IdentityIdentity*dense_234/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_234/StatefulPartitionedCall!^lstm_702/StatefulPartitionedCall!^lstm_703/StatefulPartitionedCall!^lstm_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_234/StatefulPartitionedCall!dense_234/StatefulPartitionedCall2D
 lstm_702/StatefulPartitionedCall lstm_702/StatefulPartitionedCall2D
 lstm_703/StatefulPartitionedCall lstm_703/StatefulPartitionedCall2D
 lstm_704/StatefulPartitionedCall lstm_704/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_234_layer_call_fn_4352411

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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4351648o
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

?
lstm_704_while_cond_4353201.
*lstm_704_while_lstm_704_while_loop_counter4
0lstm_704_while_lstm_704_while_maximum_iterations
lstm_704_while_placeholder 
lstm_704_while_placeholder_1 
lstm_704_while_placeholder_2 
lstm_704_while_placeholder_30
,lstm_704_while_less_lstm_704_strided_slice_1G
Clstm_704_while_lstm_704_while_cond_4353201___redundant_placeholder0G
Clstm_704_while_lstm_704_while_cond_4353201___redundant_placeholder1G
Clstm_704_while_lstm_704_while_cond_4353201___redundant_placeholder2G
Clstm_704_while_lstm_704_while_cond_4353201___redundant_placeholder3
lstm_704_while_identity
?
lstm_704/while/LessLesslstm_704_while_placeholder,lstm_704_while_less_lstm_704_strided_slice_1*
T0*
_output_shapes
: ]
lstm_704/while/IdentityIdentitylstm_704/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_704_while_identity lstm_704/while/Identity:output:0*(
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
while_cond_4354626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354626___redundant_placeholder05
1while_while_cond_4354626___redundant_placeholder15
1while_while_cond_4354626___redundant_placeholder25
1while_while_cond_4354626___redundant_placeholder3
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
*__inference_lstm_703_layer_call_fn_4353919
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4350624|
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
?8
?
while_body_4351389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4350974

inputs'
lstm_cell_719_4350892:2('
lstm_cell_719_4350894:
(#
lstm_cell_719_4350896:(
identity??%lstm_cell_719/StatefulPartitionedCall?while;
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
%lstm_cell_719/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_719_4350892lstm_cell_719_4350894lstm_cell_719_4350896*
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4350891n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_719_4350892lstm_cell_719_4350894lstm_cell_719_4350896*
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
while_body_4350905*
condR
while_cond_4350904*K
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
NoOpNoOp&^lstm_cell_719/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_719/StatefulPartitionedCall%lstm_cell_719/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4355056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4355726
file_prefix3
!assignvariableop_dense_234_kernel:
/
!assignvariableop_1_dense_234_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_702_lstm_cell_702_kernel:	?M
:assignvariableop_8_lstm_702_lstm_cell_702_recurrent_kernel:	d?=
.assignvariableop_9_lstm_702_lstm_cell_702_bias:	?D
1assignvariableop_10_lstm_703_lstm_cell_703_kernel:	d?N
;assignvariableop_11_lstm_703_lstm_cell_703_recurrent_kernel:	2?>
/assignvariableop_12_lstm_703_lstm_cell_703_bias:	?C
1assignvariableop_13_lstm_704_lstm_cell_704_kernel:2(M
;assignvariableop_14_lstm_704_lstm_cell_704_recurrent_kernel:
(=
/assignvariableop_15_lstm_704_lstm_cell_704_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_234_kernel_m:
7
)assignvariableop_19_adam_dense_234_bias_m:K
8assignvariableop_20_adam_lstm_702_lstm_cell_702_kernel_m:	?U
Bassignvariableop_21_adam_lstm_702_lstm_cell_702_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_702_lstm_cell_702_bias_m:	?K
8assignvariableop_23_adam_lstm_703_lstm_cell_703_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_703_lstm_cell_703_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_703_lstm_cell_703_bias_m:	?J
8assignvariableop_26_adam_lstm_704_lstm_cell_704_kernel_m:2(T
Bassignvariableop_27_adam_lstm_704_lstm_cell_704_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_704_lstm_cell_704_bias_m:(=
+assignvariableop_29_adam_dense_234_kernel_v:
7
)assignvariableop_30_adam_dense_234_bias_v:K
8assignvariableop_31_adam_lstm_702_lstm_cell_702_kernel_v:	?U
Bassignvariableop_32_adam_lstm_702_lstm_cell_702_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_702_lstm_cell_702_bias_v:	?K
8assignvariableop_34_adam_lstm_703_lstm_cell_703_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_703_lstm_cell_703_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_703_lstm_cell_703_bias_v:	?J
8assignvariableop_37_adam_lstm_704_lstm_cell_704_kernel_v:2(T
Bassignvariableop_38_adam_lstm_704_lstm_cell_704_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_704_lstm_cell_704_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_234_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_234_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_702_lstm_cell_702_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_702_lstm_cell_702_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_702_lstm_cell_702_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_703_lstm_cell_703_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_703_lstm_cell_703_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_703_lstm_cell_703_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_704_lstm_cell_704_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_704_lstm_cell_704_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_704_lstm_cell_704_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_234_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_234_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_702_lstm_cell_702_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_702_lstm_cell_702_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_702_lstm_cell_702_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_703_lstm_cell_703_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_703_lstm_cell_703_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_703_lstm_cell_703_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_704_lstm_cell_704_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_704_lstm_cell_704_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_704_lstm_cell_704_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_234_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_234_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_702_lstm_cell_702_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_702_lstm_cell_702_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_702_lstm_cell_702_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_703_lstm_cell_703_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_703_lstm_cell_703_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_703_lstm_cell_703_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_704_lstm_cell_704_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_704_lstm_cell_704_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_704_lstm_cell_704_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355257

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
?
?
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352237

inputs#
lstm_702_4352210:	?#
lstm_702_4352212:	d?
lstm_702_4352214:	?#
lstm_703_4352217:	d?#
lstm_703_4352219:	2?
lstm_703_4352221:	?"
lstm_704_4352224:2("
lstm_704_4352226:
(
lstm_704_4352228:(#
dense_234_4352231:

dense_234_4352233:
identity??!dense_234/StatefulPartitionedCall? lstm_702/StatefulPartitionedCall? lstm_703/StatefulPartitionedCall? lstm_704/StatefulPartitionedCall?
 lstm_702/StatefulPartitionedCallStatefulPartitionedCallinputslstm_702_4352210lstm_702_4352212lstm_702_4352214*
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4352169?
 lstm_703/StatefulPartitionedCallStatefulPartitionedCall)lstm_702/StatefulPartitionedCall:output:0lstm_703_4352217lstm_703_4352219lstm_703_4352221*
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4352004?
 lstm_704/StatefulPartitionedCallStatefulPartitionedCall)lstm_703/StatefulPartitionedCall:output:0lstm_704_4352224lstm_704_4352226lstm_704_4352228*
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351839?
!dense_234/StatefulPartitionedCallStatefulPartitionedCall)lstm_704/StatefulPartitionedCall:output:0dense_234_4352231dense_234_4352233*
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641y
IdentityIdentity*dense_234/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_234/StatefulPartitionedCall!^lstm_702/StatefulPartitionedCall!^lstm_703/StatefulPartitionedCall!^lstm_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_234/StatefulPartitionedCall!dense_234/StatefulPartitionedCall2D
 lstm_702/StatefulPartitionedCall lstm_702/StatefulPartitionedCall2D
 lstm_703/StatefulPartitionedCall lstm_703/StatefulPartitionedCall2D
 lstm_704/StatefulPartitionedCall lstm_704/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4352084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4352084___redundant_placeholder05
1while_while_cond_4352084___redundant_placeholder15
1while_while_cond_4352084___redundant_placeholder25
1while_while_cond_4352084___redundant_placeholder3
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

lstm_702_while_body_4352497.
*lstm_702_while_lstm_702_while_loop_counter4
0lstm_702_while_lstm_702_while_maximum_iterations
lstm_702_while_placeholder 
lstm_702_while_placeholder_1 
lstm_702_while_placeholder_2 
lstm_702_while_placeholder_3-
)lstm_702_while_lstm_702_strided_slice_1_0i
elstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0:	?R
?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?M
>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
lstm_702_while_identity
lstm_702_while_identity_1
lstm_702_while_identity_2
lstm_702_while_identity_3
lstm_702_while_identity_4
lstm_702_while_identity_5+
'lstm_702_while_lstm_702_strided_slice_1g
clstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensorN
;lstm_702_while_lstm_cell_717_matmul_readvariableop_resource:	?P
=lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource:	d?K
<lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource:	???3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp?2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp?4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp?
@lstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_702/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0lstm_702_while_placeholderIlstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_702/while/lstm_cell_717/MatMulMatMul9lstm_702/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_702/while/lstm_cell_717/MatMul_1MatMullstm_702_while_placeholder_2<lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_702/while/lstm_cell_717/addAddV2-lstm_702/while/lstm_cell_717/MatMul:product:0/lstm_702/while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_702/while/lstm_cell_717/BiasAddBiasAdd$lstm_702/while/lstm_cell_717/add:z:0;lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_702/while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_702/while/lstm_cell_717/splitSplit5lstm_702/while/lstm_cell_717/split/split_dim:output:0-lstm_702/while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_702/while/lstm_cell_717/SigmoidSigmoid+lstm_702/while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_702/while/lstm_cell_717/Sigmoid_1Sigmoid+lstm_702/while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_702/while/lstm_cell_717/mulMul*lstm_702/while/lstm_cell_717/Sigmoid_1:y:0lstm_702_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_702/while/lstm_cell_717/ReluRelu+lstm_702/while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/mul_1Mul(lstm_702/while/lstm_cell_717/Sigmoid:y:0/lstm_702/while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/add_1AddV2$lstm_702/while/lstm_cell_717/mul:z:0&lstm_702/while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_702/while/lstm_cell_717/Sigmoid_2Sigmoid+lstm_702/while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_702/while/lstm_cell_717/Relu_1Relu&lstm_702/while/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_702/while/lstm_cell_717/mul_2Mul*lstm_702/while/lstm_cell_717/Sigmoid_2:y:01lstm_702/while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_702/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_702_while_placeholder_1lstm_702_while_placeholder&lstm_702/while/lstm_cell_717/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_702/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_702/while/addAddV2lstm_702_while_placeholderlstm_702/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_702/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_702/while/add_1AddV2*lstm_702_while_lstm_702_while_loop_counterlstm_702/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_702/while/IdentityIdentitylstm_702/while/add_1:z:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_1Identity0lstm_702_while_lstm_702_while_maximum_iterations^lstm_702/while/NoOp*
T0*
_output_shapes
: t
lstm_702/while/Identity_2Identitylstm_702/while/add:z:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_3IdentityClstm_702/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_702/while/NoOp*
T0*
_output_shapes
: ?
lstm_702/while/Identity_4Identity&lstm_702/while/lstm_cell_717/mul_2:z:0^lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_702/while/Identity_5Identity&lstm_702/while/lstm_cell_717/add_1:z:0^lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_702/while/NoOpNoOp4^lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp3^lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp5^lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_702_while_identity lstm_702/while/Identity:output:0"?
lstm_702_while_identity_1"lstm_702/while/Identity_1:output:0"?
lstm_702_while_identity_2"lstm_702/while/Identity_2:output:0"?
lstm_702_while_identity_3"lstm_702/while/Identity_3:output:0"?
lstm_702_while_identity_4"lstm_702/while/Identity_4:output:0"?
lstm_702_while_identity_5"lstm_702/while/Identity_5:output:0"T
'lstm_702_while_lstm_702_strided_slice_1)lstm_702_while_lstm_702_strided_slice_1_0"~
<lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource>lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0"?
=lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource?lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0"|
;lstm_702_while_lstm_cell_717_matmul_readvariableop_resource=lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0"?
clstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensorelstm_702_while_tensorarrayv2read_tensorlistgetitem_lstm_702_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp3lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp2h
2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp2lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp2l
4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp4lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4353538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_704_while_cond_4352774.
*lstm_704_while_lstm_704_while_loop_counter4
0lstm_704_while_lstm_704_while_maximum_iterations
lstm_704_while_placeholder 
lstm_704_while_placeholder_1 
lstm_704_while_placeholder_2 
lstm_704_while_placeholder_30
,lstm_704_while_less_lstm_704_strided_slice_1G
Clstm_704_while_lstm_704_while_cond_4352774___redundant_placeholder0G
Clstm_704_while_lstm_704_while_cond_4352774___redundant_placeholder1G
Clstm_704_while_lstm_704_while_cond_4352774___redundant_placeholder2G
Clstm_704_while_lstm_704_while_cond_4352774___redundant_placeholder3
lstm_704_while_identity
?
lstm_704/while/LessLesslstm_704_while_placeholder,lstm_704_while_less_lstm_704_strided_slice_1*
T0*
_output_shapes
: ]
lstm_704/while/IdentityIdentitylstm_704/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_704_while_identity lstm_704/while/Identity:output:0*(
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4351037

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
*sequential_234_lstm_703_while_cond_4349894L
Hsequential_234_lstm_703_while_sequential_234_lstm_703_while_loop_counterR
Nsequential_234_lstm_703_while_sequential_234_lstm_703_while_maximum_iterations-
)sequential_234_lstm_703_while_placeholder/
+sequential_234_lstm_703_while_placeholder_1/
+sequential_234_lstm_703_while_placeholder_2/
+sequential_234_lstm_703_while_placeholder_3N
Jsequential_234_lstm_703_while_less_sequential_234_lstm_703_strided_slice_1e
asequential_234_lstm_703_while_sequential_234_lstm_703_while_cond_4349894___redundant_placeholder0e
asequential_234_lstm_703_while_sequential_234_lstm_703_while_cond_4349894___redundant_placeholder1e
asequential_234_lstm_703_while_sequential_234_lstm_703_while_cond_4349894___redundant_placeholder2e
asequential_234_lstm_703_while_sequential_234_lstm_703_while_cond_4349894___redundant_placeholder3*
&sequential_234_lstm_703_while_identity
?
"sequential_234/lstm_703/while/LessLess)sequential_234_lstm_703_while_placeholderJsequential_234_lstm_703_while_less_sequential_234_lstm_703_strided_slice_1*
T0*
_output_shapes
: {
&sequential_234/lstm_703/while/IdentityIdentity&sequential_234/lstm_703/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_234_lstm_703_while_identity/sequential_234/lstm_703/while/Identity:output:0*(
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
*__inference_lstm_702_layer_call_fn_4353325

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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4351323s
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
while_cond_4353394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4353394___redundant_placeholder05
1while_while_cond_4353394___redundant_placeholder15
1while_while_cond_4353394___redundant_placeholder25
1while_while_cond_4353394___redundant_placeholder3
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353765

inputs?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4353681*
condR
while_cond_4353680*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_704_layer_call_fn_4354535
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4350974o
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350191

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
?W
?
 __inference__traced_save_4355596
file_prefix/
+savev2_dense_234_kernel_read_readvariableop-
)savev2_dense_234_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_702_lstm_cell_702_kernel_read_readvariableopF
Bsavev2_lstm_702_lstm_cell_702_recurrent_kernel_read_readvariableop:
6savev2_lstm_702_lstm_cell_702_bias_read_readvariableop<
8savev2_lstm_703_lstm_cell_703_kernel_read_readvariableopF
Bsavev2_lstm_703_lstm_cell_703_recurrent_kernel_read_readvariableop:
6savev2_lstm_703_lstm_cell_703_bias_read_readvariableop<
8savev2_lstm_704_lstm_cell_704_kernel_read_readvariableopF
Bsavev2_lstm_704_lstm_cell_704_recurrent_kernel_read_readvariableop:
6savev2_lstm_704_lstm_cell_704_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_234_kernel_m_read_readvariableop4
0savev2_adam_dense_234_bias_m_read_readvariableopC
?savev2_adam_lstm_702_lstm_cell_702_kernel_m_read_readvariableopM
Isavev2_adam_lstm_702_lstm_cell_702_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_702_lstm_cell_702_bias_m_read_readvariableopC
?savev2_adam_lstm_703_lstm_cell_703_kernel_m_read_readvariableopM
Isavev2_adam_lstm_703_lstm_cell_703_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_703_lstm_cell_703_bias_m_read_readvariableopC
?savev2_adam_lstm_704_lstm_cell_704_kernel_m_read_readvariableopM
Isavev2_adam_lstm_704_lstm_cell_704_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_704_lstm_cell_704_bias_m_read_readvariableop6
2savev2_adam_dense_234_kernel_v_read_readvariableop4
0savev2_adam_dense_234_bias_v_read_readvariableopC
?savev2_adam_lstm_702_lstm_cell_702_kernel_v_read_readvariableopM
Isavev2_adam_lstm_702_lstm_cell_702_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_702_lstm_cell_702_bias_v_read_readvariableopC
?savev2_adam_lstm_703_lstm_cell_703_kernel_v_read_readvariableopM
Isavev2_adam_lstm_703_lstm_cell_703_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_703_lstm_cell_703_bias_v_read_readvariableopC
?savev2_adam_lstm_704_lstm_cell_704_kernel_v_read_readvariableopM
Isavev2_adam_lstm_704_lstm_cell_704_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_704_lstm_cell_704_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_234_kernel_read_readvariableop)savev2_dense_234_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_702_lstm_cell_702_kernel_read_readvariableopBsavev2_lstm_702_lstm_cell_702_recurrent_kernel_read_readvariableop6savev2_lstm_702_lstm_cell_702_bias_read_readvariableop8savev2_lstm_703_lstm_cell_703_kernel_read_readvariableopBsavev2_lstm_703_lstm_cell_703_recurrent_kernel_read_readvariableop6savev2_lstm_703_lstm_cell_703_bias_read_readvariableop8savev2_lstm_704_lstm_cell_704_kernel_read_readvariableopBsavev2_lstm_704_lstm_cell_704_recurrent_kernel_read_readvariableop6savev2_lstm_704_lstm_cell_704_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_234_kernel_m_read_readvariableop0savev2_adam_dense_234_bias_m_read_readvariableop?savev2_adam_lstm_702_lstm_cell_702_kernel_m_read_readvariableopIsavev2_adam_lstm_702_lstm_cell_702_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_702_lstm_cell_702_bias_m_read_readvariableop?savev2_adam_lstm_703_lstm_cell_703_kernel_m_read_readvariableopIsavev2_adam_lstm_703_lstm_cell_703_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_703_lstm_cell_703_bias_m_read_readvariableop?savev2_adam_lstm_704_lstm_cell_704_kernel_m_read_readvariableopIsavev2_adam_lstm_704_lstm_cell_704_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_704_lstm_cell_704_bias_m_read_readvariableop2savev2_adam_dense_234_kernel_v_read_readvariableop0savev2_adam_dense_234_bias_v_read_readvariableop?savev2_adam_lstm_702_lstm_cell_702_kernel_v_read_readvariableopIsavev2_adam_lstm_702_lstm_cell_702_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_702_lstm_cell_702_bias_v_read_readvariableop?savev2_adam_lstm_703_lstm_cell_703_kernel_v_read_readvariableopIsavev2_adam_lstm_703_lstm_cell_703_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_703_lstm_cell_703_bias_v_read_readvariableop?savev2_adam_lstm_704_lstm_cell_704_kernel_v_read_readvariableopIsavev2_adam_lstm_704_lstm_cell_704_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_704_lstm_cell_704_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4350554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4350554___redundant_placeholder05
1while_while_cond_4350554___redundant_placeholder15
1while_while_cond_4350554___redundant_placeholder25
1while_while_cond_4350554___redundant_placeholder3
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
while_cond_4350204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4350204___redundant_placeholder05
1while_while_cond_4350204___redundant_placeholder15
1while_while_cond_4350204___redundant_placeholder25
1while_while_cond_4350204___redundant_placeholder3
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
while_body_4350746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_718_4350770_0:	d?0
while_lstm_cell_718_4350772_0:	2?,
while_lstm_cell_718_4350774_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_718_4350770:	d?.
while_lstm_cell_718_4350772:	2?*
while_lstm_cell_718_4350774:	???+while/lstm_cell_718/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_718/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_718_4350770_0while_lstm_cell_718_4350772_0while_lstm_cell_718_4350774_0*
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350687?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_718/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_718/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_718/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_718/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_718_4350770while_lstm_cell_718_4350770_0"<
while_lstm_cell_718_4350772while_lstm_cell_718_4350772_0"<
while_lstm_cell_718_4350774while_lstm_cell_718_4350774_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_718/StatefulPartitionedCall+while/lstm_cell_718/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4353680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4353680___redundant_placeholder05
1while_while_cond_4353680___redundant_placeholder15
1while_while_cond_4353680___redundant_placeholder25
1while_while_cond_4353680___redundant_placeholder3
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
while_body_4353824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4350815

inputs(
lstm_cell_718_4350733:	d?(
lstm_cell_718_4350735:	2?$
lstm_cell_718_4350737:	?
identity??%lstm_cell_718/StatefulPartitionedCall?while;
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
%lstm_cell_718/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_718_4350733lstm_cell_718_4350735lstm_cell_718_4350737*
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350687n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_718_4350733lstm_cell_718_4350735lstm_cell_718_4350737*
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
while_body_4350746*
condR
while_cond_4350745*K
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
NoOpNoOp&^lstm_cell_718/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_718/StatefulPartitionedCall%lstm_cell_718/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_703_layer_call_and_return_conditional_losses_4351473

inputs?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4351389*
condR
while_cond_4351388*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_704_layer_call_fn_4354546
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351165o
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
while_cond_4354010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354010___redundant_placeholder05
1while_while_cond_4354010___redundant_placeholder15
1while_while_cond_4354010___redundant_placeholder25
1while_while_cond_4354010___redundant_placeholder3
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
while_body_4354770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_719_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_719_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_719_matmul_readvariableop_resource:2(F
4while_lstm_cell_719_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_719_biasadd_readvariableop_resource:(??*while/lstm_cell_719/BiasAdd/ReadVariableOp?)while/lstm_cell_719/MatMul/ReadVariableOp?+while/lstm_cell_719/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_719/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_719/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_719/addAddV2$while/lstm_cell_719/MatMul:product:0&while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_719/BiasAddBiasAddwhile/lstm_cell_719/add:z:02while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_719/splitSplit,while/lstm_cell_719/split/split_dim:output:0$while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_719/SigmoidSigmoid"while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_1Sigmoid"while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mulMul!while/lstm_cell_719/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_719/ReluRelu"while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_1Mulwhile/lstm_cell_719/Sigmoid:y:0&while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/add_1AddV2while/lstm_cell_719/mul:z:0while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_719/Sigmoid_2Sigmoid"while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_719/Relu_1Reluwhile/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_719/mul_2Mul!while/lstm_cell_719/Sigmoid_2:y:0(while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_719/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_719/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_719/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_719/BiasAdd/ReadVariableOp*^while/lstm_cell_719/MatMul/ReadVariableOp,^while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_719_biasadd_readvariableop_resource5while_lstm_cell_719_biasadd_readvariableop_resource_0"n
4while_lstm_cell_719_matmul_1_readvariableop_resource6while_lstm_cell_719_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_719_matmul_readvariableop_resource4while_lstm_cell_719_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_719/BiasAdd/ReadVariableOp*while/lstm_cell_719/BiasAdd/ReadVariableOp2V
)while/lstm_cell_719/MatMul/ReadVariableOp)while/lstm_cell_719/MatMul/ReadVariableOp2Z
+while/lstm_cell_719/MatMul_1/ReadVariableOp+while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_704_while_body_4353202.
*lstm_704_while_lstm_704_while_loop_counter4
0lstm_704_while_lstm_704_while_maximum_iterations
lstm_704_while_placeholder 
lstm_704_while_placeholder_1 
lstm_704_while_placeholder_2 
lstm_704_while_placeholder_3-
)lstm_704_while_lstm_704_strided_slice_1_0i
elstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0:2(Q
?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(L
>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0:(
lstm_704_while_identity
lstm_704_while_identity_1
lstm_704_while_identity_2
lstm_704_while_identity_3
lstm_704_while_identity_4
lstm_704_while_identity_5+
'lstm_704_while_lstm_704_strided_slice_1g
clstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensorM
;lstm_704_while_lstm_cell_719_matmul_readvariableop_resource:2(O
=lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource:
(J
<lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource:(??3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp?2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp?4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp?
@lstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_704/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0lstm_704_while_placeholderIlstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_704/while/lstm_cell_719/MatMulMatMul9lstm_704/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_704/while/lstm_cell_719/MatMul_1MatMullstm_704_while_placeholder_2<lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_704/while/lstm_cell_719/addAddV2-lstm_704/while/lstm_cell_719/MatMul:product:0/lstm_704/while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_704/while/lstm_cell_719/BiasAddBiasAdd$lstm_704/while/lstm_cell_719/add:z:0;lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_704/while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_704/while/lstm_cell_719/splitSplit5lstm_704/while/lstm_cell_719/split/split_dim:output:0-lstm_704/while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_704/while/lstm_cell_719/SigmoidSigmoid+lstm_704/while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_704/while/lstm_cell_719/Sigmoid_1Sigmoid+lstm_704/while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_704/while/lstm_cell_719/mulMul*lstm_704/while/lstm_cell_719/Sigmoid_1:y:0lstm_704_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_704/while/lstm_cell_719/ReluRelu+lstm_704/while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/mul_1Mul(lstm_704/while/lstm_cell_719/Sigmoid:y:0/lstm_704/while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/add_1AddV2$lstm_704/while/lstm_cell_719/mul:z:0&lstm_704/while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_704/while/lstm_cell_719/Sigmoid_2Sigmoid+lstm_704/while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_704/while/lstm_cell_719/Relu_1Relu&lstm_704/while/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/mul_2Mul*lstm_704/while/lstm_cell_719/Sigmoid_2:y:01lstm_704/while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_704/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_704_while_placeholder_1lstm_704_while_placeholder&lstm_704/while/lstm_cell_719/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_704/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_704/while/addAddV2lstm_704_while_placeholderlstm_704/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_704/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_704/while/add_1AddV2*lstm_704_while_lstm_704_while_loop_counterlstm_704/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_704/while/IdentityIdentitylstm_704/while/add_1:z:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_1Identity0lstm_704_while_lstm_704_while_maximum_iterations^lstm_704/while/NoOp*
T0*
_output_shapes
: t
lstm_704/while/Identity_2Identitylstm_704/while/add:z:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_3IdentityClstm_704/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_4Identity&lstm_704/while/lstm_cell_719/mul_2:z:0^lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_704/while/Identity_5Identity&lstm_704/while/lstm_cell_719/add_1:z:0^lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_704/while/NoOpNoOp4^lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp3^lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp5^lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_704_while_identity lstm_704/while/Identity:output:0"?
lstm_704_while_identity_1"lstm_704/while/Identity_1:output:0"?
lstm_704_while_identity_2"lstm_704/while/Identity_2:output:0"?
lstm_704_while_identity_3"lstm_704/while/Identity_3:output:0"?
lstm_704_while_identity_4"lstm_704/while/Identity_4:output:0"?
lstm_704_while_identity_5"lstm_704/while/Identity_5:output:0"T
'lstm_704_while_lstm_704_strided_slice_1)lstm_704_while_lstm_704_strided_slice_1_0"~
<lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0"?
=lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0"|
;lstm_704_while_lstm_cell_719_matmul_readvariableop_resource=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0"?
clstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensorelstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp2h
2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp2l
4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4350124
lstm_702_inputW
Dsequential_234_lstm_702_lstm_cell_717_matmul_readvariableop_resource:	?Y
Fsequential_234_lstm_702_lstm_cell_717_matmul_1_readvariableop_resource:	d?T
Esequential_234_lstm_702_lstm_cell_717_biasadd_readvariableop_resource:	?W
Dsequential_234_lstm_703_lstm_cell_718_matmul_readvariableop_resource:	d?Y
Fsequential_234_lstm_703_lstm_cell_718_matmul_1_readvariableop_resource:	2?T
Esequential_234_lstm_703_lstm_cell_718_biasadd_readvariableop_resource:	?V
Dsequential_234_lstm_704_lstm_cell_719_matmul_readvariableop_resource:2(X
Fsequential_234_lstm_704_lstm_cell_719_matmul_1_readvariableop_resource:
(S
Esequential_234_lstm_704_lstm_cell_719_biasadd_readvariableop_resource:(I
7sequential_234_dense_234_matmul_readvariableop_resource:
F
8sequential_234_dense_234_biasadd_readvariableop_resource:
identity??/sequential_234/dense_234/BiasAdd/ReadVariableOp?.sequential_234/dense_234/MatMul/ReadVariableOp?<sequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp?;sequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOp?=sequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp?sequential_234/lstm_702/while?<sequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp?;sequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOp?=sequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp?sequential_234/lstm_703/while?<sequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp?;sequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOp?=sequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp?sequential_234/lstm_704/while[
sequential_234/lstm_702/ShapeShapelstm_702_input*
T0*
_output_shapes
:u
+sequential_234/lstm_702/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_234/lstm_702/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_234/lstm_702/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_234/lstm_702/strided_sliceStridedSlice&sequential_234/lstm_702/Shape:output:04sequential_234/lstm_702/strided_slice/stack:output:06sequential_234/lstm_702/strided_slice/stack_1:output:06sequential_234/lstm_702/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_234/lstm_702/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_234/lstm_702/zeros/packedPack.sequential_234/lstm_702/strided_slice:output:0/sequential_234/lstm_702/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_234/lstm_702/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_702/zerosFill-sequential_234/lstm_702/zeros/packed:output:0,sequential_234/lstm_702/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_234/lstm_702/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_234/lstm_702/zeros_1/packedPack.sequential_234/lstm_702/strided_slice:output:01sequential_234/lstm_702/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_234/lstm_702/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_702/zeros_1Fill/sequential_234/lstm_702/zeros_1/packed:output:0.sequential_234/lstm_702/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_234/lstm_702/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_234/lstm_702/transpose	Transposelstm_702_input/sequential_234/lstm_702/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_234/lstm_702/Shape_1Shape%sequential_234/lstm_702/transpose:y:0*
T0*
_output_shapes
:w
-sequential_234/lstm_702/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_702/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_702/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_702/strided_slice_1StridedSlice(sequential_234/lstm_702/Shape_1:output:06sequential_234/lstm_702/strided_slice_1/stack:output:08sequential_234/lstm_702/strided_slice_1/stack_1:output:08sequential_234/lstm_702/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_234/lstm_702/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_234/lstm_702/TensorArrayV2TensorListReserve<sequential_234/lstm_702/TensorArrayV2/element_shape:output:00sequential_234/lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_234/lstm_702/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_234/lstm_702/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_234/lstm_702/transpose:y:0Vsequential_234/lstm_702/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_234/lstm_702/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_702/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_702/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_702/strided_slice_2StridedSlice%sequential_234/lstm_702/transpose:y:06sequential_234/lstm_702/strided_slice_2/stack:output:08sequential_234/lstm_702/strided_slice_2/stack_1:output:08sequential_234/lstm_702/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOpReadVariableOpDsequential_234_lstm_702_lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_234/lstm_702/lstm_cell_717/MatMulMatMul0sequential_234/lstm_702/strided_slice_2:output:0Csequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOpFsequential_234_lstm_702_lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_234/lstm_702/lstm_cell_717/MatMul_1MatMul&sequential_234/lstm_702/zeros:output:0Esequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_234/lstm_702/lstm_cell_717/addAddV26sequential_234/lstm_702/lstm_cell_717/MatMul:product:08sequential_234/lstm_702/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOpEsequential_234_lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_234/lstm_702/lstm_cell_717/BiasAddBiasAdd-sequential_234/lstm_702/lstm_cell_717/add:z:0Dsequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_234/lstm_702/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_234/lstm_702/lstm_cell_717/splitSplit>sequential_234/lstm_702/lstm_cell_717/split/split_dim:output:06sequential_234/lstm_702/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_234/lstm_702/lstm_cell_717/SigmoidSigmoid4sequential_234/lstm_702/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_234/lstm_702/lstm_cell_717/Sigmoid_1Sigmoid4sequential_234/lstm_702/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_234/lstm_702/lstm_cell_717/mulMul3sequential_234/lstm_702/lstm_cell_717/Sigmoid_1:y:0(sequential_234/lstm_702/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_234/lstm_702/lstm_cell_717/ReluRelu4sequential_234/lstm_702/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_234/lstm_702/lstm_cell_717/mul_1Mul1sequential_234/lstm_702/lstm_cell_717/Sigmoid:y:08sequential_234/lstm_702/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_234/lstm_702/lstm_cell_717/add_1AddV2-sequential_234/lstm_702/lstm_cell_717/mul:z:0/sequential_234/lstm_702/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_234/lstm_702/lstm_cell_717/Sigmoid_2Sigmoid4sequential_234/lstm_702/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_234/lstm_702/lstm_cell_717/Relu_1Relu/sequential_234/lstm_702/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_234/lstm_702/lstm_cell_717/mul_2Mul3sequential_234/lstm_702/lstm_cell_717/Sigmoid_2:y:0:sequential_234/lstm_702/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_234/lstm_702/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_234/lstm_702/TensorArrayV2_1TensorListReserve>sequential_234/lstm_702/TensorArrayV2_1/element_shape:output:00sequential_234/lstm_702/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_234/lstm_702/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_234/lstm_702/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_234/lstm_702/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_234/lstm_702/whileWhile3sequential_234/lstm_702/while/loop_counter:output:09sequential_234/lstm_702/while/maximum_iterations:output:0%sequential_234/lstm_702/time:output:00sequential_234/lstm_702/TensorArrayV2_1:handle:0&sequential_234/lstm_702/zeros:output:0(sequential_234/lstm_702/zeros_1:output:00sequential_234/lstm_702/strided_slice_1:output:0Osequential_234/lstm_702/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_234_lstm_702_lstm_cell_717_matmul_readvariableop_resourceFsequential_234_lstm_702_lstm_cell_717_matmul_1_readvariableop_resourceEsequential_234_lstm_702_lstm_cell_717_biasadd_readvariableop_resource*
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
*sequential_234_lstm_702_while_body_4349756*6
cond.R,
*sequential_234_lstm_702_while_cond_4349755*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_234/lstm_702/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_234/lstm_702/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_234/lstm_702/while:output:3Qsequential_234/lstm_702/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_234/lstm_702/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_234/lstm_702/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_702/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_702/strided_slice_3StridedSliceCsequential_234/lstm_702/TensorArrayV2Stack/TensorListStack:tensor:06sequential_234/lstm_702/strided_slice_3/stack:output:08sequential_234/lstm_702/strided_slice_3/stack_1:output:08sequential_234/lstm_702/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_234/lstm_702/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_234/lstm_702/transpose_1	TransposeCsequential_234/lstm_702/TensorArrayV2Stack/TensorListStack:tensor:01sequential_234/lstm_702/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_234/lstm_702/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_234/lstm_703/ShapeShape'sequential_234/lstm_702/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_234/lstm_703/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_234/lstm_703/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_234/lstm_703/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_234/lstm_703/strided_sliceStridedSlice&sequential_234/lstm_703/Shape:output:04sequential_234/lstm_703/strided_slice/stack:output:06sequential_234/lstm_703/strided_slice/stack_1:output:06sequential_234/lstm_703/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_234/lstm_703/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_234/lstm_703/zeros/packedPack.sequential_234/lstm_703/strided_slice:output:0/sequential_234/lstm_703/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_234/lstm_703/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_703/zerosFill-sequential_234/lstm_703/zeros/packed:output:0,sequential_234/lstm_703/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_234/lstm_703/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_234/lstm_703/zeros_1/packedPack.sequential_234/lstm_703/strided_slice:output:01sequential_234/lstm_703/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_234/lstm_703/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_703/zeros_1Fill/sequential_234/lstm_703/zeros_1/packed:output:0.sequential_234/lstm_703/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_234/lstm_703/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_234/lstm_703/transpose	Transpose'sequential_234/lstm_702/transpose_1:y:0/sequential_234/lstm_703/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_234/lstm_703/Shape_1Shape%sequential_234/lstm_703/transpose:y:0*
T0*
_output_shapes
:w
-sequential_234/lstm_703/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_703/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_703/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_703/strided_slice_1StridedSlice(sequential_234/lstm_703/Shape_1:output:06sequential_234/lstm_703/strided_slice_1/stack:output:08sequential_234/lstm_703/strided_slice_1/stack_1:output:08sequential_234/lstm_703/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_234/lstm_703/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_234/lstm_703/TensorArrayV2TensorListReserve<sequential_234/lstm_703/TensorArrayV2/element_shape:output:00sequential_234/lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_234/lstm_703/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_234/lstm_703/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_234/lstm_703/transpose:y:0Vsequential_234/lstm_703/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_234/lstm_703/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_703/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_703/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_703/strided_slice_2StridedSlice%sequential_234/lstm_703/transpose:y:06sequential_234/lstm_703/strided_slice_2/stack:output:08sequential_234/lstm_703/strided_slice_2/stack_1:output:08sequential_234/lstm_703/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOpReadVariableOpDsequential_234_lstm_703_lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_234/lstm_703/lstm_cell_718/MatMulMatMul0sequential_234/lstm_703/strided_slice_2:output:0Csequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOpFsequential_234_lstm_703_lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_234/lstm_703/lstm_cell_718/MatMul_1MatMul&sequential_234/lstm_703/zeros:output:0Esequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_234/lstm_703/lstm_cell_718/addAddV26sequential_234/lstm_703/lstm_cell_718/MatMul:product:08sequential_234/lstm_703/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOpEsequential_234_lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_234/lstm_703/lstm_cell_718/BiasAddBiasAdd-sequential_234/lstm_703/lstm_cell_718/add:z:0Dsequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_234/lstm_703/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_234/lstm_703/lstm_cell_718/splitSplit>sequential_234/lstm_703/lstm_cell_718/split/split_dim:output:06sequential_234/lstm_703/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_234/lstm_703/lstm_cell_718/SigmoidSigmoid4sequential_234/lstm_703/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_234/lstm_703/lstm_cell_718/Sigmoid_1Sigmoid4sequential_234/lstm_703/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_234/lstm_703/lstm_cell_718/mulMul3sequential_234/lstm_703/lstm_cell_718/Sigmoid_1:y:0(sequential_234/lstm_703/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_234/lstm_703/lstm_cell_718/ReluRelu4sequential_234/lstm_703/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_234/lstm_703/lstm_cell_718/mul_1Mul1sequential_234/lstm_703/lstm_cell_718/Sigmoid:y:08sequential_234/lstm_703/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_234/lstm_703/lstm_cell_718/add_1AddV2-sequential_234/lstm_703/lstm_cell_718/mul:z:0/sequential_234/lstm_703/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_234/lstm_703/lstm_cell_718/Sigmoid_2Sigmoid4sequential_234/lstm_703/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_234/lstm_703/lstm_cell_718/Relu_1Relu/sequential_234/lstm_703/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_234/lstm_703/lstm_cell_718/mul_2Mul3sequential_234/lstm_703/lstm_cell_718/Sigmoid_2:y:0:sequential_234/lstm_703/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_234/lstm_703/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_234/lstm_703/TensorArrayV2_1TensorListReserve>sequential_234/lstm_703/TensorArrayV2_1/element_shape:output:00sequential_234/lstm_703/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_234/lstm_703/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_234/lstm_703/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_234/lstm_703/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_234/lstm_703/whileWhile3sequential_234/lstm_703/while/loop_counter:output:09sequential_234/lstm_703/while/maximum_iterations:output:0%sequential_234/lstm_703/time:output:00sequential_234/lstm_703/TensorArrayV2_1:handle:0&sequential_234/lstm_703/zeros:output:0(sequential_234/lstm_703/zeros_1:output:00sequential_234/lstm_703/strided_slice_1:output:0Osequential_234/lstm_703/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_234_lstm_703_lstm_cell_718_matmul_readvariableop_resourceFsequential_234_lstm_703_lstm_cell_718_matmul_1_readvariableop_resourceEsequential_234_lstm_703_lstm_cell_718_biasadd_readvariableop_resource*
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
*sequential_234_lstm_703_while_body_4349895*6
cond.R,
*sequential_234_lstm_703_while_cond_4349894*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_234/lstm_703/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_234/lstm_703/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_234/lstm_703/while:output:3Qsequential_234/lstm_703/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_234/lstm_703/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_234/lstm_703/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_703/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_703/strided_slice_3StridedSliceCsequential_234/lstm_703/TensorArrayV2Stack/TensorListStack:tensor:06sequential_234/lstm_703/strided_slice_3/stack:output:08sequential_234/lstm_703/strided_slice_3/stack_1:output:08sequential_234/lstm_703/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_234/lstm_703/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_234/lstm_703/transpose_1	TransposeCsequential_234/lstm_703/TensorArrayV2Stack/TensorListStack:tensor:01sequential_234/lstm_703/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_234/lstm_703/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_234/lstm_704/ShapeShape'sequential_234/lstm_703/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_234/lstm_704/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_234/lstm_704/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_234/lstm_704/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_234/lstm_704/strided_sliceStridedSlice&sequential_234/lstm_704/Shape:output:04sequential_234/lstm_704/strided_slice/stack:output:06sequential_234/lstm_704/strided_slice/stack_1:output:06sequential_234/lstm_704/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_234/lstm_704/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_234/lstm_704/zeros/packedPack.sequential_234/lstm_704/strided_slice:output:0/sequential_234/lstm_704/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_234/lstm_704/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_704/zerosFill-sequential_234/lstm_704/zeros/packed:output:0,sequential_234/lstm_704/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_234/lstm_704/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_234/lstm_704/zeros_1/packedPack.sequential_234/lstm_704/strided_slice:output:01sequential_234/lstm_704/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_234/lstm_704/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_234/lstm_704/zeros_1Fill/sequential_234/lstm_704/zeros_1/packed:output:0.sequential_234/lstm_704/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_234/lstm_704/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_234/lstm_704/transpose	Transpose'sequential_234/lstm_703/transpose_1:y:0/sequential_234/lstm_704/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_234/lstm_704/Shape_1Shape%sequential_234/lstm_704/transpose:y:0*
T0*
_output_shapes
:w
-sequential_234/lstm_704/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_704/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_704/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_704/strided_slice_1StridedSlice(sequential_234/lstm_704/Shape_1:output:06sequential_234/lstm_704/strided_slice_1/stack:output:08sequential_234/lstm_704/strided_slice_1/stack_1:output:08sequential_234/lstm_704/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_234/lstm_704/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_234/lstm_704/TensorArrayV2TensorListReserve<sequential_234/lstm_704/TensorArrayV2/element_shape:output:00sequential_234/lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_234/lstm_704/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_234/lstm_704/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_234/lstm_704/transpose:y:0Vsequential_234/lstm_704/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_234/lstm_704/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_704/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_234/lstm_704/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_704/strided_slice_2StridedSlice%sequential_234/lstm_704/transpose:y:06sequential_234/lstm_704/strided_slice_2/stack:output:08sequential_234/lstm_704/strided_slice_2/stack_1:output:08sequential_234/lstm_704/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOpReadVariableOpDsequential_234_lstm_704_lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_234/lstm_704/lstm_cell_719/MatMulMatMul0sequential_234/lstm_704/strided_slice_2:output:0Csequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOpFsequential_234_lstm_704_lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_234/lstm_704/lstm_cell_719/MatMul_1MatMul&sequential_234/lstm_704/zeros:output:0Esequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_234/lstm_704/lstm_cell_719/addAddV26sequential_234/lstm_704/lstm_cell_719/MatMul:product:08sequential_234/lstm_704/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOpEsequential_234_lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_234/lstm_704/lstm_cell_719/BiasAddBiasAdd-sequential_234/lstm_704/lstm_cell_719/add:z:0Dsequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_234/lstm_704/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_234/lstm_704/lstm_cell_719/splitSplit>sequential_234/lstm_704/lstm_cell_719/split/split_dim:output:06sequential_234/lstm_704/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_234/lstm_704/lstm_cell_719/SigmoidSigmoid4sequential_234/lstm_704/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_234/lstm_704/lstm_cell_719/Sigmoid_1Sigmoid4sequential_234/lstm_704/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_234/lstm_704/lstm_cell_719/mulMul3sequential_234/lstm_704/lstm_cell_719/Sigmoid_1:y:0(sequential_234/lstm_704/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_234/lstm_704/lstm_cell_719/ReluRelu4sequential_234/lstm_704/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_234/lstm_704/lstm_cell_719/mul_1Mul1sequential_234/lstm_704/lstm_cell_719/Sigmoid:y:08sequential_234/lstm_704/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_234/lstm_704/lstm_cell_719/add_1AddV2-sequential_234/lstm_704/lstm_cell_719/mul:z:0/sequential_234/lstm_704/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_234/lstm_704/lstm_cell_719/Sigmoid_2Sigmoid4sequential_234/lstm_704/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_234/lstm_704/lstm_cell_719/Relu_1Relu/sequential_234/lstm_704/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_234/lstm_704/lstm_cell_719/mul_2Mul3sequential_234/lstm_704/lstm_cell_719/Sigmoid_2:y:0:sequential_234/lstm_704/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_234/lstm_704/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_234/lstm_704/TensorArrayV2_1TensorListReserve>sequential_234/lstm_704/TensorArrayV2_1/element_shape:output:00sequential_234/lstm_704/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_234/lstm_704/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_234/lstm_704/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_234/lstm_704/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_234/lstm_704/whileWhile3sequential_234/lstm_704/while/loop_counter:output:09sequential_234/lstm_704/while/maximum_iterations:output:0%sequential_234/lstm_704/time:output:00sequential_234/lstm_704/TensorArrayV2_1:handle:0&sequential_234/lstm_704/zeros:output:0(sequential_234/lstm_704/zeros_1:output:00sequential_234/lstm_704/strided_slice_1:output:0Osequential_234/lstm_704/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_234_lstm_704_lstm_cell_719_matmul_readvariableop_resourceFsequential_234_lstm_704_lstm_cell_719_matmul_1_readvariableop_resourceEsequential_234_lstm_704_lstm_cell_719_biasadd_readvariableop_resource*
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
*sequential_234_lstm_704_while_body_4350034*6
cond.R,
*sequential_234_lstm_704_while_cond_4350033*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_234/lstm_704/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_234/lstm_704/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_234/lstm_704/while:output:3Qsequential_234/lstm_704/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_234/lstm_704/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_234/lstm_704/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_234/lstm_704/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_234/lstm_704/strided_slice_3StridedSliceCsequential_234/lstm_704/TensorArrayV2Stack/TensorListStack:tensor:06sequential_234/lstm_704/strided_slice_3/stack:output:08sequential_234/lstm_704/strided_slice_3/stack_1:output:08sequential_234/lstm_704/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_234/lstm_704/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_234/lstm_704/transpose_1	TransposeCsequential_234/lstm_704/TensorArrayV2Stack/TensorListStack:tensor:01sequential_234/lstm_704/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_234/lstm_704/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_234/dense_234/MatMul/ReadVariableOpReadVariableOp7sequential_234_dense_234_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_234/dense_234/MatMulMatMul0sequential_234/lstm_704/strided_slice_3:output:06sequential_234/dense_234/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_234/dense_234/BiasAdd/ReadVariableOpReadVariableOp8sequential_234_dense_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_234/dense_234/BiasAddBiasAdd)sequential_234/dense_234/MatMul:product:07sequential_234/dense_234/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_234/dense_234/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_234/dense_234/BiasAdd/ReadVariableOp/^sequential_234/dense_234/MatMul/ReadVariableOp=^sequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp<^sequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOp>^sequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp^sequential_234/lstm_702/while=^sequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp<^sequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOp>^sequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp^sequential_234/lstm_703/while=^sequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp<^sequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOp>^sequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp^sequential_234/lstm_704/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_234/dense_234/BiasAdd/ReadVariableOp/sequential_234/dense_234/BiasAdd/ReadVariableOp2`
.sequential_234/dense_234/MatMul/ReadVariableOp.sequential_234/dense_234/MatMul/ReadVariableOp2|
<sequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp<sequential_234/lstm_702/lstm_cell_717/BiasAdd/ReadVariableOp2z
;sequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOp;sequential_234/lstm_702/lstm_cell_717/MatMul/ReadVariableOp2~
=sequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp=sequential_234/lstm_702/lstm_cell_717/MatMul_1/ReadVariableOp2>
sequential_234/lstm_702/whilesequential_234/lstm_702/while2|
<sequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp<sequential_234/lstm_703/lstm_cell_718/BiasAdd/ReadVariableOp2z
;sequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOp;sequential_234/lstm_703/lstm_cell_718/MatMul/ReadVariableOp2~
=sequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp=sequential_234/lstm_703/lstm_cell_718/MatMul_1/ReadVariableOp2>
sequential_234/lstm_703/whilesequential_234/lstm_703/while2|
<sequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp<sequential_234/lstm_704/lstm_cell_719/BiasAdd/ReadVariableOp2z
;sequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOp;sequential_234/lstm_704/lstm_cell_719/MatMul/ReadVariableOp2~
=sequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp=sequential_234/lstm_704/lstm_cell_719/MatMul_1/ReadVariableOp2>
sequential_234/lstm_704/whilesequential_234/lstm_704/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_702_input
?8
?
E__inference_lstm_703_layer_call_and_return_conditional_losses_4350624

inputs(
lstm_cell_718_4350542:	d?(
lstm_cell_718_4350544:	2?$
lstm_cell_718_4350546:	?
identity??%lstm_cell_718/StatefulPartitionedCall?while;
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
%lstm_cell_718/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_718_4350542lstm_cell_718_4350544lstm_cell_718_4350546*
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350541n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_718_4350542lstm_cell_718_4350544lstm_cell_718_4350546*
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
while_body_4350555*
condR
while_cond_4350554*K
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
NoOpNoOp&^lstm_cell_718/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_718/StatefulPartitionedCall%lstm_cell_718/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4355055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4355055___redundant_placeholder05
1while_while_cond_4355055___redundant_placeholder15
1while_while_cond_4355055___redundant_placeholder25
1while_while_cond_4355055___redundant_placeholder3
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
while_body_4352085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_703_layer_call_fn_4353952

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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4352004s
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
?
/__inference_lstm_cell_719_layer_call_fn_4355389

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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4351037o
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
while_body_4353395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_717_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_717_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_717_matmul_readvariableop_resource:	?G
4while_lstm_cell_717_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_717_biasadd_readvariableop_resource:	???*while/lstm_cell_717/BiasAdd/ReadVariableOp?)while/lstm_cell_717/MatMul/ReadVariableOp?+while/lstm_cell_717/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_717/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_717/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_717/addAddV2$while/lstm_cell_717/MatMul:product:0&while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_717/BiasAddBiasAddwhile/lstm_cell_717/add:z:02while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_717/splitSplit,while/lstm_cell_717/split/split_dim:output:0$while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_717/SigmoidSigmoid"while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_1Sigmoid"while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mulMul!while/lstm_cell_717/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_717/ReluRelu"while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_1Mulwhile/lstm_cell_717/Sigmoid:y:0&while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/add_1AddV2while/lstm_cell_717/mul:z:0while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_717/Sigmoid_2Sigmoid"while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_717/Relu_1Reluwhile/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_717/mul_2Mul!while/lstm_cell_717/Sigmoid_2:y:0(while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_717/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_717/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_717/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_717/BiasAdd/ReadVariableOp*^while/lstm_cell_717/MatMul/ReadVariableOp,^while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_717_biasadd_readvariableop_resource5while_lstm_cell_717_biasadd_readvariableop_resource_0"n
4while_lstm_cell_717_matmul_1_readvariableop_resource6while_lstm_cell_717_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_717_matmul_readvariableop_resource4while_lstm_cell_717_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_717/BiasAdd/ReadVariableOp*while/lstm_cell_717/BiasAdd/ReadVariableOp2V
)while/lstm_cell_717/MatMul/ReadVariableOp)while/lstm_cell_717/MatMul/ReadVariableOp2Z
+while/lstm_cell_717/MatMul_1/ReadVariableOp+while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_704_while_body_4352775.
*lstm_704_while_lstm_704_while_loop_counter4
0lstm_704_while_lstm_704_while_maximum_iterations
lstm_704_while_placeholder 
lstm_704_while_placeholder_1 
lstm_704_while_placeholder_2 
lstm_704_while_placeholder_3-
)lstm_704_while_lstm_704_strided_slice_1_0i
elstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0:2(Q
?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0:
(L
>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0:(
lstm_704_while_identity
lstm_704_while_identity_1
lstm_704_while_identity_2
lstm_704_while_identity_3
lstm_704_while_identity_4
lstm_704_while_identity_5+
'lstm_704_while_lstm_704_strided_slice_1g
clstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensorM
;lstm_704_while_lstm_cell_719_matmul_readvariableop_resource:2(O
=lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource:
(J
<lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource:(??3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp?2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp?4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp?
@lstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_704/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0lstm_704_while_placeholderIlstm_704/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOpReadVariableOp=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_704/while/lstm_cell_719/MatMulMatMul9lstm_704/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_704/while/lstm_cell_719/MatMul_1MatMullstm_704_while_placeholder_2<lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_704/while/lstm_cell_719/addAddV2-lstm_704/while/lstm_cell_719/MatMul:product:0/lstm_704/while/lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_704/while/lstm_cell_719/BiasAddBiasAdd$lstm_704/while/lstm_cell_719/add:z:0;lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_704/while/lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_704/while/lstm_cell_719/splitSplit5lstm_704/while/lstm_cell_719/split/split_dim:output:0-lstm_704/while/lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_704/while/lstm_cell_719/SigmoidSigmoid+lstm_704/while/lstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_704/while/lstm_cell_719/Sigmoid_1Sigmoid+lstm_704/while/lstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_704/while/lstm_cell_719/mulMul*lstm_704/while/lstm_cell_719/Sigmoid_1:y:0lstm_704_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_704/while/lstm_cell_719/ReluRelu+lstm_704/while/lstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/mul_1Mul(lstm_704/while/lstm_cell_719/Sigmoid:y:0/lstm_704/while/lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/add_1AddV2$lstm_704/while/lstm_cell_719/mul:z:0&lstm_704/while/lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_704/while/lstm_cell_719/Sigmoid_2Sigmoid+lstm_704/while/lstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_704/while/lstm_cell_719/Relu_1Relu&lstm_704/while/lstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_704/while/lstm_cell_719/mul_2Mul*lstm_704/while/lstm_cell_719/Sigmoid_2:y:01lstm_704/while/lstm_cell_719/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_704/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_704_while_placeholder_1lstm_704_while_placeholder&lstm_704/while/lstm_cell_719/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_704/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_704/while/addAddV2lstm_704_while_placeholderlstm_704/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_704/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_704/while/add_1AddV2*lstm_704_while_lstm_704_while_loop_counterlstm_704/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_704/while/IdentityIdentitylstm_704/while/add_1:z:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_1Identity0lstm_704_while_lstm_704_while_maximum_iterations^lstm_704/while/NoOp*
T0*
_output_shapes
: t
lstm_704/while/Identity_2Identitylstm_704/while/add:z:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_3IdentityClstm_704/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_704/while/NoOp*
T0*
_output_shapes
: ?
lstm_704/while/Identity_4Identity&lstm_704/while/lstm_cell_719/mul_2:z:0^lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_704/while/Identity_5Identity&lstm_704/while/lstm_cell_719/add_1:z:0^lstm_704/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_704/while/NoOpNoOp4^lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp3^lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp5^lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_704_while_identity lstm_704/while/Identity:output:0"?
lstm_704_while_identity_1"lstm_704/while/Identity_1:output:0"?
lstm_704_while_identity_2"lstm_704/while/Identity_2:output:0"?
lstm_704_while_identity_3"lstm_704/while/Identity_3:output:0"?
lstm_704_while_identity_4"lstm_704/while/Identity_4:output:0"?
lstm_704_while_identity_5"lstm_704/while/Identity_5:output:0"T
'lstm_704_while_lstm_704_strided_slice_1)lstm_704_while_lstm_704_strided_slice_1_0"~
<lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource>lstm_704_while_lstm_cell_719_biasadd_readvariableop_resource_0"?
=lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource?lstm_704_while_lstm_cell_719_matmul_1_readvariableop_resource_0"|
;lstm_704_while_lstm_cell_719_matmul_readvariableop_resource=lstm_704_while_lstm_cell_719_matmul_readvariableop_resource_0"?
clstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensorelstm_704_while_tensorarrayv2read_tensorlistgetitem_lstm_704_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp3lstm_704/while/lstm_cell_719/BiasAdd/ReadVariableOp2h
2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp2lstm_704/while/lstm_cell_719/MatMul/ReadVariableOp2l
4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp4lstm_704/while/lstm_cell_719/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_717_layer_call_fn_4355176

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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350191o
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
while_cond_4354153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354153___redundant_placeholder05
1while_while_cond_4354153___redundant_placeholder15
1while_while_cond_4354153___redundant_placeholder25
1while_while_cond_4354153___redundant_placeholder3
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4352004

inputs?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4351920*
condR
while_cond_4351919*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_702_layer_call_fn_4353336

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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4352169s
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
while_cond_4354769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354769___redundant_placeholder05
1while_while_cond_4354769___redundant_placeholder15
1while_while_cond_4354769___redundant_placeholder25
1while_while_cond_4354769___redundant_placeholder3
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
while_body_4351920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354524

inputs?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4354440*
condR
while_cond_4354439*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_702_while_cond_4352496.
*lstm_702_while_lstm_702_while_loop_counter4
0lstm_702_while_lstm_702_while_maximum_iterations
lstm_702_while_placeholder 
lstm_702_while_placeholder_1 
lstm_702_while_placeholder_2 
lstm_702_while_placeholder_30
,lstm_702_while_less_lstm_702_strided_slice_1G
Clstm_702_while_lstm_702_while_cond_4352496___redundant_placeholder0G
Clstm_702_while_lstm_702_while_cond_4352496___redundant_placeholder1G
Clstm_702_while_lstm_702_while_cond_4352496___redundant_placeholder2G
Clstm_702_while_lstm_702_while_cond_4352496___redundant_placeholder3
lstm_702_while_identity
?
lstm_702/while/LessLesslstm_702_while_placeholder,lstm_702_while_less_lstm_702_strided_slice_1*
T0*
_output_shapes
: ]
lstm_702/while/IdentityIdentitylstm_702/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_702_while_identity lstm_702/while/Identity:output:0*(
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
*sequential_234_lstm_702_while_cond_4349755L
Hsequential_234_lstm_702_while_sequential_234_lstm_702_while_loop_counterR
Nsequential_234_lstm_702_while_sequential_234_lstm_702_while_maximum_iterations-
)sequential_234_lstm_702_while_placeholder/
+sequential_234_lstm_702_while_placeholder_1/
+sequential_234_lstm_702_while_placeholder_2/
+sequential_234_lstm_702_while_placeholder_3N
Jsequential_234_lstm_702_while_less_sequential_234_lstm_702_strided_slice_1e
asequential_234_lstm_702_while_sequential_234_lstm_702_while_cond_4349755___redundant_placeholder0e
asequential_234_lstm_702_while_sequential_234_lstm_702_while_cond_4349755___redundant_placeholder1e
asequential_234_lstm_702_while_sequential_234_lstm_702_while_cond_4349755___redundant_placeholder2e
asequential_234_lstm_702_while_sequential_234_lstm_702_while_cond_4349755___redundant_placeholder3*
&sequential_234_lstm_702_while_identity
?
"sequential_234/lstm_702/while/LessLess)sequential_234_lstm_702_while_placeholderJsequential_234_lstm_702_while_less_sequential_234_lstm_702_strided_slice_1*
T0*
_output_shapes
: {
&sequential_234/lstm_702/while/IdentityIdentity&sequential_234/lstm_702/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_234_lstm_702_while_identity/sequential_234/lstm_702/while/Identity:output:0*(
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
%__inference_signature_wrapper_4352384
lstm_702_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_702_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4350124o
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
_user_specified_namelstm_702_input
?
?
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350337

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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355453

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
0__inference_sequential_234_layer_call_fn_4352438

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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352237o
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
while_cond_4351754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351754___redundant_placeholder05
1while_while_cond_4351754___redundant_placeholder15
1while_while_cond_4351754___redundant_placeholder25
1while_while_cond_4351754___redundant_placeholder3
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
while_cond_4351388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351388___redundant_placeholder05
1while_while_cond_4351388___redundant_placeholder15
1while_while_cond_4351388___redundant_placeholder25
1while_while_cond_4351388___redundant_placeholder3
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
while_body_4351096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_719_4351120_0:2(/
while_lstm_cell_719_4351122_0:
(+
while_lstm_cell_719_4351124_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_719_4351120:2(-
while_lstm_cell_719_4351122:
()
while_lstm_cell_719_4351124:(??+while/lstm_cell_719/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_719/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_719_4351120_0while_lstm_cell_719_4351122_0while_lstm_cell_719_4351124_0*
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4351037?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_719/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_719/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_719/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_719/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_719_4351120while_lstm_cell_719_4351120_0"<
while_lstm_cell_719_4351122while_lstm_cell_719_4351122_0"<
while_lstm_cell_719_4351124while_lstm_cell_719_4351124_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_719/StatefulPartitionedCall+while/lstm_cell_719/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351839

inputs>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4351755*
condR
while_cond_4351754*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4350904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4350904___redundant_placeholder05
1while_while_cond_4350904___redundant_placeholder15
1while_while_cond_4350904___redundant_placeholder25
1while_while_cond_4350904___redundant_placeholder3
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

lstm_703_while_body_4352636.
*lstm_703_while_lstm_703_while_loop_counter4
0lstm_703_while_lstm_703_while_maximum_iterations
lstm_703_while_placeholder 
lstm_703_while_placeholder_1 
lstm_703_while_placeholder_2 
lstm_703_while_placeholder_3-
)lstm_703_while_lstm_703_strided_slice_1_0i
elstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0:	d?R
?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?M
>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
lstm_703_while_identity
lstm_703_while_identity_1
lstm_703_while_identity_2
lstm_703_while_identity_3
lstm_703_while_identity_4
lstm_703_while_identity_5+
'lstm_703_while_lstm_703_strided_slice_1g
clstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensorN
;lstm_703_while_lstm_cell_718_matmul_readvariableop_resource:	d?P
=lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource:	2?K
<lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource:	???3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp?2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp?4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp?
@lstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_703/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0lstm_703_while_placeholderIlstm_703/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_703/while/lstm_cell_718/MatMulMatMul9lstm_703/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_703/while/lstm_cell_718/MatMul_1MatMullstm_703_while_placeholder_2<lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_703/while/lstm_cell_718/addAddV2-lstm_703/while/lstm_cell_718/MatMul:product:0/lstm_703/while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_703/while/lstm_cell_718/BiasAddBiasAdd$lstm_703/while/lstm_cell_718/add:z:0;lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_703/while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_703/while/lstm_cell_718/splitSplit5lstm_703/while/lstm_cell_718/split/split_dim:output:0-lstm_703/while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_703/while/lstm_cell_718/SigmoidSigmoid+lstm_703/while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_703/while/lstm_cell_718/Sigmoid_1Sigmoid+lstm_703/while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_703/while/lstm_cell_718/mulMul*lstm_703/while/lstm_cell_718/Sigmoid_1:y:0lstm_703_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_703/while/lstm_cell_718/ReluRelu+lstm_703/while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/mul_1Mul(lstm_703/while/lstm_cell_718/Sigmoid:y:0/lstm_703/while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/add_1AddV2$lstm_703/while/lstm_cell_718/mul:z:0&lstm_703/while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_703/while/lstm_cell_718/Sigmoid_2Sigmoid+lstm_703/while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_703/while/lstm_cell_718/Relu_1Relu&lstm_703/while/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_703/while/lstm_cell_718/mul_2Mul*lstm_703/while/lstm_cell_718/Sigmoid_2:y:01lstm_703/while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_703/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_703_while_placeholder_1lstm_703_while_placeholder&lstm_703/while/lstm_cell_718/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_703/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_703/while/addAddV2lstm_703_while_placeholderlstm_703/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_703/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_703/while/add_1AddV2*lstm_703_while_lstm_703_while_loop_counterlstm_703/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_703/while/IdentityIdentitylstm_703/while/add_1:z:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_1Identity0lstm_703_while_lstm_703_while_maximum_iterations^lstm_703/while/NoOp*
T0*
_output_shapes
: t
lstm_703/while/Identity_2Identitylstm_703/while/add:z:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_3IdentityClstm_703/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_703/while/NoOp*
T0*
_output_shapes
: ?
lstm_703/while/Identity_4Identity&lstm_703/while/lstm_cell_718/mul_2:z:0^lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_703/while/Identity_5Identity&lstm_703/while/lstm_cell_718/add_1:z:0^lstm_703/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_703/while/NoOpNoOp4^lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp3^lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp5^lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_703_while_identity lstm_703/while/Identity:output:0"?
lstm_703_while_identity_1"lstm_703/while/Identity_1:output:0"?
lstm_703_while_identity_2"lstm_703/while/Identity_2:output:0"?
lstm_703_while_identity_3"lstm_703/while/Identity_3:output:0"?
lstm_703_while_identity_4"lstm_703/while/Identity_4:output:0"?
lstm_703_while_identity_5"lstm_703/while/Identity_5:output:0"T
'lstm_703_while_lstm_703_strided_slice_1)lstm_703_while_lstm_703_strided_slice_1_0"~
<lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource>lstm_703_while_lstm_cell_718_biasadd_readvariableop_resource_0"?
=lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource?lstm_703_while_lstm_cell_718_matmul_1_readvariableop_resource_0"|
;lstm_703_while_lstm_cell_718_matmul_readvariableop_resource=lstm_703_while_lstm_cell_718_matmul_readvariableop_resource_0"?
clstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensorelstm_703_while_tensorarrayv2read_tensorlistgetitem_lstm_703_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp3lstm_703/while/lstm_cell_718/BiasAdd/ReadVariableOp2h
2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp2lstm_703/while/lstm_cell_718/MatMul/ReadVariableOp2l
4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp4lstm_703/while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354238
inputs_0?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4354154*
condR
while_cond_4354153*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4354154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350687

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
?#
?
while_body_4350905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_719_4350929_0:2(/
while_lstm_cell_719_4350931_0:
(+
while_lstm_cell_719_4350933_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_719_4350929:2(-
while_lstm_cell_719_4350931:
()
while_lstm_cell_719_4350933:(??+while/lstm_cell_719/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_719/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_719_4350929_0while_lstm_cell_719_4350931_0while_lstm_cell_719_4350933_0*
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4350891?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_719/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_719/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_719/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_719/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_719_4350929while_lstm_cell_719_4350929_0"<
while_lstm_cell_719_4350931while_lstm_cell_719_4350931_0"<
while_lstm_cell_719_4350933while_lstm_cell_719_4350933_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_719/StatefulPartitionedCall+while/lstm_cell_719/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352319
lstm_702_input#
lstm_702_4352292:	?#
lstm_702_4352294:	d?
lstm_702_4352296:	?#
lstm_703_4352299:	d?#
lstm_703_4352301:	2?
lstm_703_4352303:	?"
lstm_704_4352306:2("
lstm_704_4352308:
(
lstm_704_4352310:(#
dense_234_4352313:

dense_234_4352315:
identity??!dense_234/StatefulPartitionedCall? lstm_702/StatefulPartitionedCall? lstm_703/StatefulPartitionedCall? lstm_704/StatefulPartitionedCall?
 lstm_702/StatefulPartitionedCallStatefulPartitionedCalllstm_702_inputlstm_702_4352292lstm_702_4352294lstm_702_4352296*
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4351323?
 lstm_703/StatefulPartitionedCallStatefulPartitionedCall)lstm_702/StatefulPartitionedCall:output:0lstm_703_4352299lstm_703_4352301lstm_703_4352303*
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4351473?
 lstm_704/StatefulPartitionedCallStatefulPartitionedCall)lstm_703/StatefulPartitionedCall:output:0lstm_704_4352306lstm_704_4352308lstm_704_4352310*
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351623?
!dense_234/StatefulPartitionedCallStatefulPartitionedCall)lstm_704/StatefulPartitionedCall:output:0dense_234_4352313dense_234_4352315*
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4351641y
IdentityIdentity*dense_234/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_234/StatefulPartitionedCall!^lstm_702/StatefulPartitionedCall!^lstm_703/StatefulPartitionedCall!^lstm_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_234/StatefulPartitionedCall!dense_234/StatefulPartitionedCall2D
 lstm_702/StatefulPartitionedCall lstm_702/StatefulPartitionedCall2D
 lstm_703/StatefulPartitionedCall lstm_703/StatefulPartitionedCall2D
 lstm_704/StatefulPartitionedCall lstm_704/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_702_input
?
?
*__inference_lstm_702_layer_call_fn_4353303
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4350274|
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354854
inputs_0>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4354770*
condR
while_cond_4354769*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4354440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351623

inputs>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4351539*
condR
while_cond_4351538*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_702_while_cond_4352923.
*lstm_702_while_lstm_702_while_loop_counter4
0lstm_702_while_lstm_702_while_maximum_iterations
lstm_702_while_placeholder 
lstm_702_while_placeholder_1 
lstm_702_while_placeholder_2 
lstm_702_while_placeholder_30
,lstm_702_while_less_lstm_702_strided_slice_1G
Clstm_702_while_lstm_702_while_cond_4352923___redundant_placeholder0G
Clstm_702_while_lstm_702_while_cond_4352923___redundant_placeholder1G
Clstm_702_while_lstm_702_while_cond_4352923___redundant_placeholder2G
Clstm_702_while_lstm_702_while_cond_4352923___redundant_placeholder3
lstm_702_while_identity
?
lstm_702/while/LessLesslstm_702_while_placeholder,lstm_702_while_less_lstm_702_strided_slice_1*
T0*
_output_shapes
: ]
lstm_702/while/IdentityIdentitylstm_702/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_702_while_identity lstm_702/while/Identity:output:0*(
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
while_cond_4350745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4350745___redundant_placeholder05
1while_while_cond_4350745___redundant_placeholder15
1while_while_cond_4350745___redundant_placeholder25
1while_while_cond_4350745___redundant_placeholder3
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
/__inference_lstm_cell_718_layer_call_fn_4355274

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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350541o
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4355159

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
lstm_703_while_cond_4352635.
*lstm_703_while_lstm_703_while_loop_counter4
0lstm_703_while_lstm_703_while_maximum_iterations
lstm_703_while_placeholder 
lstm_703_while_placeholder_1 
lstm_703_while_placeholder_2 
lstm_703_while_placeholder_30
,lstm_703_while_less_lstm_703_strided_slice_1G
Clstm_703_while_lstm_703_while_cond_4352635___redundant_placeholder0G
Clstm_703_while_lstm_703_while_cond_4352635___redundant_placeholder1G
Clstm_703_while_lstm_703_while_cond_4352635___redundant_placeholder2G
Clstm_703_while_lstm_703_while_cond_4352635___redundant_placeholder3
lstm_703_while_identity
?
lstm_703/while/LessLesslstm_703_while_placeholder,lstm_703_while_less_lstm_703_strided_slice_1*
T0*
_output_shapes
: ]
lstm_703/while/IdentityIdentitylstm_703/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_703_while_identity lstm_703/while/Identity:output:0*(
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
while_cond_4354296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4354296___redundant_placeholder05
1while_while_cond_4354296___redundant_placeholder15
1while_while_cond_4354296___redundant_placeholder25
1while_while_cond_4354296___redundant_placeholder3
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
while_body_4350555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_718_4350579_0:	d?0
while_lstm_cell_718_4350581_0:	2?,
while_lstm_cell_718_4350583_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_718_4350579:	d?.
while_lstm_cell_718_4350581:	2?*
while_lstm_cell_718_4350583:	???+while/lstm_cell_718/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_718/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_718_4350579_0while_lstm_cell_718_4350581_0while_lstm_cell_718_4350583_0*
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4350541?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_718/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_718/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_718/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_718/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_718_4350579while_lstm_cell_718_4350579_0"<
while_lstm_cell_718_4350581while_lstm_cell_718_4350581_0"<
while_lstm_cell_718_4350583while_lstm_cell_718_4350583_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_718/StatefulPartitionedCall+while/lstm_cell_718/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4355140

inputs>
,lstm_cell_719_matmul_readvariableop_resource:2(@
.lstm_cell_719_matmul_1_readvariableop_resource:
(;
-lstm_cell_719_biasadd_readvariableop_resource:(
identity??$lstm_cell_719/BiasAdd/ReadVariableOp?#lstm_cell_719/MatMul/ReadVariableOp?%lstm_cell_719/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_719/MatMul/ReadVariableOpReadVariableOp,lstm_cell_719_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_719/MatMulMatMulstrided_slice_2:output:0+lstm_cell_719/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_719/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_719_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_719/MatMul_1MatMulzeros:output:0-lstm_cell_719/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_719/addAddV2lstm_cell_719/MatMul:product:0 lstm_cell_719/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_719/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_719_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_719/BiasAddBiasAddlstm_cell_719/add:z:0,lstm_cell_719/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_719/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_719/splitSplit&lstm_cell_719/split/split_dim:output:0lstm_cell_719/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_719/SigmoidSigmoidlstm_cell_719/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_1Sigmoidlstm_cell_719/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_719/mulMullstm_cell_719/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_719/ReluRelulstm_cell_719/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_1Mullstm_cell_719/Sigmoid:y:0 lstm_cell_719/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_719/add_1AddV2lstm_cell_719/mul:z:0lstm_cell_719/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_719/Sigmoid_2Sigmoidlstm_cell_719/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_719/Relu_1Relulstm_cell_719/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_719/mul_2Mullstm_cell_719/Sigmoid_2:y:0"lstm_cell_719/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_719_matmul_readvariableop_resource.lstm_cell_719_matmul_1_readvariableop_resource-lstm_cell_719_biasadd_readvariableop_resource*
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
while_body_4355056*
condR
while_cond_4355055*K
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
NoOpNoOp%^lstm_cell_719/BiasAdd/ReadVariableOp$^lstm_cell_719/MatMul/ReadVariableOp&^lstm_cell_719/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_719/BiasAdd/ReadVariableOp$lstm_cell_719/BiasAdd/ReadVariableOp2J
#lstm_cell_719/MatMul/ReadVariableOp#lstm_cell_719/MatMul/ReadVariableOp2N
%lstm_cell_719/MatMul_1/ReadVariableOp%lstm_cell_719/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354095
inputs_0?
,lstm_cell_718_matmul_readvariableop_resource:	d?A
.lstm_cell_718_matmul_1_readvariableop_resource:	2?<
-lstm_cell_718_biasadd_readvariableop_resource:	?
identity??$lstm_cell_718/BiasAdd/ReadVariableOp?#lstm_cell_718/MatMul/ReadVariableOp?%lstm_cell_718/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_718/MatMul/ReadVariableOpReadVariableOp,lstm_cell_718_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_718/MatMulMatMulstrided_slice_2:output:0+lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_718_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_718/MatMul_1MatMulzeros:output:0-lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_718/addAddV2lstm_cell_718/MatMul:product:0 lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_718_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_718/BiasAddBiasAddlstm_cell_718/add:z:0,lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_718/splitSplit&lstm_cell_718/split/split_dim:output:0lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_718/SigmoidSigmoidlstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_1Sigmoidlstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_718/mulMullstm_cell_718/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_718/ReluRelulstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_1Mullstm_cell_718/Sigmoid:y:0 lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_718/add_1AddV2lstm_cell_718/mul:z:0lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_718/Sigmoid_2Sigmoidlstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_718/Relu_1Relulstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_718/mul_2Mullstm_cell_718/Sigmoid_2:y:0"lstm_cell_718/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_718_matmul_readvariableop_resource.lstm_cell_718_matmul_1_readvariableop_resource-lstm_cell_718_biasadd_readvariableop_resource*
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
while_body_4354011*
condR
while_cond_4354010*K
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
NoOpNoOp%^lstm_cell_718/BiasAdd/ReadVariableOp$^lstm_cell_718/MatMul/ReadVariableOp&^lstm_cell_718/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_718/BiasAdd/ReadVariableOp$lstm_cell_718/BiasAdd/ReadVariableOp2J
#lstm_cell_718/MatMul/ReadVariableOp#lstm_cell_718/MatMul/ReadVariableOp2N
%lstm_cell_718/MatMul_1/ReadVariableOp%lstm_cell_718/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353622
inputs_0?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4353538*
condR
while_cond_4353537*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_717_layer_call_fn_4355193

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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350337o
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
while_cond_4353823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4353823___redundant_placeholder05
1while_while_cond_4353823___redundant_placeholder15
1while_while_cond_4353823___redundant_placeholder25
1while_while_cond_4353823___redundant_placeholder3
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4351323

inputs?
,lstm_cell_717_matmul_readvariableop_resource:	?A
.lstm_cell_717_matmul_1_readvariableop_resource:	d?<
-lstm_cell_717_biasadd_readvariableop_resource:	?
identity??$lstm_cell_717/BiasAdd/ReadVariableOp?#lstm_cell_717/MatMul/ReadVariableOp?%lstm_cell_717/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_717/MatMul/ReadVariableOpReadVariableOp,lstm_cell_717_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_717/MatMulMatMulstrided_slice_2:output:0+lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_717_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_717/MatMul_1MatMulzeros:output:0-lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_717/addAddV2lstm_cell_717/MatMul:product:0 lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_717_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_717/BiasAddBiasAddlstm_cell_717/add:z:0,lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_717/splitSplit&lstm_cell_717/split/split_dim:output:0lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_717/SigmoidSigmoidlstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_1Sigmoidlstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_717/mulMullstm_cell_717/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_717/ReluRelulstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_1Mullstm_cell_717/Sigmoid:y:0 lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_717/add_1AddV2lstm_cell_717/mul:z:0lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_717/Sigmoid_2Sigmoidlstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_717/Relu_1Relulstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_717/mul_2Mullstm_cell_717/Sigmoid_2:y:0"lstm_cell_717/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_717_matmul_readvariableop_resource.lstm_cell_717_matmul_1_readvariableop_resource-lstm_cell_717_biasadd_readvariableop_resource*
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
while_body_4351239*
condR
while_cond_4351238*K
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
NoOpNoOp%^lstm_cell_717/BiasAdd/ReadVariableOp$^lstm_cell_717/MatMul/ReadVariableOp&^lstm_cell_717/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_717/BiasAdd/ReadVariableOp$lstm_cell_717/BiasAdd/ReadVariableOp2J
#lstm_cell_717/MatMul/ReadVariableOp#lstm_cell_717/MatMul/ReadVariableOp2N
%lstm_cell_717/MatMul_1/ReadVariableOp%lstm_cell_717/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_704_layer_call_and_return_conditional_losses_4351165

inputs'
lstm_cell_719_4351083:2('
lstm_cell_719_4351085:
(#
lstm_cell_719_4351087:(
identity??%lstm_cell_719/StatefulPartitionedCall?while;
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
%lstm_cell_719/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_719_4351083lstm_cell_719_4351085lstm_cell_719_4351087*
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4351037n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_719_4351083lstm_cell_719_4351085lstm_cell_719_4351087*
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
while_body_4351096*
condR
while_cond_4351095*K
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
NoOpNoOp&^lstm_cell_719/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_719/StatefulPartitionedCall%lstm_cell_719/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4350396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_717_4350420_0:	?0
while_lstm_cell_717_4350422_0:	d?,
while_lstm_cell_717_4350424_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_717_4350420:	?.
while_lstm_cell_717_4350422:	d?*
while_lstm_cell_717_4350424:	???+while/lstm_cell_717/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_717/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_717_4350420_0while_lstm_cell_717_4350422_0while_lstm_cell_717_4350424_0*
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4350337?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_717/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_717/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_717/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_717/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_717_4350420while_lstm_cell_717_4350420_0"<
while_lstm_cell_717_4350422while_lstm_cell_717_4350422_0"<
while_lstm_cell_717_4350424while_lstm_cell_717_4350424_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_717/StatefulPartitionedCall+while/lstm_cell_717/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_234_lstm_702_while_body_4349756L
Hsequential_234_lstm_702_while_sequential_234_lstm_702_while_loop_counterR
Nsequential_234_lstm_702_while_sequential_234_lstm_702_while_maximum_iterations-
)sequential_234_lstm_702_while_placeholder/
+sequential_234_lstm_702_while_placeholder_1/
+sequential_234_lstm_702_while_placeholder_2/
+sequential_234_lstm_702_while_placeholder_3K
Gsequential_234_lstm_702_while_sequential_234_lstm_702_strided_slice_1_0?
?sequential_234_lstm_702_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_702_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_234_lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0:	?a
Nsequential_234_lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0:	d?\
Msequential_234_lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0:	?*
&sequential_234_lstm_702_while_identity,
(sequential_234_lstm_702_while_identity_1,
(sequential_234_lstm_702_while_identity_2,
(sequential_234_lstm_702_while_identity_3,
(sequential_234_lstm_702_while_identity_4,
(sequential_234_lstm_702_while_identity_5I
Esequential_234_lstm_702_while_sequential_234_lstm_702_strided_slice_1?
?sequential_234_lstm_702_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_702_tensorarrayunstack_tensorlistfromtensor]
Jsequential_234_lstm_702_while_lstm_cell_717_matmul_readvariableop_resource:	?_
Lsequential_234_lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource:	d?Z
Ksequential_234_lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource:	???Bsequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp?Asequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp?Csequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp?
Osequential_234/lstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_234/lstm_702/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_234_lstm_702_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_702_tensorarrayunstack_tensorlistfromtensor_0)sequential_234_lstm_702_while_placeholderXsequential_234/lstm_702/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOpReadVariableOpLsequential_234_lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_234/lstm_702/while/lstm_cell_717/MatMulMatMulHsequential_234/lstm_702/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOpReadVariableOpNsequential_234_lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_234/lstm_702/while/lstm_cell_717/MatMul_1MatMul+sequential_234_lstm_702_while_placeholder_2Ksequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_234/lstm_702/while/lstm_cell_717/addAddV2<sequential_234/lstm_702/while/lstm_cell_717/MatMul:product:0>sequential_234/lstm_702/while/lstm_cell_717/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOpReadVariableOpMsequential_234_lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_234/lstm_702/while/lstm_cell_717/BiasAddBiasAdd3sequential_234/lstm_702/while/lstm_cell_717/add:z:0Jsequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_234/lstm_702/while/lstm_cell_717/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_234/lstm_702/while/lstm_cell_717/splitSplitDsequential_234/lstm_702/while/lstm_cell_717/split/split_dim:output:0<sequential_234/lstm_702/while/lstm_cell_717/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_234/lstm_702/while/lstm_cell_717/SigmoidSigmoid:sequential_234/lstm_702/while/lstm_cell_717/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_234/lstm_702/while/lstm_cell_717/Sigmoid_1Sigmoid:sequential_234/lstm_702/while/lstm_cell_717/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_234/lstm_702/while/lstm_cell_717/mulMul9sequential_234/lstm_702/while/lstm_cell_717/Sigmoid_1:y:0+sequential_234_lstm_702_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_234/lstm_702/while/lstm_cell_717/ReluRelu:sequential_234/lstm_702/while/lstm_cell_717/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_234/lstm_702/while/lstm_cell_717/mul_1Mul7sequential_234/lstm_702/while/lstm_cell_717/Sigmoid:y:0>sequential_234/lstm_702/while/lstm_cell_717/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_234/lstm_702/while/lstm_cell_717/add_1AddV23sequential_234/lstm_702/while/lstm_cell_717/mul:z:05sequential_234/lstm_702/while/lstm_cell_717/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_234/lstm_702/while/lstm_cell_717/Sigmoid_2Sigmoid:sequential_234/lstm_702/while/lstm_cell_717/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_234/lstm_702/while/lstm_cell_717/Relu_1Relu5sequential_234/lstm_702/while/lstm_cell_717/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_234/lstm_702/while/lstm_cell_717/mul_2Mul9sequential_234/lstm_702/while/lstm_cell_717/Sigmoid_2:y:0@sequential_234/lstm_702/while/lstm_cell_717/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_234/lstm_702/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_234_lstm_702_while_placeholder_1)sequential_234_lstm_702_while_placeholder5sequential_234/lstm_702/while/lstm_cell_717/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_234/lstm_702/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_234/lstm_702/while/addAddV2)sequential_234_lstm_702_while_placeholder,sequential_234/lstm_702/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_234/lstm_702/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_234/lstm_702/while/add_1AddV2Hsequential_234_lstm_702_while_sequential_234_lstm_702_while_loop_counter.sequential_234/lstm_702/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_234/lstm_702/while/IdentityIdentity'sequential_234/lstm_702/while/add_1:z:0#^sequential_234/lstm_702/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_702/while/Identity_1IdentityNsequential_234_lstm_702_while_sequential_234_lstm_702_while_maximum_iterations#^sequential_234/lstm_702/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_702/while/Identity_2Identity%sequential_234/lstm_702/while/add:z:0#^sequential_234/lstm_702/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_702/while/Identity_3IdentityRsequential_234/lstm_702/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_234/lstm_702/while/NoOp*
T0*
_output_shapes
: ?
(sequential_234/lstm_702/while/Identity_4Identity5sequential_234/lstm_702/while/lstm_cell_717/mul_2:z:0#^sequential_234/lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_234/lstm_702/while/Identity_5Identity5sequential_234/lstm_702/while/lstm_cell_717/add_1:z:0#^sequential_234/lstm_702/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_234/lstm_702/while/NoOpNoOpC^sequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOpB^sequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOpD^sequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_234_lstm_702_while_identity/sequential_234/lstm_702/while/Identity:output:0"]
(sequential_234_lstm_702_while_identity_11sequential_234/lstm_702/while/Identity_1:output:0"]
(sequential_234_lstm_702_while_identity_21sequential_234/lstm_702/while/Identity_2:output:0"]
(sequential_234_lstm_702_while_identity_31sequential_234/lstm_702/while/Identity_3:output:0"]
(sequential_234_lstm_702_while_identity_41sequential_234/lstm_702/while/Identity_4:output:0"]
(sequential_234_lstm_702_while_identity_51sequential_234/lstm_702/while/Identity_5:output:0"?
Ksequential_234_lstm_702_while_lstm_cell_717_biasadd_readvariableop_resourceMsequential_234_lstm_702_while_lstm_cell_717_biasadd_readvariableop_resource_0"?
Lsequential_234_lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resourceNsequential_234_lstm_702_while_lstm_cell_717_matmul_1_readvariableop_resource_0"?
Jsequential_234_lstm_702_while_lstm_cell_717_matmul_readvariableop_resourceLsequential_234_lstm_702_while_lstm_cell_717_matmul_readvariableop_resource_0"?
Esequential_234_lstm_702_while_sequential_234_lstm_702_strided_slice_1Gsequential_234_lstm_702_while_sequential_234_lstm_702_strided_slice_1_0"?
?sequential_234_lstm_702_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_702_tensorarrayunstack_tensorlistfromtensor?sequential_234_lstm_702_while_tensorarrayv2read_tensorlistgetitem_sequential_234_lstm_702_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOpBsequential_234/lstm_702/while/lstm_cell_717/BiasAdd/ReadVariableOp2?
Asequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOpAsequential_234/lstm_702/while/lstm_cell_717/MatMul/ReadVariableOp2?
Csequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOpCsequential_234/lstm_702/while/lstm_cell_717/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4354011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_718_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_718_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_718_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_718_matmul_readvariableop_resource:	d?G
4while_lstm_cell_718_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_718_biasadd_readvariableop_resource:	???*while/lstm_cell_718/BiasAdd/ReadVariableOp?)while/lstm_cell_718/MatMul/ReadVariableOp?+while/lstm_cell_718/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_718/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_718_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_718/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_718/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_718/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_718_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_718/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_718/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_718/addAddV2$while/lstm_cell_718/MatMul:product:0&while/lstm_cell_718/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_718/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_718_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_718/BiasAddBiasAddwhile/lstm_cell_718/add:z:02while/lstm_cell_718/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_718/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_718/splitSplit,while/lstm_cell_718/split/split_dim:output:0$while/lstm_cell_718/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_718/SigmoidSigmoid"while/lstm_cell_718/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_1Sigmoid"while/lstm_cell_718/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mulMul!while/lstm_cell_718/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_718/ReluRelu"while/lstm_cell_718/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_1Mulwhile/lstm_cell_718/Sigmoid:y:0&while/lstm_cell_718/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/add_1AddV2while/lstm_cell_718/mul:z:0while/lstm_cell_718/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_718/Sigmoid_2Sigmoid"while/lstm_cell_718/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_718/Relu_1Reluwhile/lstm_cell_718/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_718/mul_2Mul!while/lstm_cell_718/Sigmoid_2:y:0(while/lstm_cell_718/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_718/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_718/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_718/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_718/BiasAdd/ReadVariableOp*^while/lstm_cell_718/MatMul/ReadVariableOp,^while/lstm_cell_718/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_718_biasadd_readvariableop_resource5while_lstm_cell_718_biasadd_readvariableop_resource_0"n
4while_lstm_cell_718_matmul_1_readvariableop_resource6while_lstm_cell_718_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_718_matmul_readvariableop_resource4while_lstm_cell_718_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_718/BiasAdd/ReadVariableOp*while/lstm_cell_718/BiasAdd/ReadVariableOp2V
)while/lstm_cell_718/MatMul/ReadVariableOp)while/lstm_cell_718/MatMul/ReadVariableOp2Z
+while/lstm_cell_718/MatMul_1/ReadVariableOp+while/lstm_cell_718/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_702_layer_call_fn_4353314
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4350465|
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

?
0__inference_sequential_234_layer_call_fn_4351673
lstm_702_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_702_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4351648o
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
_user_specified_namelstm_702_input
?

?
lstm_703_while_cond_4353062.
*lstm_703_while_lstm_703_while_loop_counter4
0lstm_703_while_lstm_703_while_maximum_iterations
lstm_703_while_placeholder 
lstm_703_while_placeholder_1 
lstm_703_while_placeholder_2 
lstm_703_while_placeholder_30
,lstm_703_while_less_lstm_703_strided_slice_1G
Clstm_703_while_lstm_703_while_cond_4353062___redundant_placeholder0G
Clstm_703_while_lstm_703_while_cond_4353062___redundant_placeholder1G
Clstm_703_while_lstm_703_while_cond_4353062___redundant_placeholder2G
Clstm_703_while_lstm_703_while_cond_4353062___redundant_placeholder3
lstm_703_while_identity
?
lstm_703/while/LessLesslstm_703_while_placeholder,lstm_703_while_less_lstm_703_strided_slice_1*
T0*
_output_shapes
: ]
lstm_703/while/IdentityIdentitylstm_703/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_703_while_identity lstm_703/while/Identity:output:0*(
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4350891

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
while_cond_4351238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4351238___redundant_placeholder05
1while_while_cond_4351238___redundant_placeholder15
1while_while_cond_4351238___redundant_placeholder25
1while_while_cond_4351238___redundant_placeholder3
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
*__inference_lstm_703_layer_call_fn_4353941

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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4351473s
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
lstm_702_input;
 serving_default_lstm_702_input:0?????????=
	dense_2340
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
2dense_234/kernel
:2dense_234/bias
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
0:.	?2lstm_702/lstm_cell_702/kernel
::8	d?2'lstm_702/lstm_cell_702/recurrent_kernel
*:(?2lstm_702/lstm_cell_702/bias
0:.	d?2lstm_703/lstm_cell_703/kernel
::8	2?2'lstm_703/lstm_cell_703/recurrent_kernel
*:(?2lstm_703/lstm_cell_703/bias
/:-2(2lstm_704/lstm_cell_704/kernel
9:7
(2'lstm_704/lstm_cell_704/recurrent_kernel
):'(2lstm_704/lstm_cell_704/bias
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
2Adam/dense_234/kernel/m
!:2Adam/dense_234/bias/m
5:3	?2$Adam/lstm_702/lstm_cell_702/kernel/m
?:=	d?2.Adam/lstm_702/lstm_cell_702/recurrent_kernel/m
/:-?2"Adam/lstm_702/lstm_cell_702/bias/m
5:3	d?2$Adam/lstm_703/lstm_cell_703/kernel/m
?:=	2?2.Adam/lstm_703/lstm_cell_703/recurrent_kernel/m
/:-?2"Adam/lstm_703/lstm_cell_703/bias/m
4:22(2$Adam/lstm_704/lstm_cell_704/kernel/m
>:<
(2.Adam/lstm_704/lstm_cell_704/recurrent_kernel/m
.:,(2"Adam/lstm_704/lstm_cell_704/bias/m
':%
2Adam/dense_234/kernel/v
!:2Adam/dense_234/bias/v
5:3	?2$Adam/lstm_702/lstm_cell_702/kernel/v
?:=	d?2.Adam/lstm_702/lstm_cell_702/recurrent_kernel/v
/:-?2"Adam/lstm_702/lstm_cell_702/bias/v
5:3	d?2$Adam/lstm_703/lstm_cell_703/kernel/v
?:=	2?2.Adam/lstm_703/lstm_cell_703/recurrent_kernel/v
/:-?2"Adam/lstm_703/lstm_cell_703/bias/v
4:22(2$Adam/lstm_704/lstm_cell_704/kernel/v
>:<
(2.Adam/lstm_704/lstm_cell_704/recurrent_kernel/v
.:,(2"Adam/lstm_704/lstm_cell_704/bias/v
?2?
0__inference_sequential_234_layer_call_fn_4351673
0__inference_sequential_234_layer_call_fn_4352411
0__inference_sequential_234_layer_call_fn_4352438
0__inference_sequential_234_layer_call_fn_4352289?
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352865
K__inference_sequential_234_layer_call_and_return_conditional_losses_4353292
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352319
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352349?
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
"__inference__wrapped_model_4350124lstm_702_input"?
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
*__inference_lstm_702_layer_call_fn_4353303
*__inference_lstm_702_layer_call_fn_4353314
*__inference_lstm_702_layer_call_fn_4353325
*__inference_lstm_702_layer_call_fn_4353336?
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353479
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353622
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353765
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353908?
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
*__inference_lstm_703_layer_call_fn_4353919
*__inference_lstm_703_layer_call_fn_4353930
*__inference_lstm_703_layer_call_fn_4353941
*__inference_lstm_703_layer_call_fn_4353952?
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354095
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354238
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354381
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354524?
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
*__inference_lstm_704_layer_call_fn_4354535
*__inference_lstm_704_layer_call_fn_4354546
*__inference_lstm_704_layer_call_fn_4354557
*__inference_lstm_704_layer_call_fn_4354568?
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354711
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354854
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354997
E__inference_lstm_704_layer_call_and_return_conditional_losses_4355140?
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
+__inference_dense_234_layer_call_fn_4355149?
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
F__inference_dense_234_layer_call_and_return_conditional_losses_4355159?
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
%__inference_signature_wrapper_4352384lstm_702_input"?
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
/__inference_lstm_cell_717_layer_call_fn_4355176
/__inference_lstm_cell_717_layer_call_fn_4355193?
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355225
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355257?
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
/__inference_lstm_cell_718_layer_call_fn_4355274
/__inference_lstm_cell_718_layer_call_fn_4355291?
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355323
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355355?
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
/__inference_lstm_cell_719_layer_call_fn_4355372
/__inference_lstm_cell_719_layer_call_fn_4355389?
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355421
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355453?
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
"__inference__wrapped_model_4350124?-./012345!";?8
1?.
,?)
lstm_702_input?????????
? "5?2
0
	dense_234#? 
	dense_234??????????
F__inference_dense_234_layer_call_and_return_conditional_losses_4355159\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_234_layer_call_fn_4355149O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353479?-./O?L
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353622?-./O?L
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353765q-./??<
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
E__inference_lstm_702_layer_call_and_return_conditional_losses_4353908q-./??<
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
*__inference_lstm_702_layer_call_fn_4353303}-./O?L
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
*__inference_lstm_702_layer_call_fn_4353314}-./O?L
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
*__inference_lstm_702_layer_call_fn_4353325d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_702_layer_call_fn_4353336d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354095?012O?L
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354238?012O?L
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354381q012??<
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
E__inference_lstm_703_layer_call_and_return_conditional_losses_4354524q012??<
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
*__inference_lstm_703_layer_call_fn_4353919}012O?L
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
*__inference_lstm_703_layer_call_fn_4353930}012O?L
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
*__inference_lstm_703_layer_call_fn_4353941d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_703_layer_call_fn_4353952d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354711}345O?L
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354854}345O?L
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4354997m345??<
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
E__inference_lstm_704_layer_call_and_return_conditional_losses_4355140m345??<
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
*__inference_lstm_704_layer_call_fn_4354535p345O?L
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
*__inference_lstm_704_layer_call_fn_4354546p345O?L
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
*__inference_lstm_704_layer_call_fn_4354557`345??<
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
*__inference_lstm_704_layer_call_fn_4354568`345??<
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355225?-./??}
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
J__inference_lstm_cell_717_layer_call_and_return_conditional_losses_4355257?-./??}
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
/__inference_lstm_cell_717_layer_call_fn_4355176?-./??}
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
/__inference_lstm_cell_717_layer_call_fn_4355193?-./??}
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355323?012??}
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
J__inference_lstm_cell_718_layer_call_and_return_conditional_losses_4355355?012??}
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
/__inference_lstm_cell_718_layer_call_fn_4355274?012??}
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
/__inference_lstm_cell_718_layer_call_fn_4355291?012??}
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355421?345??}
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
J__inference_lstm_cell_719_layer_call_and_return_conditional_losses_4355453?345??}
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
/__inference_lstm_cell_719_layer_call_fn_4355372?345??}
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
/__inference_lstm_cell_719_layer_call_fn_4355389?345??}
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352319y-./012345!"C?@
9?6
,?)
lstm_702_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352349y-./012345!"C?@
9?6
,?)
lstm_702_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_234_layer_call_and_return_conditional_losses_4352865q-./012345!";?8
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
K__inference_sequential_234_layer_call_and_return_conditional_losses_4353292q-./012345!";?8
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
0__inference_sequential_234_layer_call_fn_4351673l-./012345!"C?@
9?6
,?)
lstm_702_input?????????
p 

 
? "???????????
0__inference_sequential_234_layer_call_fn_4352289l-./012345!"C?@
9?6
,?)
lstm_702_input?????????
p

 
? "???????????
0__inference_sequential_234_layer_call_fn_4352411d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_234_layer_call_fn_4352438d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4352384?-./012345!"M?J
? 
C?@
>
lstm_702_input,?)
lstm_702_input?????????"5?2
0
	dense_234#? 
	dense_234?????????