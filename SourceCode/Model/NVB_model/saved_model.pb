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
dense_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_153/kernel
u
$dense_153/kernel/Read/ReadVariableOpReadVariableOpdense_153/kernel*
_output_shapes

:
*
dtype0
t
dense_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_153/bias
m
"dense_153/bias/Read/ReadVariableOpReadVariableOpdense_153/bias*
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
lstm_459/lstm_cell_459/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_459/lstm_cell_459/kernel
?
1lstm_459/lstm_cell_459/kernel/Read/ReadVariableOpReadVariableOplstm_459/lstm_cell_459/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_459/lstm_cell_459/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_459/lstm_cell_459/recurrent_kernel
?
;lstm_459/lstm_cell_459/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_459/lstm_cell_459/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_459/lstm_cell_459/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_459/lstm_cell_459/bias
?
/lstm_459/lstm_cell_459/bias/Read/ReadVariableOpReadVariableOplstm_459/lstm_cell_459/bias*
_output_shapes	
:?*
dtype0
?
lstm_460/lstm_cell_460/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_460/lstm_cell_460/kernel
?
1lstm_460/lstm_cell_460/kernel/Read/ReadVariableOpReadVariableOplstm_460/lstm_cell_460/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_460/lstm_cell_460/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_460/lstm_cell_460/recurrent_kernel
?
;lstm_460/lstm_cell_460/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_460/lstm_cell_460/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_460/lstm_cell_460/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_460/lstm_cell_460/bias
?
/lstm_460/lstm_cell_460/bias/Read/ReadVariableOpReadVariableOplstm_460/lstm_cell_460/bias*
_output_shapes	
:?*
dtype0
?
lstm_461/lstm_cell_461/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_461/lstm_cell_461/kernel
?
1lstm_461/lstm_cell_461/kernel/Read/ReadVariableOpReadVariableOplstm_461/lstm_cell_461/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_461/lstm_cell_461/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_461/lstm_cell_461/recurrent_kernel
?
;lstm_461/lstm_cell_461/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_461/lstm_cell_461/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_461/lstm_cell_461/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_461/lstm_cell_461/bias
?
/lstm_461/lstm_cell_461/bias/Read/ReadVariableOpReadVariableOplstm_461/lstm_cell_461/bias*
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
Adam/dense_153/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_153/kernel/m
?
+Adam/dense_153/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_153/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_153/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_153/bias/m
{
)Adam/dense_153/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_153/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_459/lstm_cell_459/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_459/lstm_cell_459/kernel/m
?
8Adam/lstm_459/lstm_cell_459/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_459/lstm_cell_459/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_459/lstm_cell_459/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_459/lstm_cell_459/recurrent_kernel/m
?
BAdam/lstm_459/lstm_cell_459/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_459/lstm_cell_459/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_459/lstm_cell_459/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_459/lstm_cell_459/bias/m
?
6Adam/lstm_459/lstm_cell_459/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_459/lstm_cell_459/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_460/lstm_cell_460/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_460/lstm_cell_460/kernel/m
?
8Adam/lstm_460/lstm_cell_460/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_460/lstm_cell_460/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_460/lstm_cell_460/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_460/lstm_cell_460/recurrent_kernel/m
?
BAdam/lstm_460/lstm_cell_460/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_460/lstm_cell_460/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_460/lstm_cell_460/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_460/lstm_cell_460/bias/m
?
6Adam/lstm_460/lstm_cell_460/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_460/lstm_cell_460/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_461/lstm_cell_461/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_461/lstm_cell_461/kernel/m
?
8Adam/lstm_461/lstm_cell_461/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_461/lstm_cell_461/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_461/lstm_cell_461/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_461/lstm_cell_461/recurrent_kernel/m
?
BAdam/lstm_461/lstm_cell_461/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_461/lstm_cell_461/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_461/lstm_cell_461/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_461/lstm_cell_461/bias/m
?
6Adam/lstm_461/lstm_cell_461/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_461/lstm_cell_461/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_153/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_153/kernel/v
?
+Adam/dense_153/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_153/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_153/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_153/bias/v
{
)Adam/dense_153/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_153/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_459/lstm_cell_459/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_459/lstm_cell_459/kernel/v
?
8Adam/lstm_459/lstm_cell_459/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_459/lstm_cell_459/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_459/lstm_cell_459/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_459/lstm_cell_459/recurrent_kernel/v
?
BAdam/lstm_459/lstm_cell_459/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_459/lstm_cell_459/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_459/lstm_cell_459/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_459/lstm_cell_459/bias/v
?
6Adam/lstm_459/lstm_cell_459/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_459/lstm_cell_459/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_460/lstm_cell_460/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_460/lstm_cell_460/kernel/v
?
8Adam/lstm_460/lstm_cell_460/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_460/lstm_cell_460/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_460/lstm_cell_460/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_460/lstm_cell_460/recurrent_kernel/v
?
BAdam/lstm_460/lstm_cell_460/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_460/lstm_cell_460/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_460/lstm_cell_460/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_460/lstm_cell_460/bias/v
?
6Adam/lstm_460/lstm_cell_460/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_460/lstm_cell_460/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_461/lstm_cell_461/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_461/lstm_cell_461/kernel/v
?
8Adam/lstm_461/lstm_cell_461/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_461/lstm_cell_461/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_461/lstm_cell_461/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_461/lstm_cell_461/recurrent_kernel/v
?
BAdam/lstm_461/lstm_cell_461/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_461/lstm_cell_461/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_461/lstm_cell_461/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_461/lstm_cell_461/bias/v
?
6Adam/lstm_461/lstm_cell_461/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_461/lstm_cell_461/bias/v*
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
VARIABLE_VALUEdense_153/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_153/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_459/lstm_cell_459/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_459/lstm_cell_459/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_459/lstm_cell_459/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_460/lstm_cell_460/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_460/lstm_cell_460/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_460/lstm_cell_460/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_461/lstm_cell_461/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_461/lstm_cell_461/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_461/lstm_cell_461/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_153/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_153/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_459/lstm_cell_459/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_459/lstm_cell_459/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_459/lstm_cell_459/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_460/lstm_cell_460/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_460/lstm_cell_460/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_460/lstm_cell_460/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_461/lstm_cell_461/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_461/lstm_cell_461/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_461/lstm_cell_461/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_153/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_153/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_459/lstm_cell_459/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_459/lstm_cell_459/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_459/lstm_cell_459/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_460/lstm_cell_460/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_460/lstm_cell_460/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_460/lstm_cell_460/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_461/lstm_cell_461/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_461/lstm_cell_461/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_461/lstm_cell_461/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_459_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_459_inputlstm_459/lstm_cell_459/kernel'lstm_459/lstm_cell_459/recurrent_kernellstm_459/lstm_cell_459/biaslstm_460/lstm_cell_460/kernel'lstm_460/lstm_cell_460/recurrent_kernellstm_460/lstm_cell_460/biaslstm_461/lstm_cell_461/kernel'lstm_461/lstm_cell_461/recurrent_kernellstm_461/lstm_cell_461/biasdense_153/kerneldense_153/bias*
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
%__inference_signature_wrapper_3426323
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_153/kernel/Read/ReadVariableOp"dense_153/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_459/lstm_cell_459/kernel/Read/ReadVariableOp;lstm_459/lstm_cell_459/recurrent_kernel/Read/ReadVariableOp/lstm_459/lstm_cell_459/bias/Read/ReadVariableOp1lstm_460/lstm_cell_460/kernel/Read/ReadVariableOp;lstm_460/lstm_cell_460/recurrent_kernel/Read/ReadVariableOp/lstm_460/lstm_cell_460/bias/Read/ReadVariableOp1lstm_461/lstm_cell_461/kernel/Read/ReadVariableOp;lstm_461/lstm_cell_461/recurrent_kernel/Read/ReadVariableOp/lstm_461/lstm_cell_461/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_153/kernel/m/Read/ReadVariableOp)Adam/dense_153/bias/m/Read/ReadVariableOp8Adam/lstm_459/lstm_cell_459/kernel/m/Read/ReadVariableOpBAdam/lstm_459/lstm_cell_459/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_459/lstm_cell_459/bias/m/Read/ReadVariableOp8Adam/lstm_460/lstm_cell_460/kernel/m/Read/ReadVariableOpBAdam/lstm_460/lstm_cell_460/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_460/lstm_cell_460/bias/m/Read/ReadVariableOp8Adam/lstm_461/lstm_cell_461/kernel/m/Read/ReadVariableOpBAdam/lstm_461/lstm_cell_461/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_461/lstm_cell_461/bias/m/Read/ReadVariableOp+Adam/dense_153/kernel/v/Read/ReadVariableOp)Adam/dense_153/bias/v/Read/ReadVariableOp8Adam/lstm_459/lstm_cell_459/kernel/v/Read/ReadVariableOpBAdam/lstm_459/lstm_cell_459/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_459/lstm_cell_459/bias/v/Read/ReadVariableOp8Adam/lstm_460/lstm_cell_460/kernel/v/Read/ReadVariableOpBAdam/lstm_460/lstm_cell_460/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_460/lstm_cell_460/bias/v/Read/ReadVariableOp8Adam/lstm_461/lstm_cell_461/kernel/v/Read/ReadVariableOpBAdam/lstm_461/lstm_cell_461/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_461/lstm_cell_461/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3429535
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_153/kerneldense_153/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_459/lstm_cell_459/kernel'lstm_459/lstm_cell_459/recurrent_kernellstm_459/lstm_cell_459/biaslstm_460/lstm_cell_460/kernel'lstm_460/lstm_cell_460/recurrent_kernellstm_460/lstm_cell_460/biaslstm_461/lstm_cell_461/kernel'lstm_461/lstm_cell_461/recurrent_kernellstm_461/lstm_cell_461/biastotalcountAdam/dense_153/kernel/mAdam/dense_153/bias/m$Adam/lstm_459/lstm_cell_459/kernel/m.Adam/lstm_459/lstm_cell_459/recurrent_kernel/m"Adam/lstm_459/lstm_cell_459/bias/m$Adam/lstm_460/lstm_cell_460/kernel/m.Adam/lstm_460/lstm_cell_460/recurrent_kernel/m"Adam/lstm_460/lstm_cell_460/bias/m$Adam/lstm_461/lstm_cell_461/kernel/m.Adam/lstm_461/lstm_cell_461/recurrent_kernel/m"Adam/lstm_461/lstm_cell_461/bias/mAdam/dense_153/kernel/vAdam/dense_153/bias/v$Adam/lstm_459/lstm_cell_459/kernel/v.Adam/lstm_459/lstm_cell_459/recurrent_kernel/v"Adam/lstm_459/lstm_cell_459/bias/v$Adam/lstm_460/lstm_cell_460/kernel/v.Adam/lstm_460/lstm_cell_460/recurrent_kernel/v"Adam/lstm_460/lstm_cell_460/bias/v$Adam/lstm_461/lstm_cell_461/kernel/v.Adam/lstm_461/lstm_cell_461/recurrent_kernel/v"Adam/lstm_461/lstm_cell_461/bias/v*4
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
#__inference__traced_restore_3429665??+
?8
?
while_body_3428709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427418
inputs_0?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3427334*
condR
while_cond_3427333*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3424493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3424493___redundant_placeholder05
1while_while_cond_3424493___redundant_placeholder15
1while_while_cond_3424493___redundant_placeholder25
1while_while_cond_3424493___redundant_placeholder3
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428793
inputs_0>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3428709*
condR
while_cond_3428708*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3427949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427949___redundant_placeholder05
1while_while_cond_3427949___redundant_placeholder15
1while_while_cond_3427949___redundant_placeholder25
1while_while_cond_3427949___redundant_placeholder3
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429262

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
?C
?

