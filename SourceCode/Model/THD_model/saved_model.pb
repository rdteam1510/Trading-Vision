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
dense_181/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_181/kernel
u
$dense_181/kernel/Read/ReadVariableOpReadVariableOpdense_181/kernel*
_output_shapes

:
*
dtype0
t
dense_181/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_181/bias
m
"dense_181/bias/Read/ReadVariableOpReadVariableOpdense_181/bias*
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
lstm_543/lstm_cell_543/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_543/lstm_cell_543/kernel
?
1lstm_543/lstm_cell_543/kernel/Read/ReadVariableOpReadVariableOplstm_543/lstm_cell_543/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_543/lstm_cell_543/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_543/lstm_cell_543/recurrent_kernel
?
;lstm_543/lstm_cell_543/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_543/lstm_cell_543/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_543/lstm_cell_543/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_543/lstm_cell_543/bias
?
/lstm_543/lstm_cell_543/bias/Read/ReadVariableOpReadVariableOplstm_543/lstm_cell_543/bias*
_output_shapes	
:?*
dtype0
?
lstm_544/lstm_cell_544/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_544/lstm_cell_544/kernel
?
1lstm_544/lstm_cell_544/kernel/Read/ReadVariableOpReadVariableOplstm_544/lstm_cell_544/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_544/lstm_cell_544/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_544/lstm_cell_544/recurrent_kernel
?
;lstm_544/lstm_cell_544/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_544/lstm_cell_544/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_544/lstm_cell_544/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_544/lstm_cell_544/bias
?
/lstm_544/lstm_cell_544/bias/Read/ReadVariableOpReadVariableOplstm_544/lstm_cell_544/bias*
_output_shapes	
:?*
dtype0
?
lstm_545/lstm_cell_545/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_545/lstm_cell_545/kernel
?
1lstm_545/lstm_cell_545/kernel/Read/ReadVariableOpReadVariableOplstm_545/lstm_cell_545/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_545/lstm_cell_545/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_545/lstm_cell_545/recurrent_kernel
?
;lstm_545/lstm_cell_545/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_545/lstm_cell_545/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_545/lstm_cell_545/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_545/lstm_cell_545/bias
?
/lstm_545/lstm_cell_545/bias/Read/ReadVariableOpReadVariableOplstm_545/lstm_cell_545/bias*
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
Adam/dense_181/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_181/kernel/m
?
+Adam/dense_181/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_181/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_181/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_181/bias/m
{
)Adam/dense_181/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_181/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_543/lstm_cell_543/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_543/lstm_cell_543/kernel/m
?
8Adam/lstm_543/lstm_cell_543/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_543/lstm_cell_543/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_543/lstm_cell_543/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_543/lstm_cell_543/recurrent_kernel/m
?
BAdam/lstm_543/lstm_cell_543/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_543/lstm_cell_543/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_543/lstm_cell_543/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_543/lstm_cell_543/bias/m
?
6Adam/lstm_543/lstm_cell_543/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_543/lstm_cell_543/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_544/lstm_cell_544/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_544/lstm_cell_544/kernel/m
?
8Adam/lstm_544/lstm_cell_544/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_544/lstm_cell_544/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_544/lstm_cell_544/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_544/lstm_cell_544/recurrent_kernel/m
?
BAdam/lstm_544/lstm_cell_544/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_544/lstm_cell_544/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_544/lstm_cell_544/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_544/lstm_cell_544/bias/m
?
6Adam/lstm_544/lstm_cell_544/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_544/lstm_cell_544/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_545/lstm_cell_545/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_545/lstm_cell_545/kernel/m
?
8Adam/lstm_545/lstm_cell_545/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_545/lstm_cell_545/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_545/lstm_cell_545/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_545/lstm_cell_545/recurrent_kernel/m
?
BAdam/lstm_545/lstm_cell_545/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_545/lstm_cell_545/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_545/lstm_cell_545/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_545/lstm_cell_545/bias/m
?
6Adam/lstm_545/lstm_cell_545/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_545/lstm_cell_545/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_181/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_181/kernel/v
?
+Adam/dense_181/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_181/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_181/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_181/bias/v
{
)Adam/dense_181/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_181/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_543/lstm_cell_543/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_543/lstm_cell_543/kernel/v
?
8Adam/lstm_543/lstm_cell_543/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_543/lstm_cell_543/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_543/lstm_cell_543/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_543/lstm_cell_543/recurrent_kernel/v
?
BAdam/lstm_543/lstm_cell_543/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_543/lstm_cell_543/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_543/lstm_cell_543/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_543/lstm_cell_543/bias/v
?
6Adam/lstm_543/lstm_cell_543/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_543/lstm_cell_543/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_544/lstm_cell_544/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_544/lstm_cell_544/kernel/v
?
8Adam/lstm_544/lstm_cell_544/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_544/lstm_cell_544/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_544/lstm_cell_544/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_544/lstm_cell_544/recurrent_kernel/v
?
BAdam/lstm_544/lstm_cell_544/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_544/lstm_cell_544/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_544/lstm_cell_544/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_544/lstm_cell_544/bias/v
?
6Adam/lstm_544/lstm_cell_544/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_544/lstm_cell_544/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_545/lstm_cell_545/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_545/lstm_cell_545/kernel/v
?
8Adam/lstm_545/lstm_cell_545/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_545/lstm_cell_545/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_545/lstm_cell_545/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_545/lstm_cell_545/recurrent_kernel/v
?
BAdam/lstm_545/lstm_cell_545/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_545/lstm_cell_545/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_545/lstm_cell_545/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_545/lstm_cell_545/bias/v
?
6Adam/lstm_545/lstm_cell_545/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_545/lstm_cell_545/bias/v*
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
VARIABLE_VALUEdense_181/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_181/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_543/lstm_cell_543/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_543/lstm_cell_543/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_543/lstm_cell_543/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_544/lstm_cell_544/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_544/lstm_cell_544/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_544/lstm_cell_544/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_545/lstm_cell_545/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_545/lstm_cell_545/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_545/lstm_cell_545/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_181/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_181/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_543/lstm_cell_543/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_543/lstm_cell_543/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_543/lstm_cell_543/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_544/lstm_cell_544/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_544/lstm_cell_544/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_544/lstm_cell_544/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_545/lstm_cell_545/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_545/lstm_cell_545/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_545/lstm_cell_545/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_181/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_181/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_543/lstm_cell_543/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_543/lstm_cell_543/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_543/lstm_cell_543/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_544/lstm_cell_544/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_544/lstm_cell_544/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_544/lstm_cell_544/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_545/lstm_cell_545/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_545/lstm_cell_545/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_545/lstm_cell_545/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_543_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_543_inputlstm_543/lstm_cell_543/kernel'lstm_543/lstm_cell_543/recurrent_kernellstm_543/lstm_cell_543/biaslstm_544/lstm_cell_544/kernel'lstm_544/lstm_cell_544/recurrent_kernellstm_544/lstm_cell_544/biaslstm_545/lstm_cell_545/kernel'lstm_545/lstm_cell_545/recurrent_kernellstm_545/lstm_cell_545/biasdense_181/kerneldense_181/bias*
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
$__inference_signature_wrapper_976527
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_181/kernel/Read/ReadVariableOp"dense_181/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_543/lstm_cell_543/kernel/Read/ReadVariableOp;lstm_543/lstm_cell_543/recurrent_kernel/Read/ReadVariableOp/lstm_543/lstm_cell_543/bias/Read/ReadVariableOp1lstm_544/lstm_cell_544/kernel/Read/ReadVariableOp;lstm_544/lstm_cell_544/recurrent_kernel/Read/ReadVariableOp/lstm_544/lstm_cell_544/bias/Read/ReadVariableOp1lstm_545/lstm_cell_545/kernel/Read/ReadVariableOp;lstm_545/lstm_cell_545/recurrent_kernel/Read/ReadVariableOp/lstm_545/lstm_cell_545/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_181/kernel/m/Read/ReadVariableOp)Adam/dense_181/bias/m/Read/ReadVariableOp8Adam/lstm_543/lstm_cell_543/kernel/m/Read/ReadVariableOpBAdam/lstm_543/lstm_cell_543/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_543/lstm_cell_543/bias/m/Read/ReadVariableOp8Adam/lstm_544/lstm_cell_544/kernel/m/Read/ReadVariableOpBAdam/lstm_544/lstm_cell_544/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_544/lstm_cell_544/bias/m/Read/ReadVariableOp8Adam/lstm_545/lstm_cell_545/kernel/m/Read/ReadVariableOpBAdam/lstm_545/lstm_cell_545/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_545/lstm_cell_545/bias/m/Read/ReadVariableOp+Adam/dense_181/kernel/v/Read/ReadVariableOp)Adam/dense_181/bias/v/Read/ReadVariableOp8Adam/lstm_543/lstm_cell_543/kernel/v/Read/ReadVariableOpBAdam/lstm_543/lstm_cell_543/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_543/lstm_cell_543/bias/v/Read/ReadVariableOp8Adam/lstm_544/lstm_cell_544/kernel/v/Read/ReadVariableOpBAdam/lstm_544/lstm_cell_544/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_544/lstm_cell_544/bias/v/Read/ReadVariableOp8Adam/lstm_545/lstm_cell_545/kernel/v/Read/ReadVariableOpBAdam/lstm_545/lstm_cell_545/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_545/lstm_cell_545/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_979739
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_181/kerneldense_181/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_543/lstm_cell_543/kernel'lstm_543/lstm_cell_543/recurrent_kernellstm_543/lstm_cell_543/biaslstm_544/lstm_cell_544/kernel'lstm_544/lstm_cell_544/recurrent_kernellstm_544/lstm_cell_544/biaslstm_545/lstm_cell_545/kernel'lstm_545/lstm_cell_545/recurrent_kernellstm_545/lstm_cell_545/biastotalcountAdam/dense_181/kernel/mAdam/dense_181/bias/m$Adam/lstm_543/lstm_cell_543/kernel/m.Adam/lstm_543/lstm_cell_543/recurrent_kernel/m"Adam/lstm_543/lstm_cell_543/bias/m$Adam/lstm_544/lstm_cell_544/kernel/m.Adam/lstm_544/lstm_cell_544/recurrent_kernel/m"Adam/lstm_544/lstm_cell_544/bias/m$Adam/lstm_545/lstm_cell_545/kernel/m.Adam/lstm_545/lstm_cell_545/recurrent_kernel/m"Adam/lstm_545/lstm_cell_545/bias/mAdam/dense_181/kernel/vAdam/dense_181/bias/v$Adam/lstm_543/lstm_cell_543/kernel/v.Adam/lstm_543/lstm_cell_543/recurrent_kernel/v"Adam/lstm_543/lstm_cell_543/bias/v$Adam/lstm_544/lstm_cell_544/kernel/v.Adam/lstm_544/lstm_cell_544/recurrent_kernel/v"Adam/lstm_544/lstm_cell_544/bias/v$Adam/lstm_545/lstm_cell_545/kernel/v.Adam/lstm_545/lstm_cell_545/recurrent_kernel/v"Adam/lstm_545/lstm_cell_545/bias/v*4
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
"__inference__traced_restore_979869??+
?8
?
while_body_975382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__traced_restore_979869
file_prefix3
!assignvariableop_dense_181_kernel:
/
!assignvariableop_1_dense_181_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_543_lstm_cell_543_kernel:	?M
:assignvariableop_8_lstm_543_lstm_cell_543_recurrent_kernel:	d?=
.assignvariableop_9_lstm_543_lstm_cell_543_bias:	?D
1assignvariableop_10_lstm_544_lstm_cell_544_kernel:	d?N
;assignvariableop_11_lstm_544_lstm_cell_544_recurrent_kernel:	2?>
/assignvariableop_12_lstm_544_lstm_cell_544_bias:	?C
1assignvariableop_13_lstm_545_lstm_cell_545_kernel:2(M
;assignvariableop_14_lstm_545_lstm_cell_545_recurrent_kernel:
(=
/assignvariableop_15_lstm_545_lstm_cell_545_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_181_kernel_m:
7
)assignvariableop_19_adam_dense_181_bias_m:K
8assignvariableop_20_adam_lstm_543_lstm_cell_543_kernel_m:	?U
Bassignvariableop_21_adam_lstm_543_lstm_cell_543_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_543_lstm_cell_543_bias_m:	?K
8assignvariableop_23_adam_lstm_544_lstm_cell_544_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_544_lstm_cell_544_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_544_lstm_cell_544_bias_m:	?J
8assignvariableop_26_adam_lstm_545_lstm_cell_545_kernel_m:2(T
Bassignvariableop_27_adam_lstm_545_lstm_cell_545_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_545_lstm_cell_545_bias_m:(=
+assignvariableop_29_adam_dense_181_kernel_v:
7
)assignvariableop_30_adam_dense_181_bias_v:K
8assignvariableop_31_adam_lstm_543_lstm_cell_543_kernel_v:	?U
Bassignvariableop_32_adam_lstm_543_lstm_cell_543_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_543_lstm_cell_543_bias_v:	?K
8assignvariableop_34_adam_lstm_544_lstm_cell_544_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_544_lstm_cell_544_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_544_lstm_cell_544_bias_v:	?J
8assignvariableop_37_adam_lstm_545_lstm_cell_545_kernel_v:2(T
Bassignvariableop_38_adam_lstm_545_lstm_cell_545_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_545_lstm_cell_545_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_181_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_181_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_543_lstm_cell_543_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_543_lstm_cell_543_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_543_lstm_cell_543_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_544_lstm_cell_544_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_544_lstm_cell_544_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_544_lstm_cell_544_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_545_lstm_cell_545_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_545_lstm_cell_545_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_545_lstm_cell_545_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_181_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_181_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_543_lstm_cell_543_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_543_lstm_cell_543_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_543_lstm_cell_543_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_544_lstm_cell_544_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_544_lstm_cell_544_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_544_lstm_cell_544_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_545_lstm_cell_545_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_545_lstm_cell_545_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_545_lstm_cell_545_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_181_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_181_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_543_lstm_cell_543_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_543_lstm_cell_543_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_543_lstm_cell_543_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_544_lstm_cell_544_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_544_lstm_cell_544_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_544_lstm_cell_544_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_545_lstm_cell_545_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_545_lstm_cell_545_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_545_lstm_cell_545_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
.__inference_lstm_cell_161_layer_call_fn_979515

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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975034o
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
?J
?
D__inference_lstm_545_layer_call_and_return_conditional_losses_975766

inputs>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_975682*
condR
while_cond_975681*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?"
?
while_body_974698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_160_974722_0:	d?/
while_lstm_cell_160_974724_0:	2?+
while_lstm_cell_160_974726_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_160_974722:	d?-
while_lstm_cell_160_974724:	2?)
while_lstm_cell_160_974726:	???+while/lstm_cell_160/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_160/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_160_974722_0while_lstm_cell_160_974724_0while_lstm_cell_160_974726_0*
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974684?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_160/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_160/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_160/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_160/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_160_974722while_lstm_cell_160_974722_0":
while_lstm_cell_160_974724while_lstm_cell_160_974724_0":
while_lstm_cell_160_974726while_lstm_cell_160_974726_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_160/StatefulPartitionedCall+while/lstm_cell_160/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_544_while_body_977206.
*lstm_544_while_lstm_544_while_loop_counter4
0lstm_544_while_lstm_544_while_maximum_iterations
lstm_544_while_placeholder 
lstm_544_while_placeholder_1 
lstm_544_while_placeholder_2 
lstm_544_while_placeholder_3-
)lstm_544_while_lstm_544_strided_slice_1_0i
elstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0:	d?R
?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?M
>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
lstm_544_while_identity
lstm_544_while_identity_1
lstm_544_while_identity_2
lstm_544_while_identity_3
lstm_544_while_identity_4
lstm_544_while_identity_5+
'lstm_544_while_lstm_544_strided_slice_1g
clstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensorN
;lstm_544_while_lstm_cell_160_matmul_readvariableop_resource:	d?P
=lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource:	2?K
<lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource:	???3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp?2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp?4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp?
@lstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_544/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0lstm_544_while_placeholderIlstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_544/while/lstm_cell_160/MatMulMatMul9lstm_544/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_544/while/lstm_cell_160/MatMul_1MatMullstm_544_while_placeholder_2<lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_544/while/lstm_cell_160/addAddV2-lstm_544/while/lstm_cell_160/MatMul:product:0/lstm_544/while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_544/while/lstm_cell_160/BiasAddBiasAdd$lstm_544/while/lstm_cell_160/add:z:0;lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_544/while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_544/while/lstm_cell_160/splitSplit5lstm_544/while/lstm_cell_160/split/split_dim:output:0-lstm_544/while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_544/while/lstm_cell_160/SigmoidSigmoid+lstm_544/while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_544/while/lstm_cell_160/Sigmoid_1Sigmoid+lstm_544/while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_544/while/lstm_cell_160/mulMul*lstm_544/while/lstm_cell_160/Sigmoid_1:y:0lstm_544_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_544/while/lstm_cell_160/ReluRelu+lstm_544/while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/mul_1Mul(lstm_544/while/lstm_cell_160/Sigmoid:y:0/lstm_544/while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/add_1AddV2$lstm_544/while/lstm_cell_160/mul:z:0&lstm_544/while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_544/while/lstm_cell_160/Sigmoid_2Sigmoid+lstm_544/while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_544/while/lstm_cell_160/Relu_1Relu&lstm_544/while/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/mul_2Mul*lstm_544/while/lstm_cell_160/Sigmoid_2:y:01lstm_544/while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_544/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_544_while_placeholder_1lstm_544_while_placeholder&lstm_544/while/lstm_cell_160/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_544/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_544/while/addAddV2lstm_544_while_placeholderlstm_544/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_544/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_544/while/add_1AddV2*lstm_544_while_lstm_544_while_loop_counterlstm_544/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_544/while/IdentityIdentitylstm_544/while/add_1:z:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_1Identity0lstm_544_while_lstm_544_while_maximum_iterations^lstm_544/while/NoOp*
T0*
_output_shapes
: t
lstm_544/while/Identity_2Identitylstm_544/while/add:z:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_3IdentityClstm_544/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_4Identity&lstm_544/while/lstm_cell_160/mul_2:z:0^lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_544/while/Identity_5Identity&lstm_544/while/lstm_cell_160/add_1:z:0^lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_544/while/NoOpNoOp4^lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp3^lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp5^lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_544_while_identity lstm_544/while/Identity:output:0"?
lstm_544_while_identity_1"lstm_544/while/Identity_1:output:0"?
lstm_544_while_identity_2"lstm_544/while/Identity_2:output:0"?
lstm_544_while_identity_3"lstm_544/while/Identity_3:output:0"?
lstm_544_while_identity_4"lstm_544/while/Identity_4:output:0"?
lstm_544_while_identity_5"lstm_544/while/Identity_5:output:0"T
'lstm_544_while_lstm_544_strided_slice_1)lstm_544_while_lstm_544_strided_slice_1_0"~
<lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0"?
=lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0"|
;lstm_544_while_lstm_cell_160_matmul_readvariableop_resource=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0"?
clstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensorelstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp2h
2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp2l
4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_978051

inputs?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_977967*
condR
while_cond_977966*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979498

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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974480

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

?
/__inference_sequential_181_layer_call_fn_976581

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
J__inference_sequential_181_layer_call_and_return_conditional_losses_976380o
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
lstm_544_while_cond_977205.
*lstm_544_while_lstm_544_while_loop_counter4
0lstm_544_while_lstm_544_while_maximum_iterations
lstm_544_while_placeholder 
lstm_544_while_placeholder_1 
lstm_544_while_placeholder_2 
lstm_544_while_placeholder_30
,lstm_544_while_less_lstm_544_strided_slice_1F
Blstm_544_while_lstm_544_while_cond_977205___redundant_placeholder0F
Blstm_544_while_lstm_544_while_cond_977205___redundant_placeholder1F
Blstm_544_while_lstm_544_while_cond_977205___redundant_placeholder2F
Blstm_544_while_lstm_544_while_cond_977205___redundant_placeholder3
lstm_544_while_identity
?
lstm_544/while/LessLesslstm_544_while_placeholder,lstm_544_while_less_lstm_544_strided_slice_1*
T0*
_output_shapes
: ]
lstm_544/while/IdentityIdentitylstm_544/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_544_while_identity lstm_544/while/Identity:output:0*(
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
while_cond_976062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_976062___redundant_placeholder04
0while_while_cond_976062___redundant_placeholder14
0while_while_cond_976062___redundant_placeholder24
0while_while_cond_976062___redundant_placeholder3
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
while_body_974539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_159_974563_0:	?/
while_lstm_cell_159_974565_0:	d?+
while_lstm_cell_159_974567_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_159_974563:	?-
while_lstm_cell_159_974565:	d?)
while_lstm_cell_159_974567:	???+while/lstm_cell_159/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_159/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_159_974563_0while_lstm_cell_159_974565_0while_lstm_cell_159_974567_0*
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974480?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_159/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_159/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_159/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_159/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_159_974563while_lstm_cell_159_974563_0":
while_lstm_cell_159_974565while_lstm_cell_159_974565_0":
while_lstm_cell_159_974567while_lstm_cell_159_974567_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_159/StatefulPartitionedCall+while/lstm_cell_159/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_161_layer_call_fn_979532

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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975180o
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
while_cond_974347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_974347___redundant_placeholder04
0while_while_cond_974347___redundant_placeholder14
0while_while_cond_974347___redundant_placeholder24
0while_while_cond_974347___redundant_placeholder3
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
*__inference_dense_181_layer_call_fn_979292

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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784o
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
?W
?
__inference__traced_save_979739
file_prefix/
+savev2_dense_181_kernel_read_readvariableop-
)savev2_dense_181_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_543_lstm_cell_543_kernel_read_readvariableopF
Bsavev2_lstm_543_lstm_cell_543_recurrent_kernel_read_readvariableop:
6savev2_lstm_543_lstm_cell_543_bias_read_readvariableop<
8savev2_lstm_544_lstm_cell_544_kernel_read_readvariableopF
Bsavev2_lstm_544_lstm_cell_544_recurrent_kernel_read_readvariableop:
6savev2_lstm_544_lstm_cell_544_bias_read_readvariableop<
8savev2_lstm_545_lstm_cell_545_kernel_read_readvariableopF
Bsavev2_lstm_545_lstm_cell_545_recurrent_kernel_read_readvariableop:
6savev2_lstm_545_lstm_cell_545_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_181_kernel_m_read_readvariableop4
0savev2_adam_dense_181_bias_m_read_readvariableopC
?savev2_adam_lstm_543_lstm_cell_543_kernel_m_read_readvariableopM
Isavev2_adam_lstm_543_lstm_cell_543_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_543_lstm_cell_543_bias_m_read_readvariableopC
?savev2_adam_lstm_544_lstm_cell_544_kernel_m_read_readvariableopM
Isavev2_adam_lstm_544_lstm_cell_544_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_544_lstm_cell_544_bias_m_read_readvariableopC
?savev2_adam_lstm_545_lstm_cell_545_kernel_m_read_readvariableopM
Isavev2_adam_lstm_545_lstm_cell_545_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_545_lstm_cell_545_bias_m_read_readvariableop6
2savev2_adam_dense_181_kernel_v_read_readvariableop4
0savev2_adam_dense_181_bias_v_read_readvariableopC
?savev2_adam_lstm_543_lstm_cell_543_kernel_v_read_readvariableopM
Isavev2_adam_lstm_543_lstm_cell_543_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_543_lstm_cell_543_bias_v_read_readvariableopC
?savev2_adam_lstm_544_lstm_cell_544_kernel_v_read_readvariableopM
Isavev2_adam_lstm_544_lstm_cell_544_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_544_lstm_cell_544_bias_v_read_readvariableopC
?savev2_adam_lstm_545_lstm_cell_545_kernel_v_read_readvariableopM
Isavev2_adam_lstm_545_lstm_cell_545_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_545_lstm_cell_545_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_181_kernel_read_readvariableop)savev2_dense_181_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_543_lstm_cell_543_kernel_read_readvariableopBsavev2_lstm_543_lstm_cell_543_recurrent_kernel_read_readvariableop6savev2_lstm_543_lstm_cell_543_bias_read_readvariableop8savev2_lstm_544_lstm_cell_544_kernel_read_readvariableopBsavev2_lstm_544_lstm_cell_544_recurrent_kernel_read_readvariableop6savev2_lstm_544_lstm_cell_544_bias_read_readvariableop8savev2_lstm_545_lstm_cell_545_kernel_read_readvariableopBsavev2_lstm_545_lstm_cell_545_recurrent_kernel_read_readvariableop6savev2_lstm_545_lstm_cell_545_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_181_kernel_m_read_readvariableop0savev2_adam_dense_181_bias_m_read_readvariableop?savev2_adam_lstm_543_lstm_cell_543_kernel_m_read_readvariableopIsavev2_adam_lstm_543_lstm_cell_543_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_543_lstm_cell_543_bias_m_read_readvariableop?savev2_adam_lstm_544_lstm_cell_544_kernel_m_read_readvariableopIsavev2_adam_lstm_544_lstm_cell_544_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_544_lstm_cell_544_bias_m_read_readvariableop?savev2_adam_lstm_545_lstm_cell_545_kernel_m_read_readvariableopIsavev2_adam_lstm_545_lstm_cell_545_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_545_lstm_cell_545_bias_m_read_readvariableop2savev2_adam_dense_181_kernel_v_read_readvariableop0savev2_adam_dense_181_bias_v_read_readvariableop?savev2_adam_lstm_543_lstm_cell_543_kernel_v_read_readvariableopIsavev2_adam_lstm_543_lstm_cell_543_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_543_lstm_cell_543_bias_v_read_readvariableop?savev2_adam_lstm_544_lstm_cell_544_kernel_v_read_readvariableopIsavev2_adam_lstm_544_lstm_cell_544_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_544_lstm_cell_544_bias_v_read_readvariableop?savev2_adam_lstm_545_lstm_cell_545_kernel_v_read_readvariableopIsavev2_adam_lstm_545_lstm_cell_545_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_545_lstm_cell_545_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
D__inference_lstm_543_layer_call_and_return_conditional_losses_974417

