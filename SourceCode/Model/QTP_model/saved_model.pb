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
dense_259/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_259/kernel
u
$dense_259/kernel/Read/ReadVariableOpReadVariableOpdense_259/kernel*
_output_shapes

:
*
dtype0
t
dense_259/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_259/bias
m
"dense_259/bias/Read/ReadVariableOpReadVariableOpdense_259/bias*
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
lstm_777/lstm_cell_777/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_777/lstm_cell_777/kernel
?
1lstm_777/lstm_cell_777/kernel/Read/ReadVariableOpReadVariableOplstm_777/lstm_cell_777/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_777/lstm_cell_777/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_777/lstm_cell_777/recurrent_kernel
?
;lstm_777/lstm_cell_777/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_777/lstm_cell_777/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_777/lstm_cell_777/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_777/lstm_cell_777/bias
?
/lstm_777/lstm_cell_777/bias/Read/ReadVariableOpReadVariableOplstm_777/lstm_cell_777/bias*
_output_shapes	
:?*
dtype0
?
lstm_778/lstm_cell_778/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_778/lstm_cell_778/kernel
?
1lstm_778/lstm_cell_778/kernel/Read/ReadVariableOpReadVariableOplstm_778/lstm_cell_778/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_778/lstm_cell_778/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_778/lstm_cell_778/recurrent_kernel
?
;lstm_778/lstm_cell_778/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_778/lstm_cell_778/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_778/lstm_cell_778/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_778/lstm_cell_778/bias
?
/lstm_778/lstm_cell_778/bias/Read/ReadVariableOpReadVariableOplstm_778/lstm_cell_778/bias*
_output_shapes	
:?*
dtype0
?
lstm_779/lstm_cell_779/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_779/lstm_cell_779/kernel
?
1lstm_779/lstm_cell_779/kernel/Read/ReadVariableOpReadVariableOplstm_779/lstm_cell_779/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_779/lstm_cell_779/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_779/lstm_cell_779/recurrent_kernel
?
;lstm_779/lstm_cell_779/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_779/lstm_cell_779/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_779/lstm_cell_779/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_779/lstm_cell_779/bias
?
/lstm_779/lstm_cell_779/bias/Read/ReadVariableOpReadVariableOplstm_779/lstm_cell_779/bias*
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
Adam/dense_259/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_259/kernel/m
?
+Adam/dense_259/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_259/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_259/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_259/bias/m
{
)Adam/dense_259/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_259/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_777/lstm_cell_777/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_777/lstm_cell_777/kernel/m
?
8Adam/lstm_777/lstm_cell_777/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_777/lstm_cell_777/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_777/lstm_cell_777/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_777/lstm_cell_777/recurrent_kernel/m
?
BAdam/lstm_777/lstm_cell_777/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_777/lstm_cell_777/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_777/lstm_cell_777/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_777/lstm_cell_777/bias/m
?
6Adam/lstm_777/lstm_cell_777/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_777/lstm_cell_777/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_778/lstm_cell_778/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_778/lstm_cell_778/kernel/m
?
8Adam/lstm_778/lstm_cell_778/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_778/lstm_cell_778/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_778/lstm_cell_778/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_778/lstm_cell_778/recurrent_kernel/m
?
BAdam/lstm_778/lstm_cell_778/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_778/lstm_cell_778/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_778/lstm_cell_778/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_778/lstm_cell_778/bias/m
?
6Adam/lstm_778/lstm_cell_778/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_778/lstm_cell_778/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_779/lstm_cell_779/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_779/lstm_cell_779/kernel/m
?
8Adam/lstm_779/lstm_cell_779/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_779/lstm_cell_779/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_779/lstm_cell_779/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_779/lstm_cell_779/recurrent_kernel/m
?
BAdam/lstm_779/lstm_cell_779/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_779/lstm_cell_779/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_779/lstm_cell_779/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_779/lstm_cell_779/bias/m
?
6Adam/lstm_779/lstm_cell_779/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_779/lstm_cell_779/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_259/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_259/kernel/v
?
+Adam/dense_259/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_259/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_259/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_259/bias/v
{
)Adam/dense_259/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_259/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_777/lstm_cell_777/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_777/lstm_cell_777/kernel/v
?
8Adam/lstm_777/lstm_cell_777/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_777/lstm_cell_777/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_777/lstm_cell_777/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_777/lstm_cell_777/recurrent_kernel/v
?
BAdam/lstm_777/lstm_cell_777/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_777/lstm_cell_777/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_777/lstm_cell_777/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_777/lstm_cell_777/bias/v
?
6Adam/lstm_777/lstm_cell_777/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_777/lstm_cell_777/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_778/lstm_cell_778/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_778/lstm_cell_778/kernel/v
?
8Adam/lstm_778/lstm_cell_778/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_778/lstm_cell_778/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_778/lstm_cell_778/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_778/lstm_cell_778/recurrent_kernel/v
?
BAdam/lstm_778/lstm_cell_778/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_778/lstm_cell_778/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_778/lstm_cell_778/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_778/lstm_cell_778/bias/v
?
6Adam/lstm_778/lstm_cell_778/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_778/lstm_cell_778/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_779/lstm_cell_779/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_779/lstm_cell_779/kernel/v
?
8Adam/lstm_779/lstm_cell_779/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_779/lstm_cell_779/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_779/lstm_cell_779/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_779/lstm_cell_779/recurrent_kernel/v
?
BAdam/lstm_779/lstm_cell_779/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_779/lstm_cell_779/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_779/lstm_cell_779/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_779/lstm_cell_779/bias/v
?
6Adam/lstm_779/lstm_cell_779/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_779/lstm_cell_779/bias/v*
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
VARIABLE_VALUEdense_259/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_259/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_777/lstm_cell_777/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_777/lstm_cell_777/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_777/lstm_cell_777/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_778/lstm_cell_778/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_778/lstm_cell_778/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_778/lstm_cell_778/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_779/lstm_cell_779/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_779/lstm_cell_779/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_779/lstm_cell_779/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_259/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_259/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_777/lstm_cell_777/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_777/lstm_cell_777/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_777/lstm_cell_777/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_778/lstm_cell_778/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_778/lstm_cell_778/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_778/lstm_cell_778/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_779/lstm_cell_779/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_779/lstm_cell_779/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_779/lstm_cell_779/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_259/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_259/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_777/lstm_cell_777/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_777/lstm_cell_777/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_777/lstm_cell_777/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_778/lstm_cell_778/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_778/lstm_cell_778/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_778/lstm_cell_778/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_779/lstm_cell_779/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_779/lstm_cell_779/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_779/lstm_cell_779/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_777_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_777_inputlstm_777/lstm_cell_777/kernel'lstm_777/lstm_cell_777/recurrent_kernellstm_777/lstm_cell_777/biaslstm_778/lstm_cell_778/kernel'lstm_778/lstm_cell_778/recurrent_kernellstm_778/lstm_cell_778/biaslstm_779/lstm_cell_779/kernel'lstm_779/lstm_cell_779/recurrent_kernellstm_779/lstm_cell_779/biasdense_259/kerneldense_259/bias*
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
%__inference_signature_wrapper_3989401
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_259/kernel/Read/ReadVariableOp"dense_259/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_777/lstm_cell_777/kernel/Read/ReadVariableOp;lstm_777/lstm_cell_777/recurrent_kernel/Read/ReadVariableOp/lstm_777/lstm_cell_777/bias/Read/ReadVariableOp1lstm_778/lstm_cell_778/kernel/Read/ReadVariableOp;lstm_778/lstm_cell_778/recurrent_kernel/Read/ReadVariableOp/lstm_778/lstm_cell_778/bias/Read/ReadVariableOp1lstm_779/lstm_cell_779/kernel/Read/ReadVariableOp;lstm_779/lstm_cell_779/recurrent_kernel/Read/ReadVariableOp/lstm_779/lstm_cell_779/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_259/kernel/m/Read/ReadVariableOp)Adam/dense_259/bias/m/Read/ReadVariableOp8Adam/lstm_777/lstm_cell_777/kernel/m/Read/ReadVariableOpBAdam/lstm_777/lstm_cell_777/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_777/lstm_cell_777/bias/m/Read/ReadVariableOp8Adam/lstm_778/lstm_cell_778/kernel/m/Read/ReadVariableOpBAdam/lstm_778/lstm_cell_778/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_778/lstm_cell_778/bias/m/Read/ReadVariableOp8Adam/lstm_779/lstm_cell_779/kernel/m/Read/ReadVariableOpBAdam/lstm_779/lstm_cell_779/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_779/lstm_cell_779/bias/m/Read/ReadVariableOp+Adam/dense_259/kernel/v/Read/ReadVariableOp)Adam/dense_259/bias/v/Read/ReadVariableOp8Adam/lstm_777/lstm_cell_777/kernel/v/Read/ReadVariableOpBAdam/lstm_777/lstm_cell_777/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_777/lstm_cell_777/bias/v/Read/ReadVariableOp8Adam/lstm_778/lstm_cell_778/kernel/v/Read/ReadVariableOpBAdam/lstm_778/lstm_cell_778/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_778/lstm_cell_778/bias/v/Read/ReadVariableOp8Adam/lstm_779/lstm_cell_779/kernel/v/Read/ReadVariableOpBAdam/lstm_779/lstm_cell_779/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_779/lstm_cell_779/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3992613
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_259/kerneldense_259/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_777/lstm_cell_777/kernel'lstm_777/lstm_cell_777/recurrent_kernellstm_777/lstm_cell_777/biaslstm_778/lstm_cell_778/kernel'lstm_778/lstm_cell_778/recurrent_kernellstm_778/lstm_cell_778/biaslstm_779/lstm_cell_779/kernel'lstm_779/lstm_cell_779/recurrent_kernellstm_779/lstm_cell_779/biastotalcountAdam/dense_259/kernel/mAdam/dense_259/bias/m$Adam/lstm_777/lstm_cell_777/kernel/m.Adam/lstm_777/lstm_cell_777/recurrent_kernel/m"Adam/lstm_777/lstm_cell_777/bias/m$Adam/lstm_778/lstm_cell_778/kernel/m.Adam/lstm_778/lstm_cell_778/recurrent_kernel/m"Adam/lstm_778/lstm_cell_778/bias/m$Adam/lstm_779/lstm_cell_779/kernel/m.Adam/lstm_779/lstm_cell_779/recurrent_kernel/m"Adam/lstm_779/lstm_cell_779/bias/mAdam/dense_259/kernel/vAdam/dense_259/bias/v$Adam/lstm_777/lstm_cell_777/kernel/v.Adam/lstm_777/lstm_cell_777/recurrent_kernel/v"Adam/lstm_777/lstm_cell_777/bias/v$Adam/lstm_778/lstm_cell_778/kernel/v.Adam/lstm_778/lstm_cell_778/recurrent_kernel/v"Adam/lstm_778/lstm_cell_778/bias/v$Adam/lstm_779/lstm_cell_779/kernel/v.Adam/lstm_779/lstm_cell_779/recurrent_kernel/v"Adam/lstm_779/lstm_cell_779/bias/v*4
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
#__inference__traced_restore_3992743??+
?
?
*__inference_lstm_777_layer_call_fn_3990320
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3987291|
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