lstm_460_while_body_3426575.
*lstm_460_while_lstm_460_while_loop_counter4
0lstm_460_while_lstm_460_while_maximum_iterations
lstm_460_while_placeholder 
lstm_460_while_placeholder_1 
lstm_460_while_placeholder_2 
lstm_460_while_placeholder_3-
)lstm_460_while_lstm_460_strided_slice_1_0i
elstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0:	d?R
?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?M
>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
lstm_460_while_identity
lstm_460_while_identity_1
lstm_460_while_identity_2
lstm_460_while_identity_3
lstm_460_while_identity_4
lstm_460_while_identity_5+
'lstm_460_while_lstm_460_strided_slice_1g
clstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensorN
;lstm_460_while_lstm_cell_565_matmul_readvariableop_resource:	d?P
=lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource:	2?K
<lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource:	???3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp?2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp?4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp?
@lstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_460/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0lstm_460_while_placeholderIlstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_460/while/lstm_cell_565/MatMulMatMul9lstm_460/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_460/while/lstm_cell_565/MatMul_1MatMullstm_460_while_placeholder_2<lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_460/while/lstm_cell_565/addAddV2-lstm_460/while/lstm_cell_565/MatMul:product:0/lstm_460/while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_460/while/lstm_cell_565/BiasAddBiasAdd$lstm_460/while/lstm_cell_565/add:z:0;lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_460/while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_460/while/lstm_cell_565/splitSplit5lstm_460/while/lstm_cell_565/split/split_dim:output:0-lstm_460/while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_460/while/lstm_cell_565/SigmoidSigmoid+lstm_460/while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_460/while/lstm_cell_565/Sigmoid_1Sigmoid+lstm_460/while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_460/while/lstm_cell_565/mulMul*lstm_460/while/lstm_cell_565/Sigmoid_1:y:0lstm_460_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_460/while/lstm_cell_565/ReluRelu+lstm_460/while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/mul_1Mul(lstm_460/while/lstm_cell_565/Sigmoid:y:0/lstm_460/while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/add_1AddV2$lstm_460/while/lstm_cell_565/mul:z:0&lstm_460/while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_460/while/lstm_cell_565/Sigmoid_2Sigmoid+lstm_460/while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_460/while/lstm_cell_565/Relu_1Relu&lstm_460/while/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/mul_2Mul*lstm_460/while/lstm_cell_565/Sigmoid_2:y:01lstm_460/while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_460/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_460_while_placeholder_1lstm_460_while_placeholder&lstm_460/while/lstm_cell_565/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_460/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_460/while/addAddV2lstm_460_while_placeholderlstm_460/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_460/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_460/while/add_1AddV2*lstm_460_while_lstm_460_while_loop_counterlstm_460/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_460/while/IdentityIdentitylstm_460/while/add_1:z:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_1Identity0lstm_460_while_lstm_460_while_maximum_iterations^lstm_460/while/NoOp*
T0*
_output_shapes
: t
lstm_460/while/Identity_2Identitylstm_460/while/add:z:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_3IdentityClstm_460/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_4Identity&lstm_460/while/lstm_cell_565/mul_2:z:0^lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_460/while/Identity_5Identity&lstm_460/while/lstm_cell_565/add_1:z:0^lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_460/while/NoOpNoOp4^lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp3^lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp5^lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_460_while_identity lstm_460/while/Identity:output:0"?
lstm_460_while_identity_1"lstm_460/while/Identity_1:output:0"?
lstm_460_while_identity_2"lstm_460/while/Identity_2:output:0"?
lstm_460_while_identity_3"lstm_460/while/Identity_3:output:0"?
lstm_460_while_identity_4"lstm_460/while/Identity_4:output:0"?
lstm_460_while_identity_5"lstm_460/while/Identity_5:output:0"T
'lstm_460_while_lstm_460_strided_slice_1)lstm_460_while_lstm_460_strided_slice_1_0"~
<lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0"?
=lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0"|
;lstm_460_while_lstm_cell_565_matmul_readvariableop_resource=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0"?
clstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensorelstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp2h
2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp2l
4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_461_while_body_3427141.
*lstm_461_while_lstm_461_while_loop_counter4
0lstm_461_while_lstm_461_while_maximum_iterations
lstm_461_while_placeholder 
lstm_461_while_placeholder_1 
lstm_461_while_placeholder_2 
lstm_461_while_placeholder_3-
)lstm_461_while_lstm_461_strided_slice_1_0i
elstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0:2(Q
?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(L
>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0:(
lstm_461_while_identity
lstm_461_while_identity_1
lstm_461_while_identity_2
lstm_461_while_identity_3
lstm_461_while_identity_4
lstm_461_while_identity_5+
'lstm_461_while_lstm_461_strided_slice_1g
clstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensorM
;lstm_461_while_lstm_cell_566_matmul_readvariableop_resource:2(O
=lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource:
(J
<lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource:(??3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp?2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp?4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp?
@lstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_461/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0lstm_461_while_placeholderIlstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_461/while/lstm_cell_566/MatMulMatMul9lstm_461/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_461/while/lstm_cell_566/MatMul_1MatMullstm_461_while_placeholder_2<lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_461/while/lstm_cell_566/addAddV2-lstm_461/while/lstm_cell_566/MatMul:product:0/lstm_461/while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_461/while/lstm_cell_566/BiasAddBiasAdd$lstm_461/while/lstm_cell_566/add:z:0;lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_461/while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_461/while/lstm_cell_566/splitSplit5lstm_461/while/lstm_cell_566/split/split_dim:output:0-lstm_461/while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_461/while/lstm_cell_566/SigmoidSigmoid+lstm_461/while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_461/while/lstm_cell_566/Sigmoid_1Sigmoid+lstm_461/while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_461/while/lstm_cell_566/mulMul*lstm_461/while/lstm_cell_566/Sigmoid_1:y:0lstm_461_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_461/while/lstm_cell_566/ReluRelu+lstm_461/while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/mul_1Mul(lstm_461/while/lstm_cell_566/Sigmoid:y:0/lstm_461/while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/add_1AddV2$lstm_461/while/lstm_cell_566/mul:z:0&lstm_461/while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_461/while/lstm_cell_566/Sigmoid_2Sigmoid+lstm_461/while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_461/while/lstm_cell_566/Relu_1Relu&lstm_461/while/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/mul_2Mul*lstm_461/while/lstm_cell_566/Sigmoid_2:y:01lstm_461/while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_461/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_461_while_placeholder_1lstm_461_while_placeholder&lstm_461/while/lstm_cell_566/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_461/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_461/while/addAddV2lstm_461_while_placeholderlstm_461/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_461/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_461/while/add_1AddV2*lstm_461_while_lstm_461_while_loop_counterlstm_461/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_461/while/IdentityIdentitylstm_461/while/add_1:z:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_1Identity0lstm_461_while_lstm_461_while_maximum_iterations^lstm_461/while/NoOp*
T0*
_output_shapes
: t
lstm_461/while/Identity_2Identitylstm_461/while/add:z:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_3IdentityClstm_461/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_4Identity&lstm_461/while/lstm_cell_566/mul_2:z:0^lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_461/while/Identity_5Identity&lstm_461/while/lstm_cell_566/add_1:z:0^lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_461/while/NoOpNoOp4^lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp3^lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp5^lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_461_while_identity lstm_461/while/Identity:output:0"?
lstm_461_while_identity_1"lstm_461/while/Identity_1:output:0"?
lstm_461_while_identity_2"lstm_461/while/Identity_2:output:0"?
lstm_461_while_identity_3"lstm_461/while/Identity_3:output:0"?
lstm_461_while_identity_4"lstm_461/while/Identity_4:output:0"?
lstm_461_while_identity_5"lstm_461/while/Identity_5:output:0"T
'lstm_461_while_lstm_461_strided_slice_1)lstm_461_while_lstm_461_strided_slice_1_0"~
<lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0"?
=lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0"|
;lstm_461_while_lstm_cell_566_matmul_readvariableop_resource=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0"?
clstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensorelstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp2h
2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp2l
4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428034
inputs_0?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3427950*
condR
while_cond_3427949*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429360

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
?
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426258
lstm_459_input#
lstm_459_3426231:	?#
lstm_459_3426233:	d?
lstm_459_3426235:	?#
lstm_460_3426238:	d?#
lstm_460_3426240:	2?
lstm_460_3426242:	?"
lstm_461_3426245:2("
lstm_461_3426247:
(
lstm_461_3426249:(#
dense_153_3426252:

dense_153_3426254:
identity??!dense_153/StatefulPartitionedCall? lstm_459/StatefulPartitionedCall? lstm_460/StatefulPartitionedCall? lstm_461/StatefulPartitionedCall?
 lstm_459/StatefulPartitionedCallStatefulPartitionedCalllstm_459_inputlstm_459_3426231lstm_459_3426233lstm_459_3426235*
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3425262?
 lstm_460/StatefulPartitionedCallStatefulPartitionedCall)lstm_459/StatefulPartitionedCall:output:0lstm_460_3426238lstm_460_3426240lstm_460_3426242*
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425412?
 lstm_461/StatefulPartitionedCallStatefulPartitionedCall)lstm_460/StatefulPartitionedCall:output:0lstm_461_3426245lstm_461_3426247lstm_461_3426249*
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425562?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall)lstm_461/StatefulPartitionedCall:output:0dense_153_3426252dense_153_3426254*
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580y
IdentityIdentity*dense_153/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_153/StatefulPartitionedCall!^lstm_459/StatefulPartitionedCall!^lstm_460/StatefulPartitionedCall!^lstm_461/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2D
 lstm_459/StatefulPartitionedCall lstm_459/StatefulPartitionedCall2D
 lstm_460/StatefulPartitionedCall lstm_460/StatefulPartitionedCall2D
 lstm_461/StatefulPartitionedCall lstm_461/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_459_input
?8
?
while_body_3428995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3426108

inputs?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3426024*
condR
while_cond_3426023*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3424144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_564_3424168_0:	?0
while_lstm_cell_564_3424170_0:	d?,
while_lstm_cell_564_3424172_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_564_3424168:	?.
while_lstm_cell_564_3424170:	d?*
while_lstm_cell_564_3424172:	???+while/lstm_cell_564/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_564/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_564_3424168_0while_lstm_cell_564_3424170_0while_lstm_cell_564_3424172_0*
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424130?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_564/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_564/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_564/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_564/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_564_3424168while_lstm_cell_564_3424168_0"<
while_lstm_cell_564_3424170while_lstm_cell_564_3424170_0"<
while_lstm_cell_564_3424172while_lstm_cell_564_3424172_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_564/StatefulPartitionedCall+while/lstm_cell_564/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_459_while_body_3426863.
*lstm_459_while_lstm_459_while_loop_counter4
0lstm_459_while_lstm_459_while_maximum_iterations
lstm_459_while_placeholder 
lstm_459_while_placeholder_1 
lstm_459_while_placeholder_2 
lstm_459_while_placeholder_3-
)lstm_459_while_lstm_459_strided_slice_1_0i
elstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0:	?R
?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?M
>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
lstm_459_while_identity
lstm_459_while_identity_1
lstm_459_while_identity_2
lstm_459_while_identity_3
lstm_459_while_identity_4
lstm_459_while_identity_5+
'lstm_459_while_lstm_459_strided_slice_1g
clstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensorN
;lstm_459_while_lstm_cell_564_matmul_readvariableop_resource:	?P
=lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource:	d?K
<lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource:	???3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp?2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp?4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp?
@lstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_459/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0lstm_459_while_placeholderIlstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_459/while/lstm_cell_564/MatMulMatMul9lstm_459/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_459/while/lstm_cell_564/MatMul_1MatMullstm_459_while_placeholder_2<lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_459/while/lstm_cell_564/addAddV2-lstm_459/while/lstm_cell_564/MatMul:product:0/lstm_459/while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_459/while/lstm_cell_564/BiasAddBiasAdd$lstm_459/while/lstm_cell_564/add:z:0;lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_459/while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_459/while/lstm_cell_564/splitSplit5lstm_459/while/lstm_cell_564/split/split_dim:output:0-lstm_459/while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_459/while/lstm_cell_564/SigmoidSigmoid+lstm_459/while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_459/while/lstm_cell_564/Sigmoid_1Sigmoid+lstm_459/while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_459/while/lstm_cell_564/mulMul*lstm_459/while/lstm_cell_564/Sigmoid_1:y:0lstm_459_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_459/while/lstm_cell_564/ReluRelu+lstm_459/while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/mul_1Mul(lstm_459/while/lstm_cell_564/Sigmoid:y:0/lstm_459/while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/add_1AddV2$lstm_459/while/lstm_cell_564/mul:z:0&lstm_459/while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_459/while/lstm_cell_564/Sigmoid_2Sigmoid+lstm_459/while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_459/while/lstm_cell_564/Relu_1Relu&lstm_459/while/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/mul_2Mul*lstm_459/while/lstm_cell_564/Sigmoid_2:y:01lstm_459/while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_459/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_459_while_placeholder_1lstm_459_while_placeholder&lstm_459/while/lstm_cell_564/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_459/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_459/while/addAddV2lstm_459_while_placeholderlstm_459/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_459/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_459/while/add_1AddV2*lstm_459_while_lstm_459_while_loop_counterlstm_459/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_459/while/IdentityIdentitylstm_459/while/add_1:z:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_1Identity0lstm_459_while_lstm_459_while_maximum_iterations^lstm_459/while/NoOp*
T0*
_output_shapes
: t
lstm_459/while/Identity_2Identitylstm_459/while/add:z:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_3IdentityClstm_459/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_4Identity&lstm_459/while/lstm_cell_564/mul_2:z:0^lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_459/while/Identity_5Identity&lstm_459/while/lstm_cell_564/add_1:z:0^lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_459/while/NoOpNoOp4^lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp3^lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp5^lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_459_while_identity lstm_459/while/Identity:output:0"?
lstm_459_while_identity_1"lstm_459/while/Identity_1:output:0"?
lstm_459_while_identity_2"lstm_459/while/Identity_2:output:0"?
lstm_459_while_identity_3"lstm_459/while/Identity_3:output:0"?
lstm_459_while_identity_4"lstm_459/while/Identity_4:output:0"?
lstm_459_while_identity_5"lstm_459/while/Identity_5:output:0"T
'lstm_459_while_lstm_459_strided_slice_1)lstm_459_while_lstm_459_strided_slice_1_0"~
<lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0"?
=lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0"|
;lstm_459_while_lstm_cell_564_matmul_readvariableop_resource=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0"?
clstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensorelstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp2h
2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp2l
4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3428851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428851___redundant_placeholder05
1while_while_cond_3428851___redundant_placeholder15
1while_while_cond_3428851___redundant_placeholder25
1while_while_cond_3428851___redundant_placeholder3
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
lstm_460_while_cond_3426574.
*lstm_460_while_lstm_460_while_loop_counter4
0lstm_460_while_lstm_460_while_maximum_iterations
lstm_460_while_placeholder 
lstm_460_while_placeholder_1 
lstm_460_while_placeholder_2 
lstm_460_while_placeholder_30
,lstm_460_while_less_lstm_460_strided_slice_1G
Clstm_460_while_lstm_460_while_cond_3426574___redundant_placeholder0G
Clstm_460_while_lstm_460_while_cond_3426574___redundant_placeholder1G
Clstm_460_while_lstm_460_while_cond_3426574___redundant_placeholder2G
Clstm_460_while_lstm_460_while_cond_3426574___redundant_placeholder3
lstm_460_while_identity
?
lstm_460/while/LessLesslstm_460_while_placeholder,lstm_460_while_less_lstm_460_strided_slice_1*
T0*
_output_shapes
: ]
lstm_460/while/IdentityIdentitylstm_460/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_460_while_identity lstm_460/while/Identity:output:0*(
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
while_cond_3427476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427476___redundant_placeholder05
1while_while_cond_3427476___redundant_placeholder15
1while_while_cond_3427476___redundant_placeholder25
1while_while_cond_3427476___redundant_placeholder3
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
??
?
#__inference__traced_restore_3429665
file_prefix3
!assignvariableop_dense_153_kernel:
/
!assignvariableop_1_dense_153_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_459_lstm_cell_459_kernel:	?M
:assignvariableop_8_lstm_459_lstm_cell_459_recurrent_kernel:	d?=
.assignvariableop_9_lstm_459_lstm_cell_459_bias:	?D
1assignvariableop_10_lstm_460_lstm_cell_460_kernel:	d?N
;assignvariableop_11_lstm_460_lstm_cell_460_recurrent_kernel:	2?>
/assignvariableop_12_lstm_460_lstm_cell_460_bias:	?C
1assignvariableop_13_lstm_461_lstm_cell_461_kernel:2(M
;assignvariableop_14_lstm_461_lstm_cell_461_recurrent_kernel:
(=
/assignvariableop_15_lstm_461_lstm_cell_461_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_153_kernel_m:
7
)assignvariableop_19_adam_dense_153_bias_m:K
8assignvariableop_20_adam_lstm_459_lstm_cell_459_kernel_m:	?U
Bassignvariableop_21_adam_lstm_459_lstm_cell_459_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_459_lstm_cell_459_bias_m:	?K
8assignvariableop_23_adam_lstm_460_lstm_cell_460_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_460_lstm_cell_460_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_460_lstm_cell_460_bias_m:	?J
8assignvariableop_26_adam_lstm_461_lstm_cell_461_kernel_m:2(T
Bassignvariableop_27_adam_lstm_461_lstm_cell_461_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_461_lstm_cell_461_bias_m:(=
+assignvariableop_29_adam_dense_153_kernel_v:
7
)assignvariableop_30_adam_dense_153_bias_v:K
8assignvariableop_31_adam_lstm_459_lstm_cell_459_kernel_v:	?U
Bassignvariableop_32_adam_lstm_459_lstm_cell_459_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_459_lstm_cell_459_bias_v:	?K
8assignvariableop_34_adam_lstm_460_lstm_cell_460_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_460_lstm_cell_460_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_460_lstm_cell_460_bias_v:	?J
8assignvariableop_37_adam_lstm_461_lstm_cell_461_kernel_v:2(T
Bassignvariableop_38_adam_lstm_461_lstm_cell_461_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_461_lstm_cell_461_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_153_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_153_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_459_lstm_cell_459_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_459_lstm_cell_459_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_459_lstm_cell_459_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_460_lstm_cell_460_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_460_lstm_cell_460_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_460_lstm_cell_460_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_461_lstm_cell_461_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_461_lstm_cell_461_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_461_lstm_cell_461_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_153_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_153_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_459_lstm_cell_459_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_459_lstm_cell_459_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_459_lstm_cell_459_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_460_lstm_cell_460_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_460_lstm_cell_460_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_460_lstm_cell_460_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_461_lstm_cell_461_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_461_lstm_cell_461_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_461_lstm_cell_461_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_153_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_153_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_459_lstm_cell_459_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_459_lstm_cell_459_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_459_lstm_cell_459_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_460_lstm_cell_460_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_460_lstm_cell_460_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_460_lstm_cell_460_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_461_lstm_cell_461_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_461_lstm_cell_461_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_461_lstm_cell_461_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
while_body_3425859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3424913

inputs'
lstm_cell_566_3424831:2('
lstm_cell_566_3424833:
(#
lstm_cell_566_3424835:(
identity??%lstm_cell_566/StatefulPartitionedCall?while;
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
%lstm_cell_566/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_566_3424831lstm_cell_566_3424833lstm_cell_566_3424835*
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424830n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_566_3424831lstm_cell_566_3424833lstm_cell_566_3424835*
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
while_body_3424844*
condR
while_cond_3424843*K
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
NoOpNoOp&^lstm_cell_566/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_566/StatefulPartitionedCall%lstm_cell_566/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428650
inputs_0>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3428566*
condR
while_cond_3428565*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429392

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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424626

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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429196

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
*sequential_153_lstm_459_while_body_3423695L
Hsequential_153_lstm_459_while_sequential_153_lstm_459_while_loop_counterR
Nsequential_153_lstm_459_while_sequential_153_lstm_459_while_maximum_iterations-
)sequential_153_lstm_459_while_placeholder/
+sequential_153_lstm_459_while_placeholder_1/
+sequential_153_lstm_459_while_placeholder_2/
+sequential_153_lstm_459_while_placeholder_3K
Gsequential_153_lstm_459_while_sequential_153_lstm_459_strided_slice_1_0?
?sequential_153_lstm_459_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_459_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_153_lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0:	?a
Nsequential_153_lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?\
Msequential_153_lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0:	?*
&sequential_153_lstm_459_while_identity,
(sequential_153_lstm_459_while_identity_1,
(sequential_153_lstm_459_while_identity_2,
(sequential_153_lstm_459_while_identity_3,
(sequential_153_lstm_459_while_identity_4,
(sequential_153_lstm_459_while_identity_5I
Esequential_153_lstm_459_while_sequential_153_lstm_459_strided_slice_1?
?sequential_153_lstm_459_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_459_tensorarrayunstack_tensorlistfromtensor]
Jsequential_153_lstm_459_while_lstm_cell_564_matmul_readvariableop_resource:	?_
Lsequential_153_lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource:	d?Z
Ksequential_153_lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource:	???Bsequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp?Asequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp?Csequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp?
Osequential_153/lstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_153/lstm_459/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_153_lstm_459_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_459_tensorarrayunstack_tensorlistfromtensor_0)sequential_153_lstm_459_while_placeholderXsequential_153/lstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOpLsequential_153_lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_153/lstm_459/while/lstm_cell_564/MatMulMatMulHsequential_153/lstm_459/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOpNsequential_153_lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_153/lstm_459/while/lstm_cell_564/MatMul_1MatMul+sequential_153_lstm_459_while_placeholder_2Ksequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_153/lstm_459/while/lstm_cell_564/addAddV2<sequential_153/lstm_459/while/lstm_cell_564/MatMul:product:0>sequential_153/lstm_459/while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOpMsequential_153_lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_153/lstm_459/while/lstm_cell_564/BiasAddBiasAdd3sequential_153/lstm_459/while/lstm_cell_564/add:z:0Jsequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_153/lstm_459/while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_153/lstm_459/while/lstm_cell_564/splitSplitDsequential_153/lstm_459/while/lstm_cell_564/split/split_dim:output:0<sequential_153/lstm_459/while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_153/lstm_459/while/lstm_cell_564/SigmoidSigmoid:sequential_153/lstm_459/while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_153/lstm_459/while/lstm_cell_564/Sigmoid_1Sigmoid:sequential_153/lstm_459/while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_153/lstm_459/while/lstm_cell_564/mulMul9sequential_153/lstm_459/while/lstm_cell_564/Sigmoid_1:y:0+sequential_153_lstm_459_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_153/lstm_459/while/lstm_cell_564/ReluRelu:sequential_153/lstm_459/while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_153/lstm_459/while/lstm_cell_564/mul_1Mul7sequential_153/lstm_459/while/lstm_cell_564/Sigmoid:y:0>sequential_153/lstm_459/while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_153/lstm_459/while/lstm_cell_564/add_1AddV23sequential_153/lstm_459/while/lstm_cell_564/mul:z:05sequential_153/lstm_459/while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_153/lstm_459/while/lstm_cell_564/Sigmoid_2Sigmoid:sequential_153/lstm_459/while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_153/lstm_459/while/lstm_cell_564/Relu_1Relu5sequential_153/lstm_459/while/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_153/lstm_459/while/lstm_cell_564/mul_2Mul9sequential_153/lstm_459/while/lstm_cell_564/Sigmoid_2:y:0@sequential_153/lstm_459/while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_153/lstm_459/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_153_lstm_459_while_placeholder_1)sequential_153_lstm_459_while_placeholder5sequential_153/lstm_459/while/lstm_cell_564/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_153/lstm_459/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_153/lstm_459/while/addAddV2)sequential_153_lstm_459_while_placeholder,sequential_153/lstm_459/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_153/lstm_459/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_153/lstm_459/while/add_1AddV2Hsequential_153_lstm_459_while_sequential_153_lstm_459_while_loop_counter.sequential_153/lstm_459/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_153/lstm_459/while/IdentityIdentity'sequential_153/lstm_459/while/add_1:z:0#^sequential_153/lstm_459/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_459/while/Identity_1IdentityNsequential_153_lstm_459_while_sequential_153_lstm_459_while_maximum_iterations#^sequential_153/lstm_459/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_459/while/Identity_2Identity%sequential_153/lstm_459/while/add:z:0#^sequential_153/lstm_459/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_459/while/Identity_3IdentityRsequential_153/lstm_459/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_153/lstm_459/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_459/while/Identity_4Identity5sequential_153/lstm_459/while/lstm_cell_564/mul_2:z:0#^sequential_153/lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_153/lstm_459/while/Identity_5Identity5sequential_153/lstm_459/while/lstm_cell_564/add_1:z:0#^sequential_153/lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_153/lstm_459/while/NoOpNoOpC^sequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOpB^sequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOpD^sequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_153_lstm_459_while_identity/sequential_153/lstm_459/while/Identity:output:0"]
(sequential_153_lstm_459_while_identity_11sequential_153/lstm_459/while/Identity_1:output:0"]
(sequential_153_lstm_459_while_identity_21sequential_153/lstm_459/while/Identity_2:output:0"]
(sequential_153_lstm_459_while_identity_31sequential_153/lstm_459/while/Identity_3:output:0"]
(sequential_153_lstm_459_while_identity_41sequential_153/lstm_459/while/Identity_4:output:0"]
(sequential_153_lstm_459_while_identity_51sequential_153/lstm_459/while/Identity_5:output:0"?
Ksequential_153_lstm_459_while_lstm_cell_564_biasadd_readvariableop_resourceMsequential_153_lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0"?
Lsequential_153_lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resourceNsequential_153_lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0"?
Jsequential_153_lstm_459_while_lstm_cell_564_matmul_readvariableop_resourceLsequential_153_lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0"?
Esequential_153_lstm_459_while_sequential_153_lstm_459_strided_slice_1Gsequential_153_lstm_459_while_sequential_153_lstm_459_strided_slice_1_0"?
?sequential_153_lstm_459_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_459_tensorarrayunstack_tensorlistfromtensor?sequential_153_lstm_459_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_459_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOpBsequential_153/lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp2?
Asequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOpAsequential_153/lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp2?
Csequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOpCsequential_153/lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426288
lstm_459_input#
lstm_459_3426261:	?#
lstm_459_3426263:	d?
lstm_459_3426265:	?#
lstm_460_3426268:	d?#
lstm_460_3426270:	2?
lstm_460_3426272:	?"
lstm_461_3426275:2("
lstm_461_3426277:
(
lstm_461_3426279:(#
dense_153_3426282:

dense_153_3426284:
identity??!dense_153/StatefulPartitionedCall? lstm_459/StatefulPartitionedCall? lstm_460/StatefulPartitionedCall? lstm_461/StatefulPartitionedCall?
 lstm_459/StatefulPartitionedCallStatefulPartitionedCalllstm_459_inputlstm_459_3426261lstm_459_3426263lstm_459_3426265*
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3426108?
 lstm_460/StatefulPartitionedCallStatefulPartitionedCall)lstm_459/StatefulPartitionedCall:output:0lstm_460_3426268lstm_460_3426270lstm_460_3426272*
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425943?
 lstm_461/StatefulPartitionedCallStatefulPartitionedCall)lstm_460/StatefulPartitionedCall:output:0lstm_461_3426275lstm_461_3426277lstm_461_3426279*
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425778?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall)lstm_461/StatefulPartitionedCall:output:0dense_153_3426282dense_153_3426284*
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580y
IdentityIdentity*dense_153/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_153/StatefulPartitionedCall!^lstm_459/StatefulPartitionedCall!^lstm_460/StatefulPartitionedCall!^lstm_461/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2D
 lstm_459/StatefulPartitionedCall lstm_459/StatefulPartitionedCall2D
 lstm_460/StatefulPartitionedCall lstm_460/StatefulPartitionedCall2D
 lstm_461/StatefulPartitionedCall lstm_461/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_459_input
?C
?

lstm_459_while_body_3426436.
*lstm_459_while_lstm_459_while_loop_counter4
0lstm_459_while_lstm_459_while_maximum_iterations
lstm_459_while_placeholder 
lstm_459_while_placeholder_1 
lstm_459_while_placeholder_2 
lstm_459_while_placeholder_3-
)lstm_459_while_lstm_459_strided_slice_1_0i
elstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0:	?R
?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?M
>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
lstm_459_while_identity
lstm_459_while_identity_1
lstm_459_while_identity_2
lstm_459_while_identity_3
lstm_459_while_identity_4
lstm_459_while_identity_5+
'lstm_459_while_lstm_459_strided_slice_1g
clstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensorN
;lstm_459_while_lstm_cell_564_matmul_readvariableop_resource:	?P
=lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource:	d?K
<lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource:	???3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp?2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp?4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp?
@lstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_459/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0lstm_459_while_placeholderIlstm_459/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_459/while/lstm_cell_564/MatMulMatMul9lstm_459/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_459/while/lstm_cell_564/MatMul_1MatMullstm_459_while_placeholder_2<lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_459/while/lstm_cell_564/addAddV2-lstm_459/while/lstm_cell_564/MatMul:product:0/lstm_459/while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_459/while/lstm_cell_564/BiasAddBiasAdd$lstm_459/while/lstm_cell_564/add:z:0;lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_459/while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_459/while/lstm_cell_564/splitSplit5lstm_459/while/lstm_cell_564/split/split_dim:output:0-lstm_459/while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_459/while/lstm_cell_564/SigmoidSigmoid+lstm_459/while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_459/while/lstm_cell_564/Sigmoid_1Sigmoid+lstm_459/while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_459/while/lstm_cell_564/mulMul*lstm_459/while/lstm_cell_564/Sigmoid_1:y:0lstm_459_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_459/while/lstm_cell_564/ReluRelu+lstm_459/while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/mul_1Mul(lstm_459/while/lstm_cell_564/Sigmoid:y:0/lstm_459/while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/add_1AddV2$lstm_459/while/lstm_cell_564/mul:z:0&lstm_459/while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_459/while/lstm_cell_564/Sigmoid_2Sigmoid+lstm_459/while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_459/while/lstm_cell_564/Relu_1Relu&lstm_459/while/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_459/while/lstm_cell_564/mul_2Mul*lstm_459/while/lstm_cell_564/Sigmoid_2:y:01lstm_459/while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_459/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_459_while_placeholder_1lstm_459_while_placeholder&lstm_459/while/lstm_cell_564/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_459/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_459/while/addAddV2lstm_459_while_placeholderlstm_459/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_459/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_459/while/add_1AddV2*lstm_459_while_lstm_459_while_loop_counterlstm_459/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_459/while/IdentityIdentitylstm_459/while/add_1:z:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_1Identity0lstm_459_while_lstm_459_while_maximum_iterations^lstm_459/while/NoOp*
T0*
_output_shapes
: t
lstm_459/while/Identity_2Identitylstm_459/while/add:z:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_3IdentityClstm_459/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_459/while/NoOp*
T0*
_output_shapes
: ?
lstm_459/while/Identity_4Identity&lstm_459/while/lstm_cell_564/mul_2:z:0^lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_459/while/Identity_5Identity&lstm_459/while/lstm_cell_564/add_1:z:0^lstm_459/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_459/while/NoOpNoOp4^lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp3^lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp5^lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_459_while_identity lstm_459/while/Identity:output:0"?
lstm_459_while_identity_1"lstm_459/while/Identity_1:output:0"?
lstm_459_while_identity_2"lstm_459/while/Identity_2:output:0"?
lstm_459_while_identity_3"lstm_459/while/Identity_3:output:0"?
lstm_459_while_identity_4"lstm_459/while/Identity_4:output:0"?
lstm_459_while_identity_5"lstm_459/while/Identity_5:output:0"T
'lstm_459_while_lstm_459_strided_slice_1)lstm_459_while_lstm_459_strided_slice_1_0"~
<lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource>lstm_459_while_lstm_cell_564_biasadd_readvariableop_resource_0"?
=lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource?lstm_459_while_lstm_cell_564_matmul_1_readvariableop_resource_0"|
;lstm_459_while_lstm_cell_564_matmul_readvariableop_resource=lstm_459_while_lstm_cell_564_matmul_readvariableop_resource_0"?
clstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensorelstm_459_while_tensorarrayv2read_tensorlistgetitem_lstm_459_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp3lstm_459/while/lstm_cell_564/BiasAdd/ReadVariableOp2h
2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp2lstm_459/while/lstm_cell_564/MatMul/ReadVariableOp2l
4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp4lstm_459/while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3425262

inputs?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3425178*
condR
while_cond_3425177*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_153_lstm_461_while_body_3423973L
Hsequential_153_lstm_461_while_sequential_153_lstm_461_while_loop_counterR
Nsequential_153_lstm_461_while_sequential_153_lstm_461_while_maximum_iterations-
)sequential_153_lstm_461_while_placeholder/
+sequential_153_lstm_461_while_placeholder_1/
+sequential_153_lstm_461_while_placeholder_2/
+sequential_153_lstm_461_while_placeholder_3K
Gsequential_153_lstm_461_while_sequential_153_lstm_461_strided_slice_1_0?
?sequential_153_lstm_461_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_461_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_153_lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0:2(`
Nsequential_153_lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0:
([
Msequential_153_lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0:(*
&sequential_153_lstm_461_while_identity,
(sequential_153_lstm_461_while_identity_1,
(sequential_153_lstm_461_while_identity_2,
(sequential_153_lstm_461_while_identity_3,
(sequential_153_lstm_461_while_identity_4,
(sequential_153_lstm_461_while_identity_5I
Esequential_153_lstm_461_while_sequential_153_lstm_461_strided_slice_1?
?sequential_153_lstm_461_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_461_tensorarrayunstack_tensorlistfromtensor\
Jsequential_153_lstm_461_while_lstm_cell_566_matmul_readvariableop_resource:2(^
Lsequential_153_lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource:
(Y
Ksequential_153_lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource:(??Bsequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp?Asequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp?Csequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp?
Osequential_153/lstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_153/lstm_461/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_153_lstm_461_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_461_tensorarrayunstack_tensorlistfromtensor_0)sequential_153_lstm_461_while_placeholderXsequential_153/lstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOpLsequential_153_lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_153/lstm_461/while/lstm_cell_566/MatMulMatMulHsequential_153/lstm_461/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOpNsequential_153_lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_153/lstm_461/while/lstm_cell_566/MatMul_1MatMul+sequential_153_lstm_461_while_placeholder_2Ksequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_153/lstm_461/while/lstm_cell_566/addAddV2<sequential_153/lstm_461/while/lstm_cell_566/MatMul:product:0>sequential_153/lstm_461/while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOpMsequential_153_lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_153/lstm_461/while/lstm_cell_566/BiasAddBiasAdd3sequential_153/lstm_461/while/lstm_cell_566/add:z:0Jsequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_153/lstm_461/while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_153/lstm_461/while/lstm_cell_566/splitSplitDsequential_153/lstm_461/while/lstm_cell_566/split/split_dim:output:0<sequential_153/lstm_461/while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_153/lstm_461/while/lstm_cell_566/SigmoidSigmoid:sequential_153/lstm_461/while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_153/lstm_461/while/lstm_cell_566/Sigmoid_1Sigmoid:sequential_153/lstm_461/while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_153/lstm_461/while/lstm_cell_566/mulMul9sequential_153/lstm_461/while/lstm_cell_566/Sigmoid_1:y:0+sequential_153_lstm_461_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_153/lstm_461/while/lstm_cell_566/ReluRelu:sequential_153/lstm_461/while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_153/lstm_461/while/lstm_cell_566/mul_1Mul7sequential_153/lstm_461/while/lstm_cell_566/Sigmoid:y:0>sequential_153/lstm_461/while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_153/lstm_461/while/lstm_cell_566/add_1AddV23sequential_153/lstm_461/while/lstm_cell_566/mul:z:05sequential_153/lstm_461/while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_153/lstm_461/while/lstm_cell_566/Sigmoid_2Sigmoid:sequential_153/lstm_461/while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_153/lstm_461/while/lstm_cell_566/Relu_1Relu5sequential_153/lstm_461/while/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_153/lstm_461/while/lstm_cell_566/mul_2Mul9sequential_153/lstm_461/while/lstm_cell_566/Sigmoid_2:y:0@sequential_153/lstm_461/while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_153/lstm_461/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_153_lstm_461_while_placeholder_1)sequential_153_lstm_461_while_placeholder5sequential_153/lstm_461/while/lstm_cell_566/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_153/lstm_461/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_153/lstm_461/while/addAddV2)sequential_153_lstm_461_while_placeholder,sequential_153/lstm_461/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_153/lstm_461/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_153/lstm_461/while/add_1AddV2Hsequential_153_lstm_461_while_sequential_153_lstm_461_while_loop_counter.sequential_153/lstm_461/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_153/lstm_461/while/IdentityIdentity'sequential_153/lstm_461/while/add_1:z:0#^sequential_153/lstm_461/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_461/while/Identity_1IdentityNsequential_153_lstm_461_while_sequential_153_lstm_461_while_maximum_iterations#^sequential_153/lstm_461/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_461/while/Identity_2Identity%sequential_153/lstm_461/while/add:z:0#^sequential_153/lstm_461/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_461/while/Identity_3IdentityRsequential_153/lstm_461/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_153/lstm_461/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_461/while/Identity_4Identity5sequential_153/lstm_461/while/lstm_cell_566/mul_2:z:0#^sequential_153/lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_153/lstm_461/while/Identity_5Identity5sequential_153/lstm_461/while/lstm_cell_566/add_1:z:0#^sequential_153/lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_153/lstm_461/while/NoOpNoOpC^sequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOpB^sequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOpD^sequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_153_lstm_461_while_identity/sequential_153/lstm_461/while/Identity:output:0"]
(sequential_153_lstm_461_while_identity_11sequential_153/lstm_461/while/Identity_1:output:0"]
(sequential_153_lstm_461_while_identity_21sequential_153/lstm_461/while/Identity_2:output:0"]
(sequential_153_lstm_461_while_identity_31sequential_153/lstm_461/while/Identity_3:output:0"]
(sequential_153_lstm_461_while_identity_41sequential_153/lstm_461/while/Identity_4:output:0"]
(sequential_153_lstm_461_while_identity_51sequential_153/lstm_461/while/Identity_5:output:0"?
Ksequential_153_lstm_461_while_lstm_cell_566_biasadd_readvariableop_resourceMsequential_153_lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0"?
Lsequential_153_lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resourceNsequential_153_lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0"?
Jsequential_153_lstm_461_while_lstm_cell_566_matmul_readvariableop_resourceLsequential_153_lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0"?
Esequential_153_lstm_461_while_sequential_153_lstm_461_strided_slice_1Gsequential_153_lstm_461_while_sequential_153_lstm_461_strided_slice_1_0"?
?sequential_153_lstm_461_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_461_tensorarrayunstack_tensorlistfromtensor?sequential_153_lstm_461_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_461_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOpBsequential_153/lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp2?
Asequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOpAsequential_153/lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp2?
Csequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOpCsequential_153/lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_461_while_cond_3426713.
*lstm_461_while_lstm_461_while_loop_counter4
0lstm_461_while_lstm_461_while_maximum_iterations
lstm_461_while_placeholder 
lstm_461_while_placeholder_1 
lstm_461_while_placeholder_2 
lstm_461_while_placeholder_30
,lstm_461_while_less_lstm_461_strided_slice_1G
Clstm_461_while_lstm_461_while_cond_3426713___redundant_placeholder0G
Clstm_461_while_lstm_461_while_cond_3426713___redundant_placeholder1G
Clstm_461_while_lstm_461_while_cond_3426713___redundant_placeholder2G
Clstm_461_while_lstm_461_while_cond_3426713___redundant_placeholder3
lstm_461_while_identity
?
lstm_461/while/LessLesslstm_461_while_placeholder,lstm_461_while_less_lstm_461_strided_slice_1*
T0*
_output_shapes
: ]
lstm_461/while/IdentityIdentitylstm_461/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_461_while_identity lstm_461/while/Identity:output:0*(
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427561
inputs_0?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3427477*
condR
while_cond_3427476*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427704

inputs?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3427620*
condR
while_cond_3427619*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3424494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_565_3424518_0:	d?0
while_lstm_cell_565_3424520_0:	2?,
while_lstm_cell_565_3424522_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_565_3424518:	d?.
while_lstm_cell_565_3424520:	2?*
while_lstm_cell_565_3424522:	???+while/lstm_cell_565/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_565/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_565_3424518_0while_lstm_cell_565_3424520_0while_lstm_cell_565_3424522_0*
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424480?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_565/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_565/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_565/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_565/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_565_3424518while_lstm_cell_565_3424518_0"<
while_lstm_cell_565_3424520while_lstm_cell_565_3424520_0"<
while_lstm_cell_565_3424522while_lstm_cell_565_3424522_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_565/StatefulPartitionedCall+while/lstm_cell_565/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580

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
while_body_3425478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_460_while_body_3427002.
*lstm_460_while_lstm_460_while_loop_counter4
0lstm_460_while_lstm_460_while_maximum_iterations
lstm_460_while_placeholder 
lstm_460_while_placeholder_1 
lstm_460_while_placeholder_2 
lstm_460_while_placeholder_3-
)lstm_460_while_lstm_460_strided_slice_1_0i
elstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0:	d?R
?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?M
>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
lstm_460_while_identity
lstm_460_while_identity_1
lstm_460_while_identity_2
lstm_460_while_identity_3
lstm_460_while_identity_4
lstm_460_while_identity_5+
'lstm_460_while_lstm_460_strided_slice_1g
clstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensorN
;lstm_460_while_lstm_cell_565_matmul_readvariableop_resource:	d?P
=lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource:	2?K
<lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource:	???3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp?2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp?4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp?
@lstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_460/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0lstm_460_while_placeholderIlstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_460/while/lstm_cell_565/MatMulMatMul9lstm_460/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_460/while/lstm_cell_565/MatMul_1MatMullstm_460_while_placeholder_2<lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_460/while/lstm_cell_565/addAddV2-lstm_460/while/lstm_cell_565/MatMul:product:0/lstm_460/while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_460/while/lstm_cell_565/BiasAddBiasAdd$lstm_460/while/lstm_cell_565/add:z:0;lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_460/while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_460/while/lstm_cell_565/splitSplit5lstm_460/while/lstm_cell_565/split/split_dim:output:0-lstm_460/while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_460/while/lstm_cell_565/SigmoidSigmoid+lstm_460/while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_460/while/lstm_cell_565/Sigmoid_1Sigmoid+lstm_460/while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_460/while/lstm_cell_565/mulMul*lstm_460/while/lstm_cell_565/Sigmoid_1:y:0lstm_460_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_460/while/lstm_cell_565/ReluRelu+lstm_460/while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/mul_1Mul(lstm_460/while/lstm_cell_565/Sigmoid:y:0/lstm_460/while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/add_1AddV2$lstm_460/while/lstm_cell_565/mul:z:0&lstm_460/while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_460/while/lstm_cell_565/Sigmoid_2Sigmoid+lstm_460/while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_460/while/lstm_cell_565/Relu_1Relu&lstm_460/while/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_460/while/lstm_cell_565/mul_2Mul*lstm_460/while/lstm_cell_565/Sigmoid_2:y:01lstm_460/while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_460/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_460_while_placeholder_1lstm_460_while_placeholder&lstm_460/while/lstm_cell_565/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_460/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_460/while/addAddV2lstm_460_while_placeholderlstm_460/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_460/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_460/while/add_1AddV2*lstm_460_while_lstm_460_while_loop_counterlstm_460/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_460/while/IdentityIdentitylstm_460/while/add_1:z:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_1Identity0lstm_460_while_lstm_460_while_maximum_iterations^lstm_460/while/NoOp*
T0*
_output_shapes
: t
lstm_460/while/Identity_2Identitylstm_460/while/add:z:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_3IdentityClstm_460/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_460/while/NoOp*
T0*
_output_shapes
: ?
lstm_460/while/Identity_4Identity&lstm_460/while/lstm_cell_565/mul_2:z:0^lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_460/while/Identity_5Identity&lstm_460/while/lstm_cell_565/add_1:z:0^lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_460/while/NoOpNoOp4^lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp3^lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp5^lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_460_while_identity lstm_460/while/Identity:output:0"?
lstm_460_while_identity_1"lstm_460/while/Identity_1:output:0"?
lstm_460_while_identity_2"lstm_460/while/Identity_2:output:0"?
lstm_460_while_identity_3"lstm_460/while/Identity_3:output:0"?
lstm_460_while_identity_4"lstm_460/while/Identity_4:output:0"?
lstm_460_while_identity_5"lstm_460/while/Identity_5:output:0"T
'lstm_460_while_lstm_460_strided_slice_1)lstm_460_while_lstm_460_strided_slice_1_0"~
<lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource>lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0"?
=lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource?lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0"|
;lstm_460_while_lstm_cell_565_matmul_readvariableop_resource=lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0"?
clstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensorelstm_460_while_tensorarrayv2read_tensorlistgetitem_lstm_460_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp3lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp2h
2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp2lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp2l
4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp4lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3425034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425034___redundant_placeholder05
1while_while_cond_3425034___redundant_placeholder15
1while_while_cond_3425034___redundant_placeholder25
1while_while_cond_3425034___redundant_placeholder3
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
while_body_3428236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_565_layer_call_fn_3429230

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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424626o
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425412

inputs?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3425328*
condR
while_cond_3425327*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424130

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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429294

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
while_body_3427763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3425328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425104

inputs'
lstm_cell_566_3425022:2('
lstm_cell_566_3425024:
(#
lstm_cell_566_3425026:(
identity??%lstm_cell_566/StatefulPartitionedCall?while;
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
%lstm_cell_566/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_566_3425022lstm_cell_566_3425024lstm_cell_566_3425026*
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424976n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_566_3425022lstm_cell_566_3425024lstm_cell_566_3425026*
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
while_body_3425035*
condR
while_cond_3425034*K
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
NoOpNoOp&^lstm_cell_566/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_566/StatefulPartitionedCall%lstm_cell_566/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3427477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3425035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_566_3425059_0:2(/
while_lstm_cell_566_3425061_0:
(+
while_lstm_cell_566_3425063_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_566_3425059:2(-
while_lstm_cell_566_3425061:
()
while_lstm_cell_566_3425063:(??+while/lstm_cell_566/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_566/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_566_3425059_0while_lstm_cell_566_3425061_0while_lstm_cell_566_3425063_0*
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424976?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_566/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_566/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_566/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_566/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_566_3425059while_lstm_cell_566_3425059_0"<
while_lstm_cell_566_3425061while_lstm_cell_566_3425061_0"<
while_lstm_cell_566_3425063while_lstm_cell_566_3425063_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_566/StatefulPartitionedCall+while/lstm_cell_566/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_566_layer_call_fn_3429311

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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424830o
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425562

inputs>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3425478*
condR
while_cond_3425477*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_459_layer_call_and_return_conditional_losses_3424213

inputs(
lstm_cell_564_3424131:	?(
lstm_cell_564_3424133:	d?$
lstm_cell_564_3424135:	?
identity??%lstm_cell_564/StatefulPartitionedCall?while;
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
%lstm_cell_564/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_564_3424131lstm_cell_564_3424133lstm_cell_564_3424135*
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424130n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_564_3424131lstm_cell_564_3424133lstm_cell_564_3424135*
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
while_body_3424144*
condR
while_cond_3424143*K
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
NoOpNoOp&^lstm_cell_564/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_564/StatefulPartitionedCall%lstm_cell_564/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3427950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3428093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428320

inputs?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3428236*
condR
while_cond_3428235*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_461_layer_call_and_return_conditional_losses_3429079

inputs>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3428995*
condR
while_cond_3428994*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3428235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428235___redundant_placeholder05
1while_while_cond_3428235___redundant_placeholder15
1while_while_cond_3428235___redundant_placeholder25
1while_while_cond_3428235___redundant_placeholder3
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
lstm_461_while_cond_3427140.
*lstm_461_while_lstm_461_while_loop_counter4
0lstm_461_while_lstm_461_while_maximum_iterations
lstm_461_while_placeholder 
lstm_461_while_placeholder_1 
lstm_461_while_placeholder_2 
lstm_461_while_placeholder_30
,lstm_461_while_less_lstm_461_strided_slice_1G
Clstm_461_while_lstm_461_while_cond_3427140___redundant_placeholder0G
Clstm_461_while_lstm_461_while_cond_3427140___redundant_placeholder1G
Clstm_461_while_lstm_461_while_cond_3427140___redundant_placeholder2G
Clstm_461_while_lstm_461_while_cond_3427140___redundant_placeholder3
lstm_461_while_identity
?
lstm_461/while/LessLesslstm_461_while_placeholder,lstm_461_while_less_lstm_461_strided_slice_1*
T0*
_output_shapes
: ]
lstm_461/while/IdentityIdentitylstm_461/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_461_while_identity lstm_461/while/Identity:output:0*(
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3424404

inputs(
lstm_cell_564_3424322:	?(
lstm_cell_564_3424324:	d?$
lstm_cell_564_3424326:	?
identity??%lstm_cell_564/StatefulPartitionedCall?while;
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
%lstm_cell_564/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_564_3424322lstm_cell_564_3424324lstm_cell_564_3424326*
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424276n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_564_3424322lstm_cell_564_3424324lstm_cell_564_3424326*
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
while_body_3424335*
condR
while_cond_3424334*K
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
NoOpNoOp&^lstm_cell_564/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_564/StatefulPartitionedCall%lstm_cell_564/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428177
inputs_0?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3428093*
condR
while_cond_3428092*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3424843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3424843___redundant_placeholder05
1while_while_cond_3424843___redundant_placeholder15
1while_while_cond_3424843___redundant_placeholder25
1while_while_cond_3424843___redundant_placeholder3
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
%__inference_signature_wrapper_3426323
lstm_459_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_459_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3424063o
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
_user_specified_namelstm_459_input
?

?
lstm_459_while_cond_3426435.
*lstm_459_while_lstm_459_while_loop_counter4
0lstm_459_while_lstm_459_while_maximum_iterations
lstm_459_while_placeholder 
lstm_459_while_placeholder_1 
lstm_459_while_placeholder_2 
lstm_459_while_placeholder_30
,lstm_459_while_less_lstm_459_strided_slice_1G
Clstm_459_while_lstm_459_while_cond_3426435___redundant_placeholder0G
Clstm_459_while_lstm_459_while_cond_3426435___redundant_placeholder1G
Clstm_459_while_lstm_459_while_cond_3426435___redundant_placeholder2G
Clstm_459_while_lstm_459_while_cond_3426435___redundant_placeholder3
lstm_459_while_identity
?
lstm_459/while/LessLesslstm_459_while_placeholder,lstm_459_while_less_lstm_459_strided_slice_1*
T0*
_output_shapes
: ]
lstm_459/while/IdentityIdentitylstm_459/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_459_while_identity lstm_459/while/Identity:output:0*(
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
lstm_459_while_cond_3426862.
*lstm_459_while_lstm_459_while_loop_counter4
0lstm_459_while_lstm_459_while_maximum_iterations
lstm_459_while_placeholder 
lstm_459_while_placeholder_1 
lstm_459_while_placeholder_2 
lstm_459_while_placeholder_30
,lstm_459_while_less_lstm_459_strided_slice_1G
Clstm_459_while_lstm_459_while_cond_3426862___redundant_placeholder0G
Clstm_459_while_lstm_459_while_cond_3426862___redundant_placeholder1G
Clstm_459_while_lstm_459_while_cond_3426862___redundant_placeholder2G
Clstm_459_while_lstm_459_while_cond_3426862___redundant_placeholder3
lstm_459_while_identity
?
lstm_459/while/LessLesslstm_459_while_placeholder,lstm_459_while_less_lstm_459_strided_slice_1*
T0*
_output_shapes
: ]
lstm_459/while/IdentityIdentitylstm_459/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_459_while_identity lstm_459/while/Identity:output:0*(
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
*sequential_153_lstm_460_while_cond_3423833L
Hsequential_153_lstm_460_while_sequential_153_lstm_460_while_loop_counterR
Nsequential_153_lstm_460_while_sequential_153_lstm_460_while_maximum_iterations-
)sequential_153_lstm_460_while_placeholder/
+sequential_153_lstm_460_while_placeholder_1/
+sequential_153_lstm_460_while_placeholder_2/
+sequential_153_lstm_460_while_placeholder_3N
Jsequential_153_lstm_460_while_less_sequential_153_lstm_460_strided_slice_1e
asequential_153_lstm_460_while_sequential_153_lstm_460_while_cond_3423833___redundant_placeholder0e
asequential_153_lstm_460_while_sequential_153_lstm_460_while_cond_3423833___redundant_placeholder1e
asequential_153_lstm_460_while_sequential_153_lstm_460_while_cond_3423833___redundant_placeholder2e
asequential_153_lstm_460_while_sequential_153_lstm_460_while_cond_3423833___redundant_placeholder3*
&sequential_153_lstm_460_while_identity
?
"sequential_153/lstm_460/while/LessLess)sequential_153_lstm_460_while_placeholderJsequential_153_lstm_460_while_less_sequential_153_lstm_460_strided_slice_1*
T0*
_output_shapes
: {
&sequential_153/lstm_460/while/IdentityIdentity&sequential_153/lstm_460/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_153_lstm_460_while_identity/sequential_153/lstm_460/while/Identity:output:0*(
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
while_cond_3425327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425327___redundant_placeholder05
1while_while_cond_3425327___redundant_placeholder15
1while_while_cond_3425327___redundant_placeholder25
1while_while_cond_3425327___redundant_placeholder3
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
*__inference_lstm_459_layer_call_fn_3427253
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3424404|
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
?
/__inference_lstm_cell_564_layer_call_fn_3429132

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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424276o
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
?
*__inference_lstm_461_layer_call_fn_3428485
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425104o
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
?#
?
while_body_3424335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_564_3424359_0:	?0
while_lstm_cell_564_3424361_0:	d?,
while_lstm_cell_564_3424363_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_564_3424359:	?.
while_lstm_cell_564_3424361:	d?*
while_lstm_cell_564_3424363:	???+while/lstm_cell_564/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_564/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_564_3424359_0while_lstm_cell_564_3424361_0while_lstm_cell_564_3424363_0*
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424276?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_564/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_564/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_564/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_564/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_564_3424359while_lstm_cell_564_3424359_0"<
while_lstm_cell_564_3424361while_lstm_cell_564_3424361_0"<
while_lstm_cell_564_3424363while_lstm_cell_564_3424363_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_564/StatefulPartitionedCall+while/lstm_cell_564/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_461_layer_call_fn_3428507

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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425778o
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
?8
?
while_body_3425694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3425177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425177___redundant_placeholder05
1while_while_cond_3425177___redundant_placeholder15
1while_while_cond_3425177___redundant_placeholder25
1while_while_cond_3425177___redundant_placeholder3
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
while_body_3426024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3425858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425858___redundant_placeholder05
1while_while_cond_3425858___redundant_placeholder15
1while_while_cond_3425858___redundant_placeholder25
1while_while_cond_3425858___redundant_placeholder3
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
*__inference_lstm_460_layer_call_fn_3427858
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3424563|
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429164

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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427847

inputs?
,lstm_cell_564_matmul_readvariableop_resource:	?A
.lstm_cell_564_matmul_1_readvariableop_resource:	d?<
-lstm_cell_564_biasadd_readvariableop_resource:	?
identity??$lstm_cell_564/BiasAdd/ReadVariableOp?#lstm_cell_564/MatMul/ReadVariableOp?%lstm_cell_564/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_564/MatMul/ReadVariableOpReadVariableOp,lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_564/MatMulMatMulstrided_slice_2:output:0+lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_564/MatMul_1MatMulzeros:output:0-lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_564/addAddV2lstm_cell_564/MatMul:product:0 lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_564/BiasAddBiasAddlstm_cell_564/add:z:0,lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_564/splitSplit&lstm_cell_564/split/split_dim:output:0lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_564/SigmoidSigmoidlstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_1Sigmoidlstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_564/mulMullstm_cell_564/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_564/ReluRelulstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_1Mullstm_cell_564/Sigmoid:y:0 lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_564/add_1AddV2lstm_cell_564/mul:z:0lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_564/Sigmoid_2Sigmoidlstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_564/Relu_1Relulstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_564/mul_2Mullstm_cell_564/Sigmoid_2:y:0"lstm_cell_564/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_564_matmul_readvariableop_resource.lstm_cell_564_matmul_1_readvariableop_resource-lstm_cell_564_biasadd_readvariableop_resource*
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
while_body_3427763*
condR
while_cond_3427762*K
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
NoOpNoOp%^lstm_cell_564/BiasAdd/ReadVariableOp$^lstm_cell_564/MatMul/ReadVariableOp&^lstm_cell_564/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_564/BiasAdd/ReadVariableOp$lstm_cell_564/BiasAdd/ReadVariableOp2J
#lstm_cell_564/MatMul/ReadVariableOp#lstm_cell_564/MatMul/ReadVariableOp2N
%lstm_cell_564/MatMul_1/ReadVariableOp%lstm_cell_564/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3427619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427619___redundant_placeholder05
1while_while_cond_3427619___redundant_placeholder15
1while_while_cond_3427619___redundant_placeholder25
1while_while_cond_3427619___redundant_placeholder3
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
while_body_3428852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_153_lstm_460_while_body_3423834L
Hsequential_153_lstm_460_while_sequential_153_lstm_460_while_loop_counterR
Nsequential_153_lstm_460_while_sequential_153_lstm_460_while_maximum_iterations-
)sequential_153_lstm_460_while_placeholder/
+sequential_153_lstm_460_while_placeholder_1/
+sequential_153_lstm_460_while_placeholder_2/
+sequential_153_lstm_460_while_placeholder_3K
Gsequential_153_lstm_460_while_sequential_153_lstm_460_strided_slice_1_0?
?sequential_153_lstm_460_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_460_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_153_lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0:	d?a
Nsequential_153_lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?\
Msequential_153_lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0:	?*
&sequential_153_lstm_460_while_identity,
(sequential_153_lstm_460_while_identity_1,
(sequential_153_lstm_460_while_identity_2,
(sequential_153_lstm_460_while_identity_3,
(sequential_153_lstm_460_while_identity_4,
(sequential_153_lstm_460_while_identity_5I
Esequential_153_lstm_460_while_sequential_153_lstm_460_strided_slice_1?
?sequential_153_lstm_460_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_460_tensorarrayunstack_tensorlistfromtensor]
Jsequential_153_lstm_460_while_lstm_cell_565_matmul_readvariableop_resource:	d?_
Lsequential_153_lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource:	2?Z
Ksequential_153_lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource:	???Bsequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp?Asequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp?Csequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp?
Osequential_153/lstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_153/lstm_460/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_153_lstm_460_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_460_tensorarrayunstack_tensorlistfromtensor_0)sequential_153_lstm_460_while_placeholderXsequential_153/lstm_460/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOpLsequential_153_lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_153/lstm_460/while/lstm_cell_565/MatMulMatMulHsequential_153/lstm_460/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOpNsequential_153_lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_153/lstm_460/while/lstm_cell_565/MatMul_1MatMul+sequential_153_lstm_460_while_placeholder_2Ksequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_153/lstm_460/while/lstm_cell_565/addAddV2<sequential_153/lstm_460/while/lstm_cell_565/MatMul:product:0>sequential_153/lstm_460/while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOpMsequential_153_lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_153/lstm_460/while/lstm_cell_565/BiasAddBiasAdd3sequential_153/lstm_460/while/lstm_cell_565/add:z:0Jsequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_153/lstm_460/while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_153/lstm_460/while/lstm_cell_565/splitSplitDsequential_153/lstm_460/while/lstm_cell_565/split/split_dim:output:0<sequential_153/lstm_460/while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_153/lstm_460/while/lstm_cell_565/SigmoidSigmoid:sequential_153/lstm_460/while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_153/lstm_460/while/lstm_cell_565/Sigmoid_1Sigmoid:sequential_153/lstm_460/while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_153/lstm_460/while/lstm_cell_565/mulMul9sequential_153/lstm_460/while/lstm_cell_565/Sigmoid_1:y:0+sequential_153_lstm_460_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_153/lstm_460/while/lstm_cell_565/ReluRelu:sequential_153/lstm_460/while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_153/lstm_460/while/lstm_cell_565/mul_1Mul7sequential_153/lstm_460/while/lstm_cell_565/Sigmoid:y:0>sequential_153/lstm_460/while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_153/lstm_460/while/lstm_cell_565/add_1AddV23sequential_153/lstm_460/while/lstm_cell_565/mul:z:05sequential_153/lstm_460/while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_153/lstm_460/while/lstm_cell_565/Sigmoid_2Sigmoid:sequential_153/lstm_460/while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_153/lstm_460/while/lstm_cell_565/Relu_1Relu5sequential_153/lstm_460/while/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_153/lstm_460/while/lstm_cell_565/mul_2Mul9sequential_153/lstm_460/while/lstm_cell_565/Sigmoid_2:y:0@sequential_153/lstm_460/while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_153/lstm_460/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_153_lstm_460_while_placeholder_1)sequential_153_lstm_460_while_placeholder5sequential_153/lstm_460/while/lstm_cell_565/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_153/lstm_460/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_153/lstm_460/while/addAddV2)sequential_153_lstm_460_while_placeholder,sequential_153/lstm_460/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_153/lstm_460/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_153/lstm_460/while/add_1AddV2Hsequential_153_lstm_460_while_sequential_153_lstm_460_while_loop_counter.sequential_153/lstm_460/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_153/lstm_460/while/IdentityIdentity'sequential_153/lstm_460/while/add_1:z:0#^sequential_153/lstm_460/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_460/while/Identity_1IdentityNsequential_153_lstm_460_while_sequential_153_lstm_460_while_maximum_iterations#^sequential_153/lstm_460/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_460/while/Identity_2Identity%sequential_153/lstm_460/while/add:z:0#^sequential_153/lstm_460/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_460/while/Identity_3IdentityRsequential_153/lstm_460/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_153/lstm_460/while/NoOp*
T0*
_output_shapes
: ?
(sequential_153/lstm_460/while/Identity_4Identity5sequential_153/lstm_460/while/lstm_cell_565/mul_2:z:0#^sequential_153/lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_153/lstm_460/while/Identity_5Identity5sequential_153/lstm_460/while/lstm_cell_565/add_1:z:0#^sequential_153/lstm_460/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_153/lstm_460/while/NoOpNoOpC^sequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOpB^sequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOpD^sequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_153_lstm_460_while_identity/sequential_153/lstm_460/while/Identity:output:0"]
(sequential_153_lstm_460_while_identity_11sequential_153/lstm_460/while/Identity_1:output:0"]
(sequential_153_lstm_460_while_identity_21sequential_153/lstm_460/while/Identity_2:output:0"]
(sequential_153_lstm_460_while_identity_31sequential_153/lstm_460/while/Identity_3:output:0"]
(sequential_153_lstm_460_while_identity_41sequential_153/lstm_460/while/Identity_4:output:0"]
(sequential_153_lstm_460_while_identity_51sequential_153/lstm_460/while/Identity_5:output:0"?
Ksequential_153_lstm_460_while_lstm_cell_565_biasadd_readvariableop_resourceMsequential_153_lstm_460_while_lstm_cell_565_biasadd_readvariableop_resource_0"?
Lsequential_153_lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resourceNsequential_153_lstm_460_while_lstm_cell_565_matmul_1_readvariableop_resource_0"?
Jsequential_153_lstm_460_while_lstm_cell_565_matmul_readvariableop_resourceLsequential_153_lstm_460_while_lstm_cell_565_matmul_readvariableop_resource_0"?
Esequential_153_lstm_460_while_sequential_153_lstm_460_strided_slice_1Gsequential_153_lstm_460_while_sequential_153_lstm_460_strided_slice_1_0"?
?sequential_153_lstm_460_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_460_tensorarrayunstack_tensorlistfromtensor?sequential_153_lstm_460_while_tensorarrayv2read_tensorlistgetitem_sequential_153_lstm_460_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOpBsequential_153/lstm_460/while/lstm_cell_565/BiasAdd/ReadVariableOp2?
Asequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOpAsequential_153/lstm_460/while/lstm_cell_565/MatMul/ReadVariableOp2?
Csequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOpCsequential_153/lstm_460/while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425943

inputs?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3425859*
condR
while_cond_3425858*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3427620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425778

inputs>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3425694*
condR
while_cond_3425693*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424830

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
?
*__inference_lstm_460_layer_call_fn_3427880

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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425412s
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
while_cond_3427762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427762___redundant_placeholder05
1while_while_cond_3427762___redundant_placeholder15
1while_while_cond_3427762___redundant_placeholder25
1while_while_cond_3427762___redundant_placeholder3
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424480

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
while_cond_3428565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428565___redundant_placeholder05
1while_while_cond_3428565___redundant_placeholder15
1while_while_cond_3428565___redundant_placeholder25
1while_while_cond_3428565___redundant_placeholder3
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
0__inference_sequential_153_layer_call_fn_3426377

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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426176o
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
?
*__inference_lstm_460_layer_call_fn_3427891

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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425943s
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
while_cond_3428994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428994___redundant_placeholder05
1while_while_cond_3428994___redundant_placeholder15
1while_while_cond_3428994___redundant_placeholder25
1while_while_cond_3428994___redundant_placeholder3
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
while_cond_3425477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425477___redundant_placeholder05
1while_while_cond_3425477___redundant_placeholder15
1while_while_cond_3425477___redundant_placeholder25
1while_while_cond_3425477___redundant_placeholder3
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
while_cond_3428708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428708___redundant_placeholder05
1while_while_cond_3428708___redundant_placeholder15
1while_while_cond_3428708___redundant_placeholder25
1while_while_cond_3428708___redundant_placeholder3
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
while_cond_3427333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427333___redundant_placeholder05
1while_while_cond_3427333___redundant_placeholder15
1while_while_cond_3427333___redundant_placeholder25
1while_while_cond_3427333___redundant_placeholder3
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
*__inference_lstm_461_layer_call_fn_3428474
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3424913o
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
while_cond_3424334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3424334___redundant_placeholder05
1while_while_cond_3424334___redundant_placeholder15
1while_while_cond_3424334___redundant_placeholder25
1while_while_cond_3424334___redundant_placeholder3
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
*sequential_153_lstm_459_while_cond_3423694L
Hsequential_153_lstm_459_while_sequential_153_lstm_459_while_loop_counterR
Nsequential_153_lstm_459_while_sequential_153_lstm_459_while_maximum_iterations-
)sequential_153_lstm_459_while_placeholder/
+sequential_153_lstm_459_while_placeholder_1/
+sequential_153_lstm_459_while_placeholder_2/
+sequential_153_lstm_459_while_placeholder_3N
Jsequential_153_lstm_459_while_less_sequential_153_lstm_459_strided_slice_1e
asequential_153_lstm_459_while_sequential_153_lstm_459_while_cond_3423694___redundant_placeholder0e
asequential_153_lstm_459_while_sequential_153_lstm_459_while_cond_3423694___redundant_placeholder1e
asequential_153_lstm_459_while_sequential_153_lstm_459_while_cond_3423694___redundant_placeholder2e
asequential_153_lstm_459_while_sequential_153_lstm_459_while_cond_3423694___redundant_placeholder3*
&sequential_153_lstm_459_while_identity
?
"sequential_153/lstm_459/while/LessLess)sequential_153_lstm_459_while_placeholderJsequential_153_lstm_459_while_less_sequential_153_lstm_459_strided_slice_1*
T0*
_output_shapes
: {
&sequential_153/lstm_459/while/IdentityIdentity&sequential_153/lstm_459/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_153_lstm_459_while_identity/sequential_153/lstm_459/while/Identity:output:0*(
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424276

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
*__inference_lstm_459_layer_call_fn_3427275

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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3426108s
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
*__inference_lstm_460_layer_call_fn_3427869
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3424754|
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3425587

inputs#
lstm_459_3425263:	?#
lstm_459_3425265:	d?
lstm_459_3425267:	?#
lstm_460_3425413:	d?#
lstm_460_3425415:	2?
lstm_460_3425417:	?"
lstm_461_3425563:2("
lstm_461_3425565:
(
lstm_461_3425567:(#
dense_153_3425581:

dense_153_3425583:
identity??!dense_153/StatefulPartitionedCall? lstm_459/StatefulPartitionedCall? lstm_460/StatefulPartitionedCall? lstm_461/StatefulPartitionedCall?
 lstm_459/StatefulPartitionedCallStatefulPartitionedCallinputslstm_459_3425263lstm_459_3425265lstm_459_3425267*
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3425262?
 lstm_460/StatefulPartitionedCallStatefulPartitionedCall)lstm_459/StatefulPartitionedCall:output:0lstm_460_3425413lstm_460_3425415lstm_460_3425417*
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425412?
 lstm_461/StatefulPartitionedCallStatefulPartitionedCall)lstm_460/StatefulPartitionedCall:output:0lstm_461_3425563lstm_461_3425565lstm_461_3425567*
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425562?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall)lstm_461/StatefulPartitionedCall:output:0dense_153_3425581dense_153_3425583*
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580y
IdentityIdentity*dense_153/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_153/StatefulPartitionedCall!^lstm_459/StatefulPartitionedCall!^lstm_460/StatefulPartitionedCall!^lstm_461/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2D
 lstm_459/StatefulPartitionedCall lstm_459/StatefulPartitionedCall2D
 lstm_460/StatefulPartitionedCall lstm_460/StatefulPartitionedCall2D
 lstm_461/StatefulPartitionedCall lstm_461/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3424844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_566_3424868_0:2(/
while_lstm_cell_566_3424870_0:
(+
while_lstm_cell_566_3424872_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_566_3424868:2(-
while_lstm_cell_566_3424870:
()
while_lstm_cell_566_3424872:(??+while/lstm_cell_566/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_566/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_566_3424868_0while_lstm_cell_566_3424870_0while_lstm_cell_566_3424872_0*
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424830?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_566/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_566/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_566/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_566/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_566_3424868while_lstm_cell_566_3424868_0"<
while_lstm_cell_566_3424870while_lstm_cell_566_3424870_0"<
while_lstm_cell_566_3424872while_lstm_cell_566_3424872_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_566/StatefulPartitionedCall+while/lstm_cell_566/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_153_layer_call_fn_3429088

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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580o
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
?J
?
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428936

inputs>
,lstm_cell_566_matmul_readvariableop_resource:2(@
.lstm_cell_566_matmul_1_readvariableop_resource:
(;
-lstm_cell_566_biasadd_readvariableop_resource:(
identity??$lstm_cell_566/BiasAdd/ReadVariableOp?#lstm_cell_566/MatMul/ReadVariableOp?%lstm_cell_566/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_566/MatMul/ReadVariableOpReadVariableOp,lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_566/MatMulMatMulstrided_slice_2:output:0+lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_566/MatMul_1MatMulzeros:output:0-lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_566/addAddV2lstm_cell_566/MatMul:product:0 lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_566/BiasAddBiasAddlstm_cell_566/add:z:0,lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_566/splitSplit&lstm_cell_566/split/split_dim:output:0lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_566/SigmoidSigmoidlstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_1Sigmoidlstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_566/mulMullstm_cell_566/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_566/ReluRelulstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_1Mullstm_cell_566/Sigmoid:y:0 lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_566/add_1AddV2lstm_cell_566/mul:z:0lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_566/Sigmoid_2Sigmoidlstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_566/Relu_1Relulstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_566/mul_2Mullstm_cell_566/Sigmoid_2:y:0"lstm_cell_566/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_566_matmul_readvariableop_resource.lstm_cell_566_matmul_1_readvariableop_resource-lstm_cell_566_biasadd_readvariableop_resource*
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
while_body_3428852*
condR
while_cond_3428851*K
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
NoOpNoOp%^lstm_cell_566/BiasAdd/ReadVariableOp$^lstm_cell_566/MatMul/ReadVariableOp&^lstm_cell_566/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_566/BiasAdd/ReadVariableOp$lstm_cell_566/BiasAdd/ReadVariableOp2J
#lstm_cell_566/MatMul/ReadVariableOp#lstm_cell_566/MatMul/ReadVariableOp2N
%lstm_cell_566/MatMul_1/ReadVariableOp%lstm_cell_566/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_459_layer_call_fn_3427242
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3424213|
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

?
lstm_460_while_cond_3427001.
*lstm_460_while_lstm_460_while_loop_counter4
0lstm_460_while_lstm_460_while_maximum_iterations
lstm_460_while_placeholder 
lstm_460_while_placeholder_1 
lstm_460_while_placeholder_2 
lstm_460_while_placeholder_30
,lstm_460_while_less_lstm_460_strided_slice_1G
Clstm_460_while_lstm_460_while_cond_3427001___redundant_placeholder0G
Clstm_460_while_lstm_460_while_cond_3427001___redundant_placeholder1G
Clstm_460_while_lstm_460_while_cond_3427001___redundant_placeholder2G
Clstm_460_while_lstm_460_while_cond_3427001___redundant_placeholder3
lstm_460_while_identity
?
lstm_460/while/LessLesslstm_460_while_placeholder,lstm_460_while_less_lstm_460_strided_slice_1*
T0*
_output_shapes
: ]
lstm_460/while/IdentityIdentitylstm_460/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_460_while_identity lstm_460/while/Identity:output:0*(
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
/__inference_lstm_cell_565_layer_call_fn_3429213

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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424480o
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
/__inference_lstm_cell_564_layer_call_fn_3429115

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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3424130o
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
?#
?
while_body_3424685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_565_3424709_0:	d?0
while_lstm_cell_565_3424711_0:	2?,
while_lstm_cell_565_3424713_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_565_3424709:	d?.
while_lstm_cell_565_3424711:	2?*
while_lstm_cell_565_3424713:	???+while/lstm_cell_565/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_565/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_565_3424709_0while_lstm_cell_565_3424711_0while_lstm_cell_565_3424713_0*
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424626?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_565/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_565/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_565/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_565/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_565_3424709while_lstm_cell_565_3424709_0"<
while_lstm_cell_565_3424711while_lstm_cell_565_3424711_0"<
while_lstm_cell_565_3424713while_lstm_cell_565_3424713_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_565/StatefulPartitionedCall+while/lstm_cell_565/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3427231

inputsH
5lstm_459_lstm_cell_564_matmul_readvariableop_resource:	?J
7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource:	d?E
6lstm_459_lstm_cell_564_biasadd_readvariableop_resource:	?H
5lstm_460_lstm_cell_565_matmul_readvariableop_resource:	d?J
7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource:	2?E
6lstm_460_lstm_cell_565_biasadd_readvariableop_resource:	?G
5lstm_461_lstm_cell_566_matmul_readvariableop_resource:2(I
7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource:
(D
6lstm_461_lstm_cell_566_biasadd_readvariableop_resource:(:
(dense_153_matmul_readvariableop_resource:
7
)dense_153_biasadd_readvariableop_resource:
identity?? dense_153/BiasAdd/ReadVariableOp?dense_153/MatMul/ReadVariableOp?-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp?,lstm_459/lstm_cell_564/MatMul/ReadVariableOp?.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp?lstm_459/while?-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp?,lstm_460/lstm_cell_565/MatMul/ReadVariableOp?.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp?lstm_460/while?-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp?,lstm_461/lstm_cell_566/MatMul/ReadVariableOp?.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp?lstm_461/whileD
lstm_459/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_459/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_459/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_459/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_sliceStridedSlicelstm_459/Shape:output:0%lstm_459/strided_slice/stack:output:0'lstm_459/strided_slice/stack_1:output:0'lstm_459/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_459/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_459/zeros/packedPacklstm_459/strided_slice:output:0 lstm_459/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_459/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_459/zerosFilllstm_459/zeros/packed:output:0lstm_459/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_459/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_459/zeros_1/packedPacklstm_459/strided_slice:output:0"lstm_459/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_459/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_459/zeros_1Fill lstm_459/zeros_1/packed:output:0lstm_459/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_459/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_459/transpose	Transposeinputs lstm_459/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_459/Shape_1Shapelstm_459/transpose:y:0*
T0*
_output_shapes
:h
lstm_459/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_459/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_1StridedSlicelstm_459/Shape_1:output:0'lstm_459/strided_slice_1/stack:output:0)lstm_459/strided_slice_1/stack_1:output:0)lstm_459/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_459/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_459/TensorArrayV2TensorListReserve-lstm_459/TensorArrayV2/element_shape:output:0!lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_459/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_459/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_459/transpose:y:0Glstm_459/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_459/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_459/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_2StridedSlicelstm_459/transpose:y:0'lstm_459/strided_slice_2/stack:output:0)lstm_459/strided_slice_2/stack_1:output:0)lstm_459/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_459/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp5lstm_459_lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_459/lstm_cell_564/MatMulMatMul!lstm_459/strided_slice_2:output:04lstm_459/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_459/lstm_cell_564/MatMul_1MatMullstm_459/zeros:output:06lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_459/lstm_cell_564/addAddV2'lstm_459/lstm_cell_564/MatMul:product:0)lstm_459/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp6lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_459/lstm_cell_564/BiasAddBiasAddlstm_459/lstm_cell_564/add:z:05lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_459/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_459/lstm_cell_564/splitSplit/lstm_459/lstm_cell_564/split/split_dim:output:0'lstm_459/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_459/lstm_cell_564/SigmoidSigmoid%lstm_459/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_459/lstm_cell_564/Sigmoid_1Sigmoid%lstm_459/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mulMul$lstm_459/lstm_cell_564/Sigmoid_1:y:0lstm_459/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_459/lstm_cell_564/ReluRelu%lstm_459/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mul_1Mul"lstm_459/lstm_cell_564/Sigmoid:y:0)lstm_459/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/add_1AddV2lstm_459/lstm_cell_564/mul:z:0 lstm_459/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_459/lstm_cell_564/Sigmoid_2Sigmoid%lstm_459/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_459/lstm_cell_564/Relu_1Relu lstm_459/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mul_2Mul$lstm_459/lstm_cell_564/Sigmoid_2:y:0+lstm_459/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_459/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_459/TensorArrayV2_1TensorListReserve/lstm_459/TensorArrayV2_1/element_shape:output:0!lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_459/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_459/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_459/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_459/whileWhile$lstm_459/while/loop_counter:output:0*lstm_459/while/maximum_iterations:output:0lstm_459/time:output:0!lstm_459/TensorArrayV2_1:handle:0lstm_459/zeros:output:0lstm_459/zeros_1:output:0!lstm_459/strided_slice_1:output:0@lstm_459/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_459_lstm_cell_564_matmul_readvariableop_resource7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource6lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
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
lstm_459_while_body_3426863*'
condR
lstm_459_while_cond_3426862*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_459/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_459/TensorArrayV2Stack/TensorListStackTensorListStacklstm_459/while:output:3Blstm_459/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_459/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_459/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_3StridedSlice4lstm_459/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_459/strided_slice_3/stack:output:0)lstm_459/strided_slice_3/stack_1:output:0)lstm_459/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_459/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_459/transpose_1	Transpose4lstm_459/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_459/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_459/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_460/ShapeShapelstm_459/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_460/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_460/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_460/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_sliceStridedSlicelstm_460/Shape:output:0%lstm_460/strided_slice/stack:output:0'lstm_460/strided_slice/stack_1:output:0'lstm_460/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_460/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_460/zeros/packedPacklstm_460/strided_slice:output:0 lstm_460/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_460/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_460/zerosFilllstm_460/zeros/packed:output:0lstm_460/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_460/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_460/zeros_1/packedPacklstm_460/strided_slice:output:0"lstm_460/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_460/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_460/zeros_1Fill lstm_460/zeros_1/packed:output:0lstm_460/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_460/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_460/transpose	Transposelstm_459/transpose_1:y:0 lstm_460/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_460/Shape_1Shapelstm_460/transpose:y:0*
T0*
_output_shapes
:h
lstm_460/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_460/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_1StridedSlicelstm_460/Shape_1:output:0'lstm_460/strided_slice_1/stack:output:0)lstm_460/strided_slice_1/stack_1:output:0)lstm_460/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_460/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_460/TensorArrayV2TensorListReserve-lstm_460/TensorArrayV2/element_shape:output:0!lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_460/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_460/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_460/transpose:y:0Glstm_460/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_460/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_460/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_2StridedSlicelstm_460/transpose:y:0'lstm_460/strided_slice_2/stack:output:0)lstm_460/strided_slice_2/stack_1:output:0)lstm_460/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_460/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp5lstm_460_lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_460/lstm_cell_565/MatMulMatMul!lstm_460/strided_slice_2:output:04lstm_460/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_460/lstm_cell_565/MatMul_1MatMullstm_460/zeros:output:06lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_460/lstm_cell_565/addAddV2'lstm_460/lstm_cell_565/MatMul:product:0)lstm_460/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp6lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_460/lstm_cell_565/BiasAddBiasAddlstm_460/lstm_cell_565/add:z:05lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_460/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_460/lstm_cell_565/splitSplit/lstm_460/lstm_cell_565/split/split_dim:output:0'lstm_460/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_460/lstm_cell_565/SigmoidSigmoid%lstm_460/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_460/lstm_cell_565/Sigmoid_1Sigmoid%lstm_460/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mulMul$lstm_460/lstm_cell_565/Sigmoid_1:y:0lstm_460/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_460/lstm_cell_565/ReluRelu%lstm_460/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mul_1Mul"lstm_460/lstm_cell_565/Sigmoid:y:0)lstm_460/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/add_1AddV2lstm_460/lstm_cell_565/mul:z:0 lstm_460/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_460/lstm_cell_565/Sigmoid_2Sigmoid%lstm_460/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_460/lstm_cell_565/Relu_1Relu lstm_460/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mul_2Mul$lstm_460/lstm_cell_565/Sigmoid_2:y:0+lstm_460/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_460/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_460/TensorArrayV2_1TensorListReserve/lstm_460/TensorArrayV2_1/element_shape:output:0!lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_460/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_460/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_460/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_460/whileWhile$lstm_460/while/loop_counter:output:0*lstm_460/while/maximum_iterations:output:0lstm_460/time:output:0!lstm_460/TensorArrayV2_1:handle:0lstm_460/zeros:output:0lstm_460/zeros_1:output:0!lstm_460/strided_slice_1:output:0@lstm_460/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_460_lstm_cell_565_matmul_readvariableop_resource7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource6lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
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
lstm_460_while_body_3427002*'
condR
lstm_460_while_cond_3427001*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_460/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_460/TensorArrayV2Stack/TensorListStackTensorListStacklstm_460/while:output:3Blstm_460/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_460/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_460/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_3StridedSlice4lstm_460/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_460/strided_slice_3/stack:output:0)lstm_460/strided_slice_3/stack_1:output:0)lstm_460/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_460/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_460/transpose_1	Transpose4lstm_460/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_460/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_460/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_461/ShapeShapelstm_460/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_461/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_461/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_461/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_sliceStridedSlicelstm_461/Shape:output:0%lstm_461/strided_slice/stack:output:0'lstm_461/strided_slice/stack_1:output:0'lstm_461/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_461/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_461/zeros/packedPacklstm_461/strided_slice:output:0 lstm_461/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_461/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_461/zerosFilllstm_461/zeros/packed:output:0lstm_461/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_461/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_461/zeros_1/packedPacklstm_461/strided_slice:output:0"lstm_461/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_461/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_461/zeros_1Fill lstm_461/zeros_1/packed:output:0lstm_461/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_461/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_461/transpose	Transposelstm_460/transpose_1:y:0 lstm_461/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_461/Shape_1Shapelstm_461/transpose:y:0*
T0*
_output_shapes
:h
lstm_461/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_461/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_1StridedSlicelstm_461/Shape_1:output:0'lstm_461/strided_slice_1/stack:output:0)lstm_461/strided_slice_1/stack_1:output:0)lstm_461/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_461/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_461/TensorArrayV2TensorListReserve-lstm_461/TensorArrayV2/element_shape:output:0!lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_461/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_461/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_461/transpose:y:0Glstm_461/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_461/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_461/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_2StridedSlicelstm_461/transpose:y:0'lstm_461/strided_slice_2/stack:output:0)lstm_461/strided_slice_2/stack_1:output:0)lstm_461/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_461/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp5lstm_461_lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_461/lstm_cell_566/MatMulMatMul!lstm_461/strided_slice_2:output:04lstm_461/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_461/lstm_cell_566/MatMul_1MatMullstm_461/zeros:output:06lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_461/lstm_cell_566/addAddV2'lstm_461/lstm_cell_566/MatMul:product:0)lstm_461/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp6lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_461/lstm_cell_566/BiasAddBiasAddlstm_461/lstm_cell_566/add:z:05lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_461/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_461/lstm_cell_566/splitSplit/lstm_461/lstm_cell_566/split/split_dim:output:0'lstm_461/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_461/lstm_cell_566/SigmoidSigmoid%lstm_461/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_461/lstm_cell_566/Sigmoid_1Sigmoid%lstm_461/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mulMul$lstm_461/lstm_cell_566/Sigmoid_1:y:0lstm_461/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_461/lstm_cell_566/ReluRelu%lstm_461/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mul_1Mul"lstm_461/lstm_cell_566/Sigmoid:y:0)lstm_461/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/add_1AddV2lstm_461/lstm_cell_566/mul:z:0 lstm_461/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_461/lstm_cell_566/Sigmoid_2Sigmoid%lstm_461/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_461/lstm_cell_566/Relu_1Relu lstm_461/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mul_2Mul$lstm_461/lstm_cell_566/Sigmoid_2:y:0+lstm_461/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_461/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_461/TensorArrayV2_1TensorListReserve/lstm_461/TensorArrayV2_1/element_shape:output:0!lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_461/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_461/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_461/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_461/whileWhile$lstm_461/while/loop_counter:output:0*lstm_461/while/maximum_iterations:output:0lstm_461/time:output:0!lstm_461/TensorArrayV2_1:handle:0lstm_461/zeros:output:0lstm_461/zeros_1:output:0!lstm_461/strided_slice_1:output:0@lstm_461/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_461_lstm_cell_566_matmul_readvariableop_resource7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource6lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
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
lstm_461_while_body_3427141*'
condR
lstm_461_while_cond_3427140*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_461/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_461/TensorArrayV2Stack/TensorListStackTensorListStacklstm_461/while:output:3Blstm_461/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_461/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_461/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_3StridedSlice4lstm_461/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_461/strided_slice_3/stack:output:0)lstm_461/strided_slice_3/stack_1:output:0)lstm_461/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_461/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_461/transpose_1	Transpose4lstm_461/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_461/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_461/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_153/MatMulMatMul!lstm_461/strided_slice_3:output:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp.^lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp-^lstm_459/lstm_cell_564/MatMul/ReadVariableOp/^lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp^lstm_459/while.^lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp-^lstm_460/lstm_cell_565/MatMul/ReadVariableOp/^lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp^lstm_460/while.^lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp-^lstm_461/lstm_cell_566/MatMul/ReadVariableOp/^lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp^lstm_461/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp2^
-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp2\
,lstm_459/lstm_cell_564/MatMul/ReadVariableOp,lstm_459/lstm_cell_564/MatMul/ReadVariableOp2`
.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp2 
lstm_459/whilelstm_459/while2^
-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp2\
,lstm_460/lstm_cell_565/MatMul/ReadVariableOp,lstm_460/lstm_cell_565/MatMul/ReadVariableOp2`
.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp2 
lstm_460/whilelstm_460/while2^
-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp2\
,lstm_461/lstm_cell_566/MatMul/ReadVariableOp,lstm_461/lstm_cell_566/MatMul/ReadVariableOp2`
.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp2 
lstm_461/whilelstm_461/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_153_layer_call_and_return_conditional_losses_3429098

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
while_body_3428379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_565_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_565_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_565_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_565_matmul_readvariableop_resource:	d?G
4while_lstm_cell_565_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_565_biasadd_readvariableop_resource:	???*while/lstm_cell_565/BiasAdd/ReadVariableOp?)while/lstm_cell_565/MatMul/ReadVariableOp?+while/lstm_cell_565/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_565_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_565/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_565_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_565/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_565/addAddV2$while/lstm_cell_565/MatMul:product:0&while/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_565_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_565/BiasAddBiasAddwhile/lstm_cell_565/add:z:02while/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_565/splitSplit,while/lstm_cell_565/split/split_dim:output:0$while/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_565/SigmoidSigmoid"while/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_1Sigmoid"while/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mulMul!while/lstm_cell_565/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_565/ReluRelu"while/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_1Mulwhile/lstm_cell_565/Sigmoid:y:0&while/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/add_1AddV2while/lstm_cell_565/mul:z:0while/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_565/Sigmoid_2Sigmoid"while/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_565/Relu_1Reluwhile/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_565/mul_2Mul!while/lstm_cell_565/Sigmoid_2:y:0(while/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_565/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_565/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_565/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_565/BiasAdd/ReadVariableOp*^while/lstm_cell_565/MatMul/ReadVariableOp,^while/lstm_cell_565/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_565_biasadd_readvariableop_resource5while_lstm_cell_565_biasadd_readvariableop_resource_0"n
4while_lstm_cell_565_matmul_1_readvariableop_resource6while_lstm_cell_565_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_565_matmul_readvariableop_resource4while_lstm_cell_565_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_565/BiasAdd/ReadVariableOp*while/lstm_cell_565/BiasAdd/ReadVariableOp2V
)while/lstm_cell_565/MatMul/ReadVariableOp)while/lstm_cell_565/MatMul/ReadVariableOp2Z
+while/lstm_cell_565/MatMul_1/ReadVariableOp+while/lstm_cell_565/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426804

inputsH
5lstm_459_lstm_cell_564_matmul_readvariableop_resource:	?J
7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource:	d?E
6lstm_459_lstm_cell_564_biasadd_readvariableop_resource:	?H
5lstm_460_lstm_cell_565_matmul_readvariableop_resource:	d?J
7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource:	2?E
6lstm_460_lstm_cell_565_biasadd_readvariableop_resource:	?G
5lstm_461_lstm_cell_566_matmul_readvariableop_resource:2(I
7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource:
(D
6lstm_461_lstm_cell_566_biasadd_readvariableop_resource:(:
(dense_153_matmul_readvariableop_resource:
7
)dense_153_biasadd_readvariableop_resource:
identity?? dense_153/BiasAdd/ReadVariableOp?dense_153/MatMul/ReadVariableOp?-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp?,lstm_459/lstm_cell_564/MatMul/ReadVariableOp?.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp?lstm_459/while?-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp?,lstm_460/lstm_cell_565/MatMul/ReadVariableOp?.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp?lstm_460/while?-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp?,lstm_461/lstm_cell_566/MatMul/ReadVariableOp?.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp?lstm_461/whileD
lstm_459/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_459/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_459/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_459/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_sliceStridedSlicelstm_459/Shape:output:0%lstm_459/strided_slice/stack:output:0'lstm_459/strided_slice/stack_1:output:0'lstm_459/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_459/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_459/zeros/packedPacklstm_459/strided_slice:output:0 lstm_459/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_459/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_459/zerosFilllstm_459/zeros/packed:output:0lstm_459/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_459/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_459/zeros_1/packedPacklstm_459/strided_slice:output:0"lstm_459/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_459/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_459/zeros_1Fill lstm_459/zeros_1/packed:output:0lstm_459/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_459/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_459/transpose	Transposeinputs lstm_459/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_459/Shape_1Shapelstm_459/transpose:y:0*
T0*
_output_shapes
:h
lstm_459/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_459/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_1StridedSlicelstm_459/Shape_1:output:0'lstm_459/strided_slice_1/stack:output:0)lstm_459/strided_slice_1/stack_1:output:0)lstm_459/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_459/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_459/TensorArrayV2TensorListReserve-lstm_459/TensorArrayV2/element_shape:output:0!lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_459/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_459/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_459/transpose:y:0Glstm_459/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_459/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_459/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_2StridedSlicelstm_459/transpose:y:0'lstm_459/strided_slice_2/stack:output:0)lstm_459/strided_slice_2/stack_1:output:0)lstm_459/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_459/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp5lstm_459_lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_459/lstm_cell_564/MatMulMatMul!lstm_459/strided_slice_2:output:04lstm_459/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_459/lstm_cell_564/MatMul_1MatMullstm_459/zeros:output:06lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_459/lstm_cell_564/addAddV2'lstm_459/lstm_cell_564/MatMul:product:0)lstm_459/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp6lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_459/lstm_cell_564/BiasAddBiasAddlstm_459/lstm_cell_564/add:z:05lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_459/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_459/lstm_cell_564/splitSplit/lstm_459/lstm_cell_564/split/split_dim:output:0'lstm_459/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_459/lstm_cell_564/SigmoidSigmoid%lstm_459/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_459/lstm_cell_564/Sigmoid_1Sigmoid%lstm_459/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mulMul$lstm_459/lstm_cell_564/Sigmoid_1:y:0lstm_459/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_459/lstm_cell_564/ReluRelu%lstm_459/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mul_1Mul"lstm_459/lstm_cell_564/Sigmoid:y:0)lstm_459/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/add_1AddV2lstm_459/lstm_cell_564/mul:z:0 lstm_459/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_459/lstm_cell_564/Sigmoid_2Sigmoid%lstm_459/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_459/lstm_cell_564/Relu_1Relu lstm_459/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_459/lstm_cell_564/mul_2Mul$lstm_459/lstm_cell_564/Sigmoid_2:y:0+lstm_459/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_459/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_459/TensorArrayV2_1TensorListReserve/lstm_459/TensorArrayV2_1/element_shape:output:0!lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_459/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_459/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_459/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_459/whileWhile$lstm_459/while/loop_counter:output:0*lstm_459/while/maximum_iterations:output:0lstm_459/time:output:0!lstm_459/TensorArrayV2_1:handle:0lstm_459/zeros:output:0lstm_459/zeros_1:output:0!lstm_459/strided_slice_1:output:0@lstm_459/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_459_lstm_cell_564_matmul_readvariableop_resource7lstm_459_lstm_cell_564_matmul_1_readvariableop_resource6lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
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
lstm_459_while_body_3426436*'
condR
lstm_459_while_cond_3426435*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_459/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_459/TensorArrayV2Stack/TensorListStackTensorListStacklstm_459/while:output:3Blstm_459/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_459/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_459/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_459/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_459/strided_slice_3StridedSlice4lstm_459/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_459/strided_slice_3/stack:output:0)lstm_459/strided_slice_3/stack_1:output:0)lstm_459/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_459/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_459/transpose_1	Transpose4lstm_459/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_459/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_459/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_460/ShapeShapelstm_459/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_460/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_460/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_460/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_sliceStridedSlicelstm_460/Shape:output:0%lstm_460/strided_slice/stack:output:0'lstm_460/strided_slice/stack_1:output:0'lstm_460/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_460/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_460/zeros/packedPacklstm_460/strided_slice:output:0 lstm_460/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_460/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_460/zerosFilllstm_460/zeros/packed:output:0lstm_460/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_460/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_460/zeros_1/packedPacklstm_460/strided_slice:output:0"lstm_460/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_460/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_460/zeros_1Fill lstm_460/zeros_1/packed:output:0lstm_460/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_460/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_460/transpose	Transposelstm_459/transpose_1:y:0 lstm_460/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_460/Shape_1Shapelstm_460/transpose:y:0*
T0*
_output_shapes
:h
lstm_460/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_460/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_1StridedSlicelstm_460/Shape_1:output:0'lstm_460/strided_slice_1/stack:output:0)lstm_460/strided_slice_1/stack_1:output:0)lstm_460/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_460/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_460/TensorArrayV2TensorListReserve-lstm_460/TensorArrayV2/element_shape:output:0!lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_460/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_460/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_460/transpose:y:0Glstm_460/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_460/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_460/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_2StridedSlicelstm_460/transpose:y:0'lstm_460/strided_slice_2/stack:output:0)lstm_460/strided_slice_2/stack_1:output:0)lstm_460/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_460/lstm_cell_565/MatMul/ReadVariableOpReadVariableOp5lstm_460_lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_460/lstm_cell_565/MatMulMatMul!lstm_460/strided_slice_2:output:04lstm_460/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_460/lstm_cell_565/MatMul_1MatMullstm_460/zeros:output:06lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_460/lstm_cell_565/addAddV2'lstm_460/lstm_cell_565/MatMul:product:0)lstm_460/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp6lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_460/lstm_cell_565/BiasAddBiasAddlstm_460/lstm_cell_565/add:z:05lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_460/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_460/lstm_cell_565/splitSplit/lstm_460/lstm_cell_565/split/split_dim:output:0'lstm_460/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_460/lstm_cell_565/SigmoidSigmoid%lstm_460/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_460/lstm_cell_565/Sigmoid_1Sigmoid%lstm_460/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mulMul$lstm_460/lstm_cell_565/Sigmoid_1:y:0lstm_460/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_460/lstm_cell_565/ReluRelu%lstm_460/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mul_1Mul"lstm_460/lstm_cell_565/Sigmoid:y:0)lstm_460/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/add_1AddV2lstm_460/lstm_cell_565/mul:z:0 lstm_460/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_460/lstm_cell_565/Sigmoid_2Sigmoid%lstm_460/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_460/lstm_cell_565/Relu_1Relu lstm_460/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_460/lstm_cell_565/mul_2Mul$lstm_460/lstm_cell_565/Sigmoid_2:y:0+lstm_460/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_460/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_460/TensorArrayV2_1TensorListReserve/lstm_460/TensorArrayV2_1/element_shape:output:0!lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_460/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_460/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_460/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_460/whileWhile$lstm_460/while/loop_counter:output:0*lstm_460/while/maximum_iterations:output:0lstm_460/time:output:0!lstm_460/TensorArrayV2_1:handle:0lstm_460/zeros:output:0lstm_460/zeros_1:output:0!lstm_460/strided_slice_1:output:0@lstm_460/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_460_lstm_cell_565_matmul_readvariableop_resource7lstm_460_lstm_cell_565_matmul_1_readvariableop_resource6lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
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
lstm_460_while_body_3426575*'
condR
lstm_460_while_cond_3426574*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_460/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_460/TensorArrayV2Stack/TensorListStackTensorListStacklstm_460/while:output:3Blstm_460/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_460/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_460/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_460/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_460/strided_slice_3StridedSlice4lstm_460/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_460/strided_slice_3/stack:output:0)lstm_460/strided_slice_3/stack_1:output:0)lstm_460/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_460/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_460/transpose_1	Transpose4lstm_460/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_460/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_460/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_461/ShapeShapelstm_460/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_461/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_461/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_461/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_sliceStridedSlicelstm_461/Shape:output:0%lstm_461/strided_slice/stack:output:0'lstm_461/strided_slice/stack_1:output:0'lstm_461/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_461/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_461/zeros/packedPacklstm_461/strided_slice:output:0 lstm_461/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_461/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_461/zerosFilllstm_461/zeros/packed:output:0lstm_461/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_461/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_461/zeros_1/packedPacklstm_461/strided_slice:output:0"lstm_461/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_461/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_461/zeros_1Fill lstm_461/zeros_1/packed:output:0lstm_461/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_461/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_461/transpose	Transposelstm_460/transpose_1:y:0 lstm_461/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_461/Shape_1Shapelstm_461/transpose:y:0*
T0*
_output_shapes
:h
lstm_461/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_461/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_1StridedSlicelstm_461/Shape_1:output:0'lstm_461/strided_slice_1/stack:output:0)lstm_461/strided_slice_1/stack_1:output:0)lstm_461/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_461/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_461/TensorArrayV2TensorListReserve-lstm_461/TensorArrayV2/element_shape:output:0!lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_461/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_461/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_461/transpose:y:0Glstm_461/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_461/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_461/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_2StridedSlicelstm_461/transpose:y:0'lstm_461/strided_slice_2/stack:output:0)lstm_461/strided_slice_2/stack_1:output:0)lstm_461/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_461/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp5lstm_461_lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_461/lstm_cell_566/MatMulMatMul!lstm_461/strided_slice_2:output:04lstm_461/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_461/lstm_cell_566/MatMul_1MatMullstm_461/zeros:output:06lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_461/lstm_cell_566/addAddV2'lstm_461/lstm_cell_566/MatMul:product:0)lstm_461/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp6lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_461/lstm_cell_566/BiasAddBiasAddlstm_461/lstm_cell_566/add:z:05lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_461/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_461/lstm_cell_566/splitSplit/lstm_461/lstm_cell_566/split/split_dim:output:0'lstm_461/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_461/lstm_cell_566/SigmoidSigmoid%lstm_461/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_461/lstm_cell_566/Sigmoid_1Sigmoid%lstm_461/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mulMul$lstm_461/lstm_cell_566/Sigmoid_1:y:0lstm_461/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_461/lstm_cell_566/ReluRelu%lstm_461/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mul_1Mul"lstm_461/lstm_cell_566/Sigmoid:y:0)lstm_461/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/add_1AddV2lstm_461/lstm_cell_566/mul:z:0 lstm_461/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_461/lstm_cell_566/Sigmoid_2Sigmoid%lstm_461/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_461/lstm_cell_566/Relu_1Relu lstm_461/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_461/lstm_cell_566/mul_2Mul$lstm_461/lstm_cell_566/Sigmoid_2:y:0+lstm_461/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_461/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_461/TensorArrayV2_1TensorListReserve/lstm_461/TensorArrayV2_1/element_shape:output:0!lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_461/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_461/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_461/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_461/whileWhile$lstm_461/while/loop_counter:output:0*lstm_461/while/maximum_iterations:output:0lstm_461/time:output:0!lstm_461/TensorArrayV2_1:handle:0lstm_461/zeros:output:0lstm_461/zeros_1:output:0!lstm_461/strided_slice_1:output:0@lstm_461/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_461_lstm_cell_566_matmul_readvariableop_resource7lstm_461_lstm_cell_566_matmul_1_readvariableop_resource6lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
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
lstm_461_while_body_3426714*'
condR
lstm_461_while_cond_3426713*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_461/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_461/TensorArrayV2Stack/TensorListStackTensorListStacklstm_461/while:output:3Blstm_461/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_461/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_461/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_461/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_461/strided_slice_3StridedSlice4lstm_461/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_461/strided_slice_3/stack:output:0)lstm_461/strided_slice_3/stack_1:output:0)lstm_461/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_461/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_461/transpose_1	Transpose4lstm_461/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_461/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_461/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_153/MatMulMatMul!lstm_461/strided_slice_3:output:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp.^lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp-^lstm_459/lstm_cell_564/MatMul/ReadVariableOp/^lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp^lstm_459/while.^lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp-^lstm_460/lstm_cell_565/MatMul/ReadVariableOp/^lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp^lstm_460/while.^lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp-^lstm_461/lstm_cell_566/MatMul/ReadVariableOp/^lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp^lstm_461/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp2^
-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp-lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp2\
,lstm_459/lstm_cell_564/MatMul/ReadVariableOp,lstm_459/lstm_cell_564/MatMul/ReadVariableOp2`
.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp.lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp2 
lstm_459/whilelstm_459/while2^
-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp-lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp2\
,lstm_460/lstm_cell_565/MatMul/ReadVariableOp,lstm_460/lstm_cell_565/MatMul/ReadVariableOp2`
.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp.lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp2 
lstm_460/whilelstm_460/while2^
-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp-lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp2\
,lstm_461/lstm_cell_566/MatMul/ReadVariableOp,lstm_461/lstm_cell_566/MatMul/ReadVariableOp2`
.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp.lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp2 
lstm_461/whilelstm_461/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3424143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3424143___redundant_placeholder05
1while_while_cond_3424143___redundant_placeholder15
1while_while_cond_3424143___redundant_placeholder25
1while_while_cond_3424143___redundant_placeholder3
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
while_cond_3426023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3426023___redundant_placeholder05
1while_while_cond_3426023___redundant_placeholder15
1while_while_cond_3426023___redundant_placeholder25
1while_while_cond_3426023___redundant_placeholder3
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
?W
?
 __inference__traced_save_3429535
file_prefix/
+savev2_dense_153_kernel_read_readvariableop-
)savev2_dense_153_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_459_lstm_cell_459_kernel_read_readvariableopF
Bsavev2_lstm_459_lstm_cell_459_recurrent_kernel_read_readvariableop:
6savev2_lstm_459_lstm_cell_459_bias_read_readvariableop<
8savev2_lstm_460_lstm_cell_460_kernel_read_readvariableopF
Bsavev2_lstm_460_lstm_cell_460_recurrent_kernel_read_readvariableop:
6savev2_lstm_460_lstm_cell_460_bias_read_readvariableop<
8savev2_lstm_461_lstm_cell_461_kernel_read_readvariableopF
Bsavev2_lstm_461_lstm_cell_461_recurrent_kernel_read_readvariableop:
6savev2_lstm_461_lstm_cell_461_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_153_kernel_m_read_readvariableop4
0savev2_adam_dense_153_bias_m_read_readvariableopC
?savev2_adam_lstm_459_lstm_cell_459_kernel_m_read_readvariableopM
Isavev2_adam_lstm_459_lstm_cell_459_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_459_lstm_cell_459_bias_m_read_readvariableopC
?savev2_adam_lstm_460_lstm_cell_460_kernel_m_read_readvariableopM
Isavev2_adam_lstm_460_lstm_cell_460_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_460_lstm_cell_460_bias_m_read_readvariableopC
?savev2_adam_lstm_461_lstm_cell_461_kernel_m_read_readvariableopM
Isavev2_adam_lstm_461_lstm_cell_461_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_461_lstm_cell_461_bias_m_read_readvariableop6
2savev2_adam_dense_153_kernel_v_read_readvariableop4
0savev2_adam_dense_153_bias_v_read_readvariableopC
?savev2_adam_lstm_459_lstm_cell_459_kernel_v_read_readvariableopM
Isavev2_adam_lstm_459_lstm_cell_459_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_459_lstm_cell_459_bias_v_read_readvariableopC
?savev2_adam_lstm_460_lstm_cell_460_kernel_v_read_readvariableopM
Isavev2_adam_lstm_460_lstm_cell_460_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_460_lstm_cell_460_bias_v_read_readvariableopC
?savev2_adam_lstm_461_lstm_cell_461_kernel_v_read_readvariableopM
Isavev2_adam_lstm_461_lstm_cell_461_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_461_lstm_cell_461_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_153_kernel_read_readvariableop)savev2_dense_153_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_459_lstm_cell_459_kernel_read_readvariableopBsavev2_lstm_459_lstm_cell_459_recurrent_kernel_read_readvariableop6savev2_lstm_459_lstm_cell_459_bias_read_readvariableop8savev2_lstm_460_lstm_cell_460_kernel_read_readvariableopBsavev2_lstm_460_lstm_cell_460_recurrent_kernel_read_readvariableop6savev2_lstm_460_lstm_cell_460_bias_read_readvariableop8savev2_lstm_461_lstm_cell_461_kernel_read_readvariableopBsavev2_lstm_461_lstm_cell_461_recurrent_kernel_read_readvariableop6savev2_lstm_461_lstm_cell_461_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_153_kernel_m_read_readvariableop0savev2_adam_dense_153_bias_m_read_readvariableop?savev2_adam_lstm_459_lstm_cell_459_kernel_m_read_readvariableopIsavev2_adam_lstm_459_lstm_cell_459_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_459_lstm_cell_459_bias_m_read_readvariableop?savev2_adam_lstm_460_lstm_cell_460_kernel_m_read_readvariableopIsavev2_adam_lstm_460_lstm_cell_460_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_460_lstm_cell_460_bias_m_read_readvariableop?savev2_adam_lstm_461_lstm_cell_461_kernel_m_read_readvariableopIsavev2_adam_lstm_461_lstm_cell_461_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_461_lstm_cell_461_bias_m_read_readvariableop2savev2_adam_dense_153_kernel_v_read_readvariableop0savev2_adam_dense_153_bias_v_read_readvariableop?savev2_adam_lstm_459_lstm_cell_459_kernel_v_read_readvariableopIsavev2_adam_lstm_459_lstm_cell_459_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_459_lstm_cell_459_bias_v_read_readvariableop?savev2_adam_lstm_460_lstm_cell_460_kernel_v_read_readvariableopIsavev2_adam_lstm_460_lstm_cell_460_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_460_lstm_cell_460_bias_v_read_readvariableop?savev2_adam_lstm_461_lstm_cell_461_kernel_v_read_readvariableopIsavev2_adam_lstm_461_lstm_cell_461_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_461_lstm_cell_461_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
*__inference_lstm_459_layer_call_fn_3427264

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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3425262s
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
?
/__inference_lstm_cell_566_layer_call_fn_3429328

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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424976o
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

?
0__inference_sequential_153_layer_call_fn_3426350

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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3425587o
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
while_cond_3428378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428378___redundant_placeholder05
1while_while_cond_3428378___redundant_placeholder15
1while_while_cond_3428378___redundant_placeholder25
1while_while_cond_3428378___redundant_placeholder3
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
while_body_3427334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428463

inputs?
,lstm_cell_565_matmul_readvariableop_resource:	d?A
.lstm_cell_565_matmul_1_readvariableop_resource:	2?<
-lstm_cell_565_biasadd_readvariableop_resource:	?
identity??$lstm_cell_565/BiasAdd/ReadVariableOp?#lstm_cell_565/MatMul/ReadVariableOp?%lstm_cell_565/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_565/MatMul/ReadVariableOpReadVariableOp,lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_565/MatMulMatMulstrided_slice_2:output:0+lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_565/MatMul_1MatMulzeros:output:0-lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_565/addAddV2lstm_cell_565/MatMul:product:0 lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_565/BiasAddBiasAddlstm_cell_565/add:z:0,lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_565/splitSplit&lstm_cell_565/split/split_dim:output:0lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_565/SigmoidSigmoidlstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_1Sigmoidlstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_565/mulMullstm_cell_565/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_565/ReluRelulstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_1Mullstm_cell_565/Sigmoid:y:0 lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_565/add_1AddV2lstm_cell_565/mul:z:0lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_565/Sigmoid_2Sigmoidlstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_565/Relu_1Relulstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_565/mul_2Mullstm_cell_565/Sigmoid_2:y:0"lstm_cell_565/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_565_matmul_readvariableop_resource.lstm_cell_565_matmul_1_readvariableop_resource-lstm_cell_565_biasadd_readvariableop_resource*
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
while_body_3428379*
condR
while_cond_3428378*K
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
NoOpNoOp%^lstm_cell_565/BiasAdd/ReadVariableOp$^lstm_cell_565/MatMul/ReadVariableOp&^lstm_cell_565/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_565/BiasAdd/ReadVariableOp$lstm_cell_565/BiasAdd/ReadVariableOp2J
#lstm_cell_565/MatMul/ReadVariableOp#lstm_cell_565/MatMul/ReadVariableOp2N
%lstm_cell_565/MatMul_1/ReadVariableOp%lstm_cell_565/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3424684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3424684___redundant_placeholder05
1while_while_cond_3424684___redundant_placeholder15
1while_while_cond_3424684___redundant_placeholder25
1while_while_cond_3424684___redundant_placeholder3
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3424976

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
?C
?

lstm_461_while_body_3426714.
*lstm_461_while_lstm_461_while_loop_counter4
0lstm_461_while_lstm_461_while_maximum_iterations
lstm_461_while_placeholder 
lstm_461_while_placeholder_1 
lstm_461_while_placeholder_2 
lstm_461_while_placeholder_3-
)lstm_461_while_lstm_461_strided_slice_1_0i
elstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0:2(Q
?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(L
>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0:(
lstm_461_while_identity
lstm_461_while_identity_1
lstm_461_while_identity_2
lstm_461_while_identity_3
lstm_461_while_identity_4
lstm_461_while_identity_5+
'lstm_461_while_lstm_461_strided_slice_1g
clstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensorM
;lstm_461_while_lstm_cell_566_matmul_readvariableop_resource:2(O
=lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource:
(J
<lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource:(??3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp?2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp?4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp?
@lstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_461/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0lstm_461_while_placeholderIlstm_461/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_461/while/lstm_cell_566/MatMulMatMul9lstm_461/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_461/while/lstm_cell_566/MatMul_1MatMullstm_461_while_placeholder_2<lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_461/while/lstm_cell_566/addAddV2-lstm_461/while/lstm_cell_566/MatMul:product:0/lstm_461/while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_461/while/lstm_cell_566/BiasAddBiasAdd$lstm_461/while/lstm_cell_566/add:z:0;lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_461/while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_461/while/lstm_cell_566/splitSplit5lstm_461/while/lstm_cell_566/split/split_dim:output:0-lstm_461/while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_461/while/lstm_cell_566/SigmoidSigmoid+lstm_461/while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_461/while/lstm_cell_566/Sigmoid_1Sigmoid+lstm_461/while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_461/while/lstm_cell_566/mulMul*lstm_461/while/lstm_cell_566/Sigmoid_1:y:0lstm_461_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_461/while/lstm_cell_566/ReluRelu+lstm_461/while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/mul_1Mul(lstm_461/while/lstm_cell_566/Sigmoid:y:0/lstm_461/while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/add_1AddV2$lstm_461/while/lstm_cell_566/mul:z:0&lstm_461/while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_461/while/lstm_cell_566/Sigmoid_2Sigmoid+lstm_461/while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_461/while/lstm_cell_566/Relu_1Relu&lstm_461/while/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_461/while/lstm_cell_566/mul_2Mul*lstm_461/while/lstm_cell_566/Sigmoid_2:y:01lstm_461/while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_461/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_461_while_placeholder_1lstm_461_while_placeholder&lstm_461/while/lstm_cell_566/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_461/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_461/while/addAddV2lstm_461_while_placeholderlstm_461/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_461/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_461/while/add_1AddV2*lstm_461_while_lstm_461_while_loop_counterlstm_461/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_461/while/IdentityIdentitylstm_461/while/add_1:z:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_1Identity0lstm_461_while_lstm_461_while_maximum_iterations^lstm_461/while/NoOp*
T0*
_output_shapes
: t
lstm_461/while/Identity_2Identitylstm_461/while/add:z:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_3IdentityClstm_461/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_461/while/NoOp*
T0*
_output_shapes
: ?
lstm_461/while/Identity_4Identity&lstm_461/while/lstm_cell_566/mul_2:z:0^lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_461/while/Identity_5Identity&lstm_461/while/lstm_cell_566/add_1:z:0^lstm_461/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_461/while/NoOpNoOp4^lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp3^lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp5^lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_461_while_identity lstm_461/while/Identity:output:0"?
lstm_461_while_identity_1"lstm_461/while/Identity_1:output:0"?
lstm_461_while_identity_2"lstm_461/while/Identity_2:output:0"?
lstm_461_while_identity_3"lstm_461/while/Identity_3:output:0"?
lstm_461_while_identity_4"lstm_461/while/Identity_4:output:0"?
lstm_461_while_identity_5"lstm_461/while/Identity_5:output:0"T
'lstm_461_while_lstm_461_strided_slice_1)lstm_461_while_lstm_461_strided_slice_1_0"~
<lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource>lstm_461_while_lstm_cell_566_biasadd_readvariableop_resource_0"?
=lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource?lstm_461_while_lstm_cell_566_matmul_1_readvariableop_resource_0"|
;lstm_461_while_lstm_cell_566_matmul_readvariableop_resource=lstm_461_while_lstm_cell_566_matmul_readvariableop_resource_0"?
clstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensorelstm_461_while_tensorarrayv2read_tensorlistgetitem_lstm_461_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp3lstm_461/while/lstm_cell_566/BiasAdd/ReadVariableOp2h
2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp2lstm_461/while/lstm_cell_566/MatMul/ReadVariableOp2l
4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp4lstm_461/while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3424063
lstm_459_inputW
Dsequential_153_lstm_459_lstm_cell_564_matmul_readvariableop_resource:	?Y
Fsequential_153_lstm_459_lstm_cell_564_matmul_1_readvariableop_resource:	d?T
Esequential_153_lstm_459_lstm_cell_564_biasadd_readvariableop_resource:	?W
Dsequential_153_lstm_460_lstm_cell_565_matmul_readvariableop_resource:	d?Y
Fsequential_153_lstm_460_lstm_cell_565_matmul_1_readvariableop_resource:	2?T
Esequential_153_lstm_460_lstm_cell_565_biasadd_readvariableop_resource:	?V
Dsequential_153_lstm_461_lstm_cell_566_matmul_readvariableop_resource:2(X
Fsequential_153_lstm_461_lstm_cell_566_matmul_1_readvariableop_resource:
(S
Esequential_153_lstm_461_lstm_cell_566_biasadd_readvariableop_resource:(I
7sequential_153_dense_153_matmul_readvariableop_resource:
F
8sequential_153_dense_153_biasadd_readvariableop_resource:
identity??/sequential_153/dense_153/BiasAdd/ReadVariableOp?.sequential_153/dense_153/MatMul/ReadVariableOp?<sequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp?;sequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOp?=sequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp?sequential_153/lstm_459/while?<sequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp?;sequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOp?=sequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp?sequential_153/lstm_460/while?<sequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp?;sequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOp?=sequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp?sequential_153/lstm_461/while[
sequential_153/lstm_459/ShapeShapelstm_459_input*
T0*
_output_shapes
:u
+sequential_153/lstm_459/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_153/lstm_459/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_153/lstm_459/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_153/lstm_459/strided_sliceStridedSlice&sequential_153/lstm_459/Shape:output:04sequential_153/lstm_459/strided_slice/stack:output:06sequential_153/lstm_459/strided_slice/stack_1:output:06sequential_153/lstm_459/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_153/lstm_459/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_153/lstm_459/zeros/packedPack.sequential_153/lstm_459/strided_slice:output:0/sequential_153/lstm_459/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_153/lstm_459/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_459/zerosFill-sequential_153/lstm_459/zeros/packed:output:0,sequential_153/lstm_459/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_153/lstm_459/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_153/lstm_459/zeros_1/packedPack.sequential_153/lstm_459/strided_slice:output:01sequential_153/lstm_459/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_153/lstm_459/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_459/zeros_1Fill/sequential_153/lstm_459/zeros_1/packed:output:0.sequential_153/lstm_459/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_153/lstm_459/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_153/lstm_459/transpose	Transposelstm_459_input/sequential_153/lstm_459/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_153/lstm_459/Shape_1Shape%sequential_153/lstm_459/transpose:y:0*
T0*
_output_shapes
:w
-sequential_153/lstm_459/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_459/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_459/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_459/strided_slice_1StridedSlice(sequential_153/lstm_459/Shape_1:output:06sequential_153/lstm_459/strided_slice_1/stack:output:08sequential_153/lstm_459/strided_slice_1/stack_1:output:08sequential_153/lstm_459/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_153/lstm_459/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_153/lstm_459/TensorArrayV2TensorListReserve<sequential_153/lstm_459/TensorArrayV2/element_shape:output:00sequential_153/lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_153/lstm_459/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_153/lstm_459/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_153/lstm_459/transpose:y:0Vsequential_153/lstm_459/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_153/lstm_459/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_459/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_459/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_459/strided_slice_2StridedSlice%sequential_153/lstm_459/transpose:y:06sequential_153/lstm_459/strided_slice_2/stack:output:08sequential_153/lstm_459/strided_slice_2/stack_1:output:08sequential_153/lstm_459/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOpReadVariableOpDsequential_153_lstm_459_lstm_cell_564_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_153/lstm_459/lstm_cell_564/MatMulMatMul0sequential_153/lstm_459/strided_slice_2:output:0Csequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOpFsequential_153_lstm_459_lstm_cell_564_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_153/lstm_459/lstm_cell_564/MatMul_1MatMul&sequential_153/lstm_459/zeros:output:0Esequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_153/lstm_459/lstm_cell_564/addAddV26sequential_153/lstm_459/lstm_cell_564/MatMul:product:08sequential_153/lstm_459/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOpEsequential_153_lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_153/lstm_459/lstm_cell_564/BiasAddBiasAdd-sequential_153/lstm_459/lstm_cell_564/add:z:0Dsequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_153/lstm_459/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_153/lstm_459/lstm_cell_564/splitSplit>sequential_153/lstm_459/lstm_cell_564/split/split_dim:output:06sequential_153/lstm_459/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_153/lstm_459/lstm_cell_564/SigmoidSigmoid4sequential_153/lstm_459/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_153/lstm_459/lstm_cell_564/Sigmoid_1Sigmoid4sequential_153/lstm_459/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_153/lstm_459/lstm_cell_564/mulMul3sequential_153/lstm_459/lstm_cell_564/Sigmoid_1:y:0(sequential_153/lstm_459/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_153/lstm_459/lstm_cell_564/ReluRelu4sequential_153/lstm_459/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_153/lstm_459/lstm_cell_564/mul_1Mul1sequential_153/lstm_459/lstm_cell_564/Sigmoid:y:08sequential_153/lstm_459/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_153/lstm_459/lstm_cell_564/add_1AddV2-sequential_153/lstm_459/lstm_cell_564/mul:z:0/sequential_153/lstm_459/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_153/lstm_459/lstm_cell_564/Sigmoid_2Sigmoid4sequential_153/lstm_459/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_153/lstm_459/lstm_cell_564/Relu_1Relu/sequential_153/lstm_459/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_153/lstm_459/lstm_cell_564/mul_2Mul3sequential_153/lstm_459/lstm_cell_564/Sigmoid_2:y:0:sequential_153/lstm_459/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_153/lstm_459/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_153/lstm_459/TensorArrayV2_1TensorListReserve>sequential_153/lstm_459/TensorArrayV2_1/element_shape:output:00sequential_153/lstm_459/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_153/lstm_459/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_153/lstm_459/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_153/lstm_459/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_153/lstm_459/whileWhile3sequential_153/lstm_459/while/loop_counter:output:09sequential_153/lstm_459/while/maximum_iterations:output:0%sequential_153/lstm_459/time:output:00sequential_153/lstm_459/TensorArrayV2_1:handle:0&sequential_153/lstm_459/zeros:output:0(sequential_153/lstm_459/zeros_1:output:00sequential_153/lstm_459/strided_slice_1:output:0Osequential_153/lstm_459/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_153_lstm_459_lstm_cell_564_matmul_readvariableop_resourceFsequential_153_lstm_459_lstm_cell_564_matmul_1_readvariableop_resourceEsequential_153_lstm_459_lstm_cell_564_biasadd_readvariableop_resource*
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
*sequential_153_lstm_459_while_body_3423695*6
cond.R,
*sequential_153_lstm_459_while_cond_3423694*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_153/lstm_459/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_153/lstm_459/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_153/lstm_459/while:output:3Qsequential_153/lstm_459/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_153/lstm_459/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_153/lstm_459/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_459/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_459/strided_slice_3StridedSliceCsequential_153/lstm_459/TensorArrayV2Stack/TensorListStack:tensor:06sequential_153/lstm_459/strided_slice_3/stack:output:08sequential_153/lstm_459/strided_slice_3/stack_1:output:08sequential_153/lstm_459/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_153/lstm_459/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_153/lstm_459/transpose_1	TransposeCsequential_153/lstm_459/TensorArrayV2Stack/TensorListStack:tensor:01sequential_153/lstm_459/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_153/lstm_459/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_153/lstm_460/ShapeShape'sequential_153/lstm_459/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_153/lstm_460/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_153/lstm_460/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_153/lstm_460/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_153/lstm_460/strided_sliceStridedSlice&sequential_153/lstm_460/Shape:output:04sequential_153/lstm_460/strided_slice/stack:output:06sequential_153/lstm_460/strided_slice/stack_1:output:06sequential_153/lstm_460/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_153/lstm_460/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_153/lstm_460/zeros/packedPack.sequential_153/lstm_460/strided_slice:output:0/sequential_153/lstm_460/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_153/lstm_460/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_460/zerosFill-sequential_153/lstm_460/zeros/packed:output:0,sequential_153/lstm_460/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_153/lstm_460/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_153/lstm_460/zeros_1/packedPack.sequential_153/lstm_460/strided_slice:output:01sequential_153/lstm_460/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_153/lstm_460/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_460/zeros_1Fill/sequential_153/lstm_460/zeros_1/packed:output:0.sequential_153/lstm_460/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_153/lstm_460/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_153/lstm_460/transpose	Transpose'sequential_153/lstm_459/transpose_1:y:0/sequential_153/lstm_460/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_153/lstm_460/Shape_1Shape%sequential_153/lstm_460/transpose:y:0*
T0*
_output_shapes
:w
-sequential_153/lstm_460/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_460/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_460/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_460/strided_slice_1StridedSlice(sequential_153/lstm_460/Shape_1:output:06sequential_153/lstm_460/strided_slice_1/stack:output:08sequential_153/lstm_460/strided_slice_1/stack_1:output:08sequential_153/lstm_460/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_153/lstm_460/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_153/lstm_460/TensorArrayV2TensorListReserve<sequential_153/lstm_460/TensorArrayV2/element_shape:output:00sequential_153/lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_153/lstm_460/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_153/lstm_460/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_153/lstm_460/transpose:y:0Vsequential_153/lstm_460/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_153/lstm_460/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_460/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_460/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_460/strided_slice_2StridedSlice%sequential_153/lstm_460/transpose:y:06sequential_153/lstm_460/strided_slice_2/stack:output:08sequential_153/lstm_460/strided_slice_2/stack_1:output:08sequential_153/lstm_460/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOpReadVariableOpDsequential_153_lstm_460_lstm_cell_565_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_153/lstm_460/lstm_cell_565/MatMulMatMul0sequential_153/lstm_460/strided_slice_2:output:0Csequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOpReadVariableOpFsequential_153_lstm_460_lstm_cell_565_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_153/lstm_460/lstm_cell_565/MatMul_1MatMul&sequential_153/lstm_460/zeros:output:0Esequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_153/lstm_460/lstm_cell_565/addAddV26sequential_153/lstm_460/lstm_cell_565/MatMul:product:08sequential_153/lstm_460/lstm_cell_565/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOpReadVariableOpEsequential_153_lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_153/lstm_460/lstm_cell_565/BiasAddBiasAdd-sequential_153/lstm_460/lstm_cell_565/add:z:0Dsequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_153/lstm_460/lstm_cell_565/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_153/lstm_460/lstm_cell_565/splitSplit>sequential_153/lstm_460/lstm_cell_565/split/split_dim:output:06sequential_153/lstm_460/lstm_cell_565/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_153/lstm_460/lstm_cell_565/SigmoidSigmoid4sequential_153/lstm_460/lstm_cell_565/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_153/lstm_460/lstm_cell_565/Sigmoid_1Sigmoid4sequential_153/lstm_460/lstm_cell_565/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_153/lstm_460/lstm_cell_565/mulMul3sequential_153/lstm_460/lstm_cell_565/Sigmoid_1:y:0(sequential_153/lstm_460/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_153/lstm_460/lstm_cell_565/ReluRelu4sequential_153/lstm_460/lstm_cell_565/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_153/lstm_460/lstm_cell_565/mul_1Mul1sequential_153/lstm_460/lstm_cell_565/Sigmoid:y:08sequential_153/lstm_460/lstm_cell_565/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_153/lstm_460/lstm_cell_565/add_1AddV2-sequential_153/lstm_460/lstm_cell_565/mul:z:0/sequential_153/lstm_460/lstm_cell_565/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_153/lstm_460/lstm_cell_565/Sigmoid_2Sigmoid4sequential_153/lstm_460/lstm_cell_565/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_153/lstm_460/lstm_cell_565/Relu_1Relu/sequential_153/lstm_460/lstm_cell_565/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_153/lstm_460/lstm_cell_565/mul_2Mul3sequential_153/lstm_460/lstm_cell_565/Sigmoid_2:y:0:sequential_153/lstm_460/lstm_cell_565/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_153/lstm_460/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_153/lstm_460/TensorArrayV2_1TensorListReserve>sequential_153/lstm_460/TensorArrayV2_1/element_shape:output:00sequential_153/lstm_460/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_153/lstm_460/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_153/lstm_460/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_153/lstm_460/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_153/lstm_460/whileWhile3sequential_153/lstm_460/while/loop_counter:output:09sequential_153/lstm_460/while/maximum_iterations:output:0%sequential_153/lstm_460/time:output:00sequential_153/lstm_460/TensorArrayV2_1:handle:0&sequential_153/lstm_460/zeros:output:0(sequential_153/lstm_460/zeros_1:output:00sequential_153/lstm_460/strided_slice_1:output:0Osequential_153/lstm_460/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_153_lstm_460_lstm_cell_565_matmul_readvariableop_resourceFsequential_153_lstm_460_lstm_cell_565_matmul_1_readvariableop_resourceEsequential_153_lstm_460_lstm_cell_565_biasadd_readvariableop_resource*
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
*sequential_153_lstm_460_while_body_3423834*6
cond.R,
*sequential_153_lstm_460_while_cond_3423833*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_153/lstm_460/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_153/lstm_460/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_153/lstm_460/while:output:3Qsequential_153/lstm_460/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_153/lstm_460/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_153/lstm_460/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_460/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_460/strided_slice_3StridedSliceCsequential_153/lstm_460/TensorArrayV2Stack/TensorListStack:tensor:06sequential_153/lstm_460/strided_slice_3/stack:output:08sequential_153/lstm_460/strided_slice_3/stack_1:output:08sequential_153/lstm_460/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_153/lstm_460/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_153/lstm_460/transpose_1	TransposeCsequential_153/lstm_460/TensorArrayV2Stack/TensorListStack:tensor:01sequential_153/lstm_460/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_153/lstm_460/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_153/lstm_461/ShapeShape'sequential_153/lstm_460/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_153/lstm_461/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_153/lstm_461/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_153/lstm_461/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_153/lstm_461/strided_sliceStridedSlice&sequential_153/lstm_461/Shape:output:04sequential_153/lstm_461/strided_slice/stack:output:06sequential_153/lstm_461/strided_slice/stack_1:output:06sequential_153/lstm_461/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_153/lstm_461/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_153/lstm_461/zeros/packedPack.sequential_153/lstm_461/strided_slice:output:0/sequential_153/lstm_461/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_153/lstm_461/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_461/zerosFill-sequential_153/lstm_461/zeros/packed:output:0,sequential_153/lstm_461/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_153/lstm_461/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_153/lstm_461/zeros_1/packedPack.sequential_153/lstm_461/strided_slice:output:01sequential_153/lstm_461/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_153/lstm_461/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_153/lstm_461/zeros_1Fill/sequential_153/lstm_461/zeros_1/packed:output:0.sequential_153/lstm_461/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_153/lstm_461/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_153/lstm_461/transpose	Transpose'sequential_153/lstm_460/transpose_1:y:0/sequential_153/lstm_461/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_153/lstm_461/Shape_1Shape%sequential_153/lstm_461/transpose:y:0*
T0*
_output_shapes
:w
-sequential_153/lstm_461/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_461/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_461/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_461/strided_slice_1StridedSlice(sequential_153/lstm_461/Shape_1:output:06sequential_153/lstm_461/strided_slice_1/stack:output:08sequential_153/lstm_461/strided_slice_1/stack_1:output:08sequential_153/lstm_461/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_153/lstm_461/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_153/lstm_461/TensorArrayV2TensorListReserve<sequential_153/lstm_461/TensorArrayV2/element_shape:output:00sequential_153/lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_153/lstm_461/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_153/lstm_461/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_153/lstm_461/transpose:y:0Vsequential_153/lstm_461/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_153/lstm_461/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_461/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_153/lstm_461/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_461/strided_slice_2StridedSlice%sequential_153/lstm_461/transpose:y:06sequential_153/lstm_461/strided_slice_2/stack:output:08sequential_153/lstm_461/strided_slice_2/stack_1:output:08sequential_153/lstm_461/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOpReadVariableOpDsequential_153_lstm_461_lstm_cell_566_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_153/lstm_461/lstm_cell_566/MatMulMatMul0sequential_153/lstm_461/strided_slice_2:output:0Csequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOpFsequential_153_lstm_461_lstm_cell_566_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_153/lstm_461/lstm_cell_566/MatMul_1MatMul&sequential_153/lstm_461/zeros:output:0Esequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_153/lstm_461/lstm_cell_566/addAddV26sequential_153/lstm_461/lstm_cell_566/MatMul:product:08sequential_153/lstm_461/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOpEsequential_153_lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_153/lstm_461/lstm_cell_566/BiasAddBiasAdd-sequential_153/lstm_461/lstm_cell_566/add:z:0Dsequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_153/lstm_461/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_153/lstm_461/lstm_cell_566/splitSplit>sequential_153/lstm_461/lstm_cell_566/split/split_dim:output:06sequential_153/lstm_461/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_153/lstm_461/lstm_cell_566/SigmoidSigmoid4sequential_153/lstm_461/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_153/lstm_461/lstm_cell_566/Sigmoid_1Sigmoid4sequential_153/lstm_461/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_153/lstm_461/lstm_cell_566/mulMul3sequential_153/lstm_461/lstm_cell_566/Sigmoid_1:y:0(sequential_153/lstm_461/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_153/lstm_461/lstm_cell_566/ReluRelu4sequential_153/lstm_461/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_153/lstm_461/lstm_cell_566/mul_1Mul1sequential_153/lstm_461/lstm_cell_566/Sigmoid:y:08sequential_153/lstm_461/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_153/lstm_461/lstm_cell_566/add_1AddV2-sequential_153/lstm_461/lstm_cell_566/mul:z:0/sequential_153/lstm_461/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_153/lstm_461/lstm_cell_566/Sigmoid_2Sigmoid4sequential_153/lstm_461/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_153/lstm_461/lstm_cell_566/Relu_1Relu/sequential_153/lstm_461/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_153/lstm_461/lstm_cell_566/mul_2Mul3sequential_153/lstm_461/lstm_cell_566/Sigmoid_2:y:0:sequential_153/lstm_461/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_153/lstm_461/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_153/lstm_461/TensorArrayV2_1TensorListReserve>sequential_153/lstm_461/TensorArrayV2_1/element_shape:output:00sequential_153/lstm_461/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_153/lstm_461/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_153/lstm_461/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_153/lstm_461/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_153/lstm_461/whileWhile3sequential_153/lstm_461/while/loop_counter:output:09sequential_153/lstm_461/while/maximum_iterations:output:0%sequential_153/lstm_461/time:output:00sequential_153/lstm_461/TensorArrayV2_1:handle:0&sequential_153/lstm_461/zeros:output:0(sequential_153/lstm_461/zeros_1:output:00sequential_153/lstm_461/strided_slice_1:output:0Osequential_153/lstm_461/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_153_lstm_461_lstm_cell_566_matmul_readvariableop_resourceFsequential_153_lstm_461_lstm_cell_566_matmul_1_readvariableop_resourceEsequential_153_lstm_461_lstm_cell_566_biasadd_readvariableop_resource*
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
*sequential_153_lstm_461_while_body_3423973*6
cond.R,
*sequential_153_lstm_461_while_cond_3423972*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_153/lstm_461/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_153/lstm_461/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_153/lstm_461/while:output:3Qsequential_153/lstm_461/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_153/lstm_461/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_153/lstm_461/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_153/lstm_461/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_153/lstm_461/strided_slice_3StridedSliceCsequential_153/lstm_461/TensorArrayV2Stack/TensorListStack:tensor:06sequential_153/lstm_461/strided_slice_3/stack:output:08sequential_153/lstm_461/strided_slice_3/stack_1:output:08sequential_153/lstm_461/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_153/lstm_461/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_153/lstm_461/transpose_1	TransposeCsequential_153/lstm_461/TensorArrayV2Stack/TensorListStack:tensor:01sequential_153/lstm_461/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_153/lstm_461/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_153/dense_153/MatMul/ReadVariableOpReadVariableOp7sequential_153_dense_153_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_153/dense_153/MatMulMatMul0sequential_153/lstm_461/strided_slice_3:output:06sequential_153/dense_153/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_153/dense_153/BiasAdd/ReadVariableOpReadVariableOp8sequential_153_dense_153_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_153/dense_153/BiasAddBiasAdd)sequential_153/dense_153/MatMul:product:07sequential_153/dense_153/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_153/dense_153/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_153/dense_153/BiasAdd/ReadVariableOp/^sequential_153/dense_153/MatMul/ReadVariableOp=^sequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp<^sequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOp>^sequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp^sequential_153/lstm_459/while=^sequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp<^sequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOp>^sequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp^sequential_153/lstm_460/while=^sequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp<^sequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOp>^sequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp^sequential_153/lstm_461/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_153/dense_153/BiasAdd/ReadVariableOp/sequential_153/dense_153/BiasAdd/ReadVariableOp2`
.sequential_153/dense_153/MatMul/ReadVariableOp.sequential_153/dense_153/MatMul/ReadVariableOp2|
<sequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp<sequential_153/lstm_459/lstm_cell_564/BiasAdd/ReadVariableOp2z
;sequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOp;sequential_153/lstm_459/lstm_cell_564/MatMul/ReadVariableOp2~
=sequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp=sequential_153/lstm_459/lstm_cell_564/MatMul_1/ReadVariableOp2>
sequential_153/lstm_459/whilesequential_153/lstm_459/while2|
<sequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp<sequential_153/lstm_460/lstm_cell_565/BiasAdd/ReadVariableOp2z
;sequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOp;sequential_153/lstm_460/lstm_cell_565/MatMul/ReadVariableOp2~
=sequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp=sequential_153/lstm_460/lstm_cell_565/MatMul_1/ReadVariableOp2>
sequential_153/lstm_460/whilesequential_153/lstm_460/while2|
<sequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp<sequential_153/lstm_461/lstm_cell_566/BiasAdd/ReadVariableOp2z
;sequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOp;sequential_153/lstm_461/lstm_cell_566/MatMul/ReadVariableOp2~
=sequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp=sequential_153/lstm_461/lstm_cell_566/MatMul_1/ReadVariableOp2>
sequential_153/lstm_461/whilesequential_153/lstm_461/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_459_input
?
?
*__inference_lstm_461_layer_call_fn_3428496

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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425562o
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
?8
?
while_body_3428566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_566_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_566_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_566_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_566_matmul_readvariableop_resource:2(F
4while_lstm_cell_566_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_566_biasadd_readvariableop_resource:(??*while/lstm_cell_566/BiasAdd/ReadVariableOp?)while/lstm_cell_566/MatMul/ReadVariableOp?+while/lstm_cell_566/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_566/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_566_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_566/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_566/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_566/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_566_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_566/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_566/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_566/addAddV2$while/lstm_cell_566/MatMul:product:0&while/lstm_cell_566/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_566/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_566_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_566/BiasAddBiasAddwhile/lstm_cell_566/add:z:02while/lstm_cell_566/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_566/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_566/splitSplit,while/lstm_cell_566/split/split_dim:output:0$while/lstm_cell_566/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_566/SigmoidSigmoid"while/lstm_cell_566/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_1Sigmoid"while/lstm_cell_566/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mulMul!while/lstm_cell_566/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_566/ReluRelu"while/lstm_cell_566/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_1Mulwhile/lstm_cell_566/Sigmoid:y:0&while/lstm_cell_566/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/add_1AddV2while/lstm_cell_566/mul:z:0while/lstm_cell_566/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_566/Sigmoid_2Sigmoid"while/lstm_cell_566/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_566/Relu_1Reluwhile/lstm_cell_566/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_566/mul_2Mul!while/lstm_cell_566/Sigmoid_2:y:0(while/lstm_cell_566/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_566/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_566/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_566/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_566/BiasAdd/ReadVariableOp*^while/lstm_cell_566/MatMul/ReadVariableOp,^while/lstm_cell_566/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_566_biasadd_readvariableop_resource5while_lstm_cell_566_biasadd_readvariableop_resource_0"n
4while_lstm_cell_566_matmul_1_readvariableop_resource6while_lstm_cell_566_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_566_matmul_readvariableop_resource4while_lstm_cell_566_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_566/BiasAdd/ReadVariableOp*while/lstm_cell_566/BiasAdd/ReadVariableOp2V
)while/lstm_cell_566/MatMul/ReadVariableOp)while/lstm_cell_566/MatMul/ReadVariableOp2Z
+while/lstm_cell_566/MatMul_1/ReadVariableOp+while/lstm_cell_566/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3424754

inputs(
lstm_cell_565_3424672:	d?(
lstm_cell_565_3424674:	2?$
lstm_cell_565_3424676:	?
identity??%lstm_cell_565/StatefulPartitionedCall?while;
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
%lstm_cell_565/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_565_3424672lstm_cell_565_3424674lstm_cell_565_3424676*
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424626n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_565_3424672lstm_cell_565_3424674lstm_cell_565_3424676*
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
while_body_3424685*
condR
while_cond_3424684*K
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
NoOpNoOp&^lstm_cell_565/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_565/StatefulPartitionedCall%lstm_cell_565/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*sequential_153_lstm_461_while_cond_3423972L
Hsequential_153_lstm_461_while_sequential_153_lstm_461_while_loop_counterR
Nsequential_153_lstm_461_while_sequential_153_lstm_461_while_maximum_iterations-
)sequential_153_lstm_461_while_placeholder/
+sequential_153_lstm_461_while_placeholder_1/
+sequential_153_lstm_461_while_placeholder_2/
+sequential_153_lstm_461_while_placeholder_3N
Jsequential_153_lstm_461_while_less_sequential_153_lstm_461_strided_slice_1e
asequential_153_lstm_461_while_sequential_153_lstm_461_while_cond_3423972___redundant_placeholder0e
asequential_153_lstm_461_while_sequential_153_lstm_461_while_cond_3423972___redundant_placeholder1e
asequential_153_lstm_461_while_sequential_153_lstm_461_while_cond_3423972___redundant_placeholder2e
asequential_153_lstm_461_while_sequential_153_lstm_461_while_cond_3423972___redundant_placeholder3*
&sequential_153_lstm_461_while_identity
?
"sequential_153/lstm_461/while/LessLess)sequential_153_lstm_461_while_placeholderJsequential_153_lstm_461_while_less_sequential_153_lstm_461_strided_slice_1*
T0*
_output_shapes
: {
&sequential_153/lstm_461/while/IdentityIdentity&sequential_153/lstm_461/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_153_lstm_461_while_identity/sequential_153/lstm_461/while/Identity:output:0*(
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3424563

inputs(
lstm_cell_565_3424481:	d?(
lstm_cell_565_3424483:	2?$
lstm_cell_565_3424485:	?
identity??%lstm_cell_565/StatefulPartitionedCall?while;
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
%lstm_cell_565/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_565_3424481lstm_cell_565_3424483lstm_cell_565_3424485*
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3424480n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_565_3424481lstm_cell_565_3424483lstm_cell_565_3424485*
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
while_body_3424494*
condR
while_cond_3424493*K
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
NoOpNoOp&^lstm_cell_565/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_565/StatefulPartitionedCall%lstm_cell_565/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_153_layer_call_fn_3426228
lstm_459_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_459_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426176o
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
_user_specified_namelstm_459_input
?

?
0__inference_sequential_153_layer_call_fn_3425612
lstm_459_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_459_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3425587o
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
_user_specified_namelstm_459_input
?
?
while_cond_3425693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3425693___redundant_placeholder05
1while_while_cond_3425693___redundant_placeholder15
1while_while_cond_3425693___redundant_placeholder25
1while_while_cond_3425693___redundant_placeholder3
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
while_cond_3428092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428092___redundant_placeholder05
1while_while_cond_3428092___redundant_placeholder15
1while_while_cond_3428092___redundant_placeholder25
1while_while_cond_3428092___redundant_placeholder3
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
while_body_3425178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_564_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_564_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_564_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_564_matmul_readvariableop_resource:	?G
4while_lstm_cell_564_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_564_biasadd_readvariableop_resource:	???*while/lstm_cell_564/BiasAdd/ReadVariableOp?)while/lstm_cell_564/MatMul/ReadVariableOp?+while/lstm_cell_564/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_564/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_564_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_564/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_564/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_564/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_564_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_564/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_564/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_564/addAddV2$while/lstm_cell_564/MatMul:product:0&while/lstm_cell_564/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_564/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_564_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_564/BiasAddBiasAddwhile/lstm_cell_564/add:z:02while/lstm_cell_564/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_564/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_564/splitSplit,while/lstm_cell_564/split/split_dim:output:0$while/lstm_cell_564/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_564/SigmoidSigmoid"while/lstm_cell_564/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_1Sigmoid"while/lstm_cell_564/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mulMul!while/lstm_cell_564/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_564/ReluRelu"while/lstm_cell_564/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_1Mulwhile/lstm_cell_564/Sigmoid:y:0&while/lstm_cell_564/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/add_1AddV2while/lstm_cell_564/mul:z:0while/lstm_cell_564/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_564/Sigmoid_2Sigmoid"while/lstm_cell_564/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_564/Relu_1Reluwhile/lstm_cell_564/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_564/mul_2Mul!while/lstm_cell_564/Sigmoid_2:y:0(while/lstm_cell_564/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_564/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_564/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_564/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_564/BiasAdd/ReadVariableOp*^while/lstm_cell_564/MatMul/ReadVariableOp,^while/lstm_cell_564/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_564_biasadd_readvariableop_resource5while_lstm_cell_564_biasadd_readvariableop_resource_0"n
4while_lstm_cell_564_matmul_1_readvariableop_resource6while_lstm_cell_564_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_564_matmul_readvariableop_resource4while_lstm_cell_564_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_564/BiasAdd/ReadVariableOp*while/lstm_cell_564/BiasAdd/ReadVariableOp2V
)while/lstm_cell_564/MatMul/ReadVariableOp)while/lstm_cell_564/MatMul/ReadVariableOp2Z
+while/lstm_cell_564/MatMul_1/ReadVariableOp+while/lstm_cell_564/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426176

inputs#
lstm_459_3426149:	?#
lstm_459_3426151:	d?
lstm_459_3426153:	?#
lstm_460_3426156:	d?#
lstm_460_3426158:	2?
lstm_460_3426160:	?"
lstm_461_3426163:2("
lstm_461_3426165:
(
lstm_461_3426167:(#
dense_153_3426170:

dense_153_3426172:
identity??!dense_153/StatefulPartitionedCall? lstm_459/StatefulPartitionedCall? lstm_460/StatefulPartitionedCall? lstm_461/StatefulPartitionedCall?
 lstm_459/StatefulPartitionedCallStatefulPartitionedCallinputslstm_459_3426149lstm_459_3426151lstm_459_3426153*
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3426108?
 lstm_460/StatefulPartitionedCallStatefulPartitionedCall)lstm_459/StatefulPartitionedCall:output:0lstm_460_3426156lstm_460_3426158lstm_460_3426160*
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3425943?
 lstm_461/StatefulPartitionedCallStatefulPartitionedCall)lstm_460/StatefulPartitionedCall:output:0lstm_461_3426163lstm_461_3426165lstm_461_3426167*
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3425778?
!dense_153/StatefulPartitionedCallStatefulPartitionedCall)lstm_461/StatefulPartitionedCall:output:0dense_153_3426170dense_153_3426172*
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3425580y
IdentityIdentity*dense_153/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_153/StatefulPartitionedCall!^lstm_459/StatefulPartitionedCall!^lstm_460/StatefulPartitionedCall!^lstm_461/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2D
 lstm_459/StatefulPartitionedCall lstm_459/StatefulPartitionedCall2D
 lstm_460/StatefulPartitionedCall lstm_460/StatefulPartitionedCall2D
 lstm_461/StatefulPartitionedCall lstm_461/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
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
lstm_459_input;
 serving_default_lstm_459_input:0?????????=
	dense_1530
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
2dense_153/kernel
:2dense_153/bias
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
0:.	?2lstm_459/lstm_cell_459/kernel
::8	d?2'lstm_459/lstm_cell_459/recurrent_kernel
*:(?2lstm_459/lstm_cell_459/bias
0:.	d?2lstm_460/lstm_cell_460/kernel
::8	2?2'lstm_460/lstm_cell_460/recurrent_kernel
*:(?2lstm_460/lstm_cell_460/bias
/:-2(2lstm_461/lstm_cell_461/kernel
9:7
(2'lstm_461/lstm_cell_461/recurrent_kernel
):'(2lstm_461/lstm_cell_461/bias
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
2Adam/dense_153/kernel/m
!:2Adam/dense_153/bias/m
5:3	?2$Adam/lstm_459/lstm_cell_459/kernel/m
?:=	d?2.Adam/lstm_459/lstm_cell_459/recurrent_kernel/m
/:-?2"Adam/lstm_459/lstm_cell_459/bias/m
5:3	d?2$Adam/lstm_460/lstm_cell_460/kernel/m
?:=	2?2.Adam/lstm_460/lstm_cell_460/recurrent_kernel/m
/:-?2"Adam/lstm_460/lstm_cell_460/bias/m
4:22(2$Adam/lstm_461/lstm_cell_461/kernel/m
>:<
(2.Adam/lstm_461/lstm_cell_461/recurrent_kernel/m
.:,(2"Adam/lstm_461/lstm_cell_461/bias/m
':%
2Adam/dense_153/kernel/v
!:2Adam/dense_153/bias/v
5:3	?2$Adam/lstm_459/lstm_cell_459/kernel/v
?:=	d?2.Adam/lstm_459/lstm_cell_459/recurrent_kernel/v
/:-?2"Adam/lstm_459/lstm_cell_459/bias/v
5:3	d?2$Adam/lstm_460/lstm_cell_460/kernel/v
?:=	2?2.Adam/lstm_460/lstm_cell_460/recurrent_kernel/v
/:-?2"Adam/lstm_460/lstm_cell_460/bias/v
4:22(2$Adam/lstm_461/lstm_cell_461/kernel/v
>:<
(2.Adam/lstm_461/lstm_cell_461/recurrent_kernel/v
.:,(2"Adam/lstm_461/lstm_cell_461/bias/v
?2?
0__inference_sequential_153_layer_call_fn_3425612
0__inference_sequential_153_layer_call_fn_3426350
0__inference_sequential_153_layer_call_fn_3426377
0__inference_sequential_153_layer_call_fn_3426228?
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426804
K__inference_sequential_153_layer_call_and_return_conditional_losses_3427231
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426258
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426288?
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
"__inference__wrapped_model_3424063lstm_459_input"?
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
*__inference_lstm_459_layer_call_fn_3427242
*__inference_lstm_459_layer_call_fn_3427253
*__inference_lstm_459_layer_call_fn_3427264
*__inference_lstm_459_layer_call_fn_3427275?
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427418
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427561
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427704
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427847?
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
*__inference_lstm_460_layer_call_fn_3427858
*__inference_lstm_460_layer_call_fn_3427869
*__inference_lstm_460_layer_call_fn_3427880
*__inference_lstm_460_layer_call_fn_3427891?
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428034
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428177
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428320
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428463?
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
*__inference_lstm_461_layer_call_fn_3428474
*__inference_lstm_461_layer_call_fn_3428485
*__inference_lstm_461_layer_call_fn_3428496
*__inference_lstm_461_layer_call_fn_3428507?
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428650
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428793
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428936
E__inference_lstm_461_layer_call_and_return_conditional_losses_3429079?
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
+__inference_dense_153_layer_call_fn_3429088?
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
F__inference_dense_153_layer_call_and_return_conditional_losses_3429098?
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
%__inference_signature_wrapper_3426323lstm_459_input"?
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
/__inference_lstm_cell_564_layer_call_fn_3429115
/__inference_lstm_cell_564_layer_call_fn_3429132?
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429164
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429196?
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
/__inference_lstm_cell_565_layer_call_fn_3429213
/__inference_lstm_cell_565_layer_call_fn_3429230?
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429262
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429294?
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
/__inference_lstm_cell_566_layer_call_fn_3429311
/__inference_lstm_cell_566_layer_call_fn_3429328?
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429360
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429392?
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
"__inference__wrapped_model_3424063?-./012345!";?8
1?.
,?)
lstm_459_input?????????
? "5?2
0
	dense_153#? 
	dense_153??????????
F__inference_dense_153_layer_call_and_return_conditional_losses_3429098\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_153_layer_call_fn_3429088O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427418?-./O?L
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427561?-./O?L
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427704q-./??<
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
E__inference_lstm_459_layer_call_and_return_conditional_losses_3427847q-./??<
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
*__inference_lstm_459_layer_call_fn_3427242}-./O?L
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
*__inference_lstm_459_layer_call_fn_3427253}-./O?L
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
*__inference_lstm_459_layer_call_fn_3427264d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_459_layer_call_fn_3427275d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428034?012O?L
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428177?012O?L
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428320q012??<
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
E__inference_lstm_460_layer_call_and_return_conditional_losses_3428463q012??<
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
*__inference_lstm_460_layer_call_fn_3427858}012O?L
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
*__inference_lstm_460_layer_call_fn_3427869}012O?L
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
*__inference_lstm_460_layer_call_fn_3427880d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_460_layer_call_fn_3427891d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428650}345O?L
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428793}345O?L
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3428936m345??<
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
E__inference_lstm_461_layer_call_and_return_conditional_losses_3429079m345??<
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
*__inference_lstm_461_layer_call_fn_3428474p345O?L
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
*__inference_lstm_461_layer_call_fn_3428485p345O?L
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
*__inference_lstm_461_layer_call_fn_3428496`345??<
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
*__inference_lstm_461_layer_call_fn_3428507`345??<
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429164?-./??}
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
J__inference_lstm_cell_564_layer_call_and_return_conditional_losses_3429196?-./??}
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
/__inference_lstm_cell_564_layer_call_fn_3429115?-./??}
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
/__inference_lstm_cell_564_layer_call_fn_3429132?-./??}
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429262?012??}
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
J__inference_lstm_cell_565_layer_call_and_return_conditional_losses_3429294?012??}
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
/__inference_lstm_cell_565_layer_call_fn_3429213?012??}
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
/__inference_lstm_cell_565_layer_call_fn_3429230?012??}
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429360?345??}
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
J__inference_lstm_cell_566_layer_call_and_return_conditional_losses_3429392?345??}
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
/__inference_lstm_cell_566_layer_call_fn_3429311?345??}
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
/__inference_lstm_cell_566_layer_call_fn_3429328?345??}
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426258y-./012345!"C?@
9?6
,?)
lstm_459_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426288y-./012345!"C?@
9?6
,?)
lstm_459_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_153_layer_call_and_return_conditional_losses_3426804q-./012345!";?8
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
K__inference_sequential_153_layer_call_and_return_conditional_losses_3427231q-./012345!";?8
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
0__inference_sequential_153_layer_call_fn_3425612l-./012345!"C?@
9?6
,?)
lstm_459_input?????????
p 

 
? "???????????
0__inference_sequential_153_layer_call_fn_3426228l-./012345!"C?@
9?6
,?)
lstm_459_input?????????
p

 
? "???????????
0__inference_sequential_153_layer_call_fn_3426350d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_153_layer_call_fn_3426377d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3426323?-./012345!"M?J
? 
C?@
>
lstm_459_input,?)
lstm_459_input?????????"5?2
0
	dense_153#? 
	dense_153?????????