inputs'
lstm_cell_159_974335:	?'
lstm_cell_159_974337:	d?#
lstm_cell_159_974339:	?
identity??%lstm_cell_159/StatefulPartitionedCall?while;
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
%lstm_cell_159/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_159_974335lstm_cell_159_974337lstm_cell_159_974339*
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974334n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_159_974335lstm_cell_159_974337lstm_cell_159_974339*
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
while_body_974348*
condR
while_cond_974347*K
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
NoOpNoOp&^lstm_cell_159/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_159/StatefulPartitionedCall%lstm_cell_159/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_545_layer_call_fn_978689
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975308o
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978524

inputs?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_978440*
condR
while_cond_978439*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_978913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974334

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
D__inference_lstm_543_layer_call_and_return_conditional_losses_975466

inputs?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_975382*
condR
while_cond_975381*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
while_body_975048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_161_975072_0:2(.
while_lstm_cell_161_975074_0:
(*
while_lstm_cell_161_975076_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_161_975072:2(,
while_lstm_cell_161_975074:
((
while_lstm_cell_161_975076:(??+while/lstm_cell_161/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_161/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_161_975072_0while_lstm_cell_161_975074_0while_lstm_cell_161_975076_0*
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975034?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_161/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_161/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_161/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_161_975072while_lstm_cell_161_975072_0":
while_lstm_cell_161_975074while_lstm_cell_161_975074_0":
while_lstm_cell_161_975076while_lstm_cell_161_975076_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_161/StatefulPartitionedCall+while/lstm_cell_161/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_181_lstm_545_while_body_974177L
Hsequential_181_lstm_545_while_sequential_181_lstm_545_while_loop_counterR
Nsequential_181_lstm_545_while_sequential_181_lstm_545_while_maximum_iterations-
)sequential_181_lstm_545_while_placeholder/
+sequential_181_lstm_545_while_placeholder_1/
+sequential_181_lstm_545_while_placeholder_2/
+sequential_181_lstm_545_while_placeholder_3K
Gsequential_181_lstm_545_while_sequential_181_lstm_545_strided_slice_1_0?
?sequential_181_lstm_545_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_545_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_181_lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0:2(`
Nsequential_181_lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0:
([
Msequential_181_lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0:(*
&sequential_181_lstm_545_while_identity,
(sequential_181_lstm_545_while_identity_1,
(sequential_181_lstm_545_while_identity_2,
(sequential_181_lstm_545_while_identity_3,
(sequential_181_lstm_545_while_identity_4,
(sequential_181_lstm_545_while_identity_5I
Esequential_181_lstm_545_while_sequential_181_lstm_545_strided_slice_1?
?sequential_181_lstm_545_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_545_tensorarrayunstack_tensorlistfromtensor\
Jsequential_181_lstm_545_while_lstm_cell_161_matmul_readvariableop_resource:2(^
Lsequential_181_lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource:
(Y
Ksequential_181_lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource:(??Bsequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp?Asequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp?Csequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp?
Osequential_181/lstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_181/lstm_545/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_181_lstm_545_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_545_tensorarrayunstack_tensorlistfromtensor_0)sequential_181_lstm_545_while_placeholderXsequential_181/lstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOpLsequential_181_lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_181/lstm_545/while/lstm_cell_161/MatMulMatMulHsequential_181/lstm_545/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOpNsequential_181_lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_181/lstm_545/while/lstm_cell_161/MatMul_1MatMul+sequential_181_lstm_545_while_placeholder_2Ksequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_181/lstm_545/while/lstm_cell_161/addAddV2<sequential_181/lstm_545/while/lstm_cell_161/MatMul:product:0>sequential_181/lstm_545/while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOpMsequential_181_lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_181/lstm_545/while/lstm_cell_161/BiasAddBiasAdd3sequential_181/lstm_545/while/lstm_cell_161/add:z:0Jsequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_181/lstm_545/while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_181/lstm_545/while/lstm_cell_161/splitSplitDsequential_181/lstm_545/while/lstm_cell_161/split/split_dim:output:0<sequential_181/lstm_545/while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_181/lstm_545/while/lstm_cell_161/SigmoidSigmoid:sequential_181/lstm_545/while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_181/lstm_545/while/lstm_cell_161/Sigmoid_1Sigmoid:sequential_181/lstm_545/while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_181/lstm_545/while/lstm_cell_161/mulMul9sequential_181/lstm_545/while/lstm_cell_161/Sigmoid_1:y:0+sequential_181_lstm_545_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_181/lstm_545/while/lstm_cell_161/ReluRelu:sequential_181/lstm_545/while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_181/lstm_545/while/lstm_cell_161/mul_1Mul7sequential_181/lstm_545/while/lstm_cell_161/Sigmoid:y:0>sequential_181/lstm_545/while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_181/lstm_545/while/lstm_cell_161/add_1AddV23sequential_181/lstm_545/while/lstm_cell_161/mul:z:05sequential_181/lstm_545/while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_181/lstm_545/while/lstm_cell_161/Sigmoid_2Sigmoid:sequential_181/lstm_545/while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_181/lstm_545/while/lstm_cell_161/Relu_1Relu5sequential_181/lstm_545/while/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_181/lstm_545/while/lstm_cell_161/mul_2Mul9sequential_181/lstm_545/while/lstm_cell_161/Sigmoid_2:y:0@sequential_181/lstm_545/while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_181/lstm_545/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_181_lstm_545_while_placeholder_1)sequential_181_lstm_545_while_placeholder5sequential_181/lstm_545/while/lstm_cell_161/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_181/lstm_545/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_181/lstm_545/while/addAddV2)sequential_181_lstm_545_while_placeholder,sequential_181/lstm_545/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_181/lstm_545/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_181/lstm_545/while/add_1AddV2Hsequential_181_lstm_545_while_sequential_181_lstm_545_while_loop_counter.sequential_181/lstm_545/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_181/lstm_545/while/IdentityIdentity'sequential_181/lstm_545/while/add_1:z:0#^sequential_181/lstm_545/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_545/while/Identity_1IdentityNsequential_181_lstm_545_while_sequential_181_lstm_545_while_maximum_iterations#^sequential_181/lstm_545/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_545/while/Identity_2Identity%sequential_181/lstm_545/while/add:z:0#^sequential_181/lstm_545/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_545/while/Identity_3IdentityRsequential_181/lstm_545/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_181/lstm_545/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_545/while/Identity_4Identity5sequential_181/lstm_545/while/lstm_cell_161/mul_2:z:0#^sequential_181/lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_181/lstm_545/while/Identity_5Identity5sequential_181/lstm_545/while/lstm_cell_161/add_1:z:0#^sequential_181/lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_181/lstm_545/while/NoOpNoOpC^sequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOpB^sequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOpD^sequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_181_lstm_545_while_identity/sequential_181/lstm_545/while/Identity:output:0"]
(sequential_181_lstm_545_while_identity_11sequential_181/lstm_545/while/Identity_1:output:0"]
(sequential_181_lstm_545_while_identity_21sequential_181/lstm_545/while/Identity_2:output:0"]
(sequential_181_lstm_545_while_identity_31sequential_181/lstm_545/while/Identity_3:output:0"]
(sequential_181_lstm_545_while_identity_41sequential_181/lstm_545/while/Identity_4:output:0"]
(sequential_181_lstm_545_while_identity_51sequential_181/lstm_545/while/Identity_5:output:0"?
Ksequential_181_lstm_545_while_lstm_cell_161_biasadd_readvariableop_resourceMsequential_181_lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0"?
Lsequential_181_lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resourceNsequential_181_lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0"?
Jsequential_181_lstm_545_while_lstm_cell_161_matmul_readvariableop_resourceLsequential_181_lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0"?
Esequential_181_lstm_545_while_sequential_181_lstm_545_strided_slice_1Gsequential_181_lstm_545_while_sequential_181_lstm_545_strided_slice_1_0"?
?sequential_181_lstm_545_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_545_tensorarrayunstack_tensorlistfromtensor?sequential_181_lstm_545_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_545_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOpBsequential_181/lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp2?
Asequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOpAsequential_181/lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp2?
Csequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOpCsequential_181/lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_543_while_cond_976639.
*lstm_543_while_lstm_543_while_loop_counter4
0lstm_543_while_lstm_543_while_maximum_iterations
lstm_543_while_placeholder 
lstm_543_while_placeholder_1 
lstm_543_while_placeholder_2 
lstm_543_while_placeholder_30
,lstm_543_while_less_lstm_543_strided_slice_1F
Blstm_543_while_lstm_543_while_cond_976639___redundant_placeholder0F
Blstm_543_while_lstm_543_while_cond_976639___redundant_placeholder1F
Blstm_543_while_lstm_543_while_cond_976639___redundant_placeholder2F
Blstm_543_while_lstm_543_while_cond_976639___redundant_placeholder3
lstm_543_while_identity
?
lstm_543/while/LessLesslstm_543_while_placeholder,lstm_543_while_less_lstm_543_strided_slice_1*
T0*
_output_shapes
: ]
lstm_543/while/IdentityIdentitylstm_543/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_543_while_identity lstm_543/while/Identity:output:0*(
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
E__inference_dense_181_layer_call_and_return_conditional_losses_979302

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
while_body_979056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_545_while_cond_977344.
*lstm_545_while_lstm_545_while_loop_counter4
0lstm_545_while_lstm_545_while_maximum_iterations
lstm_545_while_placeholder 
lstm_545_while_placeholder_1 
lstm_545_while_placeholder_2 
lstm_545_while_placeholder_30
,lstm_545_while_less_lstm_545_strided_slice_1F
Blstm_545_while_lstm_545_while_cond_977344___redundant_placeholder0F
Blstm_545_while_lstm_545_while_cond_977344___redundant_placeholder1F
Blstm_545_while_lstm_545_while_cond_977344___redundant_placeholder2F
Blstm_545_while_lstm_545_while_cond_977344___redundant_placeholder3
lstm_545_while_identity
?
lstm_545/while/LessLesslstm_545_while_placeholder,lstm_545_while_less_lstm_545_strided_slice_1*
T0*
_output_shapes
: ]
lstm_545/while/IdentityIdentitylstm_545/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_545_while_identity lstm_545/while/Identity:output:0*(
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978381
inputs_0?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_978297*
condR
while_cond_978296*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
)sequential_181_lstm_543_while_cond_973898L
Hsequential_181_lstm_543_while_sequential_181_lstm_543_while_loop_counterR
Nsequential_181_lstm_543_while_sequential_181_lstm_543_while_maximum_iterations-
)sequential_181_lstm_543_while_placeholder/
+sequential_181_lstm_543_while_placeholder_1/
+sequential_181_lstm_543_while_placeholder_2/
+sequential_181_lstm_543_while_placeholder_3N
Jsequential_181_lstm_543_while_less_sequential_181_lstm_543_strided_slice_1d
`sequential_181_lstm_543_while_sequential_181_lstm_543_while_cond_973898___redundant_placeholder0d
`sequential_181_lstm_543_while_sequential_181_lstm_543_while_cond_973898___redundant_placeholder1d
`sequential_181_lstm_543_while_sequential_181_lstm_543_while_cond_973898___redundant_placeholder2d
`sequential_181_lstm_543_while_sequential_181_lstm_543_while_cond_973898___redundant_placeholder3*
&sequential_181_lstm_543_while_identity
?
"sequential_181/lstm_543/while/LessLess)sequential_181_lstm_543_while_placeholderJsequential_181_lstm_543_while_less_sequential_181_lstm_543_strided_slice_1*
T0*
_output_shapes
: {
&sequential_181/lstm_543/while/IdentityIdentity&sequential_181/lstm_543/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_181_lstm_543_while_identity/sequential_181/lstm_543/while/Identity:output:0*(
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
while_cond_977537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977537___redundant_placeholder04
0while_while_cond_977537___redundant_placeholder14
0while_while_cond_977537___redundant_placeholder24
0while_while_cond_977537___redundant_placeholder3
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975117

inputs&
lstm_cell_161_975035:2(&
lstm_cell_161_975037:
("
lstm_cell_161_975039:(
identity??%lstm_cell_161/StatefulPartitionedCall?while;
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
%lstm_cell_161/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_161_975035lstm_cell_161_975037lstm_cell_161_975039*
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975034n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_161_975035lstm_cell_161_975037lstm_cell_161_975039*
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
while_body_975048*
condR
while_cond_975047*K
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
NoOpNoOp&^lstm_cell_161/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_161/StatefulPartitionedCall%lstm_cell_161/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_544_layer_call_fn_978084

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
D__inference_lstm_544_layer_call_and_return_conditional_losses_975616s
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
while_cond_978439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978439___redundant_placeholder04
0while_while_cond_978439___redundant_placeholder14
0while_while_cond_978439___redundant_placeholder24
0while_while_cond_978439___redundant_placeholder3
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_979283

inputs>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_979199*
condR
while_cond_979198*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_544_while_body_976779.
*lstm_544_while_lstm_544_while_loop_counter4
0lstm_544_while_lstm_544_while_maximum_iterations
lstm_544_while_placeholder 
lstm_544_while_placeholder_1 
lstm_544_while_placeholder_2 
lstm_544_while_placeholder_3-
)lstm_544_while_lstm_544_strided_slice_1_0i
elstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0:	d?R
?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?M
>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
lstm_544_while_identity
lstm_544_while_identity_1
lstm_544_while_identity_2
lstm_544_while_identity_3
lstm_544_while_identity_4
lstm_544_while_identity_5+
'lstm_544_while_lstm_544_strided_slice_1g
clstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensorN
;lstm_544_while_lstm_cell_160_matmul_readvariableop_resource:	d?P
=lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource:	2?K
<lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource:	???3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp?2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp?4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp?
@lstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_544/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0lstm_544_while_placeholderIlstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_544/while/lstm_cell_160/MatMulMatMul9lstm_544/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_544/while/lstm_cell_160/MatMul_1MatMullstm_544_while_placeholder_2<lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_544/while/lstm_cell_160/addAddV2-lstm_544/while/lstm_cell_160/MatMul:product:0/lstm_544/while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_544/while/lstm_cell_160/BiasAddBiasAdd$lstm_544/while/lstm_cell_160/add:z:0;lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_544/while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_544/while/lstm_cell_160/splitSplit5lstm_544/while/lstm_cell_160/split/split_dim:output:0-lstm_544/while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_544/while/lstm_cell_160/SigmoidSigmoid+lstm_544/while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_544/while/lstm_cell_160/Sigmoid_1Sigmoid+lstm_544/while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_544/while/lstm_cell_160/mulMul*lstm_544/while/lstm_cell_160/Sigmoid_1:y:0lstm_544_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_544/while/lstm_cell_160/ReluRelu+lstm_544/while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/mul_1Mul(lstm_544/while/lstm_cell_160/Sigmoid:y:0/lstm_544/while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/add_1AddV2$lstm_544/while/lstm_cell_160/mul:z:0&lstm_544/while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_544/while/lstm_cell_160/Sigmoid_2Sigmoid+lstm_544/while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_544/while/lstm_cell_160/Relu_1Relu&lstm_544/while/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_544/while/lstm_cell_160/mul_2Mul*lstm_544/while/lstm_cell_160/Sigmoid_2:y:01lstm_544/while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_544/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_544_while_placeholder_1lstm_544_while_placeholder&lstm_544/while/lstm_cell_160/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_544/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_544/while/addAddV2lstm_544_while_placeholderlstm_544/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_544/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_544/while/add_1AddV2*lstm_544_while_lstm_544_while_loop_counterlstm_544/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_544/while/IdentityIdentitylstm_544/while/add_1:z:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_1Identity0lstm_544_while_lstm_544_while_maximum_iterations^lstm_544/while/NoOp*
T0*
_output_shapes
: t
lstm_544/while/Identity_2Identitylstm_544/while/add:z:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_3IdentityClstm_544/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_544/while/NoOp*
T0*
_output_shapes
: ?
lstm_544/while/Identity_4Identity&lstm_544/while/lstm_cell_160/mul_2:z:0^lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_544/while/Identity_5Identity&lstm_544/while/lstm_cell_160/add_1:z:0^lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_544/while/NoOpNoOp4^lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp3^lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp5^lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_544_while_identity lstm_544/while/Identity:output:0"?
lstm_544_while_identity_1"lstm_544/while/Identity_1:output:0"?
lstm_544_while_identity_2"lstm_544/while/Identity_2:output:0"?
lstm_544_while_identity_3"lstm_544/while/Identity_3:output:0"?
lstm_544_while_identity_4"lstm_544/while/Identity_4:output:0"?
lstm_544_while_identity_5"lstm_544/while/Identity_5:output:0"T
'lstm_544_while_lstm_544_strided_slice_1)lstm_544_while_lstm_544_strided_slice_1_0"~
<lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource>lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0"?
=lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource?lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0"|
;lstm_544_while_lstm_cell_160_matmul_readvariableop_resource=lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0"?
clstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensorelstm_544_while_tensorarrayv2read_tensorlistgetitem_lstm_544_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp3lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp2h
2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp2lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp2l
4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp4lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_543_layer_call_fn_977468

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
D__inference_lstm_543_layer_call_and_return_conditional_losses_975466s
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
while_cond_974538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_974538___redundant_placeholder04
0while_while_cond_974538___redundant_placeholder14
0while_while_cond_974538___redundant_placeholder24
0while_while_cond_974538___redundant_placeholder3
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_974608

inputs'
lstm_cell_159_974526:	?'
lstm_cell_159_974528:	d?#
lstm_cell_159_974530:	?
identity??%lstm_cell_159/StatefulPartitionedCall?while;
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
%lstm_cell_159/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_159_974526lstm_cell_159_974528lstm_cell_159_974530*
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974480n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_159_974526lstm_cell_159_974528lstm_cell_159_974530*
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
while_body_974539*
condR
while_cond_974538*K
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
NoOpNoOp&^lstm_cell_159/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_159/StatefulPartitionedCall%lstm_cell_159/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_978154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_977824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_976228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_974889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_160_974913_0:	d?/
while_lstm_cell_160_974915_0:	2?+
while_lstm_cell_160_974917_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_160_974913:	d?-
while_lstm_cell_160_974915:	2?)
while_lstm_cell_160_974917:	???+while/lstm_cell_160/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_160/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_160_974913_0while_lstm_cell_160_974915_0while_lstm_cell_160_974917_0*
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974830?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_160/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_160/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_160/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_160/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_160_974913while_lstm_cell_160_974913_0":
while_lstm_cell_160_974915while_lstm_cell_160_974915_0":
while_lstm_cell_160_974917while_lstm_cell_160_974917_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_160/StatefulPartitionedCall+while/lstm_cell_160/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_976147

inputs?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_976063*
condR
while_cond_976062*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_543_while_body_976640.
*lstm_543_while_lstm_543_while_loop_counter4
0lstm_543_while_lstm_543_while_maximum_iterations
lstm_543_while_placeholder 
lstm_543_while_placeholder_1 
lstm_543_while_placeholder_2 
lstm_543_while_placeholder_3-
)lstm_543_while_lstm_543_strided_slice_1_0i
elstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0:	?R
?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?M
>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
lstm_543_while_identity
lstm_543_while_identity_1
lstm_543_while_identity_2
lstm_543_while_identity_3
lstm_543_while_identity_4
lstm_543_while_identity_5+
'lstm_543_while_lstm_543_strided_slice_1g
clstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensorN
;lstm_543_while_lstm_cell_159_matmul_readvariableop_resource:	?P
=lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource:	d?K
<lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource:	???3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp?2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp?4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp?
@lstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_543/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0lstm_543_while_placeholderIlstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_543/while/lstm_cell_159/MatMulMatMul9lstm_543/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_543/while/lstm_cell_159/MatMul_1MatMullstm_543_while_placeholder_2<lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_543/while/lstm_cell_159/addAddV2-lstm_543/while/lstm_cell_159/MatMul:product:0/lstm_543/while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_543/while/lstm_cell_159/BiasAddBiasAdd$lstm_543/while/lstm_cell_159/add:z:0;lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_543/while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_543/while/lstm_cell_159/splitSplit5lstm_543/while/lstm_cell_159/split/split_dim:output:0-lstm_543/while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_543/while/lstm_cell_159/SigmoidSigmoid+lstm_543/while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_543/while/lstm_cell_159/Sigmoid_1Sigmoid+lstm_543/while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_543/while/lstm_cell_159/mulMul*lstm_543/while/lstm_cell_159/Sigmoid_1:y:0lstm_543_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_543/while/lstm_cell_159/ReluRelu+lstm_543/while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/mul_1Mul(lstm_543/while/lstm_cell_159/Sigmoid:y:0/lstm_543/while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/add_1AddV2$lstm_543/while/lstm_cell_159/mul:z:0&lstm_543/while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_543/while/lstm_cell_159/Sigmoid_2Sigmoid+lstm_543/while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_543/while/lstm_cell_159/Relu_1Relu&lstm_543/while/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/mul_2Mul*lstm_543/while/lstm_cell_159/Sigmoid_2:y:01lstm_543/while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_543/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_543_while_placeholder_1lstm_543_while_placeholder&lstm_543/while/lstm_cell_159/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_543/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_543/while/addAddV2lstm_543_while_placeholderlstm_543/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_543/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_543/while/add_1AddV2*lstm_543_while_lstm_543_while_loop_counterlstm_543/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_543/while/IdentityIdentitylstm_543/while/add_1:z:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_1Identity0lstm_543_while_lstm_543_while_maximum_iterations^lstm_543/while/NoOp*
T0*
_output_shapes
: t
lstm_543/while/Identity_2Identitylstm_543/while/add:z:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_3IdentityClstm_543/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_4Identity&lstm_543/while/lstm_cell_159/mul_2:z:0^lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_543/while/Identity_5Identity&lstm_543/while/lstm_cell_159/add_1:z:0^lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_543/while/NoOpNoOp4^lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp3^lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp5^lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_543_while_identity lstm_543/while/Identity:output:0"?
lstm_543_while_identity_1"lstm_543/while/Identity_1:output:0"?
lstm_543_while_identity_2"lstm_543/while/Identity_2:output:0"?
lstm_543_while_identity_3"lstm_543/while/Identity_3:output:0"?
lstm_543_while_identity_4"lstm_543/while/Identity_4:output:0"?
lstm_543_while_identity_5"lstm_543/while/Identity_5:output:0"T
'lstm_543_while_lstm_543_strided_slice_1)lstm_543_while_lstm_543_strided_slice_1_0"~
<lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0"?
=lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0"|
;lstm_543_while_lstm_cell_159_matmul_readvariableop_resource=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0"?
clstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensorelstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp2h
2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp2l
4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_974767

inputs'
lstm_cell_160_974685:	d?'
lstm_cell_160_974687:	2?#
lstm_cell_160_974689:	?
identity??%lstm_cell_160/StatefulPartitionedCall?while;
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
%lstm_cell_160/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_160_974685lstm_cell_160_974687lstm_cell_160_974689*
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974684n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_160_974685lstm_cell_160_974687lstm_cell_160_974689*
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
while_body_974698*
condR
while_cond_974697*K
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
NoOpNoOp&^lstm_cell_160/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_160/StatefulPartitionedCall%lstm_cell_160/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_544_layer_call_and_return_conditional_losses_975616

inputs?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_975532*
condR
while_cond_975531*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_181_lstm_544_while_cond_974037L
Hsequential_181_lstm_544_while_sequential_181_lstm_544_while_loop_counterR
Nsequential_181_lstm_544_while_sequential_181_lstm_544_while_maximum_iterations-
)sequential_181_lstm_544_while_placeholder/
+sequential_181_lstm_544_while_placeholder_1/
+sequential_181_lstm_544_while_placeholder_2/
+sequential_181_lstm_544_while_placeholder_3N
Jsequential_181_lstm_544_while_less_sequential_181_lstm_544_strided_slice_1d
`sequential_181_lstm_544_while_sequential_181_lstm_544_while_cond_974037___redundant_placeholder0d
`sequential_181_lstm_544_while_sequential_181_lstm_544_while_cond_974037___redundant_placeholder1d
`sequential_181_lstm_544_while_sequential_181_lstm_544_while_cond_974037___redundant_placeholder2d
`sequential_181_lstm_544_while_sequential_181_lstm_544_while_cond_974037___redundant_placeholder3*
&sequential_181_lstm_544_while_identity
?
"sequential_181/lstm_544/while/LessLess)sequential_181_lstm_544_while_placeholderJsequential_181_lstm_544_while_less_sequential_181_lstm_544_strided_slice_1*
T0*
_output_shapes
: {
&sequential_181/lstm_544/while/IdentityIdentity&sequential_181/lstm_544/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_181_lstm_544_while_identity/sequential_181/lstm_544/while/Identity:output:0*(
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
/__inference_sequential_181_layer_call_fn_975816
lstm_543_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_543_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_975791o
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
_user_specified_namelstm_543_input
?
?
while_cond_974697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_974697___redundant_placeholder04
0while_while_cond_974697___redundant_placeholder14
0while_while_cond_974697___redundant_placeholder24
0while_while_cond_974697___redundant_placeholder3
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
while_body_978297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_975047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975047___redundant_placeholder04
0while_while_cond_975047___redundant_placeholder14
0while_while_cond_975047___redundant_placeholder24
0while_while_cond_975047___redundant_placeholder3
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
/__inference_sequential_181_layer_call_fn_976432
lstm_543_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_543_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_976380o
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
_user_specified_namelstm_543_input
?T
?
)sequential_181_lstm_543_while_body_973899L
Hsequential_181_lstm_543_while_sequential_181_lstm_543_while_loop_counterR
Nsequential_181_lstm_543_while_sequential_181_lstm_543_while_maximum_iterations-
)sequential_181_lstm_543_while_placeholder/
+sequential_181_lstm_543_while_placeholder_1/
+sequential_181_lstm_543_while_placeholder_2/
+sequential_181_lstm_543_while_placeholder_3K
Gsequential_181_lstm_543_while_sequential_181_lstm_543_strided_slice_1_0?
?sequential_181_lstm_543_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_543_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_181_lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0:	?a
Nsequential_181_lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?\
Msequential_181_lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0:	?*
&sequential_181_lstm_543_while_identity,
(sequential_181_lstm_543_while_identity_1,
(sequential_181_lstm_543_while_identity_2,
(sequential_181_lstm_543_while_identity_3,
(sequential_181_lstm_543_while_identity_4,
(sequential_181_lstm_543_while_identity_5I
Esequential_181_lstm_543_while_sequential_181_lstm_543_strided_slice_1?
?sequential_181_lstm_543_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_543_tensorarrayunstack_tensorlistfromtensor]
Jsequential_181_lstm_543_while_lstm_cell_159_matmul_readvariableop_resource:	?_
Lsequential_181_lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource:	d?Z
Ksequential_181_lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource:	???Bsequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp?Asequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp?Csequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp?
Osequential_181/lstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_181/lstm_543/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_181_lstm_543_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_543_tensorarrayunstack_tensorlistfromtensor_0)sequential_181_lstm_543_while_placeholderXsequential_181/lstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOpLsequential_181_lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_181/lstm_543/while/lstm_cell_159/MatMulMatMulHsequential_181/lstm_543/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOpNsequential_181_lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_181/lstm_543/while/lstm_cell_159/MatMul_1MatMul+sequential_181_lstm_543_while_placeholder_2Ksequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_181/lstm_543/while/lstm_cell_159/addAddV2<sequential_181/lstm_543/while/lstm_cell_159/MatMul:product:0>sequential_181/lstm_543/while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOpMsequential_181_lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_181/lstm_543/while/lstm_cell_159/BiasAddBiasAdd3sequential_181/lstm_543/while/lstm_cell_159/add:z:0Jsequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_181/lstm_543/while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_181/lstm_543/while/lstm_cell_159/splitSplitDsequential_181/lstm_543/while/lstm_cell_159/split/split_dim:output:0<sequential_181/lstm_543/while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_181/lstm_543/while/lstm_cell_159/SigmoidSigmoid:sequential_181/lstm_543/while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_181/lstm_543/while/lstm_cell_159/Sigmoid_1Sigmoid:sequential_181/lstm_543/while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_181/lstm_543/while/lstm_cell_159/mulMul9sequential_181/lstm_543/while/lstm_cell_159/Sigmoid_1:y:0+sequential_181_lstm_543_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_181/lstm_543/while/lstm_cell_159/ReluRelu:sequential_181/lstm_543/while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_181/lstm_543/while/lstm_cell_159/mul_1Mul7sequential_181/lstm_543/while/lstm_cell_159/Sigmoid:y:0>sequential_181/lstm_543/while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_181/lstm_543/while/lstm_cell_159/add_1AddV23sequential_181/lstm_543/while/lstm_cell_159/mul:z:05sequential_181/lstm_543/while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_181/lstm_543/while/lstm_cell_159/Sigmoid_2Sigmoid:sequential_181/lstm_543/while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_181/lstm_543/while/lstm_cell_159/Relu_1Relu5sequential_181/lstm_543/while/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_181/lstm_543/while/lstm_cell_159/mul_2Mul9sequential_181/lstm_543/while/lstm_cell_159/Sigmoid_2:y:0@sequential_181/lstm_543/while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_181/lstm_543/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_181_lstm_543_while_placeholder_1)sequential_181_lstm_543_while_placeholder5sequential_181/lstm_543/while/lstm_cell_159/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_181/lstm_543/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_181/lstm_543/while/addAddV2)sequential_181_lstm_543_while_placeholder,sequential_181/lstm_543/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_181/lstm_543/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_181/lstm_543/while/add_1AddV2Hsequential_181_lstm_543_while_sequential_181_lstm_543_while_loop_counter.sequential_181/lstm_543/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_181/lstm_543/while/IdentityIdentity'sequential_181/lstm_543/while/add_1:z:0#^sequential_181/lstm_543/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_543/while/Identity_1IdentityNsequential_181_lstm_543_while_sequential_181_lstm_543_while_maximum_iterations#^sequential_181/lstm_543/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_543/while/Identity_2Identity%sequential_181/lstm_543/while/add:z:0#^sequential_181/lstm_543/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_543/while/Identity_3IdentityRsequential_181/lstm_543/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_181/lstm_543/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_543/while/Identity_4Identity5sequential_181/lstm_543/while/lstm_cell_159/mul_2:z:0#^sequential_181/lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_181/lstm_543/while/Identity_5Identity5sequential_181/lstm_543/while/lstm_cell_159/add_1:z:0#^sequential_181/lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_181/lstm_543/while/NoOpNoOpC^sequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOpB^sequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOpD^sequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_181_lstm_543_while_identity/sequential_181/lstm_543/while/Identity:output:0"]
(sequential_181_lstm_543_while_identity_11sequential_181/lstm_543/while/Identity_1:output:0"]
(sequential_181_lstm_543_while_identity_21sequential_181/lstm_543/while/Identity_2:output:0"]
(sequential_181_lstm_543_while_identity_31sequential_181/lstm_543/while/Identity_3:output:0"]
(sequential_181_lstm_543_while_identity_41sequential_181/lstm_543/while/Identity_4:output:0"]
(sequential_181_lstm_543_while_identity_51sequential_181/lstm_543/while/Identity_5:output:0"?
Ksequential_181_lstm_543_while_lstm_cell_159_biasadd_readvariableop_resourceMsequential_181_lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0"?
Lsequential_181_lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resourceNsequential_181_lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0"?
Jsequential_181_lstm_543_while_lstm_cell_159_matmul_readvariableop_resourceLsequential_181_lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0"?
Esequential_181_lstm_543_while_sequential_181_lstm_543_strided_slice_1Gsequential_181_lstm_543_while_sequential_181_lstm_543_strided_slice_1_0"?
?sequential_181_lstm_543_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_543_tensorarrayunstack_tensorlistfromtensor?sequential_181_lstm_543_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_543_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOpBsequential_181/lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp2?
Asequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOpAsequential_181/lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp2?
Csequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOpCsequential_181/lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_976063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_979140

inputs>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_979056*
condR
while_cond_979055*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_978582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978582___redundant_placeholder04
0while_while_cond_978582___redundant_placeholder14
0while_while_cond_978582___redundant_placeholder24
0while_while_cond_978582___redundant_placeholder3
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
)__inference_lstm_545_layer_call_fn_978711

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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975982o
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
.__inference_lstm_cell_160_layer_call_fn_979417

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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974684o
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
while_cond_979055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979055___redundant_placeholder04
0while_while_cond_979055___redundant_placeholder14
0while_while_cond_979055___redundant_placeholder24
0while_while_cond_979055___redundant_placeholder3
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975034

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
?
?
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979368

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
J__inference_sequential_181_layer_call_and_return_conditional_losses_976380

inputs"
lstm_543_976353:	?"
lstm_543_976355:	d?
lstm_543_976357:	?"
lstm_544_976360:	d?"
lstm_544_976362:	2?
lstm_544_976364:	?!
lstm_545_976367:2(!
lstm_545_976369:
(
lstm_545_976371:("
dense_181_976374:

dense_181_976376:
identity??!dense_181/StatefulPartitionedCall? lstm_543/StatefulPartitionedCall? lstm_544/StatefulPartitionedCall? lstm_545/StatefulPartitionedCall?
 lstm_543/StatefulPartitionedCallStatefulPartitionedCallinputslstm_543_976353lstm_543_976355lstm_543_976357*
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_976312?
 lstm_544/StatefulPartitionedCallStatefulPartitionedCall)lstm_543/StatefulPartitionedCall:output:0lstm_544_976360lstm_544_976362lstm_544_976364*
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_976147?
 lstm_545/StatefulPartitionedCallStatefulPartitionedCall)lstm_544/StatefulPartitionedCall:output:0lstm_545_976367lstm_545_976369lstm_545_976371*
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975982?
!dense_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_545/StatefulPartitionedCall:output:0dense_181_976374dense_181_976376*
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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784y
IdentityIdentity*dense_181/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_181/StatefulPartitionedCall!^lstm_543/StatefulPartitionedCall!^lstm_544/StatefulPartitionedCall!^lstm_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_181/StatefulPartitionedCall!dense_181/StatefulPartitionedCall2D
 lstm_543/StatefulPartitionedCall lstm_543/StatefulPartitionedCall2D
 lstm_544/StatefulPartitionedCall lstm_544/StatefulPartitionedCall2D
 lstm_545/StatefulPartitionedCall lstm_545/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_159_layer_call_fn_979319

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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974334o
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
?J
?
D__inference_lstm_544_layer_call_and_return_conditional_losses_978667

inputs?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_978583*
condR
while_cond_978582*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_978440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_544_layer_call_fn_978062
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_974767|
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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784

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
while_cond_978296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978296___redundant_placeholder04
0while_while_cond_978296___redundant_placeholder14
0while_while_cond_978296___redundant_placeholder24
0while_while_cond_978296___redundant_placeholder3
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
while_body_975239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_161_975263_0:2(.
while_lstm_cell_161_975265_0:
(*
while_lstm_cell_161_975267_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_161_975263:2(,
while_lstm_cell_161_975265:
((
while_lstm_cell_161_975267:(??+while/lstm_cell_161/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_161/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_161_975263_0while_lstm_cell_161_975265_0while_lstm_cell_161_975267_0*
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975180?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_161/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_161/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_161/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_161_975263while_lstm_cell_161_975263_0":
while_lstm_cell_161_975265while_lstm_cell_161_975265_0":
while_lstm_cell_161_975267while_lstm_cell_161_975267_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_161/StatefulPartitionedCall+while/lstm_cell_161/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_181_lstm_544_while_body_974038L
Hsequential_181_lstm_544_while_sequential_181_lstm_544_while_loop_counterR
Nsequential_181_lstm_544_while_sequential_181_lstm_544_while_maximum_iterations-
)sequential_181_lstm_544_while_placeholder/
+sequential_181_lstm_544_while_placeholder_1/
+sequential_181_lstm_544_while_placeholder_2/
+sequential_181_lstm_544_while_placeholder_3K
Gsequential_181_lstm_544_while_sequential_181_lstm_544_strided_slice_1_0?
?sequential_181_lstm_544_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_544_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_181_lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0:	d?a
Nsequential_181_lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?\
Msequential_181_lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0:	?*
&sequential_181_lstm_544_while_identity,
(sequential_181_lstm_544_while_identity_1,
(sequential_181_lstm_544_while_identity_2,
(sequential_181_lstm_544_while_identity_3,
(sequential_181_lstm_544_while_identity_4,
(sequential_181_lstm_544_while_identity_5I
Esequential_181_lstm_544_while_sequential_181_lstm_544_strided_slice_1?
?sequential_181_lstm_544_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_544_tensorarrayunstack_tensorlistfromtensor]
Jsequential_181_lstm_544_while_lstm_cell_160_matmul_readvariableop_resource:	d?_
Lsequential_181_lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource:	2?Z
Ksequential_181_lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource:	???Bsequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp?Asequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp?Csequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp?
Osequential_181/lstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_181/lstm_544/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_181_lstm_544_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_544_tensorarrayunstack_tensorlistfromtensor_0)sequential_181_lstm_544_while_placeholderXsequential_181/lstm_544/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOpLsequential_181_lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_181/lstm_544/while/lstm_cell_160/MatMulMatMulHsequential_181/lstm_544/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOpNsequential_181_lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_181/lstm_544/while/lstm_cell_160/MatMul_1MatMul+sequential_181_lstm_544_while_placeholder_2Ksequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_181/lstm_544/while/lstm_cell_160/addAddV2<sequential_181/lstm_544/while/lstm_cell_160/MatMul:product:0>sequential_181/lstm_544/while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOpMsequential_181_lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_181/lstm_544/while/lstm_cell_160/BiasAddBiasAdd3sequential_181/lstm_544/while/lstm_cell_160/add:z:0Jsequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_181/lstm_544/while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_181/lstm_544/while/lstm_cell_160/splitSplitDsequential_181/lstm_544/while/lstm_cell_160/split/split_dim:output:0<sequential_181/lstm_544/while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_181/lstm_544/while/lstm_cell_160/SigmoidSigmoid:sequential_181/lstm_544/while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_181/lstm_544/while/lstm_cell_160/Sigmoid_1Sigmoid:sequential_181/lstm_544/while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_181/lstm_544/while/lstm_cell_160/mulMul9sequential_181/lstm_544/while/lstm_cell_160/Sigmoid_1:y:0+sequential_181_lstm_544_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_181/lstm_544/while/lstm_cell_160/ReluRelu:sequential_181/lstm_544/while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_181/lstm_544/while/lstm_cell_160/mul_1Mul7sequential_181/lstm_544/while/lstm_cell_160/Sigmoid:y:0>sequential_181/lstm_544/while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_181/lstm_544/while/lstm_cell_160/add_1AddV23sequential_181/lstm_544/while/lstm_cell_160/mul:z:05sequential_181/lstm_544/while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_181/lstm_544/while/lstm_cell_160/Sigmoid_2Sigmoid:sequential_181/lstm_544/while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_181/lstm_544/while/lstm_cell_160/Relu_1Relu5sequential_181/lstm_544/while/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_181/lstm_544/while/lstm_cell_160/mul_2Mul9sequential_181/lstm_544/while/lstm_cell_160/Sigmoid_2:y:0@sequential_181/lstm_544/while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_181/lstm_544/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_181_lstm_544_while_placeholder_1)sequential_181_lstm_544_while_placeholder5sequential_181/lstm_544/while/lstm_cell_160/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_181/lstm_544/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_181/lstm_544/while/addAddV2)sequential_181_lstm_544_while_placeholder,sequential_181/lstm_544/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_181/lstm_544/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_181/lstm_544/while/add_1AddV2Hsequential_181_lstm_544_while_sequential_181_lstm_544_while_loop_counter.sequential_181/lstm_544/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_181/lstm_544/while/IdentityIdentity'sequential_181/lstm_544/while/add_1:z:0#^sequential_181/lstm_544/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_544/while/Identity_1IdentityNsequential_181_lstm_544_while_sequential_181_lstm_544_while_maximum_iterations#^sequential_181/lstm_544/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_544/while/Identity_2Identity%sequential_181/lstm_544/while/add:z:0#^sequential_181/lstm_544/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_544/while/Identity_3IdentityRsequential_181/lstm_544/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_181/lstm_544/while/NoOp*
T0*
_output_shapes
: ?
(sequential_181/lstm_544/while/Identity_4Identity5sequential_181/lstm_544/while/lstm_cell_160/mul_2:z:0#^sequential_181/lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_181/lstm_544/while/Identity_5Identity5sequential_181/lstm_544/while/lstm_cell_160/add_1:z:0#^sequential_181/lstm_544/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_181/lstm_544/while/NoOpNoOpC^sequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOpB^sequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOpD^sequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_181_lstm_544_while_identity/sequential_181/lstm_544/while/Identity:output:0"]
(sequential_181_lstm_544_while_identity_11sequential_181/lstm_544/while/Identity_1:output:0"]
(sequential_181_lstm_544_while_identity_21sequential_181/lstm_544/while/Identity_2:output:0"]
(sequential_181_lstm_544_while_identity_31sequential_181/lstm_544/while/Identity_3:output:0"]
(sequential_181_lstm_544_while_identity_41sequential_181/lstm_544/while/Identity_4:output:0"]
(sequential_181_lstm_544_while_identity_51sequential_181/lstm_544/while/Identity_5:output:0"?
Ksequential_181_lstm_544_while_lstm_cell_160_biasadd_readvariableop_resourceMsequential_181_lstm_544_while_lstm_cell_160_biasadd_readvariableop_resource_0"?
Lsequential_181_lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resourceNsequential_181_lstm_544_while_lstm_cell_160_matmul_1_readvariableop_resource_0"?
Jsequential_181_lstm_544_while_lstm_cell_160_matmul_readvariableop_resourceLsequential_181_lstm_544_while_lstm_cell_160_matmul_readvariableop_resource_0"?
Esequential_181_lstm_544_while_sequential_181_lstm_544_strided_slice_1Gsequential_181_lstm_544_while_sequential_181_lstm_544_strided_slice_1_0"?
?sequential_181_lstm_544_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_544_tensorarrayunstack_tensorlistfromtensor?sequential_181_lstm_544_while_tensorarrayv2read_tensorlistgetitem_sequential_181_lstm_544_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOpBsequential_181/lstm_544/while/lstm_cell_160/BiasAdd/ReadVariableOp2?
Asequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOpAsequential_181/lstm_544/while/lstm_cell_160/MatMul/ReadVariableOp2?
Csequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOpCsequential_181/lstm_544/while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_975791

inputs"
lstm_543_975467:	?"
lstm_543_975469:	d?
lstm_543_975471:	?"
lstm_544_975617:	d?"
lstm_544_975619:	2?
lstm_544_975621:	?!
lstm_545_975767:2(!
lstm_545_975769:
(
lstm_545_975771:("
dense_181_975785:

dense_181_975787:
identity??!dense_181/StatefulPartitionedCall? lstm_543/StatefulPartitionedCall? lstm_544/StatefulPartitionedCall? lstm_545/StatefulPartitionedCall?
 lstm_543/StatefulPartitionedCallStatefulPartitionedCallinputslstm_543_975467lstm_543_975469lstm_543_975471*
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_975466?
 lstm_544/StatefulPartitionedCallStatefulPartitionedCall)lstm_543/StatefulPartitionedCall:output:0lstm_544_975617lstm_544_975619lstm_544_975621*
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_975616?
 lstm_545/StatefulPartitionedCallStatefulPartitionedCall)lstm_544/StatefulPartitionedCall:output:0lstm_545_975767lstm_545_975769lstm_545_975771*
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975766?
!dense_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_545/StatefulPartitionedCall:output:0dense_181_975785dense_181_975787*
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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784y
IdentityIdentity*dense_181/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_181/StatefulPartitionedCall!^lstm_543/StatefulPartitionedCall!^lstm_544/StatefulPartitionedCall!^lstm_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_181/StatefulPartitionedCall!dense_181/StatefulPartitionedCall2D
 lstm_543/StatefulPartitionedCall lstm_543/StatefulPartitionedCall2D
 lstm_544/StatefulPartitionedCall lstm_544/StatefulPartitionedCall2D
 lstm_545/StatefulPartitionedCall lstm_545/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_978770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_975682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_976312

inputs?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_976228*
condR
while_cond_976227*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_543_layer_call_fn_977457
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_974608|
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977765
inputs_0?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_977681*
condR
while_cond_977680*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_974888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_974888___redundant_placeholder04
0while_while_cond_974888___redundant_placeholder14
0while_while_cond_974888___redundant_placeholder24
0while_while_cond_974888___redundant_placeholder3
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
while_cond_977823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977823___redundant_placeholder04
0while_while_cond_977823___redundant_placeholder14
0while_while_cond_977823___redundant_placeholder24
0while_while_cond_977823___redundant_placeholder3
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_974958

inputs'
lstm_cell_160_974876:	d?'
lstm_cell_160_974878:	2?#
lstm_cell_160_974880:	?
identity??%lstm_cell_160/StatefulPartitionedCall?while;
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
%lstm_cell_160/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_160_974876lstm_cell_160_974878lstm_cell_160_974880*
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974830n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_160_974876lstm_cell_160_974878lstm_cell_160_974880*
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
while_body_974889*
condR
while_cond_974888*K
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
NoOpNoOp&^lstm_cell_160/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_160/StatefulPartitionedCall%lstm_cell_160/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_545_layer_call_and_return_conditional_losses_975982

inputs>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_975898*
condR
while_cond_975897*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_977967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_545_while_cond_976917.
*lstm_545_while_lstm_545_while_loop_counter4
0lstm_545_while_lstm_545_while_maximum_iterations
lstm_545_while_placeholder 
lstm_545_while_placeholder_1 
lstm_545_while_placeholder_2 
lstm_545_while_placeholder_30
,lstm_545_while_less_lstm_545_strided_slice_1F
Blstm_545_while_lstm_545_while_cond_976917___redundant_placeholder0F
Blstm_545_while_lstm_545_while_cond_976917___redundant_placeholder1F
Blstm_545_while_lstm_545_while_cond_976917___redundant_placeholder2F
Blstm_545_while_lstm_545_while_cond_976917___redundant_placeholder3
lstm_545_while_identity
?
lstm_545/while/LessLesslstm_545_while_placeholder,lstm_545_while_less_lstm_545_strided_slice_1*
T0*
_output_shapes
: ]
lstm_545/while/IdentityIdentitylstm_545/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_545_while_identity lstm_545/while/Identity:output:0*(
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
)__inference_lstm_543_layer_call_fn_977479

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
D__inference_lstm_543_layer_call_and_return_conditional_losses_976312s
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
?
?
J__inference_sequential_181_layer_call_and_return_conditional_losses_976462
lstm_543_input"
lstm_543_976435:	?"
lstm_543_976437:	d?
lstm_543_976439:	?"
lstm_544_976442:	d?"
lstm_544_976444:	2?
lstm_544_976446:	?!
lstm_545_976449:2(!
lstm_545_976451:
(
lstm_545_976453:("
dense_181_976456:

dense_181_976458:
identity??!dense_181/StatefulPartitionedCall? lstm_543/StatefulPartitionedCall? lstm_544/StatefulPartitionedCall? lstm_545/StatefulPartitionedCall?
 lstm_543/StatefulPartitionedCallStatefulPartitionedCalllstm_543_inputlstm_543_976435lstm_543_976437lstm_543_976439*
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_975466?
 lstm_544/StatefulPartitionedCallStatefulPartitionedCall)lstm_543/StatefulPartitionedCall:output:0lstm_544_976442lstm_544_976444lstm_544_976446*
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_975616?
 lstm_545/StatefulPartitionedCallStatefulPartitionedCall)lstm_544/StatefulPartitionedCall:output:0lstm_545_976449lstm_545_976451lstm_545_976453*
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975766?
!dense_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_545/StatefulPartitionedCall:output:0dense_181_976456dense_181_976458*
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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784y
IdentityIdentity*dense_181/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_181/StatefulPartitionedCall!^lstm_543/StatefulPartitionedCall!^lstm_544/StatefulPartitionedCall!^lstm_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_181/StatefulPartitionedCall!dense_181/StatefulPartitionedCall2D
 lstm_543/StatefulPartitionedCall lstm_543/StatefulPartitionedCall2D
 lstm_544/StatefulPartitionedCall lstm_544/StatefulPartitionedCall2D
 lstm_545/StatefulPartitionedCall lstm_545/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_543_input
?
?
.__inference_lstm_cell_159_layer_call_fn_979336

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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974480o
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
?
?
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979400

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
while_cond_977680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977680___redundant_placeholder04
0while_while_cond_977680___redundant_placeholder14
0while_while_cond_977680___redundant_placeholder24
0while_while_cond_977680___redundant_placeholder3
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979596

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

lstm_545_while_body_977345.
*lstm_545_while_lstm_545_while_loop_counter4
0lstm_545_while_lstm_545_while_maximum_iterations
lstm_545_while_placeholder 
lstm_545_while_placeholder_1 
lstm_545_while_placeholder_2 
lstm_545_while_placeholder_3-
)lstm_545_while_lstm_545_strided_slice_1_0i
elstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0:2(Q
?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(L
>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0:(
lstm_545_while_identity
lstm_545_while_identity_1
lstm_545_while_identity_2
lstm_545_while_identity_3
lstm_545_while_identity_4
lstm_545_while_identity_5+
'lstm_545_while_lstm_545_strided_slice_1g
clstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensorM
;lstm_545_while_lstm_cell_161_matmul_readvariableop_resource:2(O
=lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource:
(J
<lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource:(??3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp?2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp?4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp?
@lstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_545/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0lstm_545_while_placeholderIlstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_545/while/lstm_cell_161/MatMulMatMul9lstm_545/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_545/while/lstm_cell_161/MatMul_1MatMullstm_545_while_placeholder_2<lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_545/while/lstm_cell_161/addAddV2-lstm_545/while/lstm_cell_161/MatMul:product:0/lstm_545/while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_545/while/lstm_cell_161/BiasAddBiasAdd$lstm_545/while/lstm_cell_161/add:z:0;lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_545/while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_545/while/lstm_cell_161/splitSplit5lstm_545/while/lstm_cell_161/split/split_dim:output:0-lstm_545/while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_545/while/lstm_cell_161/SigmoidSigmoid+lstm_545/while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_545/while/lstm_cell_161/Sigmoid_1Sigmoid+lstm_545/while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_545/while/lstm_cell_161/mulMul*lstm_545/while/lstm_cell_161/Sigmoid_1:y:0lstm_545_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_545/while/lstm_cell_161/ReluRelu+lstm_545/while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/mul_1Mul(lstm_545/while/lstm_cell_161/Sigmoid:y:0/lstm_545/while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/add_1AddV2$lstm_545/while/lstm_cell_161/mul:z:0&lstm_545/while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_545/while/lstm_cell_161/Sigmoid_2Sigmoid+lstm_545/while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_545/while/lstm_cell_161/Relu_1Relu&lstm_545/while/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/mul_2Mul*lstm_545/while/lstm_cell_161/Sigmoid_2:y:01lstm_545/while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_545/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_545_while_placeholder_1lstm_545_while_placeholder&lstm_545/while/lstm_cell_161/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_545/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_545/while/addAddV2lstm_545_while_placeholderlstm_545/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_545/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_545/while/add_1AddV2*lstm_545_while_lstm_545_while_loop_counterlstm_545/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_545/while/IdentityIdentitylstm_545/while/add_1:z:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_1Identity0lstm_545_while_lstm_545_while_maximum_iterations^lstm_545/while/NoOp*
T0*
_output_shapes
: t
lstm_545/while/Identity_2Identitylstm_545/while/add:z:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_3IdentityClstm_545/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_4Identity&lstm_545/while/lstm_cell_161/mul_2:z:0^lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_545/while/Identity_5Identity&lstm_545/while/lstm_cell_161/add_1:z:0^lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_545/while/NoOpNoOp4^lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp3^lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp5^lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_545_while_identity lstm_545/while/Identity:output:0"?
lstm_545_while_identity_1"lstm_545/while/Identity_1:output:0"?
lstm_545_while_identity_2"lstm_545/while/Identity_2:output:0"?
lstm_545_while_identity_3"lstm_545/while/Identity_3:output:0"?
lstm_545_while_identity_4"lstm_545/while/Identity_4:output:0"?
lstm_545_while_identity_5"lstm_545/while/Identity_5:output:0"T
'lstm_545_while_lstm_545_strided_slice_1)lstm_545_while_lstm_545_strided_slice_1_0"~
<lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0"?
=lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0"|
;lstm_545_while_lstm_cell_161_matmul_readvariableop_resource=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0"?
clstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensorelstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp2h
2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp2l
4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_160_layer_call_fn_979434

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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974830o
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977908

inputs?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_977824*
condR
while_cond_977823*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_979198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979198___redundant_placeholder04
0while_while_cond_979198___redundant_placeholder14
0while_while_cond_979198___redundant_placeholder24
0while_while_cond_979198___redundant_placeholder3
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979466

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
while_body_979199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_544_layer_call_fn_978095

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
D__inference_lstm_544_layer_call_and_return_conditional_losses_976147s
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
?C
?

lstm_543_while_body_977067.
*lstm_543_while_lstm_543_while_loop_counter4
0lstm_543_while_lstm_543_while_maximum_iterations
lstm_543_while_placeholder 
lstm_543_while_placeholder_1 
lstm_543_while_placeholder_2 
lstm_543_while_placeholder_3-
)lstm_543_while_lstm_543_strided_slice_1_0i
elstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0:	?R
?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?M
>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
lstm_543_while_identity
lstm_543_while_identity_1
lstm_543_while_identity_2
lstm_543_while_identity_3
lstm_543_while_identity_4
lstm_543_while_identity_5+
'lstm_543_while_lstm_543_strided_slice_1g
clstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensorN
;lstm_543_while_lstm_cell_159_matmul_readvariableop_resource:	?P
=lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource:	d?K
<lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource:	???3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp?2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp?4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp?
@lstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_543/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0lstm_543_while_placeholderIlstm_543/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_543/while/lstm_cell_159/MatMulMatMul9lstm_543/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_543/while/lstm_cell_159/MatMul_1MatMullstm_543_while_placeholder_2<lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_543/while/lstm_cell_159/addAddV2-lstm_543/while/lstm_cell_159/MatMul:product:0/lstm_543/while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_543/while/lstm_cell_159/BiasAddBiasAdd$lstm_543/while/lstm_cell_159/add:z:0;lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_543/while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_543/while/lstm_cell_159/splitSplit5lstm_543/while/lstm_cell_159/split/split_dim:output:0-lstm_543/while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_543/while/lstm_cell_159/SigmoidSigmoid+lstm_543/while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_543/while/lstm_cell_159/Sigmoid_1Sigmoid+lstm_543/while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_543/while/lstm_cell_159/mulMul*lstm_543/while/lstm_cell_159/Sigmoid_1:y:0lstm_543_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_543/while/lstm_cell_159/ReluRelu+lstm_543/while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/mul_1Mul(lstm_543/while/lstm_cell_159/Sigmoid:y:0/lstm_543/while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/add_1AddV2$lstm_543/while/lstm_cell_159/mul:z:0&lstm_543/while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_543/while/lstm_cell_159/Sigmoid_2Sigmoid+lstm_543/while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_543/while/lstm_cell_159/Relu_1Relu&lstm_543/while/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_543/while/lstm_cell_159/mul_2Mul*lstm_543/while/lstm_cell_159/Sigmoid_2:y:01lstm_543/while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_543/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_543_while_placeholder_1lstm_543_while_placeholder&lstm_543/while/lstm_cell_159/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_543/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_543/while/addAddV2lstm_543_while_placeholderlstm_543/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_543/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_543/while/add_1AddV2*lstm_543_while_lstm_543_while_loop_counterlstm_543/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_543/while/IdentityIdentitylstm_543/while/add_1:z:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_1Identity0lstm_543_while_lstm_543_while_maximum_iterations^lstm_543/while/NoOp*
T0*
_output_shapes
: t
lstm_543/while/Identity_2Identitylstm_543/while/add:z:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_3IdentityClstm_543/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_543/while/NoOp*
T0*
_output_shapes
: ?
lstm_543/while/Identity_4Identity&lstm_543/while/lstm_cell_159/mul_2:z:0^lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_543/while/Identity_5Identity&lstm_543/while/lstm_cell_159/add_1:z:0^lstm_543/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_543/while/NoOpNoOp4^lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp3^lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp5^lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_543_while_identity lstm_543/while/Identity:output:0"?
lstm_543_while_identity_1"lstm_543/while/Identity_1:output:0"?
lstm_543_while_identity_2"lstm_543/while/Identity_2:output:0"?
lstm_543_while_identity_3"lstm_543/while/Identity_3:output:0"?
lstm_543_while_identity_4"lstm_543/while/Identity_4:output:0"?
lstm_543_while_identity_5"lstm_543/while/Identity_5:output:0"T
'lstm_543_while_lstm_543_strided_slice_1)lstm_543_while_lstm_543_strided_slice_1_0"~
<lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource>lstm_543_while_lstm_cell_159_biasadd_readvariableop_resource_0"?
=lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource?lstm_543_while_lstm_cell_159_matmul_1_readvariableop_resource_0"|
;lstm_543_while_lstm_cell_159_matmul_readvariableop_resource=lstm_543_while_lstm_cell_159_matmul_readvariableop_resource_0"?
clstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensorelstm_543_while_tensorarrayv2read_tensorlistgetitem_lstm_543_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp3lstm_543/while/lstm_cell_159/BiasAdd/ReadVariableOp2h
2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp2lstm_543/while/lstm_cell_159/MatMul/ReadVariableOp2l
4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp4lstm_543/while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_543_while_cond_977066.
*lstm_543_while_lstm_543_while_loop_counter4
0lstm_543_while_lstm_543_while_maximum_iterations
lstm_543_while_placeholder 
lstm_543_while_placeholder_1 
lstm_543_while_placeholder_2 
lstm_543_while_placeholder_30
,lstm_543_while_less_lstm_543_strided_slice_1F
Blstm_543_while_lstm_543_while_cond_977066___redundant_placeholder0F
Blstm_543_while_lstm_543_while_cond_977066___redundant_placeholder1F
Blstm_543_while_lstm_543_while_cond_977066___redundant_placeholder2F
Blstm_543_while_lstm_543_while_cond_977066___redundant_placeholder3
lstm_543_while_identity
?
lstm_543/while/LessLesslstm_543_while_placeholder,lstm_543_while_less_lstm_543_strided_slice_1*
T0*
_output_shapes
: ]
lstm_543/while/IdentityIdentitylstm_543/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_543_while_identity lstm_543/while/Identity:output:0*(
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
)__inference_lstm_545_layer_call_fn_978678
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975117o
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
?
?
)__inference_lstm_545_layer_call_fn_978700

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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975766o
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979564

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
?
)sequential_181_lstm_545_while_cond_974176L
Hsequential_181_lstm_545_while_sequential_181_lstm_545_while_loop_counterR
Nsequential_181_lstm_545_while_sequential_181_lstm_545_while_maximum_iterations-
)sequential_181_lstm_545_while_placeholder/
+sequential_181_lstm_545_while_placeholder_1/
+sequential_181_lstm_545_while_placeholder_2/
+sequential_181_lstm_545_while_placeholder_3N
Jsequential_181_lstm_545_while_less_sequential_181_lstm_545_strided_slice_1d
`sequential_181_lstm_545_while_sequential_181_lstm_545_while_cond_974176___redundant_placeholder0d
`sequential_181_lstm_545_while_sequential_181_lstm_545_while_cond_974176___redundant_placeholder1d
`sequential_181_lstm_545_while_sequential_181_lstm_545_while_cond_974176___redundant_placeholder2d
`sequential_181_lstm_545_while_sequential_181_lstm_545_while_cond_974176___redundant_placeholder3*
&sequential_181_lstm_545_while_identity
?
"sequential_181/lstm_545/while/LessLess)sequential_181_lstm_545_while_placeholderJsequential_181_lstm_545_while_less_sequential_181_lstm_545_strided_slice_1*
T0*
_output_shapes
: {
&sequential_181/lstm_545/while/IdentityIdentity&sequential_181/lstm_545/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_181_lstm_545_while_identity/sequential_181/lstm_545/while/Identity:output:0*(
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
$__inference_signature_wrapper_976527
lstm_543_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_543_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_974267o
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
_user_specified_namelstm_543_input
?C
?

lstm_545_while_body_976918.
*lstm_545_while_lstm_545_while_loop_counter4
0lstm_545_while_lstm_545_while_maximum_iterations
lstm_545_while_placeholder 
lstm_545_while_placeholder_1 
lstm_545_while_placeholder_2 
lstm_545_while_placeholder_3-
)lstm_545_while_lstm_545_strided_slice_1_0i
elstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0:2(Q
?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(L
>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0:(
lstm_545_while_identity
lstm_545_while_identity_1
lstm_545_while_identity_2
lstm_545_while_identity_3
lstm_545_while_identity_4
lstm_545_while_identity_5+
'lstm_545_while_lstm_545_strided_slice_1g
clstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensorM
;lstm_545_while_lstm_cell_161_matmul_readvariableop_resource:2(O
=lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource:
(J
<lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource:(??3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp?2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp?4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp?
@lstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_545/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0lstm_545_while_placeholderIlstm_545/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_545/while/lstm_cell_161/MatMulMatMul9lstm_545/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_545/while/lstm_cell_161/MatMul_1MatMullstm_545_while_placeholder_2<lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_545/while/lstm_cell_161/addAddV2-lstm_545/while/lstm_cell_161/MatMul:product:0/lstm_545/while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_545/while/lstm_cell_161/BiasAddBiasAdd$lstm_545/while/lstm_cell_161/add:z:0;lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_545/while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_545/while/lstm_cell_161/splitSplit5lstm_545/while/lstm_cell_161/split/split_dim:output:0-lstm_545/while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_545/while/lstm_cell_161/SigmoidSigmoid+lstm_545/while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_545/while/lstm_cell_161/Sigmoid_1Sigmoid+lstm_545/while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_545/while/lstm_cell_161/mulMul*lstm_545/while/lstm_cell_161/Sigmoid_1:y:0lstm_545_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_545/while/lstm_cell_161/ReluRelu+lstm_545/while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/mul_1Mul(lstm_545/while/lstm_cell_161/Sigmoid:y:0/lstm_545/while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/add_1AddV2$lstm_545/while/lstm_cell_161/mul:z:0&lstm_545/while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_545/while/lstm_cell_161/Sigmoid_2Sigmoid+lstm_545/while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_545/while/lstm_cell_161/Relu_1Relu&lstm_545/while/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_545/while/lstm_cell_161/mul_2Mul*lstm_545/while/lstm_cell_161/Sigmoid_2:y:01lstm_545/while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_545/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_545_while_placeholder_1lstm_545_while_placeholder&lstm_545/while/lstm_cell_161/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_545/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_545/while/addAddV2lstm_545_while_placeholderlstm_545/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_545/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_545/while/add_1AddV2*lstm_545_while_lstm_545_while_loop_counterlstm_545/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_545/while/IdentityIdentitylstm_545/while/add_1:z:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_1Identity0lstm_545_while_lstm_545_while_maximum_iterations^lstm_545/while/NoOp*
T0*
_output_shapes
: t
lstm_545/while/Identity_2Identitylstm_545/while/add:z:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_3IdentityClstm_545/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_545/while/NoOp*
T0*
_output_shapes
: ?
lstm_545/while/Identity_4Identity&lstm_545/while/lstm_cell_161/mul_2:z:0^lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_545/while/Identity_5Identity&lstm_545/while/lstm_cell_161/add_1:z:0^lstm_545/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_545/while/NoOpNoOp4^lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp3^lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp5^lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_545_while_identity lstm_545/while/Identity:output:0"?
lstm_545_while_identity_1"lstm_545/while/Identity_1:output:0"?
lstm_545_while_identity_2"lstm_545/while/Identity_2:output:0"?
lstm_545_while_identity_3"lstm_545/while/Identity_3:output:0"?
lstm_545_while_identity_4"lstm_545/while/Identity_4:output:0"?
lstm_545_while_identity_5"lstm_545/while/Identity_5:output:0"T
'lstm_545_while_lstm_545_strided_slice_1)lstm_545_while_lstm_545_strided_slice_1_0"~
<lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource>lstm_545_while_lstm_cell_161_biasadd_readvariableop_resource_0"?
=lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource?lstm_545_while_lstm_cell_161_matmul_1_readvariableop_resource_0"|
;lstm_545_while_lstm_cell_161_matmul_readvariableop_resource=lstm_545_while_lstm_cell_161_matmul_readvariableop_resource_0"?
clstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensorelstm_545_while_tensorarrayv2read_tensorlistgetitem_lstm_545_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp3lstm_545/while/lstm_cell_161/BiasAdd/ReadVariableOp2h
2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp2lstm_545/while/lstm_cell_161/MatMul/ReadVariableOp2l
4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp4lstm_545/while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977622
inputs_0?
,lstm_cell_159_matmul_readvariableop_resource:	?A
.lstm_cell_159_matmul_1_readvariableop_resource:	d?<
-lstm_cell_159_biasadd_readvariableop_resource:	?
identity??$lstm_cell_159/BiasAdd/ReadVariableOp?#lstm_cell_159/MatMul/ReadVariableOp?%lstm_cell_159/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_159/MatMul/ReadVariableOpReadVariableOp,lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_159/MatMulMatMulstrided_slice_2:output:0+lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_159/MatMul_1MatMulzeros:output:0-lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_159/addAddV2lstm_cell_159/MatMul:product:0 lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_159/BiasAddBiasAddlstm_cell_159/add:z:0,lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_159/splitSplit&lstm_cell_159/split/split_dim:output:0lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_159/SigmoidSigmoidlstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_1Sigmoidlstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_159/mulMullstm_cell_159/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_159/ReluRelulstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_1Mullstm_cell_159/Sigmoid:y:0 lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_159/add_1AddV2lstm_cell_159/mul:z:0lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_159/Sigmoid_2Sigmoidlstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_159/Relu_1Relulstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_159/mul_2Mullstm_cell_159/Sigmoid_2:y:0"lstm_cell_159/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_159_matmul_readvariableop_resource.lstm_cell_159_matmul_1_readvariableop_resource-lstm_cell_159_biasadd_readvariableop_resource*
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
while_body_977538*
condR
while_cond_977537*K
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
NoOpNoOp%^lstm_cell_159/BiasAdd/ReadVariableOp$^lstm_cell_159/MatMul/ReadVariableOp&^lstm_cell_159/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_159/BiasAdd/ReadVariableOp$lstm_cell_159/BiasAdd/ReadVariableOp2J
#lstm_cell_159/MatMul/ReadVariableOp#lstm_cell_159/MatMul/ReadVariableOp2N
%lstm_cell_159/MatMul_1/ReadVariableOp%lstm_cell_159/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_977966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977966___redundant_placeholder04
0while_while_cond_977966___redundant_placeholder14
0while_while_cond_977966___redundant_placeholder24
0while_while_cond_977966___redundant_placeholder3
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
while_body_978583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_975532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_160_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_160_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_160_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_160_matmul_readvariableop_resource:	d?G
4while_lstm_cell_160_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_160_biasadd_readvariableop_resource:	???*while/lstm_cell_160/BiasAdd/ReadVariableOp?)while/lstm_cell_160/MatMul/ReadVariableOp?+while/lstm_cell_160/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_160_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_160/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_160_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_160/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_160/addAddV2$while/lstm_cell_160/MatMul:product:0&while/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_160_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_160/BiasAddBiasAddwhile/lstm_cell_160/add:z:02while/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_160/splitSplit,while/lstm_cell_160/split/split_dim:output:0$while/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_160/SigmoidSigmoid"while/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_1Sigmoid"while/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mulMul!while/lstm_cell_160/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_160/ReluRelu"while/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_1Mulwhile/lstm_cell_160/Sigmoid:y:0&while/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/add_1AddV2while/lstm_cell_160/mul:z:0while/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_160/Sigmoid_2Sigmoid"while/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_160/Relu_1Reluwhile/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_160/mul_2Mul!while/lstm_cell_160/Sigmoid_2:y:0(while/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_160/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_160/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_160/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_160/BiasAdd/ReadVariableOp*^while/lstm_cell_160/MatMul/ReadVariableOp,^while/lstm_cell_160/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_160_biasadd_readvariableop_resource5while_lstm_cell_160_biasadd_readvariableop_resource_0"n
4while_lstm_cell_160_matmul_1_readvariableop_resource6while_lstm_cell_160_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_160_matmul_readvariableop_resource4while_lstm_cell_160_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_160/BiasAdd/ReadVariableOp*while/lstm_cell_160/BiasAdd/ReadVariableOp2V
)while/lstm_cell_160/MatMul/ReadVariableOp)while/lstm_cell_160/MatMul/ReadVariableOp2Z
+while/lstm_cell_160/MatMul_1/ReadVariableOp+while/lstm_cell_160/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_978997
inputs_0>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_978913*
condR
while_cond_978912*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_978912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978912___redundant_placeholder04
0while_while_cond_978912___redundant_placeholder14
0while_while_cond_978912___redundant_placeholder24
0while_while_cond_978912___redundant_placeholder3
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
while_cond_975381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975381___redundant_placeholder04
0while_while_cond_975381___redundant_placeholder14
0while_while_cond_975381___redundant_placeholder24
0while_while_cond_975381___redundant_placeholder3
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974830

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
?K
?
D__inference_lstm_544_layer_call_and_return_conditional_losses_978238
inputs_0?
,lstm_cell_160_matmul_readvariableop_resource:	d?A
.lstm_cell_160_matmul_1_readvariableop_resource:	2?<
-lstm_cell_160_biasadd_readvariableop_resource:	?
identity??$lstm_cell_160/BiasAdd/ReadVariableOp?#lstm_cell_160/MatMul/ReadVariableOp?%lstm_cell_160/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_160/MatMul/ReadVariableOpReadVariableOp,lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_160/MatMulMatMulstrided_slice_2:output:0+lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_160/MatMul_1MatMulzeros:output:0-lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_160/addAddV2lstm_cell_160/MatMul:product:0 lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_160/BiasAddBiasAddlstm_cell_160/add:z:0,lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_160/splitSplit&lstm_cell_160/split/split_dim:output:0lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_160/SigmoidSigmoidlstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_1Sigmoidlstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_160/mulMullstm_cell_160/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_160/ReluRelulstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_1Mullstm_cell_160/Sigmoid:y:0 lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_160/add_1AddV2lstm_cell_160/mul:z:0lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_160/Sigmoid_2Sigmoidlstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_160/Relu_1Relulstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_160/mul_2Mullstm_cell_160/Sigmoid_2:y:0"lstm_cell_160/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_160_matmul_readvariableop_resource.lstm_cell_160_matmul_1_readvariableop_resource-lstm_cell_160_biasadd_readvariableop_resource*
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
while_body_978154*
condR
while_cond_978153*K
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
NoOpNoOp%^lstm_cell_160/BiasAdd/ReadVariableOp$^lstm_cell_160/MatMul/ReadVariableOp&^lstm_cell_160/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_160/BiasAdd/ReadVariableOp$lstm_cell_160/BiasAdd/ReadVariableOp2J
#lstm_cell_160/MatMul/ReadVariableOp#lstm_cell_160/MatMul/ReadVariableOp2N
%lstm_cell_160/MatMul_1/ReadVariableOp%lstm_cell_160/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_977538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_181_layer_call_fn_976554

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
J__inference_sequential_181_layer_call_and_return_conditional_losses_975791o
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
while_body_975898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_161_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_161_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_161_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_161_matmul_readvariableop_resource:2(F
4while_lstm_cell_161_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_161_biasadd_readvariableop_resource:(??*while/lstm_cell_161/BiasAdd/ReadVariableOp?)while/lstm_cell_161/MatMul/ReadVariableOp?+while/lstm_cell_161/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_161_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_161/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_161_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_161/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_161/addAddV2$while/lstm_cell_161/MatMul:product:0&while/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_161_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_161/BiasAddBiasAddwhile/lstm_cell_161/add:z:02while/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_161/splitSplit,while/lstm_cell_161/split/split_dim:output:0$while/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_161/SigmoidSigmoid"while/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_1Sigmoid"while/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mulMul!while/lstm_cell_161/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_161/ReluRelu"while/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_1Mulwhile/lstm_cell_161/Sigmoid:y:0&while/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/add_1AddV2while/lstm_cell_161/mul:z:0while/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_161/Sigmoid_2Sigmoid"while/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_161/Relu_1Reluwhile/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_161/mul_2Mul!while/lstm_cell_161/Sigmoid_2:y:0(while/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_161/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_161/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_161/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_161/BiasAdd/ReadVariableOp*^while/lstm_cell_161/MatMul/ReadVariableOp,^while/lstm_cell_161/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_161_biasadd_readvariableop_resource5while_lstm_cell_161_biasadd_readvariableop_resource_0"n
4while_lstm_cell_161_matmul_1_readvariableop_resource6while_lstm_cell_161_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_161_matmul_readvariableop_resource4while_lstm_cell_161_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_161/BiasAdd/ReadVariableOp*while/lstm_cell_161/BiasAdd/ReadVariableOp2V
)while/lstm_cell_161/MatMul/ReadVariableOp)while/lstm_cell_161/MatMul/ReadVariableOp2Z
+while/lstm_cell_161/MatMul_1/ReadVariableOp+while/lstm_cell_161/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_976492
lstm_543_input"
lstm_543_976465:	?"
lstm_543_976467:	d?
lstm_543_976469:	?"
lstm_544_976472:	d?"
lstm_544_976474:	2?
lstm_544_976476:	?!
lstm_545_976479:2(!
lstm_545_976481:
(
lstm_545_976483:("
dense_181_976486:

dense_181_976488:
identity??!dense_181/StatefulPartitionedCall? lstm_543/StatefulPartitionedCall? lstm_544/StatefulPartitionedCall? lstm_545/StatefulPartitionedCall?
 lstm_543/StatefulPartitionedCallStatefulPartitionedCalllstm_543_inputlstm_543_976465lstm_543_976467lstm_543_976469*
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_976312?
 lstm_544/StatefulPartitionedCallStatefulPartitionedCall)lstm_543/StatefulPartitionedCall:output:0lstm_544_976472lstm_544_976474lstm_544_976476*
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_976147?
 lstm_545/StatefulPartitionedCallStatefulPartitionedCall)lstm_544/StatefulPartitionedCall:output:0lstm_545_976479lstm_545_976481lstm_545_976483*
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_975982?
!dense_181/StatefulPartitionedCallStatefulPartitionedCall)lstm_545/StatefulPartitionedCall:output:0dense_181_976486dense_181_976488*
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
E__inference_dense_181_layer_call_and_return_conditional_losses_975784y
IdentityIdentity*dense_181/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_181/StatefulPartitionedCall!^lstm_543/StatefulPartitionedCall!^lstm_544/StatefulPartitionedCall!^lstm_545/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_181/StatefulPartitionedCall!dense_181/StatefulPartitionedCall2D
 lstm_543/StatefulPartitionedCall lstm_543/StatefulPartitionedCall2D
 lstm_544/StatefulPartitionedCall lstm_544/StatefulPartitionedCall2D
 lstm_545/StatefulPartitionedCall lstm_545/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_543_input
?8
?
D__inference_lstm_545_layer_call_and_return_conditional_losses_975308

inputs&
lstm_cell_161_975226:2(&
lstm_cell_161_975228:
("
lstm_cell_161_975230:(
identity??%lstm_cell_161/StatefulPartitionedCall?while;
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
%lstm_cell_161/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_161_975226lstm_cell_161_975228lstm_cell_161_975230*
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975180n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_161_975226lstm_cell_161_975228lstm_cell_161_975230*
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
while_body_975239*
condR
while_cond_975238*K
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
NoOpNoOp&^lstm_cell_161/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_161/StatefulPartitionedCall%lstm_cell_161/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?"
?
while_body_974348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_159_974372_0:	?/
while_lstm_cell_159_974374_0:	d?+
while_lstm_cell_159_974376_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_159_974372:	?-
while_lstm_cell_159_974374:	d?)
while_lstm_cell_159_974376:	???+while/lstm_cell_159/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_159/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_159_974372_0while_lstm_cell_159_974374_0while_lstm_cell_159_974376_0*
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_974334?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_159/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_159/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_159/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_159/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_159_974372while_lstm_cell_159_974372_0":
while_lstm_cell_159_974374while_lstm_cell_159_974374_0":
while_lstm_cell_159_974376while_lstm_cell_159_974376_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_159/StatefulPartitionedCall+while/lstm_cell_159/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_544_while_cond_976778.
*lstm_544_while_lstm_544_while_loop_counter4
0lstm_544_while_lstm_544_while_maximum_iterations
lstm_544_while_placeholder 
lstm_544_while_placeholder_1 
lstm_544_while_placeholder_2 
lstm_544_while_placeholder_30
,lstm_544_while_less_lstm_544_strided_slice_1F
Blstm_544_while_lstm_544_while_cond_976778___redundant_placeholder0F
Blstm_544_while_lstm_544_while_cond_976778___redundant_placeholder1F
Blstm_544_while_lstm_544_while_cond_976778___redundant_placeholder2F
Blstm_544_while_lstm_544_while_cond_976778___redundant_placeholder3
lstm_544_while_identity
?
lstm_544/while/LessLesslstm_544_while_placeholder,lstm_544_while_less_lstm_544_strided_slice_1*
T0*
_output_shapes
: ]
lstm_544/while/IdentityIdentitylstm_544/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_544_while_identity lstm_544/while/Identity:output:0*(
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
while_cond_978153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978153___redundant_placeholder04
0while_while_cond_978153___redundant_placeholder14
0while_while_cond_978153___redundant_placeholder24
0while_while_cond_978153___redundant_placeholder3
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
while_cond_975238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975238___redundant_placeholder04
0while_while_cond_975238___redundant_placeholder14
0while_while_cond_975238___redundant_placeholder24
0while_while_cond_975238___redundant_placeholder3
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
while_cond_976227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_976227___redundant_placeholder04
0while_while_cond_976227___redundant_placeholder14
0while_while_cond_976227___redundant_placeholder24
0while_while_cond_976227___redundant_placeholder3
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
)__inference_lstm_543_layer_call_fn_977446
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_974417|
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_975180

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
??
?
J__inference_sequential_181_layer_call_and_return_conditional_losses_977435

inputsH
5lstm_543_lstm_cell_159_matmul_readvariableop_resource:	?J
7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource:	d?E
6lstm_543_lstm_cell_159_biasadd_readvariableop_resource:	?H
5lstm_544_lstm_cell_160_matmul_readvariableop_resource:	d?J
7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource:	2?E
6lstm_544_lstm_cell_160_biasadd_readvariableop_resource:	?G
5lstm_545_lstm_cell_161_matmul_readvariableop_resource:2(I
7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource:
(D
6lstm_545_lstm_cell_161_biasadd_readvariableop_resource:(:
(dense_181_matmul_readvariableop_resource:
7
)dense_181_biasadd_readvariableop_resource:
identity?? dense_181/BiasAdd/ReadVariableOp?dense_181/MatMul/ReadVariableOp?-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp?,lstm_543/lstm_cell_159/MatMul/ReadVariableOp?.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp?lstm_543/while?-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp?,lstm_544/lstm_cell_160/MatMul/ReadVariableOp?.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp?lstm_544/while?-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp?,lstm_545/lstm_cell_161/MatMul/ReadVariableOp?.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp?lstm_545/whileD
lstm_543/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_543/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_543/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_543/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_sliceStridedSlicelstm_543/Shape:output:0%lstm_543/strided_slice/stack:output:0'lstm_543/strided_slice/stack_1:output:0'lstm_543/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_543/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_543/zeros/packedPacklstm_543/strided_slice:output:0 lstm_543/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_543/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_543/zerosFilllstm_543/zeros/packed:output:0lstm_543/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_543/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_543/zeros_1/packedPacklstm_543/strided_slice:output:0"lstm_543/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_543/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_543/zeros_1Fill lstm_543/zeros_1/packed:output:0lstm_543/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_543/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_543/transpose	Transposeinputs lstm_543/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_543/Shape_1Shapelstm_543/transpose:y:0*
T0*
_output_shapes
:h
lstm_543/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_543/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_1StridedSlicelstm_543/Shape_1:output:0'lstm_543/strided_slice_1/stack:output:0)lstm_543/strided_slice_1/stack_1:output:0)lstm_543/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_543/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_543/TensorArrayV2TensorListReserve-lstm_543/TensorArrayV2/element_shape:output:0!lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_543/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_543/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_543/transpose:y:0Glstm_543/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_543/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_543/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_2StridedSlicelstm_543/transpose:y:0'lstm_543/strided_slice_2/stack:output:0)lstm_543/strided_slice_2/stack_1:output:0)lstm_543/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_543/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp5lstm_543_lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_543/lstm_cell_159/MatMulMatMul!lstm_543/strided_slice_2:output:04lstm_543/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_543/lstm_cell_159/MatMul_1MatMullstm_543/zeros:output:06lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_543/lstm_cell_159/addAddV2'lstm_543/lstm_cell_159/MatMul:product:0)lstm_543/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp6lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_543/lstm_cell_159/BiasAddBiasAddlstm_543/lstm_cell_159/add:z:05lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_543/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_543/lstm_cell_159/splitSplit/lstm_543/lstm_cell_159/split/split_dim:output:0'lstm_543/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_543/lstm_cell_159/SigmoidSigmoid%lstm_543/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_543/lstm_cell_159/Sigmoid_1Sigmoid%lstm_543/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mulMul$lstm_543/lstm_cell_159/Sigmoid_1:y:0lstm_543/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_543/lstm_cell_159/ReluRelu%lstm_543/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mul_1Mul"lstm_543/lstm_cell_159/Sigmoid:y:0)lstm_543/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/add_1AddV2lstm_543/lstm_cell_159/mul:z:0 lstm_543/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_543/lstm_cell_159/Sigmoid_2Sigmoid%lstm_543/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_543/lstm_cell_159/Relu_1Relu lstm_543/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mul_2Mul$lstm_543/lstm_cell_159/Sigmoid_2:y:0+lstm_543/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_543/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_543/TensorArrayV2_1TensorListReserve/lstm_543/TensorArrayV2_1/element_shape:output:0!lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_543/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_543/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_543/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_543/whileWhile$lstm_543/while/loop_counter:output:0*lstm_543/while/maximum_iterations:output:0lstm_543/time:output:0!lstm_543/TensorArrayV2_1:handle:0lstm_543/zeros:output:0lstm_543/zeros_1:output:0!lstm_543/strided_slice_1:output:0@lstm_543/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_543_lstm_cell_159_matmul_readvariableop_resource7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource6lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
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
lstm_543_while_body_977067*&
condR
lstm_543_while_cond_977066*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_543/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_543/TensorArrayV2Stack/TensorListStackTensorListStacklstm_543/while:output:3Blstm_543/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_543/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_543/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_3StridedSlice4lstm_543/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_543/strided_slice_3/stack:output:0)lstm_543/strided_slice_3/stack_1:output:0)lstm_543/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_543/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_543/transpose_1	Transpose4lstm_543/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_543/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_543/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_544/ShapeShapelstm_543/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_544/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_544/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_544/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_sliceStridedSlicelstm_544/Shape:output:0%lstm_544/strided_slice/stack:output:0'lstm_544/strided_slice/stack_1:output:0'lstm_544/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_544/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_544/zeros/packedPacklstm_544/strided_slice:output:0 lstm_544/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_544/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_544/zerosFilllstm_544/zeros/packed:output:0lstm_544/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_544/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_544/zeros_1/packedPacklstm_544/strided_slice:output:0"lstm_544/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_544/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_544/zeros_1Fill lstm_544/zeros_1/packed:output:0lstm_544/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_544/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_544/transpose	Transposelstm_543/transpose_1:y:0 lstm_544/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_544/Shape_1Shapelstm_544/transpose:y:0*
T0*
_output_shapes
:h
lstm_544/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_544/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_1StridedSlicelstm_544/Shape_1:output:0'lstm_544/strided_slice_1/stack:output:0)lstm_544/strided_slice_1/stack_1:output:0)lstm_544/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_544/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_544/TensorArrayV2TensorListReserve-lstm_544/TensorArrayV2/element_shape:output:0!lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_544/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_544/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_544/transpose:y:0Glstm_544/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_544/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_544/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_2StridedSlicelstm_544/transpose:y:0'lstm_544/strided_slice_2/stack:output:0)lstm_544/strided_slice_2/stack_1:output:0)lstm_544/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_544/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp5lstm_544_lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_544/lstm_cell_160/MatMulMatMul!lstm_544/strided_slice_2:output:04lstm_544/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_544/lstm_cell_160/MatMul_1MatMullstm_544/zeros:output:06lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_544/lstm_cell_160/addAddV2'lstm_544/lstm_cell_160/MatMul:product:0)lstm_544/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp6lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_544/lstm_cell_160/BiasAddBiasAddlstm_544/lstm_cell_160/add:z:05lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_544/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_544/lstm_cell_160/splitSplit/lstm_544/lstm_cell_160/split/split_dim:output:0'lstm_544/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_544/lstm_cell_160/SigmoidSigmoid%lstm_544/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_544/lstm_cell_160/Sigmoid_1Sigmoid%lstm_544/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mulMul$lstm_544/lstm_cell_160/Sigmoid_1:y:0lstm_544/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_544/lstm_cell_160/ReluRelu%lstm_544/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mul_1Mul"lstm_544/lstm_cell_160/Sigmoid:y:0)lstm_544/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/add_1AddV2lstm_544/lstm_cell_160/mul:z:0 lstm_544/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_544/lstm_cell_160/Sigmoid_2Sigmoid%lstm_544/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_544/lstm_cell_160/Relu_1Relu lstm_544/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mul_2Mul$lstm_544/lstm_cell_160/Sigmoid_2:y:0+lstm_544/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_544/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_544/TensorArrayV2_1TensorListReserve/lstm_544/TensorArrayV2_1/element_shape:output:0!lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_544/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_544/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_544/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_544/whileWhile$lstm_544/while/loop_counter:output:0*lstm_544/while/maximum_iterations:output:0lstm_544/time:output:0!lstm_544/TensorArrayV2_1:handle:0lstm_544/zeros:output:0lstm_544/zeros_1:output:0!lstm_544/strided_slice_1:output:0@lstm_544/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_544_lstm_cell_160_matmul_readvariableop_resource7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource6lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
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
lstm_544_while_body_977206*&
condR
lstm_544_while_cond_977205*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_544/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_544/TensorArrayV2Stack/TensorListStackTensorListStacklstm_544/while:output:3Blstm_544/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_544/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_544/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_3StridedSlice4lstm_544/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_544/strided_slice_3/stack:output:0)lstm_544/strided_slice_3/stack_1:output:0)lstm_544/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_544/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_544/transpose_1	Transpose4lstm_544/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_544/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_544/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_545/ShapeShapelstm_544/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_545/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_545/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_545/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_sliceStridedSlicelstm_545/Shape:output:0%lstm_545/strided_slice/stack:output:0'lstm_545/strided_slice/stack_1:output:0'lstm_545/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_545/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_545/zeros/packedPacklstm_545/strided_slice:output:0 lstm_545/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_545/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_545/zerosFilllstm_545/zeros/packed:output:0lstm_545/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_545/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_545/zeros_1/packedPacklstm_545/strided_slice:output:0"lstm_545/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_545/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_545/zeros_1Fill lstm_545/zeros_1/packed:output:0lstm_545/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_545/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_545/transpose	Transposelstm_544/transpose_1:y:0 lstm_545/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_545/Shape_1Shapelstm_545/transpose:y:0*
T0*
_output_shapes
:h
lstm_545/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_545/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_1StridedSlicelstm_545/Shape_1:output:0'lstm_545/strided_slice_1/stack:output:0)lstm_545/strided_slice_1/stack_1:output:0)lstm_545/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_545/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_545/TensorArrayV2TensorListReserve-lstm_545/TensorArrayV2/element_shape:output:0!lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_545/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_545/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_545/transpose:y:0Glstm_545/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_545/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_545/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_2StridedSlicelstm_545/transpose:y:0'lstm_545/strided_slice_2/stack:output:0)lstm_545/strided_slice_2/stack_1:output:0)lstm_545/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_545/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp5lstm_545_lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_545/lstm_cell_161/MatMulMatMul!lstm_545/strided_slice_2:output:04lstm_545/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_545/lstm_cell_161/MatMul_1MatMullstm_545/zeros:output:06lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_545/lstm_cell_161/addAddV2'lstm_545/lstm_cell_161/MatMul:product:0)lstm_545/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp6lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_545/lstm_cell_161/BiasAddBiasAddlstm_545/lstm_cell_161/add:z:05lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_545/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_545/lstm_cell_161/splitSplit/lstm_545/lstm_cell_161/split/split_dim:output:0'lstm_545/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_545/lstm_cell_161/SigmoidSigmoid%lstm_545/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_545/lstm_cell_161/Sigmoid_1Sigmoid%lstm_545/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mulMul$lstm_545/lstm_cell_161/Sigmoid_1:y:0lstm_545/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_545/lstm_cell_161/ReluRelu%lstm_545/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mul_1Mul"lstm_545/lstm_cell_161/Sigmoid:y:0)lstm_545/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/add_1AddV2lstm_545/lstm_cell_161/mul:z:0 lstm_545/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_545/lstm_cell_161/Sigmoid_2Sigmoid%lstm_545/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_545/lstm_cell_161/Relu_1Relu lstm_545/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mul_2Mul$lstm_545/lstm_cell_161/Sigmoid_2:y:0+lstm_545/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_545/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_545/TensorArrayV2_1TensorListReserve/lstm_545/TensorArrayV2_1/element_shape:output:0!lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_545/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_545/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_545/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_545/whileWhile$lstm_545/while/loop_counter:output:0*lstm_545/while/maximum_iterations:output:0lstm_545/time:output:0!lstm_545/TensorArrayV2_1:handle:0lstm_545/zeros:output:0lstm_545/zeros_1:output:0!lstm_545/strided_slice_1:output:0@lstm_545/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_545_lstm_cell_161_matmul_readvariableop_resource7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource6lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
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
lstm_545_while_body_977345*&
condR
lstm_545_while_cond_977344*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_545/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_545/TensorArrayV2Stack/TensorListStackTensorListStacklstm_545/while:output:3Blstm_545/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_545/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_545/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_3StridedSlice4lstm_545/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_545/strided_slice_3/stack:output:0)lstm_545/strided_slice_3/stack_1:output:0)lstm_545/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_545/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_545/transpose_1	Transpose4lstm_545/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_545/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_545/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_181/MatMul/ReadVariableOpReadVariableOp(dense_181_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_181/MatMulMatMul!lstm_545/strided_slice_3:output:0'dense_181/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_181/BiasAdd/ReadVariableOpReadVariableOp)dense_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_181/BiasAddBiasAdddense_181/MatMul:product:0(dense_181/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_181/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_181/BiasAdd/ReadVariableOp ^dense_181/MatMul/ReadVariableOp.^lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp-^lstm_543/lstm_cell_159/MatMul/ReadVariableOp/^lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp^lstm_543/while.^lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp-^lstm_544/lstm_cell_160/MatMul/ReadVariableOp/^lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp^lstm_544/while.^lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp-^lstm_545/lstm_cell_161/MatMul/ReadVariableOp/^lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp^lstm_545/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_181/BiasAdd/ReadVariableOp dense_181/BiasAdd/ReadVariableOp2B
dense_181/MatMul/ReadVariableOpdense_181/MatMul/ReadVariableOp2^
-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp2\
,lstm_543/lstm_cell_159/MatMul/ReadVariableOp,lstm_543/lstm_cell_159/MatMul/ReadVariableOp2`
.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp2 
lstm_543/whilelstm_543/while2^
-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp2\
,lstm_544/lstm_cell_160/MatMul/ReadVariableOp,lstm_544/lstm_cell_160/MatMul/ReadVariableOp2`
.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp2 
lstm_544/whilelstm_544/while2^
-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp2\
,lstm_545/lstm_cell_161/MatMul/ReadVariableOp,lstm_545/lstm_cell_161/MatMul/ReadVariableOp2`
.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp2 
lstm_545/whilelstm_545/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_545_layer_call_and_return_conditional_losses_978854
inputs_0>
,lstm_cell_161_matmul_readvariableop_resource:2(@
.lstm_cell_161_matmul_1_readvariableop_resource:
(;
-lstm_cell_161_biasadd_readvariableop_resource:(
identity??$lstm_cell_161/BiasAdd/ReadVariableOp?#lstm_cell_161/MatMul/ReadVariableOp?%lstm_cell_161/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_161/MatMul/ReadVariableOpReadVariableOp,lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_161/MatMulMatMulstrided_slice_2:output:0+lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_161/MatMul_1MatMulzeros:output:0-lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_161/addAddV2lstm_cell_161/MatMul:product:0 lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_161/BiasAddBiasAddlstm_cell_161/add:z:0,lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_161/splitSplit&lstm_cell_161/split/split_dim:output:0lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_161/SigmoidSigmoidlstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_1Sigmoidlstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_161/mulMullstm_cell_161/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_161/ReluRelulstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_1Mullstm_cell_161/Sigmoid:y:0 lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_161/add_1AddV2lstm_cell_161/mul:z:0lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_161/Sigmoid_2Sigmoidlstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_161/Relu_1Relulstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_161/mul_2Mullstm_cell_161/Sigmoid_2:y:0"lstm_cell_161/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_161_matmul_readvariableop_resource.lstm_cell_161_matmul_1_readvariableop_resource-lstm_cell_161_biasadd_readvariableop_resource*
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
while_body_978770*
condR
while_cond_978769*K
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
NoOpNoOp%^lstm_cell_161/BiasAdd/ReadVariableOp$^lstm_cell_161/MatMul/ReadVariableOp&^lstm_cell_161/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_161/BiasAdd/ReadVariableOp$lstm_cell_161/BiasAdd/ReadVariableOp2J
#lstm_cell_161/MatMul/ReadVariableOp#lstm_cell_161/MatMul/ReadVariableOp2N
%lstm_cell_161/MatMul_1/ReadVariableOp%lstm_cell_161/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_974684

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
while_cond_975897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975897___redundant_placeholder04
0while_while_cond_975897___redundant_placeholder14
0while_while_cond_975897___redundant_placeholder24
0while_while_cond_975897___redundant_placeholder3
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
while_body_977681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_159_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_159_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_159_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_159_matmul_readvariableop_resource:	?G
4while_lstm_cell_159_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_159_biasadd_readvariableop_resource:	???*while/lstm_cell_159/BiasAdd/ReadVariableOp?)while/lstm_cell_159/MatMul/ReadVariableOp?+while/lstm_cell_159/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_159_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_159/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_159_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_159/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_159/addAddV2$while/lstm_cell_159/MatMul:product:0&while/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_159_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_159/BiasAddBiasAddwhile/lstm_cell_159/add:z:02while/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_159/splitSplit,while/lstm_cell_159/split/split_dim:output:0$while/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_159/SigmoidSigmoid"while/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_1Sigmoid"while/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mulMul!while/lstm_cell_159/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_159/ReluRelu"while/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_1Mulwhile/lstm_cell_159/Sigmoid:y:0&while/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/add_1AddV2while/lstm_cell_159/mul:z:0while/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_159/Sigmoid_2Sigmoid"while/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_159/Relu_1Reluwhile/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_159/mul_2Mul!while/lstm_cell_159/Sigmoid_2:y:0(while/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_159/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_159/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_159/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_159/BiasAdd/ReadVariableOp*^while/lstm_cell_159/MatMul/ReadVariableOp,^while/lstm_cell_159/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_159_biasadd_readvariableop_resource5while_lstm_cell_159_biasadd_readvariableop_resource_0"n
4while_lstm_cell_159_matmul_1_readvariableop_resource6while_lstm_cell_159_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_159_matmul_readvariableop_resource4while_lstm_cell_159_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_159/BiasAdd/ReadVariableOp*while/lstm_cell_159/BiasAdd/ReadVariableOp2V
)while/lstm_cell_159/MatMul/ReadVariableOp)while/lstm_cell_159/MatMul/ReadVariableOp2Z
+while/lstm_cell_159/MatMul_1/ReadVariableOp+while/lstm_cell_159/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_544_layer_call_fn_978073
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_974958|
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
??
?
J__inference_sequential_181_layer_call_and_return_conditional_losses_977008

inputsH
5lstm_543_lstm_cell_159_matmul_readvariableop_resource:	?J
7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource:	d?E
6lstm_543_lstm_cell_159_biasadd_readvariableop_resource:	?H
5lstm_544_lstm_cell_160_matmul_readvariableop_resource:	d?J
7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource:	2?E
6lstm_544_lstm_cell_160_biasadd_readvariableop_resource:	?G
5lstm_545_lstm_cell_161_matmul_readvariableop_resource:2(I
7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource:
(D
6lstm_545_lstm_cell_161_biasadd_readvariableop_resource:(:
(dense_181_matmul_readvariableop_resource:
7
)dense_181_biasadd_readvariableop_resource:
identity?? dense_181/BiasAdd/ReadVariableOp?dense_181/MatMul/ReadVariableOp?-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp?,lstm_543/lstm_cell_159/MatMul/ReadVariableOp?.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp?lstm_543/while?-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp?,lstm_544/lstm_cell_160/MatMul/ReadVariableOp?.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp?lstm_544/while?-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp?,lstm_545/lstm_cell_161/MatMul/ReadVariableOp?.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp?lstm_545/whileD
lstm_543/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_543/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_543/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_543/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_sliceStridedSlicelstm_543/Shape:output:0%lstm_543/strided_slice/stack:output:0'lstm_543/strided_slice/stack_1:output:0'lstm_543/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_543/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_543/zeros/packedPacklstm_543/strided_slice:output:0 lstm_543/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_543/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_543/zerosFilllstm_543/zeros/packed:output:0lstm_543/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_543/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_543/zeros_1/packedPacklstm_543/strided_slice:output:0"lstm_543/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_543/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_543/zeros_1Fill lstm_543/zeros_1/packed:output:0lstm_543/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_543/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_543/transpose	Transposeinputs lstm_543/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_543/Shape_1Shapelstm_543/transpose:y:0*
T0*
_output_shapes
:h
lstm_543/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_543/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_1StridedSlicelstm_543/Shape_1:output:0'lstm_543/strided_slice_1/stack:output:0)lstm_543/strided_slice_1/stack_1:output:0)lstm_543/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_543/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_543/TensorArrayV2TensorListReserve-lstm_543/TensorArrayV2/element_shape:output:0!lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_543/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_543/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_543/transpose:y:0Glstm_543/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_543/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_543/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_2StridedSlicelstm_543/transpose:y:0'lstm_543/strided_slice_2/stack:output:0)lstm_543/strided_slice_2/stack_1:output:0)lstm_543/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_543/lstm_cell_159/MatMul/ReadVariableOpReadVariableOp5lstm_543_lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_543/lstm_cell_159/MatMulMatMul!lstm_543/strided_slice_2:output:04lstm_543/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOp7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_543/lstm_cell_159/MatMul_1MatMullstm_543/zeros:output:06lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_543/lstm_cell_159/addAddV2'lstm_543/lstm_cell_159/MatMul:product:0)lstm_543/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOp6lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_543/lstm_cell_159/BiasAddBiasAddlstm_543/lstm_cell_159/add:z:05lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_543/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_543/lstm_cell_159/splitSplit/lstm_543/lstm_cell_159/split/split_dim:output:0'lstm_543/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_543/lstm_cell_159/SigmoidSigmoid%lstm_543/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_543/lstm_cell_159/Sigmoid_1Sigmoid%lstm_543/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mulMul$lstm_543/lstm_cell_159/Sigmoid_1:y:0lstm_543/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_543/lstm_cell_159/ReluRelu%lstm_543/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mul_1Mul"lstm_543/lstm_cell_159/Sigmoid:y:0)lstm_543/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/add_1AddV2lstm_543/lstm_cell_159/mul:z:0 lstm_543/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_543/lstm_cell_159/Sigmoid_2Sigmoid%lstm_543/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_543/lstm_cell_159/Relu_1Relu lstm_543/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_543/lstm_cell_159/mul_2Mul$lstm_543/lstm_cell_159/Sigmoid_2:y:0+lstm_543/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_543/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_543/TensorArrayV2_1TensorListReserve/lstm_543/TensorArrayV2_1/element_shape:output:0!lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_543/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_543/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_543/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_543/whileWhile$lstm_543/while/loop_counter:output:0*lstm_543/while/maximum_iterations:output:0lstm_543/time:output:0!lstm_543/TensorArrayV2_1:handle:0lstm_543/zeros:output:0lstm_543/zeros_1:output:0!lstm_543/strided_slice_1:output:0@lstm_543/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_543_lstm_cell_159_matmul_readvariableop_resource7lstm_543_lstm_cell_159_matmul_1_readvariableop_resource6lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
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
lstm_543_while_body_976640*&
condR
lstm_543_while_cond_976639*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_543/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_543/TensorArrayV2Stack/TensorListStackTensorListStacklstm_543/while:output:3Blstm_543/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_543/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_543/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_543/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_543/strided_slice_3StridedSlice4lstm_543/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_543/strided_slice_3/stack:output:0)lstm_543/strided_slice_3/stack_1:output:0)lstm_543/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_543/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_543/transpose_1	Transpose4lstm_543/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_543/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_543/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_544/ShapeShapelstm_543/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_544/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_544/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_544/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_sliceStridedSlicelstm_544/Shape:output:0%lstm_544/strided_slice/stack:output:0'lstm_544/strided_slice/stack_1:output:0'lstm_544/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_544/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_544/zeros/packedPacklstm_544/strided_slice:output:0 lstm_544/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_544/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_544/zerosFilllstm_544/zeros/packed:output:0lstm_544/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_544/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_544/zeros_1/packedPacklstm_544/strided_slice:output:0"lstm_544/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_544/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_544/zeros_1Fill lstm_544/zeros_1/packed:output:0lstm_544/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_544/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_544/transpose	Transposelstm_543/transpose_1:y:0 lstm_544/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_544/Shape_1Shapelstm_544/transpose:y:0*
T0*
_output_shapes
:h
lstm_544/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_544/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_1StridedSlicelstm_544/Shape_1:output:0'lstm_544/strided_slice_1/stack:output:0)lstm_544/strided_slice_1/stack_1:output:0)lstm_544/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_544/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_544/TensorArrayV2TensorListReserve-lstm_544/TensorArrayV2/element_shape:output:0!lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_544/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_544/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_544/transpose:y:0Glstm_544/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_544/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_544/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_2StridedSlicelstm_544/transpose:y:0'lstm_544/strided_slice_2/stack:output:0)lstm_544/strided_slice_2/stack_1:output:0)lstm_544/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_544/lstm_cell_160/MatMul/ReadVariableOpReadVariableOp5lstm_544_lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_544/lstm_cell_160/MatMulMatMul!lstm_544/strided_slice_2:output:04lstm_544/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOp7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_544/lstm_cell_160/MatMul_1MatMullstm_544/zeros:output:06lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_544/lstm_cell_160/addAddV2'lstm_544/lstm_cell_160/MatMul:product:0)lstm_544/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOp6lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_544/lstm_cell_160/BiasAddBiasAddlstm_544/lstm_cell_160/add:z:05lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_544/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_544/lstm_cell_160/splitSplit/lstm_544/lstm_cell_160/split/split_dim:output:0'lstm_544/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_544/lstm_cell_160/SigmoidSigmoid%lstm_544/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_544/lstm_cell_160/Sigmoid_1Sigmoid%lstm_544/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mulMul$lstm_544/lstm_cell_160/Sigmoid_1:y:0lstm_544/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_544/lstm_cell_160/ReluRelu%lstm_544/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mul_1Mul"lstm_544/lstm_cell_160/Sigmoid:y:0)lstm_544/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/add_1AddV2lstm_544/lstm_cell_160/mul:z:0 lstm_544/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_544/lstm_cell_160/Sigmoid_2Sigmoid%lstm_544/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_544/lstm_cell_160/Relu_1Relu lstm_544/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_544/lstm_cell_160/mul_2Mul$lstm_544/lstm_cell_160/Sigmoid_2:y:0+lstm_544/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_544/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_544/TensorArrayV2_1TensorListReserve/lstm_544/TensorArrayV2_1/element_shape:output:0!lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_544/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_544/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_544/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_544/whileWhile$lstm_544/while/loop_counter:output:0*lstm_544/while/maximum_iterations:output:0lstm_544/time:output:0!lstm_544/TensorArrayV2_1:handle:0lstm_544/zeros:output:0lstm_544/zeros_1:output:0!lstm_544/strided_slice_1:output:0@lstm_544/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_544_lstm_cell_160_matmul_readvariableop_resource7lstm_544_lstm_cell_160_matmul_1_readvariableop_resource6lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
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
lstm_544_while_body_976779*&
condR
lstm_544_while_cond_976778*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_544/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_544/TensorArrayV2Stack/TensorListStackTensorListStacklstm_544/while:output:3Blstm_544/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_544/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_544/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_544/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_544/strided_slice_3StridedSlice4lstm_544/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_544/strided_slice_3/stack:output:0)lstm_544/strided_slice_3/stack_1:output:0)lstm_544/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_544/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_544/transpose_1	Transpose4lstm_544/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_544/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_544/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_545/ShapeShapelstm_544/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_545/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_545/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_545/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_sliceStridedSlicelstm_545/Shape:output:0%lstm_545/strided_slice/stack:output:0'lstm_545/strided_slice/stack_1:output:0'lstm_545/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_545/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_545/zeros/packedPacklstm_545/strided_slice:output:0 lstm_545/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_545/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_545/zerosFilllstm_545/zeros/packed:output:0lstm_545/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_545/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_545/zeros_1/packedPacklstm_545/strided_slice:output:0"lstm_545/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_545/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_545/zeros_1Fill lstm_545/zeros_1/packed:output:0lstm_545/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_545/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_545/transpose	Transposelstm_544/transpose_1:y:0 lstm_545/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_545/Shape_1Shapelstm_545/transpose:y:0*
T0*
_output_shapes
:h
lstm_545/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_545/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_1StridedSlicelstm_545/Shape_1:output:0'lstm_545/strided_slice_1/stack:output:0)lstm_545/strided_slice_1/stack_1:output:0)lstm_545/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_545/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_545/TensorArrayV2TensorListReserve-lstm_545/TensorArrayV2/element_shape:output:0!lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_545/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_545/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_545/transpose:y:0Glstm_545/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_545/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_545/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_2StridedSlicelstm_545/transpose:y:0'lstm_545/strided_slice_2/stack:output:0)lstm_545/strided_slice_2/stack_1:output:0)lstm_545/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_545/lstm_cell_161/MatMul/ReadVariableOpReadVariableOp5lstm_545_lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_545/lstm_cell_161/MatMulMatMul!lstm_545/strided_slice_2:output:04lstm_545/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOp7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_545/lstm_cell_161/MatMul_1MatMullstm_545/zeros:output:06lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_545/lstm_cell_161/addAddV2'lstm_545/lstm_cell_161/MatMul:product:0)lstm_545/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOp6lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_545/lstm_cell_161/BiasAddBiasAddlstm_545/lstm_cell_161/add:z:05lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_545/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_545/lstm_cell_161/splitSplit/lstm_545/lstm_cell_161/split/split_dim:output:0'lstm_545/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_545/lstm_cell_161/SigmoidSigmoid%lstm_545/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_545/lstm_cell_161/Sigmoid_1Sigmoid%lstm_545/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mulMul$lstm_545/lstm_cell_161/Sigmoid_1:y:0lstm_545/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_545/lstm_cell_161/ReluRelu%lstm_545/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mul_1Mul"lstm_545/lstm_cell_161/Sigmoid:y:0)lstm_545/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/add_1AddV2lstm_545/lstm_cell_161/mul:z:0 lstm_545/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_545/lstm_cell_161/Sigmoid_2Sigmoid%lstm_545/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_545/lstm_cell_161/Relu_1Relu lstm_545/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_545/lstm_cell_161/mul_2Mul$lstm_545/lstm_cell_161/Sigmoid_2:y:0+lstm_545/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_545/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_545/TensorArrayV2_1TensorListReserve/lstm_545/TensorArrayV2_1/element_shape:output:0!lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_545/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_545/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_545/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_545/whileWhile$lstm_545/while/loop_counter:output:0*lstm_545/while/maximum_iterations:output:0lstm_545/time:output:0!lstm_545/TensorArrayV2_1:handle:0lstm_545/zeros:output:0lstm_545/zeros_1:output:0!lstm_545/strided_slice_1:output:0@lstm_545/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_545_lstm_cell_161_matmul_readvariableop_resource7lstm_545_lstm_cell_161_matmul_1_readvariableop_resource6lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
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
lstm_545_while_body_976918*&
condR
lstm_545_while_cond_976917*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_545/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_545/TensorArrayV2Stack/TensorListStackTensorListStacklstm_545/while:output:3Blstm_545/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_545/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_545/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_545/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_545/strided_slice_3StridedSlice4lstm_545/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_545/strided_slice_3/stack:output:0)lstm_545/strided_slice_3/stack_1:output:0)lstm_545/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_545/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_545/transpose_1	Transpose4lstm_545/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_545/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_545/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_181/MatMul/ReadVariableOpReadVariableOp(dense_181_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_181/MatMulMatMul!lstm_545/strided_slice_3:output:0'dense_181/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_181/BiasAdd/ReadVariableOpReadVariableOp)dense_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_181/BiasAddBiasAdddense_181/MatMul:product:0(dense_181/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_181/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_181/BiasAdd/ReadVariableOp ^dense_181/MatMul/ReadVariableOp.^lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp-^lstm_543/lstm_cell_159/MatMul/ReadVariableOp/^lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp^lstm_543/while.^lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp-^lstm_544/lstm_cell_160/MatMul/ReadVariableOp/^lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp^lstm_544/while.^lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp-^lstm_545/lstm_cell_161/MatMul/ReadVariableOp/^lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp^lstm_545/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_181/BiasAdd/ReadVariableOp dense_181/BiasAdd/ReadVariableOp2B
dense_181/MatMul/ReadVariableOpdense_181/MatMul/ReadVariableOp2^
-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp-lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp2\
,lstm_543/lstm_cell_159/MatMul/ReadVariableOp,lstm_543/lstm_cell_159/MatMul/ReadVariableOp2`
.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp.lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp2 
lstm_543/whilelstm_543/while2^
-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp-lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp2\
,lstm_544/lstm_cell_160/MatMul/ReadVariableOp,lstm_544/lstm_cell_160/MatMul/ReadVariableOp2`
.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp.lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp2 
lstm_544/whilelstm_544/while2^
-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp-lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp2\
,lstm_545/lstm_cell_161/MatMul/ReadVariableOp,lstm_545/lstm_cell_161/MatMul/ReadVariableOp2`
.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp.lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp2 
lstm_545/whilelstm_545/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_974267
lstm_543_inputW
Dsequential_181_lstm_543_lstm_cell_159_matmul_readvariableop_resource:	?Y
Fsequential_181_lstm_543_lstm_cell_159_matmul_1_readvariableop_resource:	d?T
Esequential_181_lstm_543_lstm_cell_159_biasadd_readvariableop_resource:	?W
Dsequential_181_lstm_544_lstm_cell_160_matmul_readvariableop_resource:	d?Y
Fsequential_181_lstm_544_lstm_cell_160_matmul_1_readvariableop_resource:	2?T
Esequential_181_lstm_544_lstm_cell_160_biasadd_readvariableop_resource:	?V
Dsequential_181_lstm_545_lstm_cell_161_matmul_readvariableop_resource:2(X
Fsequential_181_lstm_545_lstm_cell_161_matmul_1_readvariableop_resource:
(S
Esequential_181_lstm_545_lstm_cell_161_biasadd_readvariableop_resource:(I
7sequential_181_dense_181_matmul_readvariableop_resource:
F
8sequential_181_dense_181_biasadd_readvariableop_resource:
identity??/sequential_181/dense_181/BiasAdd/ReadVariableOp?.sequential_181/dense_181/MatMul/ReadVariableOp?<sequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp?;sequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOp?=sequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp?sequential_181/lstm_543/while?<sequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp?;sequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOp?=sequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp?sequential_181/lstm_544/while?<sequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp?;sequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOp?=sequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp?sequential_181/lstm_545/while[
sequential_181/lstm_543/ShapeShapelstm_543_input*
T0*
_output_shapes
:u
+sequential_181/lstm_543/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_181/lstm_543/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_181/lstm_543/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_181/lstm_543/strided_sliceStridedSlice&sequential_181/lstm_543/Shape:output:04sequential_181/lstm_543/strided_slice/stack:output:06sequential_181/lstm_543/strided_slice/stack_1:output:06sequential_181/lstm_543/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_181/lstm_543/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_181/lstm_543/zeros/packedPack.sequential_181/lstm_543/strided_slice:output:0/sequential_181/lstm_543/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_181/lstm_543/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_543/zerosFill-sequential_181/lstm_543/zeros/packed:output:0,sequential_181/lstm_543/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_181/lstm_543/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_181/lstm_543/zeros_1/packedPack.sequential_181/lstm_543/strided_slice:output:01sequential_181/lstm_543/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_181/lstm_543/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_543/zeros_1Fill/sequential_181/lstm_543/zeros_1/packed:output:0.sequential_181/lstm_543/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_181/lstm_543/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_181/lstm_543/transpose	Transposelstm_543_input/sequential_181/lstm_543/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_181/lstm_543/Shape_1Shape%sequential_181/lstm_543/transpose:y:0*
T0*
_output_shapes
:w
-sequential_181/lstm_543/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_543/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_543/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_543/strided_slice_1StridedSlice(sequential_181/lstm_543/Shape_1:output:06sequential_181/lstm_543/strided_slice_1/stack:output:08sequential_181/lstm_543/strided_slice_1/stack_1:output:08sequential_181/lstm_543/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_181/lstm_543/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_181/lstm_543/TensorArrayV2TensorListReserve<sequential_181/lstm_543/TensorArrayV2/element_shape:output:00sequential_181/lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_181/lstm_543/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_181/lstm_543/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_181/lstm_543/transpose:y:0Vsequential_181/lstm_543/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_181/lstm_543/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_543/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_543/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_543/strided_slice_2StridedSlice%sequential_181/lstm_543/transpose:y:06sequential_181/lstm_543/strided_slice_2/stack:output:08sequential_181/lstm_543/strided_slice_2/stack_1:output:08sequential_181/lstm_543/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOpReadVariableOpDsequential_181_lstm_543_lstm_cell_159_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_181/lstm_543/lstm_cell_159/MatMulMatMul0sequential_181/lstm_543/strided_slice_2:output:0Csequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOpReadVariableOpFsequential_181_lstm_543_lstm_cell_159_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_181/lstm_543/lstm_cell_159/MatMul_1MatMul&sequential_181/lstm_543/zeros:output:0Esequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_181/lstm_543/lstm_cell_159/addAddV26sequential_181/lstm_543/lstm_cell_159/MatMul:product:08sequential_181/lstm_543/lstm_cell_159/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOpReadVariableOpEsequential_181_lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_181/lstm_543/lstm_cell_159/BiasAddBiasAdd-sequential_181/lstm_543/lstm_cell_159/add:z:0Dsequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_181/lstm_543/lstm_cell_159/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_181/lstm_543/lstm_cell_159/splitSplit>sequential_181/lstm_543/lstm_cell_159/split/split_dim:output:06sequential_181/lstm_543/lstm_cell_159/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_181/lstm_543/lstm_cell_159/SigmoidSigmoid4sequential_181/lstm_543/lstm_cell_159/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_181/lstm_543/lstm_cell_159/Sigmoid_1Sigmoid4sequential_181/lstm_543/lstm_cell_159/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_181/lstm_543/lstm_cell_159/mulMul3sequential_181/lstm_543/lstm_cell_159/Sigmoid_1:y:0(sequential_181/lstm_543/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_181/lstm_543/lstm_cell_159/ReluRelu4sequential_181/lstm_543/lstm_cell_159/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_181/lstm_543/lstm_cell_159/mul_1Mul1sequential_181/lstm_543/lstm_cell_159/Sigmoid:y:08sequential_181/lstm_543/lstm_cell_159/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_181/lstm_543/lstm_cell_159/add_1AddV2-sequential_181/lstm_543/lstm_cell_159/mul:z:0/sequential_181/lstm_543/lstm_cell_159/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_181/lstm_543/lstm_cell_159/Sigmoid_2Sigmoid4sequential_181/lstm_543/lstm_cell_159/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_181/lstm_543/lstm_cell_159/Relu_1Relu/sequential_181/lstm_543/lstm_cell_159/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_181/lstm_543/lstm_cell_159/mul_2Mul3sequential_181/lstm_543/lstm_cell_159/Sigmoid_2:y:0:sequential_181/lstm_543/lstm_cell_159/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_181/lstm_543/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_181/lstm_543/TensorArrayV2_1TensorListReserve>sequential_181/lstm_543/TensorArrayV2_1/element_shape:output:00sequential_181/lstm_543/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_181/lstm_543/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_181/lstm_543/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_181/lstm_543/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_181/lstm_543/whileWhile3sequential_181/lstm_543/while/loop_counter:output:09sequential_181/lstm_543/while/maximum_iterations:output:0%sequential_181/lstm_543/time:output:00sequential_181/lstm_543/TensorArrayV2_1:handle:0&sequential_181/lstm_543/zeros:output:0(sequential_181/lstm_543/zeros_1:output:00sequential_181/lstm_543/strided_slice_1:output:0Osequential_181/lstm_543/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_181_lstm_543_lstm_cell_159_matmul_readvariableop_resourceFsequential_181_lstm_543_lstm_cell_159_matmul_1_readvariableop_resourceEsequential_181_lstm_543_lstm_cell_159_biasadd_readvariableop_resource*
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
)sequential_181_lstm_543_while_body_973899*5
cond-R+
)sequential_181_lstm_543_while_cond_973898*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_181/lstm_543/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_181/lstm_543/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_181/lstm_543/while:output:3Qsequential_181/lstm_543/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_181/lstm_543/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_181/lstm_543/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_543/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_543/strided_slice_3StridedSliceCsequential_181/lstm_543/TensorArrayV2Stack/TensorListStack:tensor:06sequential_181/lstm_543/strided_slice_3/stack:output:08sequential_181/lstm_543/strided_slice_3/stack_1:output:08sequential_181/lstm_543/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_181/lstm_543/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_181/lstm_543/transpose_1	TransposeCsequential_181/lstm_543/TensorArrayV2Stack/TensorListStack:tensor:01sequential_181/lstm_543/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_181/lstm_543/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_181/lstm_544/ShapeShape'sequential_181/lstm_543/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_181/lstm_544/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_181/lstm_544/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_181/lstm_544/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_181/lstm_544/strided_sliceStridedSlice&sequential_181/lstm_544/Shape:output:04sequential_181/lstm_544/strided_slice/stack:output:06sequential_181/lstm_544/strided_slice/stack_1:output:06sequential_181/lstm_544/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_181/lstm_544/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_181/lstm_544/zeros/packedPack.sequential_181/lstm_544/strided_slice:output:0/sequential_181/lstm_544/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_181/lstm_544/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_544/zerosFill-sequential_181/lstm_544/zeros/packed:output:0,sequential_181/lstm_544/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_181/lstm_544/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_181/lstm_544/zeros_1/packedPack.sequential_181/lstm_544/strided_slice:output:01sequential_181/lstm_544/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_181/lstm_544/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_544/zeros_1Fill/sequential_181/lstm_544/zeros_1/packed:output:0.sequential_181/lstm_544/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_181/lstm_544/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_181/lstm_544/transpose	Transpose'sequential_181/lstm_543/transpose_1:y:0/sequential_181/lstm_544/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_181/lstm_544/Shape_1Shape%sequential_181/lstm_544/transpose:y:0*
T0*
_output_shapes
:w
-sequential_181/lstm_544/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_544/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_544/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_544/strided_slice_1StridedSlice(sequential_181/lstm_544/Shape_1:output:06sequential_181/lstm_544/strided_slice_1/stack:output:08sequential_181/lstm_544/strided_slice_1/stack_1:output:08sequential_181/lstm_544/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_181/lstm_544/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_181/lstm_544/TensorArrayV2TensorListReserve<sequential_181/lstm_544/TensorArrayV2/element_shape:output:00sequential_181/lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_181/lstm_544/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_181/lstm_544/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_181/lstm_544/transpose:y:0Vsequential_181/lstm_544/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_181/lstm_544/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_544/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_544/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_544/strided_slice_2StridedSlice%sequential_181/lstm_544/transpose:y:06sequential_181/lstm_544/strided_slice_2/stack:output:08sequential_181/lstm_544/strided_slice_2/stack_1:output:08sequential_181/lstm_544/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOpReadVariableOpDsequential_181_lstm_544_lstm_cell_160_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_181/lstm_544/lstm_cell_160/MatMulMatMul0sequential_181/lstm_544/strided_slice_2:output:0Csequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOpReadVariableOpFsequential_181_lstm_544_lstm_cell_160_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_181/lstm_544/lstm_cell_160/MatMul_1MatMul&sequential_181/lstm_544/zeros:output:0Esequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_181/lstm_544/lstm_cell_160/addAddV26sequential_181/lstm_544/lstm_cell_160/MatMul:product:08sequential_181/lstm_544/lstm_cell_160/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOpReadVariableOpEsequential_181_lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_181/lstm_544/lstm_cell_160/BiasAddBiasAdd-sequential_181/lstm_544/lstm_cell_160/add:z:0Dsequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_181/lstm_544/lstm_cell_160/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_181/lstm_544/lstm_cell_160/splitSplit>sequential_181/lstm_544/lstm_cell_160/split/split_dim:output:06sequential_181/lstm_544/lstm_cell_160/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_181/lstm_544/lstm_cell_160/SigmoidSigmoid4sequential_181/lstm_544/lstm_cell_160/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_181/lstm_544/lstm_cell_160/Sigmoid_1Sigmoid4sequential_181/lstm_544/lstm_cell_160/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_181/lstm_544/lstm_cell_160/mulMul3sequential_181/lstm_544/lstm_cell_160/Sigmoid_1:y:0(sequential_181/lstm_544/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_181/lstm_544/lstm_cell_160/ReluRelu4sequential_181/lstm_544/lstm_cell_160/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_181/lstm_544/lstm_cell_160/mul_1Mul1sequential_181/lstm_544/lstm_cell_160/Sigmoid:y:08sequential_181/lstm_544/lstm_cell_160/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_181/lstm_544/lstm_cell_160/add_1AddV2-sequential_181/lstm_544/lstm_cell_160/mul:z:0/sequential_181/lstm_544/lstm_cell_160/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_181/lstm_544/lstm_cell_160/Sigmoid_2Sigmoid4sequential_181/lstm_544/lstm_cell_160/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_181/lstm_544/lstm_cell_160/Relu_1Relu/sequential_181/lstm_544/lstm_cell_160/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_181/lstm_544/lstm_cell_160/mul_2Mul3sequential_181/lstm_544/lstm_cell_160/Sigmoid_2:y:0:sequential_181/lstm_544/lstm_cell_160/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_181/lstm_544/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_181/lstm_544/TensorArrayV2_1TensorListReserve>sequential_181/lstm_544/TensorArrayV2_1/element_shape:output:00sequential_181/lstm_544/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_181/lstm_544/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_181/lstm_544/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_181/lstm_544/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_181/lstm_544/whileWhile3sequential_181/lstm_544/while/loop_counter:output:09sequential_181/lstm_544/while/maximum_iterations:output:0%sequential_181/lstm_544/time:output:00sequential_181/lstm_544/TensorArrayV2_1:handle:0&sequential_181/lstm_544/zeros:output:0(sequential_181/lstm_544/zeros_1:output:00sequential_181/lstm_544/strided_slice_1:output:0Osequential_181/lstm_544/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_181_lstm_544_lstm_cell_160_matmul_readvariableop_resourceFsequential_181_lstm_544_lstm_cell_160_matmul_1_readvariableop_resourceEsequential_181_lstm_544_lstm_cell_160_biasadd_readvariableop_resource*
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
)sequential_181_lstm_544_while_body_974038*5
cond-R+
)sequential_181_lstm_544_while_cond_974037*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_181/lstm_544/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_181/lstm_544/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_181/lstm_544/while:output:3Qsequential_181/lstm_544/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_181/lstm_544/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_181/lstm_544/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_544/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_544/strided_slice_3StridedSliceCsequential_181/lstm_544/TensorArrayV2Stack/TensorListStack:tensor:06sequential_181/lstm_544/strided_slice_3/stack:output:08sequential_181/lstm_544/strided_slice_3/stack_1:output:08sequential_181/lstm_544/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_181/lstm_544/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_181/lstm_544/transpose_1	TransposeCsequential_181/lstm_544/TensorArrayV2Stack/TensorListStack:tensor:01sequential_181/lstm_544/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_181/lstm_544/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_181/lstm_545/ShapeShape'sequential_181/lstm_544/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_181/lstm_545/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_181/lstm_545/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_181/lstm_545/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_181/lstm_545/strided_sliceStridedSlice&sequential_181/lstm_545/Shape:output:04sequential_181/lstm_545/strided_slice/stack:output:06sequential_181/lstm_545/strided_slice/stack_1:output:06sequential_181/lstm_545/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_181/lstm_545/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_181/lstm_545/zeros/packedPack.sequential_181/lstm_545/strided_slice:output:0/sequential_181/lstm_545/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_181/lstm_545/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_545/zerosFill-sequential_181/lstm_545/zeros/packed:output:0,sequential_181/lstm_545/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_181/lstm_545/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_181/lstm_545/zeros_1/packedPack.sequential_181/lstm_545/strided_slice:output:01sequential_181/lstm_545/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_181/lstm_545/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_181/lstm_545/zeros_1Fill/sequential_181/lstm_545/zeros_1/packed:output:0.sequential_181/lstm_545/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_181/lstm_545/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_181/lstm_545/transpose	Transpose'sequential_181/lstm_544/transpose_1:y:0/sequential_181/lstm_545/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_181/lstm_545/Shape_1Shape%sequential_181/lstm_545/transpose:y:0*
T0*
_output_shapes
:w
-sequential_181/lstm_545/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_545/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_545/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_545/strided_slice_1StridedSlice(sequential_181/lstm_545/Shape_1:output:06sequential_181/lstm_545/strided_slice_1/stack:output:08sequential_181/lstm_545/strided_slice_1/stack_1:output:08sequential_181/lstm_545/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_181/lstm_545/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_181/lstm_545/TensorArrayV2TensorListReserve<sequential_181/lstm_545/TensorArrayV2/element_shape:output:00sequential_181/lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_181/lstm_545/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_181/lstm_545/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_181/lstm_545/transpose:y:0Vsequential_181/lstm_545/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_181/lstm_545/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_545/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_181/lstm_545/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_545/strided_slice_2StridedSlice%sequential_181/lstm_545/transpose:y:06sequential_181/lstm_545/strided_slice_2/stack:output:08sequential_181/lstm_545/strided_slice_2/stack_1:output:08sequential_181/lstm_545/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOpReadVariableOpDsequential_181_lstm_545_lstm_cell_161_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_181/lstm_545/lstm_cell_161/MatMulMatMul0sequential_181/lstm_545/strided_slice_2:output:0Csequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOpReadVariableOpFsequential_181_lstm_545_lstm_cell_161_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_181/lstm_545/lstm_cell_161/MatMul_1MatMul&sequential_181/lstm_545/zeros:output:0Esequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_181/lstm_545/lstm_cell_161/addAddV26sequential_181/lstm_545/lstm_cell_161/MatMul:product:08sequential_181/lstm_545/lstm_cell_161/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOpReadVariableOpEsequential_181_lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_181/lstm_545/lstm_cell_161/BiasAddBiasAdd-sequential_181/lstm_545/lstm_cell_161/add:z:0Dsequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_181/lstm_545/lstm_cell_161/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_181/lstm_545/lstm_cell_161/splitSplit>sequential_181/lstm_545/lstm_cell_161/split/split_dim:output:06sequential_181/lstm_545/lstm_cell_161/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_181/lstm_545/lstm_cell_161/SigmoidSigmoid4sequential_181/lstm_545/lstm_cell_161/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_181/lstm_545/lstm_cell_161/Sigmoid_1Sigmoid4sequential_181/lstm_545/lstm_cell_161/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_181/lstm_545/lstm_cell_161/mulMul3sequential_181/lstm_545/lstm_cell_161/Sigmoid_1:y:0(sequential_181/lstm_545/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_181/lstm_545/lstm_cell_161/ReluRelu4sequential_181/lstm_545/lstm_cell_161/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_181/lstm_545/lstm_cell_161/mul_1Mul1sequential_181/lstm_545/lstm_cell_161/Sigmoid:y:08sequential_181/lstm_545/lstm_cell_161/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_181/lstm_545/lstm_cell_161/add_1AddV2-sequential_181/lstm_545/lstm_cell_161/mul:z:0/sequential_181/lstm_545/lstm_cell_161/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_181/lstm_545/lstm_cell_161/Sigmoid_2Sigmoid4sequential_181/lstm_545/lstm_cell_161/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_181/lstm_545/lstm_cell_161/Relu_1Relu/sequential_181/lstm_545/lstm_cell_161/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_181/lstm_545/lstm_cell_161/mul_2Mul3sequential_181/lstm_545/lstm_cell_161/Sigmoid_2:y:0:sequential_181/lstm_545/lstm_cell_161/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_181/lstm_545/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_181/lstm_545/TensorArrayV2_1TensorListReserve>sequential_181/lstm_545/TensorArrayV2_1/element_shape:output:00sequential_181/lstm_545/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_181/lstm_545/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_181/lstm_545/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_181/lstm_545/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_181/lstm_545/whileWhile3sequential_181/lstm_545/while/loop_counter:output:09sequential_181/lstm_545/while/maximum_iterations:output:0%sequential_181/lstm_545/time:output:00sequential_181/lstm_545/TensorArrayV2_1:handle:0&sequential_181/lstm_545/zeros:output:0(sequential_181/lstm_545/zeros_1:output:00sequential_181/lstm_545/strided_slice_1:output:0Osequential_181/lstm_545/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_181_lstm_545_lstm_cell_161_matmul_readvariableop_resourceFsequential_181_lstm_545_lstm_cell_161_matmul_1_readvariableop_resourceEsequential_181_lstm_545_lstm_cell_161_biasadd_readvariableop_resource*
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
)sequential_181_lstm_545_while_body_974177*5
cond-R+
)sequential_181_lstm_545_while_cond_974176*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_181/lstm_545/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_181/lstm_545/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_181/lstm_545/while:output:3Qsequential_181/lstm_545/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_181/lstm_545/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_181/lstm_545/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_181/lstm_545/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_181/lstm_545/strided_slice_3StridedSliceCsequential_181/lstm_545/TensorArrayV2Stack/TensorListStack:tensor:06sequential_181/lstm_545/strided_slice_3/stack:output:08sequential_181/lstm_545/strided_slice_3/stack_1:output:08sequential_181/lstm_545/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_181/lstm_545/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_181/lstm_545/transpose_1	TransposeCsequential_181/lstm_545/TensorArrayV2Stack/TensorListStack:tensor:01sequential_181/lstm_545/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_181/lstm_545/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_181/dense_181/MatMul/ReadVariableOpReadVariableOp7sequential_181_dense_181_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_181/dense_181/MatMulMatMul0sequential_181/lstm_545/strided_slice_3:output:06sequential_181/dense_181/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_181/dense_181/BiasAdd/ReadVariableOpReadVariableOp8sequential_181_dense_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_181/dense_181/BiasAddBiasAdd)sequential_181/dense_181/MatMul:product:07sequential_181/dense_181/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_181/dense_181/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_181/dense_181/BiasAdd/ReadVariableOp/^sequential_181/dense_181/MatMul/ReadVariableOp=^sequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp<^sequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOp>^sequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp^sequential_181/lstm_543/while=^sequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp<^sequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOp>^sequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp^sequential_181/lstm_544/while=^sequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp<^sequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOp>^sequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp^sequential_181/lstm_545/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_181/dense_181/BiasAdd/ReadVariableOp/sequential_181/dense_181/BiasAdd/ReadVariableOp2`
.sequential_181/dense_181/MatMul/ReadVariableOp.sequential_181/dense_181/MatMul/ReadVariableOp2|
<sequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp<sequential_181/lstm_543/lstm_cell_159/BiasAdd/ReadVariableOp2z
;sequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOp;sequential_181/lstm_543/lstm_cell_159/MatMul/ReadVariableOp2~
=sequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp=sequential_181/lstm_543/lstm_cell_159/MatMul_1/ReadVariableOp2>
sequential_181/lstm_543/whilesequential_181/lstm_543/while2|
<sequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp<sequential_181/lstm_544/lstm_cell_160/BiasAdd/ReadVariableOp2z
;sequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOp;sequential_181/lstm_544/lstm_cell_160/MatMul/ReadVariableOp2~
=sequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp=sequential_181/lstm_544/lstm_cell_160/MatMul_1/ReadVariableOp2>
sequential_181/lstm_544/whilesequential_181/lstm_544/while2|
<sequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp<sequential_181/lstm_545/lstm_cell_161/BiasAdd/ReadVariableOp2z
;sequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOp;sequential_181/lstm_545/lstm_cell_161/MatMul/ReadVariableOp2~
=sequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp=sequential_181/lstm_545/lstm_cell_161/MatMul_1/ReadVariableOp2>
sequential_181/lstm_545/whilesequential_181/lstm_545/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_543_input
?
?
while_cond_975531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975531___redundant_placeholder04
0while_while_cond_975531___redundant_placeholder14
0while_while_cond_975531___redundant_placeholder24
0while_while_cond_975531___redundant_placeholder3
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
while_cond_975681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_975681___redundant_placeholder04
0while_while_cond_975681___redundant_placeholder14
0while_while_cond_975681___redundant_placeholder24
0while_while_cond_975681___redundant_placeholder3
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
while_cond_978769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978769___redundant_placeholder04
0while_while_cond_978769___redundant_placeholder14
0while_while_cond_978769___redundant_placeholder24
0while_while_cond_978769___redundant_placeholder3
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
lstm_543_input;
 serving_default_lstm_543_input:0?????????=
	dense_1810
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
2dense_181/kernel
:2dense_181/bias
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
0:.	?2lstm_543/lstm_cell_543/kernel
::8	d?2'lstm_543/lstm_cell_543/recurrent_kernel
*:(?2lstm_543/lstm_cell_543/bias
0:.	d?2lstm_544/lstm_cell_544/kernel
::8	2?2'lstm_544/lstm_cell_544/recurrent_kernel
*:(?2lstm_544/lstm_cell_544/bias
/:-2(2lstm_545/lstm_cell_545/kernel
9:7
(2'lstm_545/lstm_cell_545/recurrent_kernel
):'(2lstm_545/lstm_cell_545/bias
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
2Adam/dense_181/kernel/m
!:2Adam/dense_181/bias/m
5:3	?2$Adam/lstm_543/lstm_cell_543/kernel/m
?:=	d?2.Adam/lstm_543/lstm_cell_543/recurrent_kernel/m
/:-?2"Adam/lstm_543/lstm_cell_543/bias/m
5:3	d?2$Adam/lstm_544/lstm_cell_544/kernel/m
?:=	2?2.Adam/lstm_544/lstm_cell_544/recurrent_kernel/m
/:-?2"Adam/lstm_544/lstm_cell_544/bias/m
4:22(2$Adam/lstm_545/lstm_cell_545/kernel/m
>:<
(2.Adam/lstm_545/lstm_cell_545/recurrent_kernel/m
.:,(2"Adam/lstm_545/lstm_cell_545/bias/m
':%
2Adam/dense_181/kernel/v
!:2Adam/dense_181/bias/v
5:3	?2$Adam/lstm_543/lstm_cell_543/kernel/v
?:=	d?2.Adam/lstm_543/lstm_cell_543/recurrent_kernel/v
/:-?2"Adam/lstm_543/lstm_cell_543/bias/v
5:3	d?2$Adam/lstm_544/lstm_cell_544/kernel/v
?:=	2?2.Adam/lstm_544/lstm_cell_544/recurrent_kernel/v
/:-?2"Adam/lstm_544/lstm_cell_544/bias/v
4:22(2$Adam/lstm_545/lstm_cell_545/kernel/v
>:<
(2.Adam/lstm_545/lstm_cell_545/recurrent_kernel/v
.:,(2"Adam/lstm_545/lstm_cell_545/bias/v
?2?
/__inference_sequential_181_layer_call_fn_975816
/__inference_sequential_181_layer_call_fn_976554
/__inference_sequential_181_layer_call_fn_976581
/__inference_sequential_181_layer_call_fn_976432?
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_977008
J__inference_sequential_181_layer_call_and_return_conditional_losses_977435
J__inference_sequential_181_layer_call_and_return_conditional_losses_976462
J__inference_sequential_181_layer_call_and_return_conditional_losses_976492?
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
!__inference__wrapped_model_974267lstm_543_input"?
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
)__inference_lstm_543_layer_call_fn_977446
)__inference_lstm_543_layer_call_fn_977457
)__inference_lstm_543_layer_call_fn_977468
)__inference_lstm_543_layer_call_fn_977479?
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977622
D__inference_lstm_543_layer_call_and_return_conditional_losses_977765
D__inference_lstm_543_layer_call_and_return_conditional_losses_977908
D__inference_lstm_543_layer_call_and_return_conditional_losses_978051?
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
)__inference_lstm_544_layer_call_fn_978062
)__inference_lstm_544_layer_call_fn_978073
)__inference_lstm_544_layer_call_fn_978084
)__inference_lstm_544_layer_call_fn_978095?
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978238
D__inference_lstm_544_layer_call_and_return_conditional_losses_978381
D__inference_lstm_544_layer_call_and_return_conditional_losses_978524
D__inference_lstm_544_layer_call_and_return_conditional_losses_978667?
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
)__inference_lstm_545_layer_call_fn_978678
)__inference_lstm_545_layer_call_fn_978689
)__inference_lstm_545_layer_call_fn_978700
)__inference_lstm_545_layer_call_fn_978711?
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_978854
D__inference_lstm_545_layer_call_and_return_conditional_losses_978997
D__inference_lstm_545_layer_call_and_return_conditional_losses_979140
D__inference_lstm_545_layer_call_and_return_conditional_losses_979283?
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
*__inference_dense_181_layer_call_fn_979292?
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
E__inference_dense_181_layer_call_and_return_conditional_losses_979302?
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
$__inference_signature_wrapper_976527lstm_543_input"?
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
.__inference_lstm_cell_159_layer_call_fn_979319
.__inference_lstm_cell_159_layer_call_fn_979336?
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979368
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979400?
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
.__inference_lstm_cell_160_layer_call_fn_979417
.__inference_lstm_cell_160_layer_call_fn_979434?
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979466
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979498?
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
.__inference_lstm_cell_161_layer_call_fn_979515
.__inference_lstm_cell_161_layer_call_fn_979532?
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979564
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979596?
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
!__inference__wrapped_model_974267?-./012345!";?8
1?.
,?)
lstm_543_input?????????
? "5?2
0
	dense_181#? 
	dense_181??????????