lstm_779_while_body_3990219.
*lstm_779_while_lstm_779_while_loop_counter4
0lstm_779_while_lstm_779_while_maximum_iterations
lstm_779_while_placeholder 
lstm_779_while_placeholder_1 
lstm_779_while_placeholder_2 
lstm_779_while_placeholder_3-
)lstm_779_while_lstm_779_strided_slice_1_0i
elstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0:2(Q
?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(L
>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0:(
lstm_779_while_identity
lstm_779_while_identity_1
lstm_779_while_identity_2
lstm_779_while_identity_3
lstm_779_while_identity_4
lstm_779_while_identity_5+
'lstm_779_while_lstm_779_strided_slice_1g
clstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensorM
;lstm_779_while_lstm_cell_659_matmul_readvariableop_resource:2(O
=lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource:
(J
<lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource:(??3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp?2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp?4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp?
@lstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_779/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0lstm_779_while_placeholderIlstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_779/while/lstm_cell_659/MatMulMatMul9lstm_779/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_779/while/lstm_cell_659/MatMul_1MatMullstm_779_while_placeholder_2<lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_779/while/lstm_cell_659/addAddV2-lstm_779/while/lstm_cell_659/MatMul:product:0/lstm_779/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_779/while/lstm_cell_659/BiasAddBiasAdd$lstm_779/while/lstm_cell_659/add:z:0;lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_779/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_779/while/lstm_cell_659/splitSplit5lstm_779/while/lstm_cell_659/split/split_dim:output:0-lstm_779/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_779/while/lstm_cell_659/SigmoidSigmoid+lstm_779/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_779/while/lstm_cell_659/Sigmoid_1Sigmoid+lstm_779/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_779/while/lstm_cell_659/mulMul*lstm_779/while/lstm_cell_659/Sigmoid_1:y:0lstm_779_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_779/while/lstm_cell_659/ReluRelu+lstm_779/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/mul_1Mul(lstm_779/while/lstm_cell_659/Sigmoid:y:0/lstm_779/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/add_1AddV2$lstm_779/while/lstm_cell_659/mul:z:0&lstm_779/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_779/while/lstm_cell_659/Sigmoid_2Sigmoid+lstm_779/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_779/while/lstm_cell_659/Relu_1Relu&lstm_779/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/mul_2Mul*lstm_779/while/lstm_cell_659/Sigmoid_2:y:01lstm_779/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_779/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_779_while_placeholder_1lstm_779_while_placeholder&lstm_779/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_779/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_779/while/addAddV2lstm_779_while_placeholderlstm_779/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_779/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_779/while/add_1AddV2*lstm_779_while_lstm_779_while_loop_counterlstm_779/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_779/while/IdentityIdentitylstm_779/while/add_1:z:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_1Identity0lstm_779_while_lstm_779_while_maximum_iterations^lstm_779/while/NoOp*
T0*
_output_shapes
: t
lstm_779/while/Identity_2Identitylstm_779/while/add:z:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_3IdentityClstm_779/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_4Identity&lstm_779/while/lstm_cell_659/mul_2:z:0^lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_779/while/Identity_5Identity&lstm_779/while/lstm_cell_659/add_1:z:0^lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_779/while/NoOpNoOp4^lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp3^lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp5^lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_779_while_identity lstm_779/while/Identity:output:0"?
lstm_779_while_identity_1"lstm_779/while/Identity_1:output:0"?
lstm_779_while_identity_2"lstm_779/while/Identity_2:output:0"?
lstm_779_while_identity_3"lstm_779/while/Identity_3:output:0"?
lstm_779_while_identity_4"lstm_779/while/Identity_4:output:0"?
lstm_779_while_identity_5"lstm_779/while/Identity_5:output:0"T
'lstm_779_while_lstm_779_strided_slice_1)lstm_779_while_lstm_779_strided_slice_1_0"~
<lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
=lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0"|
;lstm_779_while_lstm_cell_659_matmul_readvariableop_resource=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0"?
clstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensorelstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp2h
2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp2l
4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3988665

inputs#
lstm_777_3988341:	?#
lstm_777_3988343:	d?
lstm_777_3988345:	?#
lstm_778_3988491:	d?#
lstm_778_3988493:	2?
lstm_778_3988495:	?"
lstm_779_3988641:2("
lstm_779_3988643:
(
lstm_779_3988645:(#
dense_259_3988659:

dense_259_3988661:
identity??!dense_259/StatefulPartitionedCall? lstm_777/StatefulPartitionedCall? lstm_778/StatefulPartitionedCall? lstm_779/StatefulPartitionedCall?
 lstm_777/StatefulPartitionedCallStatefulPartitionedCallinputslstm_777_3988341lstm_777_3988343lstm_777_3988345*
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3988340?
 lstm_778/StatefulPartitionedCallStatefulPartitionedCall)lstm_777/StatefulPartitionedCall:output:0lstm_778_3988491lstm_778_3988493lstm_778_3988495*
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3988490?
 lstm_779/StatefulPartitionedCallStatefulPartitionedCall)lstm_778/StatefulPartitionedCall:output:0lstm_779_3988641lstm_779_3988643lstm_779_3988645*
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988640?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_779/StatefulPartitionedCall:output:0dense_259_3988659dense_259_3988661*
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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658y
IdentityIdentity*dense_259/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_259/StatefulPartitionedCall!^lstm_777/StatefulPartitionedCall!^lstm_778/StatefulPartitionedCall!^lstm_779/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2D
 lstm_777/StatefulPartitionedCall lstm_777/StatefulPartitionedCall2D
 lstm_778/StatefulPartitionedCall lstm_778/StatefulPartitionedCall2D
 lstm_779/StatefulPartitionedCall lstm_779/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_778_layer_call_fn_3990936
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3987641|
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
while_cond_3991929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991929___redundant_placeholder05
1while_while_cond_3991929___redundant_placeholder15
1while_while_cond_3991929___redundant_placeholder25
1while_while_cond_3991929___redundant_placeholder3
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991871
inputs_0>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3991787*
condR
while_cond_3991786*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_778_while_body_3989653.
*lstm_778_while_lstm_778_while_loop_counter4
0lstm_778_while_lstm_778_while_maximum_iterations
lstm_778_while_placeholder 
lstm_778_while_placeholder_1 
lstm_778_while_placeholder_2 
lstm_778_while_placeholder_3-
)lstm_778_while_lstm_778_strided_slice_1_0i
elstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?R
?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?M
>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
lstm_778_while_identity
lstm_778_while_identity_1
lstm_778_while_identity_2
lstm_778_while_identity_3
lstm_778_while_identity_4
lstm_778_while_identity_5+
'lstm_778_while_lstm_778_strided_slice_1g
clstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensorN
;lstm_778_while_lstm_cell_658_matmul_readvariableop_resource:	d?P
=lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?K
<lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource:	???3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp?2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp?4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp?
@lstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_778/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0lstm_778_while_placeholderIlstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_778/while/lstm_cell_658/MatMulMatMul9lstm_778/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_778/while/lstm_cell_658/MatMul_1MatMullstm_778_while_placeholder_2<lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_778/while/lstm_cell_658/addAddV2-lstm_778/while/lstm_cell_658/MatMul:product:0/lstm_778/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_778/while/lstm_cell_658/BiasAddBiasAdd$lstm_778/while/lstm_cell_658/add:z:0;lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_778/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_778/while/lstm_cell_658/splitSplit5lstm_778/while/lstm_cell_658/split/split_dim:output:0-lstm_778/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_778/while/lstm_cell_658/SigmoidSigmoid+lstm_778/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_778/while/lstm_cell_658/Sigmoid_1Sigmoid+lstm_778/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_778/while/lstm_cell_658/mulMul*lstm_778/while/lstm_cell_658/Sigmoid_1:y:0lstm_778_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_778/while/lstm_cell_658/ReluRelu+lstm_778/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/mul_1Mul(lstm_778/while/lstm_cell_658/Sigmoid:y:0/lstm_778/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/add_1AddV2$lstm_778/while/lstm_cell_658/mul:z:0&lstm_778/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_778/while/lstm_cell_658/Sigmoid_2Sigmoid+lstm_778/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_778/while/lstm_cell_658/Relu_1Relu&lstm_778/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/mul_2Mul*lstm_778/while/lstm_cell_658/Sigmoid_2:y:01lstm_778/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_778/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_778_while_placeholder_1lstm_778_while_placeholder&lstm_778/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_778/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_778/while/addAddV2lstm_778_while_placeholderlstm_778/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_778/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_778/while/add_1AddV2*lstm_778_while_lstm_778_while_loop_counterlstm_778/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_778/while/IdentityIdentitylstm_778/while/add_1:z:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_1Identity0lstm_778_while_lstm_778_while_maximum_iterations^lstm_778/while/NoOp*
T0*
_output_shapes
: t
lstm_778/while/Identity_2Identitylstm_778/while/add:z:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_3IdentityClstm_778/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_4Identity&lstm_778/while/lstm_cell_658/mul_2:z:0^lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_778/while/Identity_5Identity&lstm_778/while/lstm_cell_658/add_1:z:0^lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_778/while/NoOpNoOp4^lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp3^lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp5^lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_778_while_identity lstm_778/while/Identity:output:0"?
lstm_778_while_identity_1"lstm_778/while/Identity_1:output:0"?
lstm_778_while_identity_2"lstm_778/while/Identity_2:output:0"?
lstm_778_while_identity_3"lstm_778/while/Identity_3:output:0"?
lstm_778_while_identity_4"lstm_778/while/Identity_4:output:0"?
lstm_778_while_identity_5"lstm_778/while/Identity_5:output:0"T
'lstm_778_while_lstm_778_strided_slice_1)lstm_778_while_lstm_778_strided_slice_1_0"~
<lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
=lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0"|
;lstm_778_while_lstm_cell_658_matmul_readvariableop_resource=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0"?
clstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensorelstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp2h
2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp2l
4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987558

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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992340

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
%__inference_signature_wrapper_3989401
lstm_777_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_777_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3987141o
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
_user_specified_namelstm_777_input
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987354

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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3989021

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3988937*
condR
while_cond_3988936*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3987221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3987221___redundant_placeholder05
1while_while_cond_3987221___redundant_placeholder15
1while_while_cond_3987221___redundant_placeholder25
1while_while_cond_3987221___redundant_placeholder3
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
?
?
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989366
lstm_777_input#
lstm_777_3989339:	?#
lstm_777_3989341:	d?
lstm_777_3989343:	?#
lstm_778_3989346:	d?#
lstm_778_3989348:	2?
lstm_778_3989350:	?"
lstm_779_3989353:2("
lstm_779_3989355:
(
lstm_779_3989357:(#
dense_259_3989360:

dense_259_3989362:
identity??!dense_259/StatefulPartitionedCall? lstm_777/StatefulPartitionedCall? lstm_778/StatefulPartitionedCall? lstm_779/StatefulPartitionedCall?
 lstm_777/StatefulPartitionedCallStatefulPartitionedCalllstm_777_inputlstm_777_3989339lstm_777_3989341lstm_777_3989343*
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3989186?
 lstm_778/StatefulPartitionedCallStatefulPartitionedCall)lstm_777/StatefulPartitionedCall:output:0lstm_778_3989346lstm_778_3989348lstm_778_3989350*
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3989021?
 lstm_779/StatefulPartitionedCallStatefulPartitionedCall)lstm_778/StatefulPartitionedCall:output:0lstm_779_3989353lstm_779_3989355lstm_779_3989357*
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988856?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_779/StatefulPartitionedCall:output:0dense_259_3989360dense_259_3989362*
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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658y
IdentityIdentity*dense_259/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_259/StatefulPartitionedCall!^lstm_777/StatefulPartitionedCall!^lstm_778/StatefulPartitionedCall!^lstm_779/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2D
 lstm_777/StatefulPartitionedCall lstm_777/StatefulPartitionedCall2D
 lstm_778/StatefulPartitionedCall lstm_778/StatefulPartitionedCall2D
 lstm_779/StatefulPartitionedCall lstm_779/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_777_input
?8
?
while_body_3990698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3987571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3987571___redundant_placeholder05
1while_while_cond_3987571___redundant_placeholder15
1while_while_cond_3987571___redundant_placeholder25
1while_while_cond_3987571___redundant_placeholder3
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
while_body_3989102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991541

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3991457*
condR
while_cond_3991456*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3987922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_659_3987946_0:2(/
while_lstm_cell_659_3987948_0:
(+
while_lstm_cell_659_3987950_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_659_3987946:2(-
while_lstm_cell_659_3987948:
()
while_lstm_cell_659_3987950:(??+while/lstm_cell_659/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_659_3987946_0while_lstm_cell_659_3987948_0while_lstm_cell_659_3987950_0*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3987908?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_659/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_659/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_659/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_659_3987946while_lstm_cell_659_3987946_0"<
while_lstm_cell_659_3987948while_lstm_cell_659_3987948_0"<
while_lstm_cell_659_3987950while_lstm_cell_659_3987950_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_659/StatefulPartitionedCall+while/lstm_cell_659/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3988340

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3988256*
condR
while_cond_3988255*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_779_layer_call_and_return_conditional_losses_3987991

inputs'
lstm_cell_659_3987909:2('
lstm_cell_659_3987911:
(#
lstm_cell_659_3987913:(
identity??%lstm_cell_659/StatefulPartitionedCall?while;
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
%lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_659_3987909lstm_cell_659_3987911lstm_cell_659_3987913*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3987908n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_659_3987909lstm_cell_659_3987911lstm_cell_659_3987913*
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
while_body_3987922*
condR
while_cond_3987921*K
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
NoOpNoOp&^lstm_cell_659/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_659/StatefulPartitionedCall%lstm_cell_659/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*sequential_259_lstm_777_while_cond_3986772L
Hsequential_259_lstm_777_while_sequential_259_lstm_777_while_loop_counterR
Nsequential_259_lstm_777_while_sequential_259_lstm_777_while_maximum_iterations-
)sequential_259_lstm_777_while_placeholder/
+sequential_259_lstm_777_while_placeholder_1/
+sequential_259_lstm_777_while_placeholder_2/
+sequential_259_lstm_777_while_placeholder_3N
Jsequential_259_lstm_777_while_less_sequential_259_lstm_777_strided_slice_1e
asequential_259_lstm_777_while_sequential_259_lstm_777_while_cond_3986772___redundant_placeholder0e
asequential_259_lstm_777_while_sequential_259_lstm_777_while_cond_3986772___redundant_placeholder1e
asequential_259_lstm_777_while_sequential_259_lstm_777_while_cond_3986772___redundant_placeholder2e
asequential_259_lstm_777_while_sequential_259_lstm_777_while_cond_3986772___redundant_placeholder3*
&sequential_259_lstm_777_while_identity
?
"sequential_259/lstm_777/while/LessLess)sequential_259_lstm_777_while_placeholderJsequential_259_lstm_777_while_less_sequential_259_lstm_777_strided_slice_1*
T0*
_output_shapes
: {
&sequential_259/lstm_777/while/IdentityIdentity&sequential_259/lstm_777/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_259_lstm_777_while_identity/sequential_259/lstm_777/while/Identity:output:0*(
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
while_body_3991644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_779_layer_call_fn_3991585

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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988856o
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
while_cond_3990411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3990411___redundant_placeholder05
1while_while_cond_3990411___redundant_placeholder15
1while_while_cond_3990411___redundant_placeholder25
1while_while_cond_3990411___redundant_placeholder3
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
while_body_3990841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992470

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
0__inference_sequential_259_layer_call_fn_3989306
lstm_777_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_777_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989254o
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
_user_specified_namelstm_777_input
?
?
while_cond_3989101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3989101___redundant_placeholder05
1while_while_cond_3989101___redundant_placeholder15
1while_while_cond_3989101___redundant_placeholder25
1while_while_cond_3989101___redundant_placeholder3
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
while_cond_3991643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991643___redundant_placeholder05
1while_while_cond_3991643___redundant_placeholder15
1while_while_cond_3991643___redundant_placeholder25
1while_while_cond_3991643___redundant_placeholder3
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
while_cond_3987762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3987762___redundant_placeholder05
1while_while_cond_3987762___redundant_placeholder15
1while_while_cond_3987762___redundant_placeholder25
1while_while_cond_3987762___redundant_placeholder3
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

?
lstm_778_while_cond_3989652.
*lstm_778_while_lstm_778_while_loop_counter4
0lstm_778_while_lstm_778_while_maximum_iterations
lstm_778_while_placeholder 
lstm_778_while_placeholder_1 
lstm_778_while_placeholder_2 
lstm_778_while_placeholder_30
,lstm_778_while_less_lstm_778_strided_slice_1G
Clstm_778_while_lstm_778_while_cond_3989652___redundant_placeholder0G
Clstm_778_while_lstm_778_while_cond_3989652___redundant_placeholder1G
Clstm_778_while_lstm_778_while_cond_3989652___redundant_placeholder2G
Clstm_778_while_lstm_778_while_cond_3989652___redundant_placeholder3
lstm_778_while_identity
?
lstm_778/while/LessLesslstm_778_while_placeholder,lstm_778_while_less_lstm_778_strided_slice_1*
T0*
_output_shapes
: ]
lstm_778/while/IdentityIdentitylstm_778/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_778_while_identity lstm_778/while/Identity:output:0*(
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

lstm_777_while_body_3989941.
*lstm_777_while_lstm_777_while_loop_counter4
0lstm_777_while_lstm_777_while_maximum_iterations
lstm_777_while_placeholder 
lstm_777_while_placeholder_1 
lstm_777_while_placeholder_2 
lstm_777_while_placeholder_3-
)lstm_777_while_lstm_777_strided_slice_1_0i
elstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0:	?R
?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?M
>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
lstm_777_while_identity
lstm_777_while_identity_1
lstm_777_while_identity_2
lstm_777_while_identity_3
lstm_777_while_identity_4
lstm_777_while_identity_5+
'lstm_777_while_lstm_777_strided_slice_1g
clstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensorN
;lstm_777_while_lstm_cell_657_matmul_readvariableop_resource:	?P
=lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?K
<lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource:	???3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp?2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp?4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp?
@lstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_777/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0lstm_777_while_placeholderIlstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_777/while/lstm_cell_657/MatMulMatMul9lstm_777/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_777/while/lstm_cell_657/MatMul_1MatMullstm_777_while_placeholder_2<lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_777/while/lstm_cell_657/addAddV2-lstm_777/while/lstm_cell_657/MatMul:product:0/lstm_777/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_777/while/lstm_cell_657/BiasAddBiasAdd$lstm_777/while/lstm_cell_657/add:z:0;lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_777/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_777/while/lstm_cell_657/splitSplit5lstm_777/while/lstm_cell_657/split/split_dim:output:0-lstm_777/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_777/while/lstm_cell_657/SigmoidSigmoid+lstm_777/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_777/while/lstm_cell_657/Sigmoid_1Sigmoid+lstm_777/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_777/while/lstm_cell_657/mulMul*lstm_777/while/lstm_cell_657/Sigmoid_1:y:0lstm_777_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_777/while/lstm_cell_657/ReluRelu+lstm_777/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/mul_1Mul(lstm_777/while/lstm_cell_657/Sigmoid:y:0/lstm_777/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/add_1AddV2$lstm_777/while/lstm_cell_657/mul:z:0&lstm_777/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_777/while/lstm_cell_657/Sigmoid_2Sigmoid+lstm_777/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_777/while/lstm_cell_657/Relu_1Relu&lstm_777/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/mul_2Mul*lstm_777/while/lstm_cell_657/Sigmoid_2:y:01lstm_777/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_777/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_777_while_placeholder_1lstm_777_while_placeholder&lstm_777/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_777/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_777/while/addAddV2lstm_777_while_placeholderlstm_777/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_777/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_777/while/add_1AddV2*lstm_777_while_lstm_777_while_loop_counterlstm_777/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_777/while/IdentityIdentitylstm_777/while/add_1:z:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_1Identity0lstm_777_while_lstm_777_while_maximum_iterations^lstm_777/while/NoOp*
T0*
_output_shapes
: t
lstm_777/while/Identity_2Identitylstm_777/while/add:z:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_3IdentityClstm_777/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_4Identity&lstm_777/while/lstm_cell_657/mul_2:z:0^lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_777/while/Identity_5Identity&lstm_777/while/lstm_cell_657/add_1:z:0^lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_777/while/NoOpNoOp4^lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp3^lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp5^lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_777_while_identity lstm_777/while/Identity:output:0"?
lstm_777_while_identity_1"lstm_777/while/Identity_1:output:0"?
lstm_777_while_identity_2"lstm_777/while/Identity_2:output:0"?
lstm_777_while_identity_3"lstm_777/while/Identity_3:output:0"?
lstm_777_while_identity_4"lstm_777/while/Identity_4:output:0"?
lstm_777_while_identity_5"lstm_777/while/Identity_5:output:0"T
'lstm_777_while_lstm_777_strided_slice_1)lstm_777_while_lstm_777_strided_slice_1_0"~
<lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
=lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0"|
;lstm_777_while_lstm_cell_657_matmul_readvariableop_resource=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0"?
clstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensorelstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp2h
2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp2l
4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3987482

inputs(
lstm_cell_657_3987400:	?(
lstm_cell_657_3987402:	d?$
lstm_cell_657_3987404:	?
identity??%lstm_cell_657/StatefulPartitionedCall?while;
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
%lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_657_3987400lstm_cell_657_3987402lstm_cell_657_3987404*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987354n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_657_3987400lstm_cell_657_3987402lstm_cell_657_3987404*
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
while_body_3987413*
condR
while_cond_3987412*K
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
NoOpNoOp&^lstm_cell_657/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_657/StatefulPartitionedCall%lstm_cell_657/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_777_while_cond_3989940.
*lstm_777_while_lstm_777_while_loop_counter4
0lstm_777_while_lstm_777_while_maximum_iterations
lstm_777_while_placeholder 
lstm_777_while_placeholder_1 
lstm_777_while_placeholder_2 
lstm_777_while_placeholder_30
,lstm_777_while_less_lstm_777_strided_slice_1G
Clstm_777_while_lstm_777_while_cond_3989940___redundant_placeholder0G
Clstm_777_while_lstm_777_while_cond_3989940___redundant_placeholder1G
Clstm_777_while_lstm_777_while_cond_3989940___redundant_placeholder2G
Clstm_777_while_lstm_777_while_cond_3989940___redundant_placeholder3
lstm_777_while_identity
?
lstm_777/while/LessLesslstm_777_while_placeholder,lstm_777_while_less_lstm_777_strided_slice_1*
T0*
_output_shapes
: ]
lstm_777/while/IdentityIdentitylstm_777/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_777_while_identity lstm_777/while/Identity:output:0*(
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
*sequential_259_lstm_778_while_cond_3986911L
Hsequential_259_lstm_778_while_sequential_259_lstm_778_while_loop_counterR
Nsequential_259_lstm_778_while_sequential_259_lstm_778_while_maximum_iterations-
)sequential_259_lstm_778_while_placeholder/
+sequential_259_lstm_778_while_placeholder_1/
+sequential_259_lstm_778_while_placeholder_2/
+sequential_259_lstm_778_while_placeholder_3N
Jsequential_259_lstm_778_while_less_sequential_259_lstm_778_strided_slice_1e
asequential_259_lstm_778_while_sequential_259_lstm_778_while_cond_3986911___redundant_placeholder0e
asequential_259_lstm_778_while_sequential_259_lstm_778_while_cond_3986911___redundant_placeholder1e
asequential_259_lstm_778_while_sequential_259_lstm_778_while_cond_3986911___redundant_placeholder2e
asequential_259_lstm_778_while_sequential_259_lstm_778_while_cond_3986911___redundant_placeholder3*
&sequential_259_lstm_778_while_identity
?
"sequential_259/lstm_778/while/LessLess)sequential_259_lstm_778_while_placeholderJsequential_259_lstm_778_while_less_sequential_259_lstm_778_strided_slice_1*
T0*
_output_shapes
: {
&sequential_259/lstm_778/while/IdentityIdentity&sequential_259/lstm_778/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_259_lstm_778_while_identity/sequential_259/lstm_778/while/Identity:output:0*(
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991255
inputs_0?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3991171*
condR
while_cond_3991170*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_659_layer_call_fn_3992389

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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3987908o
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
*sequential_259_lstm_779_while_cond_3987050L
Hsequential_259_lstm_779_while_sequential_259_lstm_779_while_loop_counterR
Nsequential_259_lstm_779_while_sequential_259_lstm_779_while_maximum_iterations-
)sequential_259_lstm_779_while_placeholder/
+sequential_259_lstm_779_while_placeholder_1/
+sequential_259_lstm_779_while_placeholder_2/
+sequential_259_lstm_779_while_placeholder_3N
Jsequential_259_lstm_779_while_less_sequential_259_lstm_779_strided_slice_1e
asequential_259_lstm_779_while_sequential_259_lstm_779_while_cond_3987050___redundant_placeholder0e
asequential_259_lstm_779_while_sequential_259_lstm_779_while_cond_3987050___redundant_placeholder1e
asequential_259_lstm_779_while_sequential_259_lstm_779_while_cond_3987050___redundant_placeholder2e
asequential_259_lstm_779_while_sequential_259_lstm_779_while_cond_3987050___redundant_placeholder3*
&sequential_259_lstm_779_while_identity
?
"sequential_259/lstm_779/while/LessLess)sequential_259_lstm_779_while_placeholderJsequential_259_lstm_779_while_less_sequential_259_lstm_779_strided_slice_1*
T0*
_output_shapes
: {
&sequential_259/lstm_779/while/IdentityIdentity&sequential_259/lstm_779/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_259_lstm_779_while_identity/sequential_259/lstm_779/while/Identity:output:0*(
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
*__inference_lstm_778_layer_call_fn_3990947
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3987832|
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987704

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
while_body_3987222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_657_3987246_0:	?0
while_lstm_cell_657_3987248_0:	d?,
while_lstm_cell_657_3987250_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_657_3987246:	?.
while_lstm_cell_657_3987248:	d?*
while_lstm_cell_657_3987250:	???+while/lstm_cell_657/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_657_3987246_0while_lstm_cell_657_3987248_0while_lstm_cell_657_3987250_0*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987208?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_657/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_657/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_657/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_657/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_657_3987246while_lstm_cell_657_3987246_0"<
while_lstm_cell_657_3987248while_lstm_cell_657_3987248_0"<
while_lstm_cell_657_3987250while_lstm_cell_657_3987250_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_657/StatefulPartitionedCall+while/lstm_cell_657/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_779_layer_call_fn_3991552
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3987991o
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3990309

inputsH
5lstm_777_lstm_cell_657_matmul_readvariableop_resource:	?J
7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource:	d?E
6lstm_777_lstm_cell_657_biasadd_readvariableop_resource:	?H
5lstm_778_lstm_cell_658_matmul_readvariableop_resource:	d?J
7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource:	2?E
6lstm_778_lstm_cell_658_biasadd_readvariableop_resource:	?G
5lstm_779_lstm_cell_659_matmul_readvariableop_resource:2(I
7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource:
(D
6lstm_779_lstm_cell_659_biasadd_readvariableop_resource:(:
(dense_259_matmul_readvariableop_resource:
7
)dense_259_biasadd_readvariableop_resource:
identity?? dense_259/BiasAdd/ReadVariableOp?dense_259/MatMul/ReadVariableOp?-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp?,lstm_777/lstm_cell_657/MatMul/ReadVariableOp?.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp?lstm_777/while?-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp?,lstm_778/lstm_cell_658/MatMul/ReadVariableOp?.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp?lstm_778/while?-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp?,lstm_779/lstm_cell_659/MatMul/ReadVariableOp?.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp?lstm_779/whileD
lstm_777/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_777/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_777/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_777/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_sliceStridedSlicelstm_777/Shape:output:0%lstm_777/strided_slice/stack:output:0'lstm_777/strided_slice/stack_1:output:0'lstm_777/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_777/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_777/zeros/packedPacklstm_777/strided_slice:output:0 lstm_777/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_777/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_777/zerosFilllstm_777/zeros/packed:output:0lstm_777/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_777/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_777/zeros_1/packedPacklstm_777/strided_slice:output:0"lstm_777/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_777/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_777/zeros_1Fill lstm_777/zeros_1/packed:output:0lstm_777/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_777/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_777/transpose	Transposeinputs lstm_777/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_777/Shape_1Shapelstm_777/transpose:y:0*
T0*
_output_shapes
:h
lstm_777/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_777/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_1StridedSlicelstm_777/Shape_1:output:0'lstm_777/strided_slice_1/stack:output:0)lstm_777/strided_slice_1/stack_1:output:0)lstm_777/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_777/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_777/TensorArrayV2TensorListReserve-lstm_777/TensorArrayV2/element_shape:output:0!lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_777/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_777/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_777/transpose:y:0Glstm_777/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_777/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_777/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_2StridedSlicelstm_777/transpose:y:0'lstm_777/strided_slice_2/stack:output:0)lstm_777/strided_slice_2/stack_1:output:0)lstm_777/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_777/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp5lstm_777_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_777/lstm_cell_657/MatMulMatMul!lstm_777/strided_slice_2:output:04lstm_777/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_777/lstm_cell_657/MatMul_1MatMullstm_777/zeros:output:06lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_777/lstm_cell_657/addAddV2'lstm_777/lstm_cell_657/MatMul:product:0)lstm_777/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp6lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_777/lstm_cell_657/BiasAddBiasAddlstm_777/lstm_cell_657/add:z:05lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_777/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_777/lstm_cell_657/splitSplit/lstm_777/lstm_cell_657/split/split_dim:output:0'lstm_777/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_777/lstm_cell_657/SigmoidSigmoid%lstm_777/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_777/lstm_cell_657/Sigmoid_1Sigmoid%lstm_777/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mulMul$lstm_777/lstm_cell_657/Sigmoid_1:y:0lstm_777/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_777/lstm_cell_657/ReluRelu%lstm_777/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mul_1Mul"lstm_777/lstm_cell_657/Sigmoid:y:0)lstm_777/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/add_1AddV2lstm_777/lstm_cell_657/mul:z:0 lstm_777/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_777/lstm_cell_657/Sigmoid_2Sigmoid%lstm_777/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_777/lstm_cell_657/Relu_1Relu lstm_777/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mul_2Mul$lstm_777/lstm_cell_657/Sigmoid_2:y:0+lstm_777/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_777/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_777/TensorArrayV2_1TensorListReserve/lstm_777/TensorArrayV2_1/element_shape:output:0!lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_777/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_777/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_777/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_777/whileWhile$lstm_777/while/loop_counter:output:0*lstm_777/while/maximum_iterations:output:0lstm_777/time:output:0!lstm_777/TensorArrayV2_1:handle:0lstm_777/zeros:output:0lstm_777/zeros_1:output:0!lstm_777/strided_slice_1:output:0@lstm_777/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_777_lstm_cell_657_matmul_readvariableop_resource7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource6lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
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
lstm_777_while_body_3989941*'
condR
lstm_777_while_cond_3989940*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_777/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_777/TensorArrayV2Stack/TensorListStackTensorListStacklstm_777/while:output:3Blstm_777/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_777/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_777/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_3StridedSlice4lstm_777/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_777/strided_slice_3/stack:output:0)lstm_777/strided_slice_3/stack_1:output:0)lstm_777/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_777/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_777/transpose_1	Transpose4lstm_777/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_777/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_777/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_778/ShapeShapelstm_777/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_778/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_778/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_778/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_sliceStridedSlicelstm_778/Shape:output:0%lstm_778/strided_slice/stack:output:0'lstm_778/strided_slice/stack_1:output:0'lstm_778/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_778/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_778/zeros/packedPacklstm_778/strided_slice:output:0 lstm_778/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_778/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_778/zerosFilllstm_778/zeros/packed:output:0lstm_778/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_778/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_778/zeros_1/packedPacklstm_778/strided_slice:output:0"lstm_778/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_778/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_778/zeros_1Fill lstm_778/zeros_1/packed:output:0lstm_778/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_778/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_778/transpose	Transposelstm_777/transpose_1:y:0 lstm_778/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_778/Shape_1Shapelstm_778/transpose:y:0*
T0*
_output_shapes
:h
lstm_778/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_778/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_1StridedSlicelstm_778/Shape_1:output:0'lstm_778/strided_slice_1/stack:output:0)lstm_778/strided_slice_1/stack_1:output:0)lstm_778/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_778/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_778/TensorArrayV2TensorListReserve-lstm_778/TensorArrayV2/element_shape:output:0!lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_778/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_778/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_778/transpose:y:0Glstm_778/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_778/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_778/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_2StridedSlicelstm_778/transpose:y:0'lstm_778/strided_slice_2/stack:output:0)lstm_778/strided_slice_2/stack_1:output:0)lstm_778/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_778/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp5lstm_778_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_778/lstm_cell_658/MatMulMatMul!lstm_778/strided_slice_2:output:04lstm_778/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_778/lstm_cell_658/MatMul_1MatMullstm_778/zeros:output:06lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_778/lstm_cell_658/addAddV2'lstm_778/lstm_cell_658/MatMul:product:0)lstm_778/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp6lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_778/lstm_cell_658/BiasAddBiasAddlstm_778/lstm_cell_658/add:z:05lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_778/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_778/lstm_cell_658/splitSplit/lstm_778/lstm_cell_658/split/split_dim:output:0'lstm_778/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_778/lstm_cell_658/SigmoidSigmoid%lstm_778/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_778/lstm_cell_658/Sigmoid_1Sigmoid%lstm_778/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mulMul$lstm_778/lstm_cell_658/Sigmoid_1:y:0lstm_778/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_778/lstm_cell_658/ReluRelu%lstm_778/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mul_1Mul"lstm_778/lstm_cell_658/Sigmoid:y:0)lstm_778/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/add_1AddV2lstm_778/lstm_cell_658/mul:z:0 lstm_778/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_778/lstm_cell_658/Sigmoid_2Sigmoid%lstm_778/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_778/lstm_cell_658/Relu_1Relu lstm_778/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mul_2Mul$lstm_778/lstm_cell_658/Sigmoid_2:y:0+lstm_778/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_778/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_778/TensorArrayV2_1TensorListReserve/lstm_778/TensorArrayV2_1/element_shape:output:0!lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_778/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_778/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_778/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_778/whileWhile$lstm_778/while/loop_counter:output:0*lstm_778/while/maximum_iterations:output:0lstm_778/time:output:0!lstm_778/TensorArrayV2_1:handle:0lstm_778/zeros:output:0lstm_778/zeros_1:output:0!lstm_778/strided_slice_1:output:0@lstm_778/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_778_lstm_cell_658_matmul_readvariableop_resource7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource6lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
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
lstm_778_while_body_3990080*'
condR
lstm_778_while_cond_3990079*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_778/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_778/TensorArrayV2Stack/TensorListStackTensorListStacklstm_778/while:output:3Blstm_778/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_778/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_778/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_3StridedSlice4lstm_778/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_778/strided_slice_3/stack:output:0)lstm_778/strided_slice_3/stack_1:output:0)lstm_778/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_778/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_778/transpose_1	Transpose4lstm_778/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_778/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_778/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_779/ShapeShapelstm_778/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_779/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_779/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_779/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_sliceStridedSlicelstm_779/Shape:output:0%lstm_779/strided_slice/stack:output:0'lstm_779/strided_slice/stack_1:output:0'lstm_779/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_779/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_779/zeros/packedPacklstm_779/strided_slice:output:0 lstm_779/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_779/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_779/zerosFilllstm_779/zeros/packed:output:0lstm_779/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_779/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_779/zeros_1/packedPacklstm_779/strided_slice:output:0"lstm_779/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_779/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_779/zeros_1Fill lstm_779/zeros_1/packed:output:0lstm_779/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_779/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_779/transpose	Transposelstm_778/transpose_1:y:0 lstm_779/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_779/Shape_1Shapelstm_779/transpose:y:0*
T0*
_output_shapes
:h
lstm_779/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_779/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_1StridedSlicelstm_779/Shape_1:output:0'lstm_779/strided_slice_1/stack:output:0)lstm_779/strided_slice_1/stack_1:output:0)lstm_779/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_779/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_779/TensorArrayV2TensorListReserve-lstm_779/TensorArrayV2/element_shape:output:0!lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_779/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_779/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_779/transpose:y:0Glstm_779/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_779/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_779/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_2StridedSlicelstm_779/transpose:y:0'lstm_779/strided_slice_2/stack:output:0)lstm_779/strided_slice_2/stack_1:output:0)lstm_779/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_779/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp5lstm_779_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_779/lstm_cell_659/MatMulMatMul!lstm_779/strided_slice_2:output:04lstm_779/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_779/lstm_cell_659/MatMul_1MatMullstm_779/zeros:output:06lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_779/lstm_cell_659/addAddV2'lstm_779/lstm_cell_659/MatMul:product:0)lstm_779/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp6lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_779/lstm_cell_659/BiasAddBiasAddlstm_779/lstm_cell_659/add:z:05lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_779/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_779/lstm_cell_659/splitSplit/lstm_779/lstm_cell_659/split/split_dim:output:0'lstm_779/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_779/lstm_cell_659/SigmoidSigmoid%lstm_779/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_779/lstm_cell_659/Sigmoid_1Sigmoid%lstm_779/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mulMul$lstm_779/lstm_cell_659/Sigmoid_1:y:0lstm_779/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_779/lstm_cell_659/ReluRelu%lstm_779/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mul_1Mul"lstm_779/lstm_cell_659/Sigmoid:y:0)lstm_779/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/add_1AddV2lstm_779/lstm_cell_659/mul:z:0 lstm_779/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_779/lstm_cell_659/Sigmoid_2Sigmoid%lstm_779/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_779/lstm_cell_659/Relu_1Relu lstm_779/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mul_2Mul$lstm_779/lstm_cell_659/Sigmoid_2:y:0+lstm_779/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_779/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_779/TensorArrayV2_1TensorListReserve/lstm_779/TensorArrayV2_1/element_shape:output:0!lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_779/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_779/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_779/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_779/whileWhile$lstm_779/while/loop_counter:output:0*lstm_779/while/maximum_iterations:output:0lstm_779/time:output:0!lstm_779/TensorArrayV2_1:handle:0lstm_779/zeros:output:0lstm_779/zeros_1:output:0!lstm_779/strided_slice_1:output:0@lstm_779/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_779_lstm_cell_659_matmul_readvariableop_resource7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource6lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
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
lstm_779_while_body_3990219*'
condR
lstm_779_while_cond_3990218*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_779/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_779/TensorArrayV2Stack/TensorListStackTensorListStacklstm_779/while:output:3Blstm_779/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_779/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_779/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_3StridedSlice4lstm_779/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_779/strided_slice_3/stack:output:0)lstm_779/strided_slice_3/stack_1:output:0)lstm_779/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_779/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_779/transpose_1	Transpose4lstm_779/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_779/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_779/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_259/MatMul/ReadVariableOpReadVariableOp(dense_259_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_259/MatMulMatMul!lstm_779/strided_slice_3:output:0'dense_259/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_259/BiasAdd/ReadVariableOpReadVariableOp)dense_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_259/BiasAddBiasAdddense_259/MatMul:product:0(dense_259/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_259/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_259/BiasAdd/ReadVariableOp ^dense_259/MatMul/ReadVariableOp.^lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp-^lstm_777/lstm_cell_657/MatMul/ReadVariableOp/^lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp^lstm_777/while.^lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp-^lstm_778/lstm_cell_658/MatMul/ReadVariableOp/^lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp^lstm_778/while.^lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp-^lstm_779/lstm_cell_659/MatMul/ReadVariableOp/^lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp^lstm_779/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_259/BiasAdd/ReadVariableOp dense_259/BiasAdd/ReadVariableOp2B
dense_259/MatMul/ReadVariableOpdense_259/MatMul/ReadVariableOp2^
-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp2\
,lstm_777/lstm_cell_657/MatMul/ReadVariableOp,lstm_777/lstm_cell_657/MatMul/ReadVariableOp2`
.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp2 
lstm_777/whilelstm_777/while2^
-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp2\
,lstm_778/lstm_cell_658/MatMul/ReadVariableOp,lstm_778/lstm_cell_658/MatMul/ReadVariableOp2`
.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp2 
lstm_778/whilelstm_778/while2^
-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp2\
,lstm_779/lstm_cell_659/MatMul/ReadVariableOp,lstm_779/lstm_cell_659/MatMul/ReadVariableOp2`
.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp2 
lstm_779/whilelstm_779/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_659_layer_call_fn_3992406

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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3988054o
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
??
?
"__inference__wrapped_model_3987141
lstm_777_inputW
Dsequential_259_lstm_777_lstm_cell_657_matmul_readvariableop_resource:	?Y
Fsequential_259_lstm_777_lstm_cell_657_matmul_1_readvariableop_resource:	d?T
Esequential_259_lstm_777_lstm_cell_657_biasadd_readvariableop_resource:	?W
Dsequential_259_lstm_778_lstm_cell_658_matmul_readvariableop_resource:	d?Y
Fsequential_259_lstm_778_lstm_cell_658_matmul_1_readvariableop_resource:	2?T
Esequential_259_lstm_778_lstm_cell_658_biasadd_readvariableop_resource:	?V
Dsequential_259_lstm_779_lstm_cell_659_matmul_readvariableop_resource:2(X
Fsequential_259_lstm_779_lstm_cell_659_matmul_1_readvariableop_resource:
(S
Esequential_259_lstm_779_lstm_cell_659_biasadd_readvariableop_resource:(I
7sequential_259_dense_259_matmul_readvariableop_resource:
F
8sequential_259_dense_259_biasadd_readvariableop_resource:
identity??/sequential_259/dense_259/BiasAdd/ReadVariableOp?.sequential_259/dense_259/MatMul/ReadVariableOp?<sequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp?;sequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOp?=sequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp?sequential_259/lstm_777/while?<sequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp?;sequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOp?=sequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp?sequential_259/lstm_778/while?<sequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp?;sequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOp?=sequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp?sequential_259/lstm_779/while[
sequential_259/lstm_777/ShapeShapelstm_777_input*
T0*
_output_shapes
:u
+sequential_259/lstm_777/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_259/lstm_777/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_259/lstm_777/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_259/lstm_777/strided_sliceStridedSlice&sequential_259/lstm_777/Shape:output:04sequential_259/lstm_777/strided_slice/stack:output:06sequential_259/lstm_777/strided_slice/stack_1:output:06sequential_259/lstm_777/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_259/lstm_777/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_259/lstm_777/zeros/packedPack.sequential_259/lstm_777/strided_slice:output:0/sequential_259/lstm_777/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_259/lstm_777/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_777/zerosFill-sequential_259/lstm_777/zeros/packed:output:0,sequential_259/lstm_777/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_259/lstm_777/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_259/lstm_777/zeros_1/packedPack.sequential_259/lstm_777/strided_slice:output:01sequential_259/lstm_777/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_259/lstm_777/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_777/zeros_1Fill/sequential_259/lstm_777/zeros_1/packed:output:0.sequential_259/lstm_777/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_259/lstm_777/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_259/lstm_777/transpose	Transposelstm_777_input/sequential_259/lstm_777/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_259/lstm_777/Shape_1Shape%sequential_259/lstm_777/transpose:y:0*
T0*
_output_shapes
:w
-sequential_259/lstm_777/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_777/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_777/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_777/strided_slice_1StridedSlice(sequential_259/lstm_777/Shape_1:output:06sequential_259/lstm_777/strided_slice_1/stack:output:08sequential_259/lstm_777/strided_slice_1/stack_1:output:08sequential_259/lstm_777/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_259/lstm_777/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_259/lstm_777/TensorArrayV2TensorListReserve<sequential_259/lstm_777/TensorArrayV2/element_shape:output:00sequential_259/lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_259/lstm_777/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_259/lstm_777/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_259/lstm_777/transpose:y:0Vsequential_259/lstm_777/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_259/lstm_777/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_777/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_777/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_777/strided_slice_2StridedSlice%sequential_259/lstm_777/transpose:y:06sequential_259/lstm_777/strided_slice_2/stack:output:08sequential_259/lstm_777/strided_slice_2/stack_1:output:08sequential_259/lstm_777/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOpReadVariableOpDsequential_259_lstm_777_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_259/lstm_777/lstm_cell_657/MatMulMatMul0sequential_259/lstm_777/strided_slice_2:output:0Csequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOpFsequential_259_lstm_777_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_259/lstm_777/lstm_cell_657/MatMul_1MatMul&sequential_259/lstm_777/zeros:output:0Esequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_259/lstm_777/lstm_cell_657/addAddV26sequential_259/lstm_777/lstm_cell_657/MatMul:product:08sequential_259/lstm_777/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOpEsequential_259_lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_259/lstm_777/lstm_cell_657/BiasAddBiasAdd-sequential_259/lstm_777/lstm_cell_657/add:z:0Dsequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_259/lstm_777/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_259/lstm_777/lstm_cell_657/splitSplit>sequential_259/lstm_777/lstm_cell_657/split/split_dim:output:06sequential_259/lstm_777/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_259/lstm_777/lstm_cell_657/SigmoidSigmoid4sequential_259/lstm_777/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_259/lstm_777/lstm_cell_657/Sigmoid_1Sigmoid4sequential_259/lstm_777/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_259/lstm_777/lstm_cell_657/mulMul3sequential_259/lstm_777/lstm_cell_657/Sigmoid_1:y:0(sequential_259/lstm_777/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_259/lstm_777/lstm_cell_657/ReluRelu4sequential_259/lstm_777/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_259/lstm_777/lstm_cell_657/mul_1Mul1sequential_259/lstm_777/lstm_cell_657/Sigmoid:y:08sequential_259/lstm_777/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_259/lstm_777/lstm_cell_657/add_1AddV2-sequential_259/lstm_777/lstm_cell_657/mul:z:0/sequential_259/lstm_777/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_259/lstm_777/lstm_cell_657/Sigmoid_2Sigmoid4sequential_259/lstm_777/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_259/lstm_777/lstm_cell_657/Relu_1Relu/sequential_259/lstm_777/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_259/lstm_777/lstm_cell_657/mul_2Mul3sequential_259/lstm_777/lstm_cell_657/Sigmoid_2:y:0:sequential_259/lstm_777/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_259/lstm_777/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_259/lstm_777/TensorArrayV2_1TensorListReserve>sequential_259/lstm_777/TensorArrayV2_1/element_shape:output:00sequential_259/lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_259/lstm_777/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_259/lstm_777/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_259/lstm_777/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_259/lstm_777/whileWhile3sequential_259/lstm_777/while/loop_counter:output:09sequential_259/lstm_777/while/maximum_iterations:output:0%sequential_259/lstm_777/time:output:00sequential_259/lstm_777/TensorArrayV2_1:handle:0&sequential_259/lstm_777/zeros:output:0(sequential_259/lstm_777/zeros_1:output:00sequential_259/lstm_777/strided_slice_1:output:0Osequential_259/lstm_777/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_259_lstm_777_lstm_cell_657_matmul_readvariableop_resourceFsequential_259_lstm_777_lstm_cell_657_matmul_1_readvariableop_resourceEsequential_259_lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
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
*sequential_259_lstm_777_while_body_3986773*6
cond.R,
*sequential_259_lstm_777_while_cond_3986772*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_259/lstm_777/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_259/lstm_777/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_259/lstm_777/while:output:3Qsequential_259/lstm_777/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_259/lstm_777/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_259/lstm_777/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_777/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_777/strided_slice_3StridedSliceCsequential_259/lstm_777/TensorArrayV2Stack/TensorListStack:tensor:06sequential_259/lstm_777/strided_slice_3/stack:output:08sequential_259/lstm_777/strided_slice_3/stack_1:output:08sequential_259/lstm_777/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_259/lstm_777/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_259/lstm_777/transpose_1	TransposeCsequential_259/lstm_777/TensorArrayV2Stack/TensorListStack:tensor:01sequential_259/lstm_777/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_259/lstm_777/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_259/lstm_778/ShapeShape'sequential_259/lstm_777/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_259/lstm_778/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_259/lstm_778/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_259/lstm_778/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_259/lstm_778/strided_sliceStridedSlice&sequential_259/lstm_778/Shape:output:04sequential_259/lstm_778/strided_slice/stack:output:06sequential_259/lstm_778/strided_slice/stack_1:output:06sequential_259/lstm_778/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_259/lstm_778/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_259/lstm_778/zeros/packedPack.sequential_259/lstm_778/strided_slice:output:0/sequential_259/lstm_778/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_259/lstm_778/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_778/zerosFill-sequential_259/lstm_778/zeros/packed:output:0,sequential_259/lstm_778/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_259/lstm_778/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_259/lstm_778/zeros_1/packedPack.sequential_259/lstm_778/strided_slice:output:01sequential_259/lstm_778/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_259/lstm_778/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_778/zeros_1Fill/sequential_259/lstm_778/zeros_1/packed:output:0.sequential_259/lstm_778/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_259/lstm_778/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_259/lstm_778/transpose	Transpose'sequential_259/lstm_777/transpose_1:y:0/sequential_259/lstm_778/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_259/lstm_778/Shape_1Shape%sequential_259/lstm_778/transpose:y:0*
T0*
_output_shapes
:w
-sequential_259/lstm_778/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_778/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_778/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_778/strided_slice_1StridedSlice(sequential_259/lstm_778/Shape_1:output:06sequential_259/lstm_778/strided_slice_1/stack:output:08sequential_259/lstm_778/strided_slice_1/stack_1:output:08sequential_259/lstm_778/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_259/lstm_778/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_259/lstm_778/TensorArrayV2TensorListReserve<sequential_259/lstm_778/TensorArrayV2/element_shape:output:00sequential_259/lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_259/lstm_778/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_259/lstm_778/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_259/lstm_778/transpose:y:0Vsequential_259/lstm_778/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_259/lstm_778/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_778/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_778/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_778/strided_slice_2StridedSlice%sequential_259/lstm_778/transpose:y:06sequential_259/lstm_778/strided_slice_2/stack:output:08sequential_259/lstm_778/strided_slice_2/stack_1:output:08sequential_259/lstm_778/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOpReadVariableOpDsequential_259_lstm_778_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_259/lstm_778/lstm_cell_658/MatMulMatMul0sequential_259/lstm_778/strided_slice_2:output:0Csequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOpFsequential_259_lstm_778_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_259/lstm_778/lstm_cell_658/MatMul_1MatMul&sequential_259/lstm_778/zeros:output:0Esequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_259/lstm_778/lstm_cell_658/addAddV26sequential_259/lstm_778/lstm_cell_658/MatMul:product:08sequential_259/lstm_778/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOpEsequential_259_lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_259/lstm_778/lstm_cell_658/BiasAddBiasAdd-sequential_259/lstm_778/lstm_cell_658/add:z:0Dsequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_259/lstm_778/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_259/lstm_778/lstm_cell_658/splitSplit>sequential_259/lstm_778/lstm_cell_658/split/split_dim:output:06sequential_259/lstm_778/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_259/lstm_778/lstm_cell_658/SigmoidSigmoid4sequential_259/lstm_778/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_259/lstm_778/lstm_cell_658/Sigmoid_1Sigmoid4sequential_259/lstm_778/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_259/lstm_778/lstm_cell_658/mulMul3sequential_259/lstm_778/lstm_cell_658/Sigmoid_1:y:0(sequential_259/lstm_778/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_259/lstm_778/lstm_cell_658/ReluRelu4sequential_259/lstm_778/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_259/lstm_778/lstm_cell_658/mul_1Mul1sequential_259/lstm_778/lstm_cell_658/Sigmoid:y:08sequential_259/lstm_778/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_259/lstm_778/lstm_cell_658/add_1AddV2-sequential_259/lstm_778/lstm_cell_658/mul:z:0/sequential_259/lstm_778/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_259/lstm_778/lstm_cell_658/Sigmoid_2Sigmoid4sequential_259/lstm_778/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_259/lstm_778/lstm_cell_658/Relu_1Relu/sequential_259/lstm_778/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_259/lstm_778/lstm_cell_658/mul_2Mul3sequential_259/lstm_778/lstm_cell_658/Sigmoid_2:y:0:sequential_259/lstm_778/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_259/lstm_778/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_259/lstm_778/TensorArrayV2_1TensorListReserve>sequential_259/lstm_778/TensorArrayV2_1/element_shape:output:00sequential_259/lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_259/lstm_778/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_259/lstm_778/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_259/lstm_778/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_259/lstm_778/whileWhile3sequential_259/lstm_778/while/loop_counter:output:09sequential_259/lstm_778/while/maximum_iterations:output:0%sequential_259/lstm_778/time:output:00sequential_259/lstm_778/TensorArrayV2_1:handle:0&sequential_259/lstm_778/zeros:output:0(sequential_259/lstm_778/zeros_1:output:00sequential_259/lstm_778/strided_slice_1:output:0Osequential_259/lstm_778/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_259_lstm_778_lstm_cell_658_matmul_readvariableop_resourceFsequential_259_lstm_778_lstm_cell_658_matmul_1_readvariableop_resourceEsequential_259_lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
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
*sequential_259_lstm_778_while_body_3986912*6
cond.R,
*sequential_259_lstm_778_while_cond_3986911*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_259/lstm_778/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_259/lstm_778/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_259/lstm_778/while:output:3Qsequential_259/lstm_778/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_259/lstm_778/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_259/lstm_778/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_778/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_778/strided_slice_3StridedSliceCsequential_259/lstm_778/TensorArrayV2Stack/TensorListStack:tensor:06sequential_259/lstm_778/strided_slice_3/stack:output:08sequential_259/lstm_778/strided_slice_3/stack_1:output:08sequential_259/lstm_778/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_259/lstm_778/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_259/lstm_778/transpose_1	TransposeCsequential_259/lstm_778/TensorArrayV2Stack/TensorListStack:tensor:01sequential_259/lstm_778/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_259/lstm_778/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_259/lstm_779/ShapeShape'sequential_259/lstm_778/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_259/lstm_779/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_259/lstm_779/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_259/lstm_779/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_259/lstm_779/strided_sliceStridedSlice&sequential_259/lstm_779/Shape:output:04sequential_259/lstm_779/strided_slice/stack:output:06sequential_259/lstm_779/strided_slice/stack_1:output:06sequential_259/lstm_779/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_259/lstm_779/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_259/lstm_779/zeros/packedPack.sequential_259/lstm_779/strided_slice:output:0/sequential_259/lstm_779/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_259/lstm_779/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_779/zerosFill-sequential_259/lstm_779/zeros/packed:output:0,sequential_259/lstm_779/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_259/lstm_779/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_259/lstm_779/zeros_1/packedPack.sequential_259/lstm_779/strided_slice:output:01sequential_259/lstm_779/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_259/lstm_779/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_259/lstm_779/zeros_1Fill/sequential_259/lstm_779/zeros_1/packed:output:0.sequential_259/lstm_779/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_259/lstm_779/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_259/lstm_779/transpose	Transpose'sequential_259/lstm_778/transpose_1:y:0/sequential_259/lstm_779/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_259/lstm_779/Shape_1Shape%sequential_259/lstm_779/transpose:y:0*
T0*
_output_shapes
:w
-sequential_259/lstm_779/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_779/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_779/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_779/strided_slice_1StridedSlice(sequential_259/lstm_779/Shape_1:output:06sequential_259/lstm_779/strided_slice_1/stack:output:08sequential_259/lstm_779/strided_slice_1/stack_1:output:08sequential_259/lstm_779/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_259/lstm_779/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_259/lstm_779/TensorArrayV2TensorListReserve<sequential_259/lstm_779/TensorArrayV2/element_shape:output:00sequential_259/lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_259/lstm_779/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_259/lstm_779/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_259/lstm_779/transpose:y:0Vsequential_259/lstm_779/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_259/lstm_779/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_779/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_259/lstm_779/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_779/strided_slice_2StridedSlice%sequential_259/lstm_779/transpose:y:06sequential_259/lstm_779/strided_slice_2/stack:output:08sequential_259/lstm_779/strided_slice_2/stack_1:output:08sequential_259/lstm_779/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOpReadVariableOpDsequential_259_lstm_779_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_259/lstm_779/lstm_cell_659/MatMulMatMul0sequential_259/lstm_779/strided_slice_2:output:0Csequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOpFsequential_259_lstm_779_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_259/lstm_779/lstm_cell_659/MatMul_1MatMul&sequential_259/lstm_779/zeros:output:0Esequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_259/lstm_779/lstm_cell_659/addAddV26sequential_259/lstm_779/lstm_cell_659/MatMul:product:08sequential_259/lstm_779/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOpEsequential_259_lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_259/lstm_779/lstm_cell_659/BiasAddBiasAdd-sequential_259/lstm_779/lstm_cell_659/add:z:0Dsequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_259/lstm_779/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_259/lstm_779/lstm_cell_659/splitSplit>sequential_259/lstm_779/lstm_cell_659/split/split_dim:output:06sequential_259/lstm_779/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_259/lstm_779/lstm_cell_659/SigmoidSigmoid4sequential_259/lstm_779/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_259/lstm_779/lstm_cell_659/Sigmoid_1Sigmoid4sequential_259/lstm_779/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_259/lstm_779/lstm_cell_659/mulMul3sequential_259/lstm_779/lstm_cell_659/Sigmoid_1:y:0(sequential_259/lstm_779/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_259/lstm_779/lstm_cell_659/ReluRelu4sequential_259/lstm_779/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_259/lstm_779/lstm_cell_659/mul_1Mul1sequential_259/lstm_779/lstm_cell_659/Sigmoid:y:08sequential_259/lstm_779/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_259/lstm_779/lstm_cell_659/add_1AddV2-sequential_259/lstm_779/lstm_cell_659/mul:z:0/sequential_259/lstm_779/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_259/lstm_779/lstm_cell_659/Sigmoid_2Sigmoid4sequential_259/lstm_779/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_259/lstm_779/lstm_cell_659/Relu_1Relu/sequential_259/lstm_779/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_259/lstm_779/lstm_cell_659/mul_2Mul3sequential_259/lstm_779/lstm_cell_659/Sigmoid_2:y:0:sequential_259/lstm_779/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_259/lstm_779/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_259/lstm_779/TensorArrayV2_1TensorListReserve>sequential_259/lstm_779/TensorArrayV2_1/element_shape:output:00sequential_259/lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_259/lstm_779/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_259/lstm_779/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_259/lstm_779/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_259/lstm_779/whileWhile3sequential_259/lstm_779/while/loop_counter:output:09sequential_259/lstm_779/while/maximum_iterations:output:0%sequential_259/lstm_779/time:output:00sequential_259/lstm_779/TensorArrayV2_1:handle:0&sequential_259/lstm_779/zeros:output:0(sequential_259/lstm_779/zeros_1:output:00sequential_259/lstm_779/strided_slice_1:output:0Osequential_259/lstm_779/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_259_lstm_779_lstm_cell_659_matmul_readvariableop_resourceFsequential_259_lstm_779_lstm_cell_659_matmul_1_readvariableop_resourceEsequential_259_lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
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
*sequential_259_lstm_779_while_body_3987051*6
cond.R,
*sequential_259_lstm_779_while_cond_3987050*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_259/lstm_779/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_259/lstm_779/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_259/lstm_779/while:output:3Qsequential_259/lstm_779/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_259/lstm_779/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_259/lstm_779/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_259/lstm_779/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_259/lstm_779/strided_slice_3StridedSliceCsequential_259/lstm_779/TensorArrayV2Stack/TensorListStack:tensor:06sequential_259/lstm_779/strided_slice_3/stack:output:08sequential_259/lstm_779/strided_slice_3/stack_1:output:08sequential_259/lstm_779/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_259/lstm_779/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_259/lstm_779/transpose_1	TransposeCsequential_259/lstm_779/TensorArrayV2Stack/TensorListStack:tensor:01sequential_259/lstm_779/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_259/lstm_779/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_259/dense_259/MatMul/ReadVariableOpReadVariableOp7sequential_259_dense_259_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_259/dense_259/MatMulMatMul0sequential_259/lstm_779/strided_slice_3:output:06sequential_259/dense_259/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_259/dense_259/BiasAdd/ReadVariableOpReadVariableOp8sequential_259_dense_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_259/dense_259/BiasAddBiasAdd)sequential_259/dense_259/MatMul:product:07sequential_259/dense_259/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_259/dense_259/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_259/dense_259/BiasAdd/ReadVariableOp/^sequential_259/dense_259/MatMul/ReadVariableOp=^sequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp<^sequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOp>^sequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp^sequential_259/lstm_777/while=^sequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp<^sequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOp>^sequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp^sequential_259/lstm_778/while=^sequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp<^sequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOp>^sequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp^sequential_259/lstm_779/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_259/dense_259/BiasAdd/ReadVariableOp/sequential_259/dense_259/BiasAdd/ReadVariableOp2`
.sequential_259/dense_259/MatMul/ReadVariableOp.sequential_259/dense_259/MatMul/ReadVariableOp2|
<sequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp<sequential_259/lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp2z
;sequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOp;sequential_259/lstm_777/lstm_cell_657/MatMul/ReadVariableOp2~
=sequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp=sequential_259/lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp2>
sequential_259/lstm_777/whilesequential_259/lstm_777/while2|
<sequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp<sequential_259/lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp2z
;sequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOp;sequential_259/lstm_778/lstm_cell_658/MatMul/ReadVariableOp2~
=sequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp=sequential_259/lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp2>
sequential_259/lstm_778/whilesequential_259/lstm_778/while2|
<sequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp<sequential_259/lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp2z
;sequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOp;sequential_259/lstm_779/lstm_cell_659/MatMul/ReadVariableOp2~
=sequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp=sequential_259/lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp2>
sequential_259/lstm_779/whilesequential_259/lstm_779/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_777_input
?
?
*__inference_lstm_777_layer_call_fn_3990331
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3987482|
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
while_body_3991028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989254

inputs#
lstm_777_3989227:	?#
lstm_777_3989229:	d?
lstm_777_3989231:	?#
lstm_778_3989234:	d?#
lstm_778_3989236:	2?
lstm_778_3989238:	?"
lstm_779_3989241:2("
lstm_779_3989243:
(
lstm_779_3989245:(#
dense_259_3989248:

dense_259_3989250:
identity??!dense_259/StatefulPartitionedCall? lstm_777/StatefulPartitionedCall? lstm_778/StatefulPartitionedCall? lstm_779/StatefulPartitionedCall?
 lstm_777/StatefulPartitionedCallStatefulPartitionedCallinputslstm_777_3989227lstm_777_3989229lstm_777_3989231*
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3989186?
 lstm_778/StatefulPartitionedCallStatefulPartitionedCall)lstm_777/StatefulPartitionedCall:output:0lstm_778_3989234lstm_778_3989236lstm_778_3989238*
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3989021?
 lstm_779/StatefulPartitionedCallStatefulPartitionedCall)lstm_778/StatefulPartitionedCall:output:0lstm_779_3989241lstm_779_3989243lstm_779_3989245*
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988856?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_779/StatefulPartitionedCall:output:0dense_259_3989248dense_259_3989250*
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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658y
IdentityIdentity*dense_259/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_259/StatefulPartitionedCall!^lstm_777/StatefulPartitionedCall!^lstm_778/StatefulPartitionedCall!^lstm_779/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2D
 lstm_777/StatefulPartitionedCall lstm_777/StatefulPartitionedCall2D
 lstm_778/StatefulPartitionedCall lstm_778/StatefulPartitionedCall2D
 lstm_779/StatefulPartitionedCall lstm_779/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987208

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
*__inference_lstm_777_layer_call_fn_3990353

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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3989186s
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988640

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3988556*
condR
while_cond_3988555*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3988772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3988112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988112___redundant_placeholder05
1while_while_cond_3988112___redundant_placeholder15
1while_while_cond_3988112___redundant_placeholder25
1while_while_cond_3988112___redundant_placeholder3
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
while_cond_3990697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3990697___redundant_placeholder05
1while_while_cond_3990697___redundant_placeholder15
1while_while_cond_3990697___redundant_placeholder25
1while_while_cond_3990697___redundant_placeholder3
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
while_body_3991930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992438

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
while_cond_3990840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3990840___redundant_placeholder05
1while_while_cond_3990840___redundant_placeholder15
1while_while_cond_3990840___redundant_placeholder25
1while_while_cond_3990840___redundant_placeholder3
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
while_body_3988937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_779_while_cond_3990218.
*lstm_779_while_lstm_779_while_loop_counter4
0lstm_779_while_lstm_779_while_maximum_iterations
lstm_779_while_placeholder 
lstm_779_while_placeholder_1 
lstm_779_while_placeholder_2 
lstm_779_while_placeholder_30
,lstm_779_while_less_lstm_779_strided_slice_1G
Clstm_779_while_lstm_779_while_cond_3990218___redundant_placeholder0G
Clstm_779_while_lstm_779_while_cond_3990218___redundant_placeholder1G
Clstm_779_while_lstm_779_while_cond_3990218___redundant_placeholder2G
Clstm_779_while_lstm_779_while_cond_3990218___redundant_placeholder3
lstm_779_while_identity
?
lstm_779/while/LessLesslstm_779_while_placeholder,lstm_779_while_less_lstm_779_strided_slice_1*
T0*
_output_shapes
: ]
lstm_779/while/IdentityIdentitylstm_779/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_779_while_identity lstm_779/while/Identity:output:0*(
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
while_cond_3991786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991786___redundant_placeholder05
1while_while_cond_3991786___redundant_placeholder15
1while_while_cond_3991786___redundant_placeholder25
1while_while_cond_3991786___redundant_placeholder3
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992014

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3991930*
condR
while_cond_3991929*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3991170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991170___redundant_placeholder05
1while_while_cond_3991170___redundant_placeholder15
1while_while_cond_3991170___redundant_placeholder25
1while_while_cond_3991170___redundant_placeholder3
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3989186

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3989102*
condR
while_cond_3989101*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_777_while_cond_3989513.
*lstm_777_while_lstm_777_while_loop_counter4
0lstm_777_while_lstm_777_while_maximum_iterations
lstm_777_while_placeholder 
lstm_777_while_placeholder_1 
lstm_777_while_placeholder_2 
lstm_777_while_placeholder_30
,lstm_777_while_less_lstm_777_strided_slice_1G
Clstm_777_while_lstm_777_while_cond_3989513___redundant_placeholder0G
Clstm_777_while_lstm_777_while_cond_3989513___redundant_placeholder1G
Clstm_777_while_lstm_777_while_cond_3989513___redundant_placeholder2G
Clstm_777_while_lstm_777_while_cond_3989513___redundant_placeholder3
lstm_777_while_identity
?
lstm_777/while/LessLesslstm_777_while_placeholder,lstm_777_while_less_lstm_777_strided_slice_1*
T0*
_output_shapes
: ]
lstm_777/while/IdentityIdentitylstm_777/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_777_while_identity lstm_777/while/Identity:output:0*(
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991398

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3991314*
condR
while_cond_3991313*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990925

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3990841*
condR
while_cond_3990840*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_259_layer_call_fn_3992166

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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658o
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
?#
?
while_body_3987572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_658_3987596_0:	d?0
while_lstm_cell_658_3987598_0:	2?,
while_lstm_cell_658_3987600_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_658_3987596:	d?.
while_lstm_cell_658_3987598:	2?*
while_lstm_cell_658_3987600:	???+while/lstm_cell_658/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_658_3987596_0while_lstm_cell_658_3987598_0while_lstm_cell_658_3987600_0*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987558?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_658/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_658/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_658/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_658/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_658_3987596while_lstm_cell_658_3987596_0"<
while_lstm_cell_658_3987598while_lstm_cell_658_3987598_0"<
while_lstm_cell_658_3987600while_lstm_cell_658_3987600_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_658/StatefulPartitionedCall+while/lstm_cell_658/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_3992743
file_prefix3
!assignvariableop_dense_259_kernel:
/
!assignvariableop_1_dense_259_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_777_lstm_cell_777_kernel:	?M
:assignvariableop_8_lstm_777_lstm_cell_777_recurrent_kernel:	d?=
.assignvariableop_9_lstm_777_lstm_cell_777_bias:	?D
1assignvariableop_10_lstm_778_lstm_cell_778_kernel:	d?N
;assignvariableop_11_lstm_778_lstm_cell_778_recurrent_kernel:	2?>
/assignvariableop_12_lstm_778_lstm_cell_778_bias:	?C
1assignvariableop_13_lstm_779_lstm_cell_779_kernel:2(M
;assignvariableop_14_lstm_779_lstm_cell_779_recurrent_kernel:
(=
/assignvariableop_15_lstm_779_lstm_cell_779_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_259_kernel_m:
7
)assignvariableop_19_adam_dense_259_bias_m:K
8assignvariableop_20_adam_lstm_777_lstm_cell_777_kernel_m:	?U
Bassignvariableop_21_adam_lstm_777_lstm_cell_777_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_777_lstm_cell_777_bias_m:	?K
8assignvariableop_23_adam_lstm_778_lstm_cell_778_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_778_lstm_cell_778_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_778_lstm_cell_778_bias_m:	?J
8assignvariableop_26_adam_lstm_779_lstm_cell_779_kernel_m:2(T
Bassignvariableop_27_adam_lstm_779_lstm_cell_779_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_779_lstm_cell_779_bias_m:(=
+assignvariableop_29_adam_dense_259_kernel_v:
7
)assignvariableop_30_adam_dense_259_bias_v:K
8assignvariableop_31_adam_lstm_777_lstm_cell_777_kernel_v:	?U
Bassignvariableop_32_adam_lstm_777_lstm_cell_777_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_777_lstm_cell_777_bias_v:	?K
8assignvariableop_34_adam_lstm_778_lstm_cell_778_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_778_lstm_cell_778_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_778_lstm_cell_778_bias_v:	?J
8assignvariableop_37_adam_lstm_779_lstm_cell_779_kernel_v:2(T
Bassignvariableop_38_adam_lstm_779_lstm_cell_779_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_779_lstm_cell_779_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_259_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_259_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_777_lstm_cell_777_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_777_lstm_cell_777_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_777_lstm_cell_777_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_778_lstm_cell_778_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_778_lstm_cell_778_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_778_lstm_cell_778_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_779_lstm_cell_779_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_779_lstm_cell_779_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_779_lstm_cell_779_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_259_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_259_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_777_lstm_cell_777_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_777_lstm_cell_777_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_777_lstm_cell_777_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_778_lstm_cell_778_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_778_lstm_cell_778_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_778_lstm_cell_778_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_779_lstm_cell_779_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_779_lstm_cell_779_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_779_lstm_cell_779_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_259_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_259_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_777_lstm_cell_777_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_777_lstm_cell_777_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_777_lstm_cell_777_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_778_lstm_cell_778_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_778_lstm_cell_778_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_778_lstm_cell_778_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_779_lstm_cell_779_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_779_lstm_cell_779_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_779_lstm_cell_779_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
E__inference_lstm_777_layer_call_and_return_conditional_losses_3987291

inputs(
lstm_cell_657_3987209:	?(
lstm_cell_657_3987211:	d?$
lstm_cell_657_3987213:	?
identity??%lstm_cell_657/StatefulPartitionedCall?while;
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
%lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_657_3987209lstm_cell_657_3987211lstm_cell_657_3987213*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987208n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_657_3987209lstm_cell_657_3987211lstm_cell_657_3987213*
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
while_body_3987222*
condR
while_cond_3987221*K
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
NoOpNoOp&^lstm_cell_657/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_657/StatefulPartitionedCall%lstm_cell_657/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3991027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991027___redundant_placeholder05
1while_while_cond_3991027___redundant_placeholder15
1while_while_cond_3991027___redundant_placeholder25
1while_while_cond_3991027___redundant_placeholder3
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
?T
?
*sequential_259_lstm_777_while_body_3986773L
Hsequential_259_lstm_777_while_sequential_259_lstm_777_while_loop_counterR
Nsequential_259_lstm_777_while_sequential_259_lstm_777_while_maximum_iterations-
)sequential_259_lstm_777_while_placeholder/
+sequential_259_lstm_777_while_placeholder_1/
+sequential_259_lstm_777_while_placeholder_2/
+sequential_259_lstm_777_while_placeholder_3K
Gsequential_259_lstm_777_while_sequential_259_lstm_777_strided_slice_1_0?
?sequential_259_lstm_777_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_777_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_259_lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0:	?a
Nsequential_259_lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?\
Msequential_259_lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?*
&sequential_259_lstm_777_while_identity,
(sequential_259_lstm_777_while_identity_1,
(sequential_259_lstm_777_while_identity_2,
(sequential_259_lstm_777_while_identity_3,
(sequential_259_lstm_777_while_identity_4,
(sequential_259_lstm_777_while_identity_5I
Esequential_259_lstm_777_while_sequential_259_lstm_777_strided_slice_1?
?sequential_259_lstm_777_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_777_tensorarrayunstack_tensorlistfromtensor]
Jsequential_259_lstm_777_while_lstm_cell_657_matmul_readvariableop_resource:	?_
Lsequential_259_lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?Z
Ksequential_259_lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource:	???Bsequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp?Asequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp?Csequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp?
Osequential_259/lstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_259/lstm_777/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_259_lstm_777_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_777_tensorarrayunstack_tensorlistfromtensor_0)sequential_259_lstm_777_while_placeholderXsequential_259/lstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOpLsequential_259_lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_259/lstm_777/while/lstm_cell_657/MatMulMatMulHsequential_259/lstm_777/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOpNsequential_259_lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_259/lstm_777/while/lstm_cell_657/MatMul_1MatMul+sequential_259_lstm_777_while_placeholder_2Ksequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_259/lstm_777/while/lstm_cell_657/addAddV2<sequential_259/lstm_777/while/lstm_cell_657/MatMul:product:0>sequential_259/lstm_777/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOpMsequential_259_lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_259/lstm_777/while/lstm_cell_657/BiasAddBiasAdd3sequential_259/lstm_777/while/lstm_cell_657/add:z:0Jsequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_259/lstm_777/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_259/lstm_777/while/lstm_cell_657/splitSplitDsequential_259/lstm_777/while/lstm_cell_657/split/split_dim:output:0<sequential_259/lstm_777/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_259/lstm_777/while/lstm_cell_657/SigmoidSigmoid:sequential_259/lstm_777/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_259/lstm_777/while/lstm_cell_657/Sigmoid_1Sigmoid:sequential_259/lstm_777/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_259/lstm_777/while/lstm_cell_657/mulMul9sequential_259/lstm_777/while/lstm_cell_657/Sigmoid_1:y:0+sequential_259_lstm_777_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_259/lstm_777/while/lstm_cell_657/ReluRelu:sequential_259/lstm_777/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_259/lstm_777/while/lstm_cell_657/mul_1Mul7sequential_259/lstm_777/while/lstm_cell_657/Sigmoid:y:0>sequential_259/lstm_777/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_259/lstm_777/while/lstm_cell_657/add_1AddV23sequential_259/lstm_777/while/lstm_cell_657/mul:z:05sequential_259/lstm_777/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_259/lstm_777/while/lstm_cell_657/Sigmoid_2Sigmoid:sequential_259/lstm_777/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_259/lstm_777/while/lstm_cell_657/Relu_1Relu5sequential_259/lstm_777/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_259/lstm_777/while/lstm_cell_657/mul_2Mul9sequential_259/lstm_777/while/lstm_cell_657/Sigmoid_2:y:0@sequential_259/lstm_777/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_259/lstm_777/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_259_lstm_777_while_placeholder_1)sequential_259_lstm_777_while_placeholder5sequential_259/lstm_777/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_259/lstm_777/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_259/lstm_777/while/addAddV2)sequential_259_lstm_777_while_placeholder,sequential_259/lstm_777/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_259/lstm_777/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_259/lstm_777/while/add_1AddV2Hsequential_259_lstm_777_while_sequential_259_lstm_777_while_loop_counter.sequential_259/lstm_777/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_259/lstm_777/while/IdentityIdentity'sequential_259/lstm_777/while/add_1:z:0#^sequential_259/lstm_777/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_777/while/Identity_1IdentityNsequential_259_lstm_777_while_sequential_259_lstm_777_while_maximum_iterations#^sequential_259/lstm_777/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_777/while/Identity_2Identity%sequential_259/lstm_777/while/add:z:0#^sequential_259/lstm_777/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_777/while/Identity_3IdentityRsequential_259/lstm_777/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_259/lstm_777/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_777/while/Identity_4Identity5sequential_259/lstm_777/while/lstm_cell_657/mul_2:z:0#^sequential_259/lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_259/lstm_777/while/Identity_5Identity5sequential_259/lstm_777/while/lstm_cell_657/add_1:z:0#^sequential_259/lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_259/lstm_777/while/NoOpNoOpC^sequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOpB^sequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOpD^sequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_259_lstm_777_while_identity/sequential_259/lstm_777/while/Identity:output:0"]
(sequential_259_lstm_777_while_identity_11sequential_259/lstm_777/while/Identity_1:output:0"]
(sequential_259_lstm_777_while_identity_21sequential_259/lstm_777/while/Identity_2:output:0"]
(sequential_259_lstm_777_while_identity_31sequential_259/lstm_777/while/Identity_3:output:0"]
(sequential_259_lstm_777_while_identity_41sequential_259/lstm_777/while/Identity_4:output:0"]
(sequential_259_lstm_777_while_identity_51sequential_259/lstm_777/while/Identity_5:output:0"?
Ksequential_259_lstm_777_while_lstm_cell_657_biasadd_readvariableop_resourceMsequential_259_lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
Lsequential_259_lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resourceNsequential_259_lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0"?
Jsequential_259_lstm_777_while_lstm_cell_657_matmul_readvariableop_resourceLsequential_259_lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0"?
Esequential_259_lstm_777_while_sequential_259_lstm_777_strided_slice_1Gsequential_259_lstm_777_while_sequential_259_lstm_777_strided_slice_1_0"?
?sequential_259_lstm_777_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_777_tensorarrayunstack_tensorlistfromtensor?sequential_259_lstm_777_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_777_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOpBsequential_259/lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp2?
Asequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOpAsequential_259/lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp2?
Csequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOpCsequential_259/lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_259_lstm_779_while_body_3987051L
Hsequential_259_lstm_779_while_sequential_259_lstm_779_while_loop_counterR
Nsequential_259_lstm_779_while_sequential_259_lstm_779_while_maximum_iterations-
)sequential_259_lstm_779_while_placeholder/
+sequential_259_lstm_779_while_placeholder_1/
+sequential_259_lstm_779_while_placeholder_2/
+sequential_259_lstm_779_while_placeholder_3K
Gsequential_259_lstm_779_while_sequential_259_lstm_779_strided_slice_1_0?
?sequential_259_lstm_779_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_779_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_259_lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0:2(`
Nsequential_259_lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
([
Msequential_259_lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0:(*
&sequential_259_lstm_779_while_identity,
(sequential_259_lstm_779_while_identity_1,
(sequential_259_lstm_779_while_identity_2,
(sequential_259_lstm_779_while_identity_3,
(sequential_259_lstm_779_while_identity_4,
(sequential_259_lstm_779_while_identity_5I
Esequential_259_lstm_779_while_sequential_259_lstm_779_strided_slice_1?
?sequential_259_lstm_779_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_779_tensorarrayunstack_tensorlistfromtensor\
Jsequential_259_lstm_779_while_lstm_cell_659_matmul_readvariableop_resource:2(^
Lsequential_259_lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource:
(Y
Ksequential_259_lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource:(??Bsequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp?Asequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp?Csequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp?
Osequential_259/lstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_259/lstm_779/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_259_lstm_779_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_779_tensorarrayunstack_tensorlistfromtensor_0)sequential_259_lstm_779_while_placeholderXsequential_259/lstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOpLsequential_259_lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_259/lstm_779/while/lstm_cell_659/MatMulMatMulHsequential_259/lstm_779/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOpNsequential_259_lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_259/lstm_779/while/lstm_cell_659/MatMul_1MatMul+sequential_259_lstm_779_while_placeholder_2Ksequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_259/lstm_779/while/lstm_cell_659/addAddV2<sequential_259/lstm_779/while/lstm_cell_659/MatMul:product:0>sequential_259/lstm_779/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOpMsequential_259_lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_259/lstm_779/while/lstm_cell_659/BiasAddBiasAdd3sequential_259/lstm_779/while/lstm_cell_659/add:z:0Jsequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_259/lstm_779/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_259/lstm_779/while/lstm_cell_659/splitSplitDsequential_259/lstm_779/while/lstm_cell_659/split/split_dim:output:0<sequential_259/lstm_779/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_259/lstm_779/while/lstm_cell_659/SigmoidSigmoid:sequential_259/lstm_779/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_259/lstm_779/while/lstm_cell_659/Sigmoid_1Sigmoid:sequential_259/lstm_779/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_259/lstm_779/while/lstm_cell_659/mulMul9sequential_259/lstm_779/while/lstm_cell_659/Sigmoid_1:y:0+sequential_259_lstm_779_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_259/lstm_779/while/lstm_cell_659/ReluRelu:sequential_259/lstm_779/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_259/lstm_779/while/lstm_cell_659/mul_1Mul7sequential_259/lstm_779/while/lstm_cell_659/Sigmoid:y:0>sequential_259/lstm_779/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_259/lstm_779/while/lstm_cell_659/add_1AddV23sequential_259/lstm_779/while/lstm_cell_659/mul:z:05sequential_259/lstm_779/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_259/lstm_779/while/lstm_cell_659/Sigmoid_2Sigmoid:sequential_259/lstm_779/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_259/lstm_779/while/lstm_cell_659/Relu_1Relu5sequential_259/lstm_779/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_259/lstm_779/while/lstm_cell_659/mul_2Mul9sequential_259/lstm_779/while/lstm_cell_659/Sigmoid_2:y:0@sequential_259/lstm_779/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_259/lstm_779/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_259_lstm_779_while_placeholder_1)sequential_259_lstm_779_while_placeholder5sequential_259/lstm_779/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_259/lstm_779/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_259/lstm_779/while/addAddV2)sequential_259_lstm_779_while_placeholder,sequential_259/lstm_779/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_259/lstm_779/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_259/lstm_779/while/add_1AddV2Hsequential_259_lstm_779_while_sequential_259_lstm_779_while_loop_counter.sequential_259/lstm_779/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_259/lstm_779/while/IdentityIdentity'sequential_259/lstm_779/while/add_1:z:0#^sequential_259/lstm_779/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_779/while/Identity_1IdentityNsequential_259_lstm_779_while_sequential_259_lstm_779_while_maximum_iterations#^sequential_259/lstm_779/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_779/while/Identity_2Identity%sequential_259/lstm_779/while/add:z:0#^sequential_259/lstm_779/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_779/while/Identity_3IdentityRsequential_259/lstm_779/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_259/lstm_779/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_779/while/Identity_4Identity5sequential_259/lstm_779/while/lstm_cell_659/mul_2:z:0#^sequential_259/lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_259/lstm_779/while/Identity_5Identity5sequential_259/lstm_779/while/lstm_cell_659/add_1:z:0#^sequential_259/lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_259/lstm_779/while/NoOpNoOpC^sequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOpB^sequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOpD^sequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_259_lstm_779_while_identity/sequential_259/lstm_779/while/Identity:output:0"]
(sequential_259_lstm_779_while_identity_11sequential_259/lstm_779/while/Identity_1:output:0"]
(sequential_259_lstm_779_while_identity_21sequential_259/lstm_779/while/Identity_2:output:0"]
(sequential_259_lstm_779_while_identity_31sequential_259/lstm_779/while/Identity_3:output:0"]
(sequential_259_lstm_779_while_identity_41sequential_259/lstm_779/while/Identity_4:output:0"]
(sequential_259_lstm_779_while_identity_51sequential_259/lstm_779/while/Identity_5:output:0"?
Ksequential_259_lstm_779_while_lstm_cell_659_biasadd_readvariableop_resourceMsequential_259_lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
Lsequential_259_lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resourceNsequential_259_lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0"?
Jsequential_259_lstm_779_while_lstm_cell_659_matmul_readvariableop_resourceLsequential_259_lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0"?
Esequential_259_lstm_779_while_sequential_259_lstm_779_strided_slice_1Gsequential_259_lstm_779_while_sequential_259_lstm_779_strided_slice_1_0"?
?sequential_259_lstm_779_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_779_tensorarrayunstack_tensorlistfromtensor?sequential_259_lstm_779_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_779_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOpBsequential_259/lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp2?
Asequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOpAsequential_259/lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp2?
Csequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOpCsequential_259/lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3990555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_779_while_body_3989792.
*lstm_779_while_lstm_779_while_loop_counter4
0lstm_779_while_lstm_779_while_maximum_iterations
lstm_779_while_placeholder 
lstm_779_while_placeholder_1 
lstm_779_while_placeholder_2 
lstm_779_while_placeholder_3-
)lstm_779_while_lstm_779_strided_slice_1_0i
elstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0:2(Q
?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(L
>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0:(
lstm_779_while_identity
lstm_779_while_identity_1
lstm_779_while_identity_2
lstm_779_while_identity_3
lstm_779_while_identity_4
lstm_779_while_identity_5+
'lstm_779_while_lstm_779_strided_slice_1g
clstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensorM
;lstm_779_while_lstm_cell_659_matmul_readvariableop_resource:2(O
=lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource:
(J
<lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource:(??3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp?2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp?4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp?
@lstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_779/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0lstm_779_while_placeholderIlstm_779/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_779/while/lstm_cell_659/MatMulMatMul9lstm_779/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_779/while/lstm_cell_659/MatMul_1MatMullstm_779_while_placeholder_2<lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_779/while/lstm_cell_659/addAddV2-lstm_779/while/lstm_cell_659/MatMul:product:0/lstm_779/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_779/while/lstm_cell_659/BiasAddBiasAdd$lstm_779/while/lstm_cell_659/add:z:0;lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_779/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_779/while/lstm_cell_659/splitSplit5lstm_779/while/lstm_cell_659/split/split_dim:output:0-lstm_779/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_779/while/lstm_cell_659/SigmoidSigmoid+lstm_779/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_779/while/lstm_cell_659/Sigmoid_1Sigmoid+lstm_779/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_779/while/lstm_cell_659/mulMul*lstm_779/while/lstm_cell_659/Sigmoid_1:y:0lstm_779_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_779/while/lstm_cell_659/ReluRelu+lstm_779/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/mul_1Mul(lstm_779/while/lstm_cell_659/Sigmoid:y:0/lstm_779/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/add_1AddV2$lstm_779/while/lstm_cell_659/mul:z:0&lstm_779/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_779/while/lstm_cell_659/Sigmoid_2Sigmoid+lstm_779/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_779/while/lstm_cell_659/Relu_1Relu&lstm_779/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_779/while/lstm_cell_659/mul_2Mul*lstm_779/while/lstm_cell_659/Sigmoid_2:y:01lstm_779/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_779/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_779_while_placeholder_1lstm_779_while_placeholder&lstm_779/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_779/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_779/while/addAddV2lstm_779_while_placeholderlstm_779/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_779/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_779/while/add_1AddV2*lstm_779_while_lstm_779_while_loop_counterlstm_779/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_779/while/IdentityIdentitylstm_779/while/add_1:z:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_1Identity0lstm_779_while_lstm_779_while_maximum_iterations^lstm_779/while/NoOp*
T0*
_output_shapes
: t
lstm_779/while/Identity_2Identitylstm_779/while/add:z:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_3IdentityClstm_779/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_779/while/NoOp*
T0*
_output_shapes
: ?
lstm_779/while/Identity_4Identity&lstm_779/while/lstm_cell_659/mul_2:z:0^lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_779/while/Identity_5Identity&lstm_779/while/lstm_cell_659/add_1:z:0^lstm_779/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_779/while/NoOpNoOp4^lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp3^lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp5^lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_779_while_identity lstm_779/while/Identity:output:0"?
lstm_779_while_identity_1"lstm_779/while/Identity_1:output:0"?
lstm_779_while_identity_2"lstm_779/while/Identity_2:output:0"?
lstm_779_while_identity_3"lstm_779/while/Identity_3:output:0"?
lstm_779_while_identity_4"lstm_779/while/Identity_4:output:0"?
lstm_779_while_identity_5"lstm_779/while/Identity_5:output:0"T
'lstm_779_while_lstm_779_strided_slice_1)lstm_779_while_lstm_779_strided_slice_1_0"~
<lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource>lstm_779_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
=lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource?lstm_779_while_lstm_cell_659_matmul_1_readvariableop_resource_0"|
;lstm_779_while_lstm_cell_659_matmul_readvariableop_resource=lstm_779_while_lstm_cell_659_matmul_readvariableop_resource_0"?
clstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensorelstm_779_while_tensorarrayv2read_tensorlistgetitem_lstm_779_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp3lstm_779/while/lstm_cell_659/BiasAdd/ReadVariableOp2h
2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp2lstm_779/while/lstm_cell_659/MatMul/ReadVariableOp2l
4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp4lstm_779/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_658_layer_call_fn_3992308

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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987704o
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
while_cond_3987412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3987412___redundant_placeholder05
1while_while_cond_3987412___redundant_placeholder15
1while_while_cond_3987412___redundant_placeholder25
1while_while_cond_3987412___redundant_placeholder3
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
?
?
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989336
lstm_777_input#
lstm_777_3989309:	?#
lstm_777_3989311:	d?
lstm_777_3989313:	?#
lstm_778_3989316:	d?#
lstm_778_3989318:	2?
lstm_778_3989320:	?"
lstm_779_3989323:2("
lstm_779_3989325:
(
lstm_779_3989327:(#
dense_259_3989330:

dense_259_3989332:
identity??!dense_259/StatefulPartitionedCall? lstm_777/StatefulPartitionedCall? lstm_778/StatefulPartitionedCall? lstm_779/StatefulPartitionedCall?
 lstm_777/StatefulPartitionedCallStatefulPartitionedCalllstm_777_inputlstm_777_3989309lstm_777_3989311lstm_777_3989313*
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3988340?
 lstm_778/StatefulPartitionedCallStatefulPartitionedCall)lstm_777/StatefulPartitionedCall:output:0lstm_778_3989316lstm_778_3989318lstm_778_3989320*
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3988490?
 lstm_779/StatefulPartitionedCallStatefulPartitionedCall)lstm_778/StatefulPartitionedCall:output:0lstm_779_3989323lstm_779_3989325lstm_779_3989327*
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988640?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_779/StatefulPartitionedCall:output:0dense_259_3989330dense_259_3989332*
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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658y
IdentityIdentity*dense_259/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_259/StatefulPartitionedCall!^lstm_777/StatefulPartitionedCall!^lstm_778/StatefulPartitionedCall!^lstm_779/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2D
 lstm_777/StatefulPartitionedCall lstm_777/StatefulPartitionedCall2D
 lstm_778/StatefulPartitionedCall lstm_778/StatefulPartitionedCall2D
 lstm_779/StatefulPartitionedCall lstm_779/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_777_input
?
?
while_cond_3988936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988936___redundant_placeholder05
1while_while_cond_3988936___redundant_placeholder15
1while_while_cond_3988936___redundant_placeholder25
1while_while_cond_3988936___redundant_placeholder3
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
while_cond_3988555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988555___redundant_placeholder05
1while_while_cond_3988555___redundant_placeholder15
1while_while_cond_3988555___redundant_placeholder25
1while_while_cond_3988555___redundant_placeholder3
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3988054

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
while_cond_3988771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988771___redundant_placeholder05
1while_while_cond_3988771___redundant_placeholder15
1while_while_cond_3988771___redundant_placeholder25
1while_while_cond_3988771___redundant_placeholder3
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3988490

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3988406*
condR
while_cond_3988405*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3991457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_259_layer_call_fn_3988690
lstm_777_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_777_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3988665o
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
_user_specified_namelstm_777_input
?
?
*__inference_lstm_778_layer_call_fn_3990958

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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3988490s
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988856

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3988772*
condR
while_cond_3988771*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3988113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_659_3988137_0:2(/
while_lstm_cell_659_3988139_0:
(+
while_lstm_cell_659_3988141_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_659_3988137:2(-
while_lstm_cell_659_3988139:
()
while_lstm_cell_659_3988141:(??+while/lstm_cell_659/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_659_3988137_0while_lstm_cell_659_3988139_0while_lstm_cell_659_3988141_0*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3988054?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_659/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_659/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_659/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_659_3988137while_lstm_cell_659_3988137_0"<
while_lstm_cell_659_3988139while_lstm_cell_659_3988139_0"<
while_lstm_cell_659_3988141while_lstm_cell_659_3988141_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_659/StatefulPartitionedCall+while/lstm_cell_659/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_3992613
file_prefix/
+savev2_dense_259_kernel_read_readvariableop-
)savev2_dense_259_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_777_lstm_cell_777_kernel_read_readvariableopF
Bsavev2_lstm_777_lstm_cell_777_recurrent_kernel_read_readvariableop:
6savev2_lstm_777_lstm_cell_777_bias_read_readvariableop<
8savev2_lstm_778_lstm_cell_778_kernel_read_readvariableopF
Bsavev2_lstm_778_lstm_cell_778_recurrent_kernel_read_readvariableop:
6savev2_lstm_778_lstm_cell_778_bias_read_readvariableop<
8savev2_lstm_779_lstm_cell_779_kernel_read_readvariableopF
Bsavev2_lstm_779_lstm_cell_779_recurrent_kernel_read_readvariableop:
6savev2_lstm_779_lstm_cell_779_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_259_kernel_m_read_readvariableop4
0savev2_adam_dense_259_bias_m_read_readvariableopC
?savev2_adam_lstm_777_lstm_cell_777_kernel_m_read_readvariableopM
Isavev2_adam_lstm_777_lstm_cell_777_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_777_lstm_cell_777_bias_m_read_readvariableopC
?savev2_adam_lstm_778_lstm_cell_778_kernel_m_read_readvariableopM
Isavev2_adam_lstm_778_lstm_cell_778_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_778_lstm_cell_778_bias_m_read_readvariableopC
?savev2_adam_lstm_779_lstm_cell_779_kernel_m_read_readvariableopM
Isavev2_adam_lstm_779_lstm_cell_779_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_779_lstm_cell_779_bias_m_read_readvariableop6
2savev2_adam_dense_259_kernel_v_read_readvariableop4
0savev2_adam_dense_259_bias_v_read_readvariableopC
?savev2_adam_lstm_777_lstm_cell_777_kernel_v_read_readvariableopM
Isavev2_adam_lstm_777_lstm_cell_777_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_777_lstm_cell_777_bias_v_read_readvariableopC
?savev2_adam_lstm_778_lstm_cell_778_kernel_v_read_readvariableopM
Isavev2_adam_lstm_778_lstm_cell_778_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_778_lstm_cell_778_bias_v_read_readvariableopC
?savev2_adam_lstm_779_lstm_cell_779_kernel_v_read_readvariableopM
Isavev2_adam_lstm_779_lstm_cell_779_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_779_lstm_cell_779_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_259_kernel_read_readvariableop)savev2_dense_259_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_777_lstm_cell_777_kernel_read_readvariableopBsavev2_lstm_777_lstm_cell_777_recurrent_kernel_read_readvariableop6savev2_lstm_777_lstm_cell_777_bias_read_readvariableop8savev2_lstm_778_lstm_cell_778_kernel_read_readvariableopBsavev2_lstm_778_lstm_cell_778_recurrent_kernel_read_readvariableop6savev2_lstm_778_lstm_cell_778_bias_read_readvariableop8savev2_lstm_779_lstm_cell_779_kernel_read_readvariableopBsavev2_lstm_779_lstm_cell_779_recurrent_kernel_read_readvariableop6savev2_lstm_779_lstm_cell_779_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_259_kernel_m_read_readvariableop0savev2_adam_dense_259_bias_m_read_readvariableop?savev2_adam_lstm_777_lstm_cell_777_kernel_m_read_readvariableopIsavev2_adam_lstm_777_lstm_cell_777_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_777_lstm_cell_777_bias_m_read_readvariableop?savev2_adam_lstm_778_lstm_cell_778_kernel_m_read_readvariableopIsavev2_adam_lstm_778_lstm_cell_778_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_778_lstm_cell_778_bias_m_read_readvariableop?savev2_adam_lstm_779_lstm_cell_779_kernel_m_read_readvariableopIsavev2_adam_lstm_779_lstm_cell_779_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_779_lstm_cell_779_bias_m_read_readvariableop2savev2_adam_dense_259_kernel_v_read_readvariableop0savev2_adam_dense_259_bias_v_read_readvariableop?savev2_adam_lstm_777_lstm_cell_777_kernel_v_read_readvariableopIsavev2_adam_lstm_777_lstm_cell_777_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_777_lstm_cell_777_bias_v_read_readvariableop?savev2_adam_lstm_778_lstm_cell_778_kernel_v_read_readvariableopIsavev2_adam_lstm_778_lstm_cell_778_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_778_lstm_cell_778_bias_v_read_readvariableop?savev2_adam_lstm_779_lstm_cell_779_kernel_v_read_readvariableopIsavev2_adam_lstm_779_lstm_cell_779_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_779_lstm_cell_779_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_3990412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988182

inputs'
lstm_cell_659_3988100:2('
lstm_cell_659_3988102:
(#
lstm_cell_659_3988104:(
identity??%lstm_cell_659/StatefulPartitionedCall?while;
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
%lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_659_3988100lstm_cell_659_3988102lstm_cell_659_3988104*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3988054n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_659_3988100lstm_cell_659_3988102lstm_cell_659_3988104*
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
while_body_3988113*
condR
while_cond_3988112*K
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
NoOpNoOp&^lstm_cell_659/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_659/StatefulPartitionedCall%lstm_cell_659/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_3987413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_657_3987437_0:	?0
while_lstm_cell_657_3987439_0:	d?,
while_lstm_cell_657_3987441_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_657_3987437:	?.
while_lstm_cell_657_3987439:	d?*
while_lstm_cell_657_3987441:	???+while/lstm_cell_657/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_657_3987437_0while_lstm_cell_657_3987439_0while_lstm_cell_657_3987441_0*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987354?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_657/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_657/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_657/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_657/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_657_3987437while_lstm_cell_657_3987437_0"<
while_lstm_cell_657_3987439while_lstm_cell_657_3987439_0"<
while_lstm_cell_657_3987441while_lstm_cell_657_3987441_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_657/StatefulPartitionedCall+while/lstm_cell_657/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990782

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3990698*
condR
while_cond_3990697*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3990554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3990554___redundant_placeholder05
1while_while_cond_3990554___redundant_placeholder15
1while_while_cond_3990554___redundant_placeholder25
1while_while_cond_3990554___redundant_placeholder3
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
while_cond_3991313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991313___redundant_placeholder05
1while_while_cond_3991313___redundant_placeholder15
1while_while_cond_3991313___redundant_placeholder25
1while_while_cond_3991313___redundant_placeholder3
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
*__inference_lstm_779_layer_call_fn_3991563
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988182o
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
?
F__inference_dense_259_layer_call_and_return_conditional_losses_3992176

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
lstm_779_while_cond_3989791.
*lstm_779_while_lstm_779_while_loop_counter4
0lstm_779_while_lstm_779_while_maximum_iterations
lstm_779_while_placeholder 
lstm_779_while_placeholder_1 
lstm_779_while_placeholder_2 
lstm_779_while_placeholder_30
,lstm_779_while_less_lstm_779_strided_slice_1G
Clstm_779_while_lstm_779_while_cond_3989791___redundant_placeholder0G
Clstm_779_while_lstm_779_while_cond_3989791___redundant_placeholder1G
Clstm_779_while_lstm_779_while_cond_3989791___redundant_placeholder2G
Clstm_779_while_lstm_779_while_cond_3989791___redundant_placeholder3
lstm_779_while_identity
?
lstm_779/while/LessLesslstm_779_while_placeholder,lstm_779_while_less_lstm_779_strided_slice_1*
T0*
_output_shapes
: ]
lstm_779/while/IdentityIdentitylstm_779/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_779_while_identity lstm_779/while/Identity:output:0*(
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
/__inference_lstm_cell_657_layer_call_fn_3992210

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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987354o
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
/__inference_lstm_cell_657_layer_call_fn_3992193

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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3987208o
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
?C
?

lstm_778_while_body_3990080.
*lstm_778_while_lstm_778_while_loop_counter4
0lstm_778_while_lstm_778_while_maximum_iterations
lstm_778_while_placeholder 
lstm_778_while_placeholder_1 
lstm_778_while_placeholder_2 
lstm_778_while_placeholder_3-
)lstm_778_while_lstm_778_strided_slice_1_0i
elstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?R
?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?M
>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
lstm_778_while_identity
lstm_778_while_identity_1
lstm_778_while_identity_2
lstm_778_while_identity_3
lstm_778_while_identity_4
lstm_778_while_identity_5+
'lstm_778_while_lstm_778_strided_slice_1g
clstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensorN
;lstm_778_while_lstm_cell_658_matmul_readvariableop_resource:	d?P
=lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?K
<lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource:	???3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp?2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp?4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp?
@lstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_778/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0lstm_778_while_placeholderIlstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_778/while/lstm_cell_658/MatMulMatMul9lstm_778/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_778/while/lstm_cell_658/MatMul_1MatMullstm_778_while_placeholder_2<lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_778/while/lstm_cell_658/addAddV2-lstm_778/while/lstm_cell_658/MatMul:product:0/lstm_778/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_778/while/lstm_cell_658/BiasAddBiasAdd$lstm_778/while/lstm_cell_658/add:z:0;lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_778/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_778/while/lstm_cell_658/splitSplit5lstm_778/while/lstm_cell_658/split/split_dim:output:0-lstm_778/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_778/while/lstm_cell_658/SigmoidSigmoid+lstm_778/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_778/while/lstm_cell_658/Sigmoid_1Sigmoid+lstm_778/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_778/while/lstm_cell_658/mulMul*lstm_778/while/lstm_cell_658/Sigmoid_1:y:0lstm_778_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_778/while/lstm_cell_658/ReluRelu+lstm_778/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/mul_1Mul(lstm_778/while/lstm_cell_658/Sigmoid:y:0/lstm_778/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/add_1AddV2$lstm_778/while/lstm_cell_658/mul:z:0&lstm_778/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_778/while/lstm_cell_658/Sigmoid_2Sigmoid+lstm_778/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_778/while/lstm_cell_658/Relu_1Relu&lstm_778/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_778/while/lstm_cell_658/mul_2Mul*lstm_778/while/lstm_cell_658/Sigmoid_2:y:01lstm_778/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_778/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_778_while_placeholder_1lstm_778_while_placeholder&lstm_778/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_778/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_778/while/addAddV2lstm_778_while_placeholderlstm_778/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_778/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_778/while/add_1AddV2*lstm_778_while_lstm_778_while_loop_counterlstm_778/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_778/while/IdentityIdentitylstm_778/while/add_1:z:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_1Identity0lstm_778_while_lstm_778_while_maximum_iterations^lstm_778/while/NoOp*
T0*
_output_shapes
: t
lstm_778/while/Identity_2Identitylstm_778/while/add:z:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_3IdentityClstm_778/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_778/while/NoOp*
T0*
_output_shapes
: ?
lstm_778/while/Identity_4Identity&lstm_778/while/lstm_cell_658/mul_2:z:0^lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_778/while/Identity_5Identity&lstm_778/while/lstm_cell_658/add_1:z:0^lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_778/while/NoOpNoOp4^lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp3^lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp5^lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_778_while_identity lstm_778/while/Identity:output:0"?
lstm_778_while_identity_1"lstm_778/while/Identity_1:output:0"?
lstm_778_while_identity_2"lstm_778/while/Identity_2:output:0"?
lstm_778_while_identity_3"lstm_778/while/Identity_3:output:0"?
lstm_778_while_identity_4"lstm_778/while/Identity_4:output:0"?
lstm_778_while_identity_5"lstm_778/while/Identity_5:output:0"T
'lstm_778_while_lstm_778_strided_slice_1)lstm_778_while_lstm_778_strided_slice_1_0"~
<lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource>lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
=lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource?lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0"|
;lstm_778_while_lstm_cell_658_matmul_readvariableop_resource=lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0"?
clstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensorelstm_778_while_tensorarrayv2read_tensorlistgetitem_lstm_778_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp3lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp2h
2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp2lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp2l
4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp4lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_778_layer_call_fn_3990969

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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3989021s
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
*__inference_lstm_779_layer_call_fn_3991574

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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3988640o
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
??
?
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989882

inputsH
5lstm_777_lstm_cell_657_matmul_readvariableop_resource:	?J
7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource:	d?E
6lstm_777_lstm_cell_657_biasadd_readvariableop_resource:	?H
5lstm_778_lstm_cell_658_matmul_readvariableop_resource:	d?J
7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource:	2?E
6lstm_778_lstm_cell_658_biasadd_readvariableop_resource:	?G
5lstm_779_lstm_cell_659_matmul_readvariableop_resource:2(I
7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource:
(D
6lstm_779_lstm_cell_659_biasadd_readvariableop_resource:(:
(dense_259_matmul_readvariableop_resource:
7
)dense_259_biasadd_readvariableop_resource:
identity?? dense_259/BiasAdd/ReadVariableOp?dense_259/MatMul/ReadVariableOp?-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp?,lstm_777/lstm_cell_657/MatMul/ReadVariableOp?.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp?lstm_777/while?-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp?,lstm_778/lstm_cell_658/MatMul/ReadVariableOp?.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp?lstm_778/while?-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp?,lstm_779/lstm_cell_659/MatMul/ReadVariableOp?.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp?lstm_779/whileD
lstm_777/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_777/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_777/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_777/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_sliceStridedSlicelstm_777/Shape:output:0%lstm_777/strided_slice/stack:output:0'lstm_777/strided_slice/stack_1:output:0'lstm_777/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_777/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_777/zeros/packedPacklstm_777/strided_slice:output:0 lstm_777/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_777/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_777/zerosFilllstm_777/zeros/packed:output:0lstm_777/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_777/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_777/zeros_1/packedPacklstm_777/strided_slice:output:0"lstm_777/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_777/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_777/zeros_1Fill lstm_777/zeros_1/packed:output:0lstm_777/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_777/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_777/transpose	Transposeinputs lstm_777/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_777/Shape_1Shapelstm_777/transpose:y:0*
T0*
_output_shapes
:h
lstm_777/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_777/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_1StridedSlicelstm_777/Shape_1:output:0'lstm_777/strided_slice_1/stack:output:0)lstm_777/strided_slice_1/stack_1:output:0)lstm_777/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_777/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_777/TensorArrayV2TensorListReserve-lstm_777/TensorArrayV2/element_shape:output:0!lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_777/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_777/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_777/transpose:y:0Glstm_777/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_777/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_777/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_2StridedSlicelstm_777/transpose:y:0'lstm_777/strided_slice_2/stack:output:0)lstm_777/strided_slice_2/stack_1:output:0)lstm_777/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_777/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp5lstm_777_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_777/lstm_cell_657/MatMulMatMul!lstm_777/strided_slice_2:output:04lstm_777/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_777/lstm_cell_657/MatMul_1MatMullstm_777/zeros:output:06lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_777/lstm_cell_657/addAddV2'lstm_777/lstm_cell_657/MatMul:product:0)lstm_777/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp6lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_777/lstm_cell_657/BiasAddBiasAddlstm_777/lstm_cell_657/add:z:05lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_777/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_777/lstm_cell_657/splitSplit/lstm_777/lstm_cell_657/split/split_dim:output:0'lstm_777/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_777/lstm_cell_657/SigmoidSigmoid%lstm_777/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_777/lstm_cell_657/Sigmoid_1Sigmoid%lstm_777/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mulMul$lstm_777/lstm_cell_657/Sigmoid_1:y:0lstm_777/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_777/lstm_cell_657/ReluRelu%lstm_777/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mul_1Mul"lstm_777/lstm_cell_657/Sigmoid:y:0)lstm_777/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/add_1AddV2lstm_777/lstm_cell_657/mul:z:0 lstm_777/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_777/lstm_cell_657/Sigmoid_2Sigmoid%lstm_777/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_777/lstm_cell_657/Relu_1Relu lstm_777/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_777/lstm_cell_657/mul_2Mul$lstm_777/lstm_cell_657/Sigmoid_2:y:0+lstm_777/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_777/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_777/TensorArrayV2_1TensorListReserve/lstm_777/TensorArrayV2_1/element_shape:output:0!lstm_777/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_777/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_777/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_777/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_777/whileWhile$lstm_777/while/loop_counter:output:0*lstm_777/while/maximum_iterations:output:0lstm_777/time:output:0!lstm_777/TensorArrayV2_1:handle:0lstm_777/zeros:output:0lstm_777/zeros_1:output:0!lstm_777/strided_slice_1:output:0@lstm_777/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_777_lstm_cell_657_matmul_readvariableop_resource7lstm_777_lstm_cell_657_matmul_1_readvariableop_resource6lstm_777_lstm_cell_657_biasadd_readvariableop_resource*
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
lstm_777_while_body_3989514*'
condR
lstm_777_while_cond_3989513*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_777/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_777/TensorArrayV2Stack/TensorListStackTensorListStacklstm_777/while:output:3Blstm_777/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_777/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_777/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_777/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_777/strided_slice_3StridedSlice4lstm_777/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_777/strided_slice_3/stack:output:0)lstm_777/strided_slice_3/stack_1:output:0)lstm_777/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_777/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_777/transpose_1	Transpose4lstm_777/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_777/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_777/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_778/ShapeShapelstm_777/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_778/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_778/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_778/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_sliceStridedSlicelstm_778/Shape:output:0%lstm_778/strided_slice/stack:output:0'lstm_778/strided_slice/stack_1:output:0'lstm_778/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_778/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_778/zeros/packedPacklstm_778/strided_slice:output:0 lstm_778/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_778/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_778/zerosFilllstm_778/zeros/packed:output:0lstm_778/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_778/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_778/zeros_1/packedPacklstm_778/strided_slice:output:0"lstm_778/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_778/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_778/zeros_1Fill lstm_778/zeros_1/packed:output:0lstm_778/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_778/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_778/transpose	Transposelstm_777/transpose_1:y:0 lstm_778/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_778/Shape_1Shapelstm_778/transpose:y:0*
T0*
_output_shapes
:h
lstm_778/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_778/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_1StridedSlicelstm_778/Shape_1:output:0'lstm_778/strided_slice_1/stack:output:0)lstm_778/strided_slice_1/stack_1:output:0)lstm_778/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_778/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_778/TensorArrayV2TensorListReserve-lstm_778/TensorArrayV2/element_shape:output:0!lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_778/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_778/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_778/transpose:y:0Glstm_778/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_778/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_778/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_2StridedSlicelstm_778/transpose:y:0'lstm_778/strided_slice_2/stack:output:0)lstm_778/strided_slice_2/stack_1:output:0)lstm_778/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_778/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp5lstm_778_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_778/lstm_cell_658/MatMulMatMul!lstm_778/strided_slice_2:output:04lstm_778/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_778/lstm_cell_658/MatMul_1MatMullstm_778/zeros:output:06lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_778/lstm_cell_658/addAddV2'lstm_778/lstm_cell_658/MatMul:product:0)lstm_778/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp6lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_778/lstm_cell_658/BiasAddBiasAddlstm_778/lstm_cell_658/add:z:05lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_778/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_778/lstm_cell_658/splitSplit/lstm_778/lstm_cell_658/split/split_dim:output:0'lstm_778/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_778/lstm_cell_658/SigmoidSigmoid%lstm_778/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_778/lstm_cell_658/Sigmoid_1Sigmoid%lstm_778/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mulMul$lstm_778/lstm_cell_658/Sigmoid_1:y:0lstm_778/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_778/lstm_cell_658/ReluRelu%lstm_778/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mul_1Mul"lstm_778/lstm_cell_658/Sigmoid:y:0)lstm_778/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/add_1AddV2lstm_778/lstm_cell_658/mul:z:0 lstm_778/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_778/lstm_cell_658/Sigmoid_2Sigmoid%lstm_778/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_778/lstm_cell_658/Relu_1Relu lstm_778/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_778/lstm_cell_658/mul_2Mul$lstm_778/lstm_cell_658/Sigmoid_2:y:0+lstm_778/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_778/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_778/TensorArrayV2_1TensorListReserve/lstm_778/TensorArrayV2_1/element_shape:output:0!lstm_778/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_778/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_778/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_778/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_778/whileWhile$lstm_778/while/loop_counter:output:0*lstm_778/while/maximum_iterations:output:0lstm_778/time:output:0!lstm_778/TensorArrayV2_1:handle:0lstm_778/zeros:output:0lstm_778/zeros_1:output:0!lstm_778/strided_slice_1:output:0@lstm_778/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_778_lstm_cell_658_matmul_readvariableop_resource7lstm_778_lstm_cell_658_matmul_1_readvariableop_resource6lstm_778_lstm_cell_658_biasadd_readvariableop_resource*
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
lstm_778_while_body_3989653*'
condR
lstm_778_while_cond_3989652*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_778/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_778/TensorArrayV2Stack/TensorListStackTensorListStacklstm_778/while:output:3Blstm_778/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_778/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_778/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_778/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_778/strided_slice_3StridedSlice4lstm_778/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_778/strided_slice_3/stack:output:0)lstm_778/strided_slice_3/stack_1:output:0)lstm_778/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_778/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_778/transpose_1	Transpose4lstm_778/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_778/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_778/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_779/ShapeShapelstm_778/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_779/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_779/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_779/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_sliceStridedSlicelstm_779/Shape:output:0%lstm_779/strided_slice/stack:output:0'lstm_779/strided_slice/stack_1:output:0'lstm_779/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_779/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_779/zeros/packedPacklstm_779/strided_slice:output:0 lstm_779/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_779/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_779/zerosFilllstm_779/zeros/packed:output:0lstm_779/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_779/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_779/zeros_1/packedPacklstm_779/strided_slice:output:0"lstm_779/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_779/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_779/zeros_1Fill lstm_779/zeros_1/packed:output:0lstm_779/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_779/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_779/transpose	Transposelstm_778/transpose_1:y:0 lstm_779/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_779/Shape_1Shapelstm_779/transpose:y:0*
T0*
_output_shapes
:h
lstm_779/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_779/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_1StridedSlicelstm_779/Shape_1:output:0'lstm_779/strided_slice_1/stack:output:0)lstm_779/strided_slice_1/stack_1:output:0)lstm_779/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_779/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_779/TensorArrayV2TensorListReserve-lstm_779/TensorArrayV2/element_shape:output:0!lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_779/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_779/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_779/transpose:y:0Glstm_779/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_779/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_779/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_2StridedSlicelstm_779/transpose:y:0'lstm_779/strided_slice_2/stack:output:0)lstm_779/strided_slice_2/stack_1:output:0)lstm_779/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_779/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp5lstm_779_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_779/lstm_cell_659/MatMulMatMul!lstm_779/strided_slice_2:output:04lstm_779/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_779/lstm_cell_659/MatMul_1MatMullstm_779/zeros:output:06lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_779/lstm_cell_659/addAddV2'lstm_779/lstm_cell_659/MatMul:product:0)lstm_779/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp6lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_779/lstm_cell_659/BiasAddBiasAddlstm_779/lstm_cell_659/add:z:05lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_779/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_779/lstm_cell_659/splitSplit/lstm_779/lstm_cell_659/split/split_dim:output:0'lstm_779/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_779/lstm_cell_659/SigmoidSigmoid%lstm_779/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_779/lstm_cell_659/Sigmoid_1Sigmoid%lstm_779/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mulMul$lstm_779/lstm_cell_659/Sigmoid_1:y:0lstm_779/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_779/lstm_cell_659/ReluRelu%lstm_779/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mul_1Mul"lstm_779/lstm_cell_659/Sigmoid:y:0)lstm_779/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/add_1AddV2lstm_779/lstm_cell_659/mul:z:0 lstm_779/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_779/lstm_cell_659/Sigmoid_2Sigmoid%lstm_779/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_779/lstm_cell_659/Relu_1Relu lstm_779/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_779/lstm_cell_659/mul_2Mul$lstm_779/lstm_cell_659/Sigmoid_2:y:0+lstm_779/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_779/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_779/TensorArrayV2_1TensorListReserve/lstm_779/TensorArrayV2_1/element_shape:output:0!lstm_779/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_779/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_779/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_779/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_779/whileWhile$lstm_779/while/loop_counter:output:0*lstm_779/while/maximum_iterations:output:0lstm_779/time:output:0!lstm_779/TensorArrayV2_1:handle:0lstm_779/zeros:output:0lstm_779/zeros_1:output:0!lstm_779/strided_slice_1:output:0@lstm_779/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_779_lstm_cell_659_matmul_readvariableop_resource7lstm_779_lstm_cell_659_matmul_1_readvariableop_resource6lstm_779_lstm_cell_659_biasadd_readvariableop_resource*
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
lstm_779_while_body_3989792*'
condR
lstm_779_while_cond_3989791*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_779/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_779/TensorArrayV2Stack/TensorListStackTensorListStacklstm_779/while:output:3Blstm_779/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_779/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_779/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_779/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_779/strided_slice_3StridedSlice4lstm_779/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_779/strided_slice_3/stack:output:0)lstm_779/strided_slice_3/stack_1:output:0)lstm_779/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_779/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_779/transpose_1	Transpose4lstm_779/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_779/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_779/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_259/MatMul/ReadVariableOpReadVariableOp(dense_259_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_259/MatMulMatMul!lstm_779/strided_slice_3:output:0'dense_259/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_259/BiasAdd/ReadVariableOpReadVariableOp)dense_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_259/BiasAddBiasAdddense_259/MatMul:product:0(dense_259/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_259/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_259/BiasAdd/ReadVariableOp ^dense_259/MatMul/ReadVariableOp.^lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp-^lstm_777/lstm_cell_657/MatMul/ReadVariableOp/^lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp^lstm_777/while.^lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp-^lstm_778/lstm_cell_658/MatMul/ReadVariableOp/^lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp^lstm_778/while.^lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp-^lstm_779/lstm_cell_659/MatMul/ReadVariableOp/^lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp^lstm_779/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_259/BiasAdd/ReadVariableOp dense_259/BiasAdd/ReadVariableOp2B
dense_259/MatMul/ReadVariableOpdense_259/MatMul/ReadVariableOp2^
-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp-lstm_777/lstm_cell_657/BiasAdd/ReadVariableOp2\
,lstm_777/lstm_cell_657/MatMul/ReadVariableOp,lstm_777/lstm_cell_657/MatMul/ReadVariableOp2`
.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp.lstm_777/lstm_cell_657/MatMul_1/ReadVariableOp2 
lstm_777/whilelstm_777/while2^
-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp-lstm_778/lstm_cell_658/BiasAdd/ReadVariableOp2\
,lstm_778/lstm_cell_658/MatMul/ReadVariableOp,lstm_778/lstm_cell_658/MatMul/ReadVariableOp2`
.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp.lstm_778/lstm_cell_658/MatMul_1/ReadVariableOp2 
lstm_778/whilelstm_778/while2^
-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp-lstm_779/lstm_cell_659/BiasAdd/ReadVariableOp2\
,lstm_779/lstm_cell_659/MatMul/ReadVariableOp,lstm_779/lstm_cell_659/MatMul/ReadVariableOp2`
.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp.lstm_779/lstm_cell_659/MatMul_1/ReadVariableOp2 
lstm_779/whilelstm_779/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_778_layer_call_and_return_conditional_losses_3987832

inputs(
lstm_cell_658_3987750:	d?(
lstm_cell_658_3987752:	2?$
lstm_cell_658_3987754:	?
identity??%lstm_cell_658/StatefulPartitionedCall?while;
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
%lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_658_3987750lstm_cell_658_3987752lstm_cell_658_3987754*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987704n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_658_3987750lstm_cell_658_3987752lstm_cell_658_3987754*
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
while_body_3987763*
condR
while_cond_3987762*K
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
NoOpNoOp&^lstm_cell_658/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_658/StatefulPartitionedCall%lstm_cell_658/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3991787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992372

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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992242

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
while_body_3988406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3987921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3987921___redundant_placeholder05
1while_while_cond_3987921___redundant_placeholder15
1while_while_cond_3987921___redundant_placeholder25
1while_while_cond_3987921___redundant_placeholder3
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
while_cond_3991456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3991456___redundant_placeholder05
1while_while_cond_3991456___redundant_placeholder15
1while_while_cond_3991456___redundant_placeholder25
1while_while_cond_3991456___redundant_placeholder3
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
while_cond_3992072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3992072___redundant_placeholder05
1while_while_cond_3992072___redundant_placeholder15
1while_while_cond_3992072___redundant_placeholder25
1while_while_cond_3992072___redundant_placeholder3
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990639
inputs_0?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3990555*
condR
while_cond_3990554*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_658_layer_call_fn_3992291

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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987558o
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
while_body_3988256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3991171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3991314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_259_lstm_778_while_body_3986912L
Hsequential_259_lstm_778_while_sequential_259_lstm_778_while_loop_counterR
Nsequential_259_lstm_778_while_sequential_259_lstm_778_while_maximum_iterations-
)sequential_259_lstm_778_while_placeholder/
+sequential_259_lstm_778_while_placeholder_1/
+sequential_259_lstm_778_while_placeholder_2/
+sequential_259_lstm_778_while_placeholder_3K
Gsequential_259_lstm_778_while_sequential_259_lstm_778_strided_slice_1_0?
?sequential_259_lstm_778_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_778_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_259_lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?a
Nsequential_259_lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?\
Msequential_259_lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?*
&sequential_259_lstm_778_while_identity,
(sequential_259_lstm_778_while_identity_1,
(sequential_259_lstm_778_while_identity_2,
(sequential_259_lstm_778_while_identity_3,
(sequential_259_lstm_778_while_identity_4,
(sequential_259_lstm_778_while_identity_5I
Esequential_259_lstm_778_while_sequential_259_lstm_778_strided_slice_1?
?sequential_259_lstm_778_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_778_tensorarrayunstack_tensorlistfromtensor]
Jsequential_259_lstm_778_while_lstm_cell_658_matmul_readvariableop_resource:	d?_
Lsequential_259_lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?Z
Ksequential_259_lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource:	???Bsequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp?Asequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp?Csequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp?
Osequential_259/lstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_259/lstm_778/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_259_lstm_778_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_778_tensorarrayunstack_tensorlistfromtensor_0)sequential_259_lstm_778_while_placeholderXsequential_259/lstm_778/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOpLsequential_259_lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_259/lstm_778/while/lstm_cell_658/MatMulMatMulHsequential_259/lstm_778/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOpNsequential_259_lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_259/lstm_778/while/lstm_cell_658/MatMul_1MatMul+sequential_259_lstm_778_while_placeholder_2Ksequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_259/lstm_778/while/lstm_cell_658/addAddV2<sequential_259/lstm_778/while/lstm_cell_658/MatMul:product:0>sequential_259/lstm_778/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOpMsequential_259_lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_259/lstm_778/while/lstm_cell_658/BiasAddBiasAdd3sequential_259/lstm_778/while/lstm_cell_658/add:z:0Jsequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_259/lstm_778/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_259/lstm_778/while/lstm_cell_658/splitSplitDsequential_259/lstm_778/while/lstm_cell_658/split/split_dim:output:0<sequential_259/lstm_778/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_259/lstm_778/while/lstm_cell_658/SigmoidSigmoid:sequential_259/lstm_778/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_259/lstm_778/while/lstm_cell_658/Sigmoid_1Sigmoid:sequential_259/lstm_778/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_259/lstm_778/while/lstm_cell_658/mulMul9sequential_259/lstm_778/while/lstm_cell_658/Sigmoid_1:y:0+sequential_259_lstm_778_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_259/lstm_778/while/lstm_cell_658/ReluRelu:sequential_259/lstm_778/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_259/lstm_778/while/lstm_cell_658/mul_1Mul7sequential_259/lstm_778/while/lstm_cell_658/Sigmoid:y:0>sequential_259/lstm_778/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_259/lstm_778/while/lstm_cell_658/add_1AddV23sequential_259/lstm_778/while/lstm_cell_658/mul:z:05sequential_259/lstm_778/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_259/lstm_778/while/lstm_cell_658/Sigmoid_2Sigmoid:sequential_259/lstm_778/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_259/lstm_778/while/lstm_cell_658/Relu_1Relu5sequential_259/lstm_778/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_259/lstm_778/while/lstm_cell_658/mul_2Mul9sequential_259/lstm_778/while/lstm_cell_658/Sigmoid_2:y:0@sequential_259/lstm_778/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_259/lstm_778/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_259_lstm_778_while_placeholder_1)sequential_259_lstm_778_while_placeholder5sequential_259/lstm_778/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_259/lstm_778/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_259/lstm_778/while/addAddV2)sequential_259_lstm_778_while_placeholder,sequential_259/lstm_778/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_259/lstm_778/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_259/lstm_778/while/add_1AddV2Hsequential_259_lstm_778_while_sequential_259_lstm_778_while_loop_counter.sequential_259/lstm_778/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_259/lstm_778/while/IdentityIdentity'sequential_259/lstm_778/while/add_1:z:0#^sequential_259/lstm_778/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_778/while/Identity_1IdentityNsequential_259_lstm_778_while_sequential_259_lstm_778_while_maximum_iterations#^sequential_259/lstm_778/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_778/while/Identity_2Identity%sequential_259/lstm_778/while/add:z:0#^sequential_259/lstm_778/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_778/while/Identity_3IdentityRsequential_259/lstm_778/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_259/lstm_778/while/NoOp*
T0*
_output_shapes
: ?
(sequential_259/lstm_778/while/Identity_4Identity5sequential_259/lstm_778/while/lstm_cell_658/mul_2:z:0#^sequential_259/lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_259/lstm_778/while/Identity_5Identity5sequential_259/lstm_778/while/lstm_cell_658/add_1:z:0#^sequential_259/lstm_778/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_259/lstm_778/while/NoOpNoOpC^sequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOpB^sequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOpD^sequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_259_lstm_778_while_identity/sequential_259/lstm_778/while/Identity:output:0"]
(sequential_259_lstm_778_while_identity_11sequential_259/lstm_778/while/Identity_1:output:0"]
(sequential_259_lstm_778_while_identity_21sequential_259/lstm_778/while/Identity_2:output:0"]
(sequential_259_lstm_778_while_identity_31sequential_259/lstm_778/while/Identity_3:output:0"]
(sequential_259_lstm_778_while_identity_41sequential_259/lstm_778/while/Identity_4:output:0"]
(sequential_259_lstm_778_while_identity_51sequential_259/lstm_778/while/Identity_5:output:0"?
Ksequential_259_lstm_778_while_lstm_cell_658_biasadd_readvariableop_resourceMsequential_259_lstm_778_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
Lsequential_259_lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resourceNsequential_259_lstm_778_while_lstm_cell_658_matmul_1_readvariableop_resource_0"?
Jsequential_259_lstm_778_while_lstm_cell_658_matmul_readvariableop_resourceLsequential_259_lstm_778_while_lstm_cell_658_matmul_readvariableop_resource_0"?
Esequential_259_lstm_778_while_sequential_259_lstm_778_strided_slice_1Gsequential_259_lstm_778_while_sequential_259_lstm_778_strided_slice_1_0"?
?sequential_259_lstm_778_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_778_tensorarrayunstack_tensorlistfromtensor?sequential_259_lstm_778_while_tensorarrayv2read_tensorlistgetitem_sequential_259_lstm_778_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOpBsequential_259/lstm_778/while/lstm_cell_658/BiasAdd/ReadVariableOp2?
Asequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOpAsequential_259/lstm_778/while/lstm_cell_658/MatMul/ReadVariableOp2?
Csequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOpCsequential_259/lstm_778/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3988255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988255___redundant_placeholder05
1while_while_cond_3988255___redundant_placeholder15
1while_while_cond_3988255___redundant_placeholder25
1while_while_cond_3988255___redundant_placeholder3
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
0__inference_sequential_259_layer_call_fn_3989455

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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989254o
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
?K
?
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991728
inputs_0>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3991644*
condR
while_cond_3991643*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3988556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_259_layer_call_fn_3989428

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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3988665o
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
lstm_778_while_cond_3990079.
*lstm_778_while_lstm_778_while_loop_counter4
0lstm_778_while_lstm_778_while_maximum_iterations
lstm_778_while_placeholder 
lstm_778_while_placeholder_1 
lstm_778_while_placeholder_2 
lstm_778_while_placeholder_30
,lstm_778_while_less_lstm_778_strided_slice_1G
Clstm_778_while_lstm_778_while_cond_3990079___redundant_placeholder0G
Clstm_778_while_lstm_778_while_cond_3990079___redundant_placeholder1G
Clstm_778_while_lstm_778_while_cond_3990079___redundant_placeholder2G
Clstm_778_while_lstm_778_while_cond_3990079___redundant_placeholder3
lstm_778_while_identity
?
lstm_778/while/LessLesslstm_778_while_placeholder,lstm_778_while_less_lstm_778_strided_slice_1*
T0*
_output_shapes
: ]
lstm_778/while/IdentityIdentitylstm_778/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_778_while_identity lstm_778/while/Identity:output:0*(
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
*__inference_lstm_777_layer_call_fn_3990342

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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3988340s
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
while_cond_3988405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3988405___redundant_placeholder05
1while_while_cond_3988405___redundant_placeholder15
1while_while_cond_3988405___redundant_placeholder25
1while_while_cond_3988405___redundant_placeholder3
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990496
inputs_0?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_3990412*
condR
while_cond_3990411*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992274

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
?K
?
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991112
inputs_0?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_3991028*
condR
while_cond_3991027*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_778_layer_call_and_return_conditional_losses_3987641

inputs(
lstm_cell_658_3987559:	d?(
lstm_cell_658_3987561:	2?$
lstm_cell_658_3987563:	?
identity??%lstm_cell_658/StatefulPartitionedCall?while;
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
%lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_658_3987559lstm_cell_658_3987561lstm_cell_658_3987563*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987558n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_658_3987559lstm_cell_658_3987561lstm_cell_658_3987563*
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
while_body_3987572*
condR
while_cond_3987571*K
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
NoOpNoOp&^lstm_cell_658/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_658/StatefulPartitionedCall%lstm_cell_658/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_3987763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_658_3987787_0:	d?0
while_lstm_cell_658_3987789_0:	2?,
while_lstm_cell_658_3987791_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_658_3987787:	d?.
while_lstm_cell_658_3987789:	2?*
while_lstm_cell_658_3987791:	???+while/lstm_cell_658/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_658_3987787_0while_lstm_cell_658_3987789_0while_lstm_cell_658_3987791_0*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3987704?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_658/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_658/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_658/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_658/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_658_3987787while_lstm_cell_658_3987787_0"<
while_lstm_cell_658_3987789while_lstm_cell_658_3987789_0"<
while_lstm_cell_658_3987791while_lstm_cell_658_3987791_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_658/StatefulPartitionedCall+while/lstm_cell_658/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3987908

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
F__inference_dense_259_layer_call_and_return_conditional_losses_3988658

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
while_body_3992073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_777_while_body_3989514.
*lstm_777_while_lstm_777_while_loop_counter4
0lstm_777_while_lstm_777_while_maximum_iterations
lstm_777_while_placeholder 
lstm_777_while_placeholder_1 
lstm_777_while_placeholder_2 
lstm_777_while_placeholder_3-
)lstm_777_while_lstm_777_strided_slice_1_0i
elstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0:	?R
?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?M
>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
lstm_777_while_identity
lstm_777_while_identity_1
lstm_777_while_identity_2
lstm_777_while_identity_3
lstm_777_while_identity_4
lstm_777_while_identity_5+
'lstm_777_while_lstm_777_strided_slice_1g
clstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensorN
;lstm_777_while_lstm_cell_657_matmul_readvariableop_resource:	?P
=lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?K
<lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource:	???3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp?2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp?4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp?
@lstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_777/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0lstm_777_while_placeholderIlstm_777/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_777/while/lstm_cell_657/MatMulMatMul9lstm_777/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_777/while/lstm_cell_657/MatMul_1MatMullstm_777_while_placeholder_2<lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_777/while/lstm_cell_657/addAddV2-lstm_777/while/lstm_cell_657/MatMul:product:0/lstm_777/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_777/while/lstm_cell_657/BiasAddBiasAdd$lstm_777/while/lstm_cell_657/add:z:0;lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_777/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_777/while/lstm_cell_657/splitSplit5lstm_777/while/lstm_cell_657/split/split_dim:output:0-lstm_777/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_777/while/lstm_cell_657/SigmoidSigmoid+lstm_777/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_777/while/lstm_cell_657/Sigmoid_1Sigmoid+lstm_777/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_777/while/lstm_cell_657/mulMul*lstm_777/while/lstm_cell_657/Sigmoid_1:y:0lstm_777_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_777/while/lstm_cell_657/ReluRelu+lstm_777/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/mul_1Mul(lstm_777/while/lstm_cell_657/Sigmoid:y:0/lstm_777/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/add_1AddV2$lstm_777/while/lstm_cell_657/mul:z:0&lstm_777/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_777/while/lstm_cell_657/Sigmoid_2Sigmoid+lstm_777/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_777/while/lstm_cell_657/Relu_1Relu&lstm_777/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_777/while/lstm_cell_657/mul_2Mul*lstm_777/while/lstm_cell_657/Sigmoid_2:y:01lstm_777/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_777/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_777_while_placeholder_1lstm_777_while_placeholder&lstm_777/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_777/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_777/while/addAddV2lstm_777_while_placeholderlstm_777/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_777/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_777/while/add_1AddV2*lstm_777_while_lstm_777_while_loop_counterlstm_777/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_777/while/IdentityIdentitylstm_777/while/add_1:z:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_1Identity0lstm_777_while_lstm_777_while_maximum_iterations^lstm_777/while/NoOp*
T0*
_output_shapes
: t
lstm_777/while/Identity_2Identitylstm_777/while/add:z:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_3IdentityClstm_777/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_777/while/NoOp*
T0*
_output_shapes
: ?
lstm_777/while/Identity_4Identity&lstm_777/while/lstm_cell_657/mul_2:z:0^lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_777/while/Identity_5Identity&lstm_777/while/lstm_cell_657/add_1:z:0^lstm_777/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_777/while/NoOpNoOp4^lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp3^lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp5^lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_777_while_identity lstm_777/while/Identity:output:0"?
lstm_777_while_identity_1"lstm_777/while/Identity_1:output:0"?
lstm_777_while_identity_2"lstm_777/while/Identity_2:output:0"?
lstm_777_while_identity_3"lstm_777/while/Identity_3:output:0"?
lstm_777_while_identity_4"lstm_777/while/Identity_4:output:0"?
lstm_777_while_identity_5"lstm_777/while/Identity_5:output:0"T
'lstm_777_while_lstm_777_strided_slice_1)lstm_777_while_lstm_777_strided_slice_1_0"~
<lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource>lstm_777_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
=lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource?lstm_777_while_lstm_cell_657_matmul_1_readvariableop_resource_0"|
;lstm_777_while_lstm_cell_657_matmul_readvariableop_resource=lstm_777_while_lstm_cell_657_matmul_readvariableop_resource_0"?
clstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensorelstm_777_while_tensorarrayv2read_tensorlistgetitem_lstm_777_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp3lstm_777/while/lstm_cell_657/BiasAdd/ReadVariableOp2h
2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp2lstm_777/while/lstm_cell_657/MatMul/ReadVariableOp2l
4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp4lstm_777/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992157

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_3992073*
condR
while_cond_3992072*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
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
lstm_777_input;
 serving_default_lstm_777_input:0?????????=
	dense_2590
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
2dense_259/kernel
:2dense_259/bias
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
0:.	?2lstm_777/lstm_cell_777/kernel
::8	d?2'lstm_777/lstm_cell_777/recurrent_kernel
*:(?2lstm_777/lstm_cell_777/bias
0:.	d?2lstm_778/lstm_cell_778/kernel
::8	2?2'lstm_778/lstm_cell_778/recurrent_kernel
*:(?2lstm_778/lstm_cell_778/bias
/:-2(2lstm_779/lstm_cell_779/kernel
9:7
(2'lstm_779/lstm_cell_779/recurrent_kernel
):'(2lstm_779/lstm_cell_779/bias
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
2Adam/dense_259/kernel/m
!:2Adam/dense_259/bias/m
5:3	?2$Adam/lstm_777/lstm_cell_777/kernel/m
?:=	d?2.Adam/lstm_777/lstm_cell_777/recurrent_kernel/m
/:-?2"Adam/lstm_777/lstm_cell_777/bias/m
5:3	d?2$Adam/lstm_778/lstm_cell_778/kernel/m
?:=	2?2.Adam/lstm_778/lstm_cell_778/recurrent_kernel/m
/:-?2"Adam/lstm_778/lstm_cell_778/bias/m
4:22(2$Adam/lstm_779/lstm_cell_779/kernel/m
>:<
(2.Adam/lstm_779/lstm_cell_779/recurrent_kernel/m
.:,(2"Adam/lstm_779/lstm_cell_779/bias/m
':%
2Adam/dense_259/kernel/v
!:2Adam/dense_259/bias/v
5:3	?2$Adam/lstm_777/lstm_cell_777/kernel/v
?:=	d?2.Adam/lstm_777/lstm_cell_777/recurrent_kernel/v
/:-?2"Adam/lstm_777/lstm_cell_777/bias/v
5:3	d?2$Adam/lstm_778/lstm_cell_778/kernel/v
?:=	2?2.Adam/lstm_778/lstm_cell_778/recurrent_kernel/v
/:-?2"Adam/lstm_778/lstm_cell_778/bias/v
4:22(2$Adam/lstm_779/lstm_cell_779/kernel/v
>:<
(2.Adam/lstm_779/lstm_cell_779/recurrent_kernel/v
.:,(2"Adam/lstm_779/lstm_cell_779/bias/v
?2?
0__inference_sequential_259_layer_call_fn_3988690
0__inference_sequential_259_layer_call_fn_3989428
0__inference_sequential_259_layer_call_fn_3989455
0__inference_sequential_259_layer_call_fn_3989306?
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989882
K__inference_sequential_259_layer_call_and_return_conditional_losses_3990309
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989336
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989366?
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
"__inference__wrapped_model_3987141lstm_777_input"?
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
*__inference_lstm_777_layer_call_fn_3990320
*__inference_lstm_777_layer_call_fn_3990331
*__inference_lstm_777_layer_call_fn_3990342
*__inference_lstm_777_layer_call_fn_3990353?
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990496
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990639
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990782
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990925?
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
*__inference_lstm_778_layer_call_fn_3990936
*__inference_lstm_778_layer_call_fn_3990947
*__inference_lstm_778_layer_call_fn_3990958
*__inference_lstm_778_layer_call_fn_3990969?
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991112
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991255
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991398
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991541?
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
*__inference_lstm_779_layer_call_fn_3991552
*__inference_lstm_779_layer_call_fn_3991563
*__inference_lstm_779_layer_call_fn_3991574
*__inference_lstm_779_layer_call_fn_3991585?
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991728
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991871
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992014
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992157?
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
+__inference_dense_259_layer_call_fn_3992166?
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
F__inference_dense_259_layer_call_and_return_conditional_losses_3992176?
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
%__inference_signature_wrapper_3989401lstm_777_input"?
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
/__inference_lstm_cell_657_layer_call_fn_3992193
/__inference_lstm_cell_657_layer_call_fn_3992210?
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992242
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992274?
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
/__inference_lstm_cell_658_layer_call_fn_3992291
/__inference_lstm_cell_658_layer_call_fn_3992308?
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992340
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992372?
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
/__inference_lstm_cell_659_layer_call_fn_3992389
/__inference_lstm_cell_659_layer_call_fn_3992406?
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992438
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992470?
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
"__inference__wrapped_model_3987141?-./012345!";?8
1?.
,?)
lstm_777_input?????????
? "5?2
0
	dense_259#? 
	dense_259??????????
F__inference_dense_259_layer_call_and_return_conditional_losses_3992176\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_259_layer_call_fn_3992166O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990496?-./O?L
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990639?-./O?L
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990782q-./??<
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
E__inference_lstm_777_layer_call_and_return_conditional_losses_3990925q-./??<
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
*__inference_lstm_777_layer_call_fn_3990320}-./O?L
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
*__inference_lstm_777_layer_call_fn_3990331}-./O?L
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
*__inference_lstm_777_layer_call_fn_3990342d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_777_layer_call_fn_3990353d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991112?012O?L
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991255?012O?L
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991398q012??<
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
E__inference_lstm_778_layer_call_and_return_conditional_losses_3991541q012??<
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
*__inference_lstm_778_layer_call_fn_3990936}012O?L
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
*__inference_lstm_778_layer_call_fn_3990947}012O?L
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
*__inference_lstm_778_layer_call_fn_3990958d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_778_layer_call_fn_3990969d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991728}345O?L
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3991871}345O?L
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992014m345??<
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
E__inference_lstm_779_layer_call_and_return_conditional_losses_3992157m345??<
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
*__inference_lstm_779_layer_call_fn_3991552p345O?L
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
*__inference_lstm_779_layer_call_fn_3991563p345O?L
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
*__inference_lstm_779_layer_call_fn_3991574`345??<
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
*__inference_lstm_779_layer_call_fn_3991585`345??<
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992242?-./??}
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_3992274?-./??}
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
/__inference_lstm_cell_657_layer_call_fn_3992193?-./??}
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
/__inference_lstm_cell_657_layer_call_fn_3992210?-./??}
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992340?012??}
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_3992372?012??}
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
/__inference_lstm_cell_658_layer_call_fn_3992291?012??}
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
/__inference_lstm_cell_658_layer_call_fn_3992308?012??}
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992438?345??}
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_3992470?345??}
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
/__inference_lstm_cell_659_layer_call_fn_3992389?345??}
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
/__inference_lstm_cell_659_layer_call_fn_3992406?345??}
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989336y-./012345!"C?@
9?6
,?)
lstm_777_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989366y-./012345!"C?@
9?6
,?)
lstm_777_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_259_layer_call_and_return_conditional_losses_3989882q-./012345!";?8
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
K__inference_sequential_259_layer_call_and_return_conditional_losses_3990309q-./012345!";?8
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
0__inference_sequential_259_layer_call_fn_3988690l-./012345!"C?@
9?6
,?)
lstm_777_input?????????
p 

 
? "???????????
0__inference_sequential_259_layer_call_fn_3989306l-./012345!"C?@
9?6
,?)
lstm_777_input?????????
p

 
? "???????????
0__inference_sequential_259_layer_call_fn_3989428d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_259_layer_call_fn_3989455d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3989401?-./012345!"M?J
? 
C?@
>
lstm_777_input,?)
lstm_777_input?????????"5?2
0
	dense_259#? 
	dense_259?????????