E__inference_dense_181_layer_call_and_return_conditional_losses_979302\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_181_layer_call_fn_979292O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_543_layer_call_and_return_conditional_losses_977622?-./O?L
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977765?-./O?L
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_977908q-./??<
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
D__inference_lstm_543_layer_call_and_return_conditional_losses_978051q-./??<
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
)__inference_lstm_543_layer_call_fn_977446}-./O?L
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
)__inference_lstm_543_layer_call_fn_977457}-./O?L
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
)__inference_lstm_543_layer_call_fn_977468d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_543_layer_call_fn_977479d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_544_layer_call_and_return_conditional_losses_978238?012O?L
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978381?012O?L
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978524q012??<
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
D__inference_lstm_544_layer_call_and_return_conditional_losses_978667q012??<
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
)__inference_lstm_544_layer_call_fn_978062}012O?L
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
)__inference_lstm_544_layer_call_fn_978073}012O?L
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
)__inference_lstm_544_layer_call_fn_978084d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_544_layer_call_fn_978095d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_545_layer_call_and_return_conditional_losses_978854}345O?L
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_978997}345O?L
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_979140m345??<
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
D__inference_lstm_545_layer_call_and_return_conditional_losses_979283m345??<
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
)__inference_lstm_545_layer_call_fn_978678p345O?L
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
)__inference_lstm_545_layer_call_fn_978689p345O?L
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
)__inference_lstm_545_layer_call_fn_978700`345??<
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
)__inference_lstm_545_layer_call_fn_978711`345??<
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979368?-./??}
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
I__inference_lstm_cell_159_layer_call_and_return_conditional_losses_979400?-./??}
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
.__inference_lstm_cell_159_layer_call_fn_979319?-./??}
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
.__inference_lstm_cell_159_layer_call_fn_979336?-./??}
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979466?012??}
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
I__inference_lstm_cell_160_layer_call_and_return_conditional_losses_979498?012??}
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
.__inference_lstm_cell_160_layer_call_fn_979417?012??}
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
.__inference_lstm_cell_160_layer_call_fn_979434?012??}
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979564?345??}
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
I__inference_lstm_cell_161_layer_call_and_return_conditional_losses_979596?345??}
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
.__inference_lstm_cell_161_layer_call_fn_979515?345??}
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
.__inference_lstm_cell_161_layer_call_fn_979532?345??}
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_976462y-./012345!"C?@
9?6
,?)
lstm_543_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_181_layer_call_and_return_conditional_losses_976492y-./012345!"C?@
9?6
,?)
lstm_543_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_181_layer_call_and_return_conditional_losses_977008q-./012345!";?8
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
J__inference_sequential_181_layer_call_and_return_conditional_losses_977435q-./012345!";?8
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
/__inference_sequential_181_layer_call_fn_975816l-./012345!"C?@
9?6
,?)
lstm_543_input?????????
p 

 
? "???????????
/__inference_sequential_181_layer_call_fn_976432l-./012345!"C?@
9?6
,?)
lstm_543_input?????????
p

 
? "???????????
/__inference_sequential_181_layer_call_fn_976554d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_181_layer_call_fn_976581d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_976527?-./012345!"M?J
? 
C?@
>
lstm_543_input,?)
lstm_543_input?????????"5?2
0
	dense_181#? 
	dense_181?????????