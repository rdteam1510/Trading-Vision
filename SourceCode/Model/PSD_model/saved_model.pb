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
dense_159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_159/kernel
u
$dense_159/kernel/Read/ReadVariableOpReadVariableOpdense_159/kernel*
_output_shapes

:
*
dtype0
t
dense_159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_159/bias
m
"dense_159/bias/Read/ReadVariableOpReadVariableOpdense_159/bias*
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
lstm_477/lstm_cell_477/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_477/lstm_cell_477/kernel
?
1lstm_477/lstm_cell_477/kernel/Read/ReadVariableOpReadVariableOplstm_477/lstm_cell_477/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_477/lstm_cell_477/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_477/lstm_cell_477/recurrent_kernel
?
;lstm_477/lstm_cell_477/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_477/lstm_cell_477/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_477/lstm_cell_477/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_477/lstm_cell_477/bias
?
/lstm_477/lstm_cell_477/bias/Read/ReadVariableOpReadVariableOplstm_477/lstm_cell_477/bias*
_output_shapes	
:?*
dtype0
?
lstm_478/lstm_cell_478/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_478/lstm_cell_478/kernel
?
1lstm_478/lstm_cell_478/kernel/Read/ReadVariableOpReadVariableOplstm_478/lstm_cell_478/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_478/lstm_cell_478/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_478/lstm_cell_478/recurrent_kernel
?
;lstm_478/lstm_cell_478/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_478/lstm_cell_478/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_478/lstm_cell_478/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_478/lstm_cell_478/bias
?
/lstm_478/lstm_cell_478/bias/Read/ReadVariableOpReadVariableOplstm_478/lstm_cell_478/bias*
_output_shapes	
:?*
dtype0
?
lstm_479/lstm_cell_479/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_479/lstm_cell_479/kernel
?
1lstm_479/lstm_cell_479/kernel/Read/ReadVariableOpReadVariableOplstm_479/lstm_cell_479/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_479/lstm_cell_479/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_479/lstm_cell_479/recurrent_kernel
?
;lstm_479/lstm_cell_479/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_479/lstm_cell_479/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_479/lstm_cell_479/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_479/lstm_cell_479/bias
?
/lstm_479/lstm_cell_479/bias/Read/ReadVariableOpReadVariableOplstm_479/lstm_cell_479/bias*
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
Adam/dense_159/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_159/kernel/m
?
+Adam/dense_159/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_159/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_159/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_159/bias/m
{
)Adam/dense_159/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_159/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_477/lstm_cell_477/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_477/lstm_cell_477/kernel/m
?
8Adam/lstm_477/lstm_cell_477/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_477/lstm_cell_477/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_477/lstm_cell_477/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_477/lstm_cell_477/recurrent_kernel/m
?
BAdam/lstm_477/lstm_cell_477/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_477/lstm_cell_477/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_477/lstm_cell_477/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_477/lstm_cell_477/bias/m
?
6Adam/lstm_477/lstm_cell_477/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_477/lstm_cell_477/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_478/lstm_cell_478/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_478/lstm_cell_478/kernel/m
?
8Adam/lstm_478/lstm_cell_478/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_478/lstm_cell_478/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_478/lstm_cell_478/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_478/lstm_cell_478/recurrent_kernel/m
?
BAdam/lstm_478/lstm_cell_478/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_478/lstm_cell_478/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_478/lstm_cell_478/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_478/lstm_cell_478/bias/m
?
6Adam/lstm_478/lstm_cell_478/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_478/lstm_cell_478/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_479/lstm_cell_479/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_479/lstm_cell_479/kernel/m
?
8Adam/lstm_479/lstm_cell_479/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_479/lstm_cell_479/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_479/lstm_cell_479/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_479/lstm_cell_479/recurrent_kernel/m
?
BAdam/lstm_479/lstm_cell_479/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_479/lstm_cell_479/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_479/lstm_cell_479/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_479/lstm_cell_479/bias/m
?
6Adam/lstm_479/lstm_cell_479/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_479/lstm_cell_479/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_159/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_159/kernel/v
?
+Adam/dense_159/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_159/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_159/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_159/bias/v
{
)Adam/dense_159/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_159/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_477/lstm_cell_477/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_477/lstm_cell_477/kernel/v
?
8Adam/lstm_477/lstm_cell_477/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_477/lstm_cell_477/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_477/lstm_cell_477/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_477/lstm_cell_477/recurrent_kernel/v
?
BAdam/lstm_477/lstm_cell_477/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_477/lstm_cell_477/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_477/lstm_cell_477/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_477/lstm_cell_477/bias/v
?
6Adam/lstm_477/lstm_cell_477/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_477/lstm_cell_477/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_478/lstm_cell_478/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_478/lstm_cell_478/kernel/v
?
8Adam/lstm_478/lstm_cell_478/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_478/lstm_cell_478/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_478/lstm_cell_478/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_478/lstm_cell_478/recurrent_kernel/v
?
BAdam/lstm_478/lstm_cell_478/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_478/lstm_cell_478/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_478/lstm_cell_478/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_478/lstm_cell_478/bias/v
?
6Adam/lstm_478/lstm_cell_478/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_478/lstm_cell_478/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_479/lstm_cell_479/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_479/lstm_cell_479/kernel/v
?
8Adam/lstm_479/lstm_cell_479/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_479/lstm_cell_479/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_479/lstm_cell_479/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_479/lstm_cell_479/recurrent_kernel/v
?
BAdam/lstm_479/lstm_cell_479/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_479/lstm_cell_479/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_479/lstm_cell_479/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_479/lstm_cell_479/bias/v
?
6Adam/lstm_479/lstm_cell_479/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_479/lstm_cell_479/bias/v*
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
VARIABLE_VALUEdense_159/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_159/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_477/lstm_cell_477/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_477/lstm_cell_477/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_477/lstm_cell_477/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_478/lstm_cell_478/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_478/lstm_cell_478/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_478/lstm_cell_478/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_479/lstm_cell_479/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_479/lstm_cell_479/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_479/lstm_cell_479/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_159/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_159/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_477/lstm_cell_477/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_477/lstm_cell_477/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_477/lstm_cell_477/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_478/lstm_cell_478/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_478/lstm_cell_478/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_478/lstm_cell_478/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_479/lstm_cell_479/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_479/lstm_cell_479/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_479/lstm_cell_479/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_159/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_159/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_477/lstm_cell_477/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_477/lstm_cell_477/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_477/lstm_cell_477/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_478/lstm_cell_478/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_478/lstm_cell_478/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_478/lstm_cell_478/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_479/lstm_cell_479/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_479/lstm_cell_479/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_479/lstm_cell_479/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_477_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_477_inputlstm_477/lstm_cell_477/kernel'lstm_477/lstm_cell_477/recurrent_kernellstm_477/lstm_cell_477/biaslstm_478/lstm_cell_478/kernel'lstm_478/lstm_cell_478/recurrent_kernellstm_478/lstm_cell_478/biaslstm_479/lstm_cell_479/kernel'lstm_479/lstm_cell_479/recurrent_kernellstm_479/lstm_cell_479/biasdense_159/kerneldense_159/bias*
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
%__inference_signature_wrapper_2517806
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_159/kernel/Read/ReadVariableOp"dense_159/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_477/lstm_cell_477/kernel/Read/ReadVariableOp;lstm_477/lstm_cell_477/recurrent_kernel/Read/ReadVariableOp/lstm_477/lstm_cell_477/bias/Read/ReadVariableOp1lstm_478/lstm_cell_478/kernel/Read/ReadVariableOp;lstm_478/lstm_cell_478/recurrent_kernel/Read/ReadVariableOp/lstm_478/lstm_cell_478/bias/Read/ReadVariableOp1lstm_479/lstm_cell_479/kernel/Read/ReadVariableOp;lstm_479/lstm_cell_479/recurrent_kernel/Read/ReadVariableOp/lstm_479/lstm_cell_479/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_159/kernel/m/Read/ReadVariableOp)Adam/dense_159/bias/m/Read/ReadVariableOp8Adam/lstm_477/lstm_cell_477/kernel/m/Read/ReadVariableOpBAdam/lstm_477/lstm_cell_477/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_477/lstm_cell_477/bias/m/Read/ReadVariableOp8Adam/lstm_478/lstm_cell_478/kernel/m/Read/ReadVariableOpBAdam/lstm_478/lstm_cell_478/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_478/lstm_cell_478/bias/m/Read/ReadVariableOp8Adam/lstm_479/lstm_cell_479/kernel/m/Read/ReadVariableOpBAdam/lstm_479/lstm_cell_479/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_479/lstm_cell_479/bias/m/Read/ReadVariableOp+Adam/dense_159/kernel/v/Read/ReadVariableOp)Adam/dense_159/bias/v/Read/ReadVariableOp8Adam/lstm_477/lstm_cell_477/kernel/v/Read/ReadVariableOpBAdam/lstm_477/lstm_cell_477/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_477/lstm_cell_477/bias/v/Read/ReadVariableOp8Adam/lstm_478/lstm_cell_478/kernel/v/Read/ReadVariableOpBAdam/lstm_478/lstm_cell_478/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_478/lstm_cell_478/bias/v/Read/ReadVariableOp8Adam/lstm_479/lstm_cell_479/kernel/v/Read/ReadVariableOpBAdam/lstm_479/lstm_cell_479/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_479/lstm_cell_479/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2521018
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_159/kerneldense_159/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_477/lstm_cell_477/kernel'lstm_477/lstm_cell_477/recurrent_kernellstm_477/lstm_cell_477/biaslstm_478/lstm_cell_478/kernel'lstm_478/lstm_cell_478/recurrent_kernellstm_478/lstm_cell_478/biaslstm_479/lstm_cell_479/kernel'lstm_479/lstm_cell_479/recurrent_kernellstm_479/lstm_cell_479/biastotalcountAdam/dense_159/kernel/mAdam/dense_159/bias/m$Adam/lstm_477/lstm_cell_477/kernel/m.Adam/lstm_477/lstm_cell_477/recurrent_kernel/m"Adam/lstm_477/lstm_cell_477/bias/m$Adam/lstm_478/lstm_cell_478/kernel/m.Adam/lstm_478/lstm_cell_478/recurrent_kernel/m"Adam/lstm_478/lstm_cell_478/bias/m$Adam/lstm_479/lstm_cell_479/kernel/m.Adam/lstm_479/lstm_cell_479/recurrent_kernel/m"Adam/lstm_479/lstm_cell_479/bias/mAdam/dense_159/kernel/vAdam/dense_159/bias/v$Adam/lstm_477/lstm_cell_477/kernel/v.Adam/lstm_477/lstm_cell_477/recurrent_kernel/v"Adam/lstm_477/lstm_cell_477/bias/v$Adam/lstm_478/lstm_cell_478/kernel/v.Adam/lstm_478/lstm_cell_478/recurrent_kernel/v"Adam/lstm_478/lstm_cell_478/bias/v$Adam/lstm_479/lstm_cell_479/kernel/v.Adam/lstm_479/lstm_cell_479/recurrent_kernel/v"Adam/lstm_479/lstm_cell_479/bias/v*4
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
#__inference__traced_restore_2521148??+
?

?
0__inference_sequential_159_layer_call_fn_2517833

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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517070o
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
while_body_2517177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516459

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
?
?
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517771
lstm_477_input#
lstm_477_2517744:	?#
lstm_477_2517746:	d?
lstm_477_2517748:	?#
lstm_478_2517751:	d?#
lstm_478_2517753:	2?
lstm_478_2517755:	?"
lstm_479_2517758:2("
lstm_479_2517760:
(
lstm_479_2517762:(#
dense_159_2517765:

dense_159_2517767:
identity??!dense_159/StatefulPartitionedCall? lstm_477/StatefulPartitionedCall? lstm_478/StatefulPartitionedCall? lstm_479/StatefulPartitionedCall?
 lstm_477/StatefulPartitionedCallStatefulPartitionedCalllstm_477_inputlstm_477_2517744lstm_477_2517746lstm_477_2517748*
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2517591?
 lstm_478/StatefulPartitionedCallStatefulPartitionedCall)lstm_477/StatefulPartitionedCall:output:0lstm_478_2517751lstm_478_2517753lstm_478_2517755*
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2517426?
 lstm_479/StatefulPartitionedCallStatefulPartitionedCall)lstm_478/StatefulPartitionedCall:output:0lstm_479_2517758lstm_479_2517760lstm_479_2517762*
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517261?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall)lstm_479/StatefulPartitionedCall:output:0dense_159_2517765dense_159_2517767*
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063y
IdentityIdentity*dense_159/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_159/StatefulPartitionedCall!^lstm_477/StatefulPartitionedCall!^lstm_478/StatefulPartitionedCall!^lstm_479/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2D
 lstm_477/StatefulPartitionedCall lstm_477/StatefulPartitionedCall2D
 lstm_478/StatefulPartitionedCall lstm_478/StatefulPartitionedCall2D
 lstm_479/StatefulPartitionedCall lstm_479/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_477_input
?K
?
E__inference_lstm_477_layer_call_and_return_conditional_losses_2518901
inputs_0?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2518817*
condR
while_cond_2518816*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520133
inputs_0>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2520049*
condR
while_cond_2520048*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2519575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519575___redundant_placeholder05
1while_while_cond_2519575___redundant_placeholder15
1while_while_cond_2519575___redundant_placeholder25
1while_while_cond_2519575___redundant_placeholder3
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
*__inference_lstm_479_layer_call_fn_2519968
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2516587o
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
while_cond_2517176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2517176___redundant_placeholder05
1while_while_cond_2517176___redundant_placeholder15
1while_while_cond_2517176___redundant_placeholder25
1while_while_cond_2517176___redundant_placeholder3
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518287

inputsH
5lstm_477_lstm_cell_414_matmul_readvariableop_resource:	?J
7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource:	d?E
6lstm_477_lstm_cell_414_biasadd_readvariableop_resource:	?H
5lstm_478_lstm_cell_415_matmul_readvariableop_resource:	d?J
7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource:	2?E
6lstm_478_lstm_cell_415_biasadd_readvariableop_resource:	?G
5lstm_479_lstm_cell_416_matmul_readvariableop_resource:2(I
7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource:
(D
6lstm_479_lstm_cell_416_biasadd_readvariableop_resource:(:
(dense_159_matmul_readvariableop_resource:
7
)dense_159_biasadd_readvariableop_resource:
identity?? dense_159/BiasAdd/ReadVariableOp?dense_159/MatMul/ReadVariableOp?-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp?,lstm_477/lstm_cell_414/MatMul/ReadVariableOp?.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp?lstm_477/while?-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp?,lstm_478/lstm_cell_415/MatMul/ReadVariableOp?.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp?lstm_478/while?-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp?,lstm_479/lstm_cell_416/MatMul/ReadVariableOp?.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp?lstm_479/whileD
lstm_477/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_477/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_477/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_477/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_sliceStridedSlicelstm_477/Shape:output:0%lstm_477/strided_slice/stack:output:0'lstm_477/strided_slice/stack_1:output:0'lstm_477/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_477/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_477/zeros/packedPacklstm_477/strided_slice:output:0 lstm_477/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_477/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_477/zerosFilllstm_477/zeros/packed:output:0lstm_477/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_477/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_477/zeros_1/packedPacklstm_477/strided_slice:output:0"lstm_477/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_477/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_477/zeros_1Fill lstm_477/zeros_1/packed:output:0lstm_477/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_477/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_477/transpose	Transposeinputs lstm_477/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_477/Shape_1Shapelstm_477/transpose:y:0*
T0*
_output_shapes
:h
lstm_477/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_477/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_1StridedSlicelstm_477/Shape_1:output:0'lstm_477/strided_slice_1/stack:output:0)lstm_477/strided_slice_1/stack_1:output:0)lstm_477/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_477/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_477/TensorArrayV2TensorListReserve-lstm_477/TensorArrayV2/element_shape:output:0!lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_477/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_477/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_477/transpose:y:0Glstm_477/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_477/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_477/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_2StridedSlicelstm_477/transpose:y:0'lstm_477/strided_slice_2/stack:output:0)lstm_477/strided_slice_2/stack_1:output:0)lstm_477/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_477/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp5lstm_477_lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_477/lstm_cell_414/MatMulMatMul!lstm_477/strided_slice_2:output:04lstm_477/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_477/lstm_cell_414/MatMul_1MatMullstm_477/zeros:output:06lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_477/lstm_cell_414/addAddV2'lstm_477/lstm_cell_414/MatMul:product:0)lstm_477/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp6lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_477/lstm_cell_414/BiasAddBiasAddlstm_477/lstm_cell_414/add:z:05lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_477/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_477/lstm_cell_414/splitSplit/lstm_477/lstm_cell_414/split/split_dim:output:0'lstm_477/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_477/lstm_cell_414/SigmoidSigmoid%lstm_477/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_477/lstm_cell_414/Sigmoid_1Sigmoid%lstm_477/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mulMul$lstm_477/lstm_cell_414/Sigmoid_1:y:0lstm_477/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_477/lstm_cell_414/ReluRelu%lstm_477/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mul_1Mul"lstm_477/lstm_cell_414/Sigmoid:y:0)lstm_477/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/add_1AddV2lstm_477/lstm_cell_414/mul:z:0 lstm_477/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_477/lstm_cell_414/Sigmoid_2Sigmoid%lstm_477/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_477/lstm_cell_414/Relu_1Relu lstm_477/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mul_2Mul$lstm_477/lstm_cell_414/Sigmoid_2:y:0+lstm_477/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_477/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_477/TensorArrayV2_1TensorListReserve/lstm_477/TensorArrayV2_1/element_shape:output:0!lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_477/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_477/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_477/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_477/whileWhile$lstm_477/while/loop_counter:output:0*lstm_477/while/maximum_iterations:output:0lstm_477/time:output:0!lstm_477/TensorArrayV2_1:handle:0lstm_477/zeros:output:0lstm_477/zeros_1:output:0!lstm_477/strided_slice_1:output:0@lstm_477/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_477_lstm_cell_414_matmul_readvariableop_resource7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource6lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
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
lstm_477_while_body_2517919*'
condR
lstm_477_while_cond_2517918*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_477/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_477/TensorArrayV2Stack/TensorListStackTensorListStacklstm_477/while:output:3Blstm_477/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_477/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_477/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_3StridedSlice4lstm_477/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_477/strided_slice_3/stack:output:0)lstm_477/strided_slice_3/stack_1:output:0)lstm_477/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_477/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_477/transpose_1	Transpose4lstm_477/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_477/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_477/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_478/ShapeShapelstm_477/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_sliceStridedSlicelstm_478/Shape:output:0%lstm_478/strided_slice/stack:output:0'lstm_478/strided_slice/stack_1:output:0'lstm_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_478/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_478/zeros/packedPacklstm_478/strided_slice:output:0 lstm_478/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_478/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_478/zerosFilllstm_478/zeros/packed:output:0lstm_478/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_478/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_478/zeros_1/packedPacklstm_478/strided_slice:output:0"lstm_478/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_478/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_478/zeros_1Fill lstm_478/zeros_1/packed:output:0lstm_478/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_478/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_478/transpose	Transposelstm_477/transpose_1:y:0 lstm_478/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_478/Shape_1Shapelstm_478/transpose:y:0*
T0*
_output_shapes
:h
lstm_478/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_478/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_1StridedSlicelstm_478/Shape_1:output:0'lstm_478/strided_slice_1/stack:output:0)lstm_478/strided_slice_1/stack_1:output:0)lstm_478/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_478/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_478/TensorArrayV2TensorListReserve-lstm_478/TensorArrayV2/element_shape:output:0!lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_478/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_478/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_478/transpose:y:0Glstm_478/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_478/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_478/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_2StridedSlicelstm_478/transpose:y:0'lstm_478/strided_slice_2/stack:output:0)lstm_478/strided_slice_2/stack_1:output:0)lstm_478/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_478/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp5lstm_478_lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_478/lstm_cell_415/MatMulMatMul!lstm_478/strided_slice_2:output:04lstm_478/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_478/lstm_cell_415/MatMul_1MatMullstm_478/zeros:output:06lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_478/lstm_cell_415/addAddV2'lstm_478/lstm_cell_415/MatMul:product:0)lstm_478/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp6lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_478/lstm_cell_415/BiasAddBiasAddlstm_478/lstm_cell_415/add:z:05lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_478/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_478/lstm_cell_415/splitSplit/lstm_478/lstm_cell_415/split/split_dim:output:0'lstm_478/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_478/lstm_cell_415/SigmoidSigmoid%lstm_478/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_478/lstm_cell_415/Sigmoid_1Sigmoid%lstm_478/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mulMul$lstm_478/lstm_cell_415/Sigmoid_1:y:0lstm_478/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_478/lstm_cell_415/ReluRelu%lstm_478/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mul_1Mul"lstm_478/lstm_cell_415/Sigmoid:y:0)lstm_478/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/add_1AddV2lstm_478/lstm_cell_415/mul:z:0 lstm_478/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_478/lstm_cell_415/Sigmoid_2Sigmoid%lstm_478/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_478/lstm_cell_415/Relu_1Relu lstm_478/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mul_2Mul$lstm_478/lstm_cell_415/Sigmoid_2:y:0+lstm_478/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_478/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_478/TensorArrayV2_1TensorListReserve/lstm_478/TensorArrayV2_1/element_shape:output:0!lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_478/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_478/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_478/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_478/whileWhile$lstm_478/while/loop_counter:output:0*lstm_478/while/maximum_iterations:output:0lstm_478/time:output:0!lstm_478/TensorArrayV2_1:handle:0lstm_478/zeros:output:0lstm_478/zeros_1:output:0!lstm_478/strided_slice_1:output:0@lstm_478/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_478_lstm_cell_415_matmul_readvariableop_resource7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource6lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
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
lstm_478_while_body_2518058*'
condR
lstm_478_while_cond_2518057*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_478/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_478/TensorArrayV2Stack/TensorListStackTensorListStacklstm_478/while:output:3Blstm_478/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_478/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_478/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_3StridedSlice4lstm_478/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_478/strided_slice_3/stack:output:0)lstm_478/strided_slice_3/stack_1:output:0)lstm_478/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_478/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_478/transpose_1	Transpose4lstm_478/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_478/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_478/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_479/ShapeShapelstm_478/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_sliceStridedSlicelstm_479/Shape:output:0%lstm_479/strided_slice/stack:output:0'lstm_479/strided_slice/stack_1:output:0'lstm_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_479/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_479/zeros/packedPacklstm_479/strided_slice:output:0 lstm_479/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_479/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_479/zerosFilllstm_479/zeros/packed:output:0lstm_479/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_479/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_479/zeros_1/packedPacklstm_479/strided_slice:output:0"lstm_479/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_479/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_479/zeros_1Fill lstm_479/zeros_1/packed:output:0lstm_479/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_479/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_479/transpose	Transposelstm_478/transpose_1:y:0 lstm_479/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_479/Shape_1Shapelstm_479/transpose:y:0*
T0*
_output_shapes
:h
lstm_479/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_479/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_1StridedSlicelstm_479/Shape_1:output:0'lstm_479/strided_slice_1/stack:output:0)lstm_479/strided_slice_1/stack_1:output:0)lstm_479/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_479/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_479/TensorArrayV2TensorListReserve-lstm_479/TensorArrayV2/element_shape:output:0!lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_479/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_479/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_479/transpose:y:0Glstm_479/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_479/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_479/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_2StridedSlicelstm_479/transpose:y:0'lstm_479/strided_slice_2/stack:output:0)lstm_479/strided_slice_2/stack_1:output:0)lstm_479/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_479/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp5lstm_479_lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_479/lstm_cell_416/MatMulMatMul!lstm_479/strided_slice_2:output:04lstm_479/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_479/lstm_cell_416/MatMul_1MatMullstm_479/zeros:output:06lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_479/lstm_cell_416/addAddV2'lstm_479/lstm_cell_416/MatMul:product:0)lstm_479/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp6lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_479/lstm_cell_416/BiasAddBiasAddlstm_479/lstm_cell_416/add:z:05lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_479/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_479/lstm_cell_416/splitSplit/lstm_479/lstm_cell_416/split/split_dim:output:0'lstm_479/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_479/lstm_cell_416/SigmoidSigmoid%lstm_479/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_479/lstm_cell_416/Sigmoid_1Sigmoid%lstm_479/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mulMul$lstm_479/lstm_cell_416/Sigmoid_1:y:0lstm_479/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_479/lstm_cell_416/ReluRelu%lstm_479/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mul_1Mul"lstm_479/lstm_cell_416/Sigmoid:y:0)lstm_479/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/add_1AddV2lstm_479/lstm_cell_416/mul:z:0 lstm_479/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_479/lstm_cell_416/Sigmoid_2Sigmoid%lstm_479/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_479/lstm_cell_416/Relu_1Relu lstm_479/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mul_2Mul$lstm_479/lstm_cell_416/Sigmoid_2:y:0+lstm_479/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_479/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_479/TensorArrayV2_1TensorListReserve/lstm_479/TensorArrayV2_1/element_shape:output:0!lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_479/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_479/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_479/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_479/whileWhile$lstm_479/while/loop_counter:output:0*lstm_479/while/maximum_iterations:output:0lstm_479/time:output:0!lstm_479/TensorArrayV2_1:handle:0lstm_479/zeros:output:0lstm_479/zeros_1:output:0!lstm_479/strided_slice_1:output:0@lstm_479/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_479_lstm_cell_416_matmul_readvariableop_resource7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource6lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
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
lstm_479_while_body_2518197*'
condR
lstm_479_while_cond_2518196*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_479/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_479/TensorArrayV2Stack/TensorListStackTensorListStacklstm_479/while:output:3Blstm_479/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_479/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_479/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_3StridedSlice4lstm_479/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_479/strided_slice_3/stack:output:0)lstm_479/strided_slice_3/stack_1:output:0)lstm_479/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_479/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_479/transpose_1	Transpose4lstm_479/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_479/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_479/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_159/MatMul/ReadVariableOpReadVariableOp(dense_159_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_159/MatMulMatMul!lstm_479/strided_slice_3:output:0'dense_159/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_159/BiasAdd/ReadVariableOpReadVariableOp)dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_159/BiasAddBiasAdddense_159/MatMul:product:0(dense_159/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_159/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_159/BiasAdd/ReadVariableOp ^dense_159/MatMul/ReadVariableOp.^lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp-^lstm_477/lstm_cell_414/MatMul/ReadVariableOp/^lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp^lstm_477/while.^lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp-^lstm_478/lstm_cell_415/MatMul/ReadVariableOp/^lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp^lstm_478/while.^lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp-^lstm_479/lstm_cell_416/MatMul/ReadVariableOp/^lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp^lstm_479/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_159/BiasAdd/ReadVariableOp dense_159/BiasAdd/ReadVariableOp2B
dense_159/MatMul/ReadVariableOpdense_159/MatMul/ReadVariableOp2^
-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp2\
,lstm_477/lstm_cell_414/MatMul/ReadVariableOp,lstm_477/lstm_cell_414/MatMul/ReadVariableOp2`
.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp2 
lstm_477/whilelstm_477/while2^
-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp2\
,lstm_478/lstm_cell_415/MatMul/ReadVariableOp,lstm_478/lstm_cell_415/MatMul/ReadVariableOp2`
.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp2 
lstm_478/whilelstm_478/while2^
-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp2\
,lstm_479/lstm_cell_416/MatMul/ReadVariableOp,lstm_479/lstm_cell_416/MatMul/ReadVariableOp2`
.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp2 
lstm_479/whilelstm_479/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_478_layer_call_fn_2519363

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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516895s
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
while_cond_2516167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516167___redundant_placeholder05
1while_while_cond_2516167___redundant_placeholder15
1while_while_cond_2516167___redundant_placeholder25
1while_while_cond_2516167___redundant_placeholder3
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
*sequential_159_lstm_478_while_body_2515317L
Hsequential_159_lstm_478_while_sequential_159_lstm_478_while_loop_counterR
Nsequential_159_lstm_478_while_sequential_159_lstm_478_while_maximum_iterations-
)sequential_159_lstm_478_while_placeholder/
+sequential_159_lstm_478_while_placeholder_1/
+sequential_159_lstm_478_while_placeholder_2/
+sequential_159_lstm_478_while_placeholder_3K
Gsequential_159_lstm_478_while_sequential_159_lstm_478_strided_slice_1_0?
?sequential_159_lstm_478_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_478_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_159_lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0:	d?a
Nsequential_159_lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?\
Msequential_159_lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0:	?*
&sequential_159_lstm_478_while_identity,
(sequential_159_lstm_478_while_identity_1,
(sequential_159_lstm_478_while_identity_2,
(sequential_159_lstm_478_while_identity_3,
(sequential_159_lstm_478_while_identity_4,
(sequential_159_lstm_478_while_identity_5I
Esequential_159_lstm_478_while_sequential_159_lstm_478_strided_slice_1?
?sequential_159_lstm_478_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_478_tensorarrayunstack_tensorlistfromtensor]
Jsequential_159_lstm_478_while_lstm_cell_415_matmul_readvariableop_resource:	d?_
Lsequential_159_lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource:	2?Z
Ksequential_159_lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource:	???Bsequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp?Asequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp?Csequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp?
Osequential_159/lstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_159/lstm_478/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_159_lstm_478_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_478_tensorarrayunstack_tensorlistfromtensor_0)sequential_159_lstm_478_while_placeholderXsequential_159/lstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOpLsequential_159_lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_159/lstm_478/while/lstm_cell_415/MatMulMatMulHsequential_159/lstm_478/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOpNsequential_159_lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_159/lstm_478/while/lstm_cell_415/MatMul_1MatMul+sequential_159_lstm_478_while_placeholder_2Ksequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_159/lstm_478/while/lstm_cell_415/addAddV2<sequential_159/lstm_478/while/lstm_cell_415/MatMul:product:0>sequential_159/lstm_478/while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOpMsequential_159_lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_159/lstm_478/while/lstm_cell_415/BiasAddBiasAdd3sequential_159/lstm_478/while/lstm_cell_415/add:z:0Jsequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_159/lstm_478/while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_159/lstm_478/while/lstm_cell_415/splitSplitDsequential_159/lstm_478/while/lstm_cell_415/split/split_dim:output:0<sequential_159/lstm_478/while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_159/lstm_478/while/lstm_cell_415/SigmoidSigmoid:sequential_159/lstm_478/while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_159/lstm_478/while/lstm_cell_415/Sigmoid_1Sigmoid:sequential_159/lstm_478/while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_159/lstm_478/while/lstm_cell_415/mulMul9sequential_159/lstm_478/while/lstm_cell_415/Sigmoid_1:y:0+sequential_159_lstm_478_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_159/lstm_478/while/lstm_cell_415/ReluRelu:sequential_159/lstm_478/while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_159/lstm_478/while/lstm_cell_415/mul_1Mul7sequential_159/lstm_478/while/lstm_cell_415/Sigmoid:y:0>sequential_159/lstm_478/while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_159/lstm_478/while/lstm_cell_415/add_1AddV23sequential_159/lstm_478/while/lstm_cell_415/mul:z:05sequential_159/lstm_478/while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_159/lstm_478/while/lstm_cell_415/Sigmoid_2Sigmoid:sequential_159/lstm_478/while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_159/lstm_478/while/lstm_cell_415/Relu_1Relu5sequential_159/lstm_478/while/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_159/lstm_478/while/lstm_cell_415/mul_2Mul9sequential_159/lstm_478/while/lstm_cell_415/Sigmoid_2:y:0@sequential_159/lstm_478/while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_159/lstm_478/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_159_lstm_478_while_placeholder_1)sequential_159_lstm_478_while_placeholder5sequential_159/lstm_478/while/lstm_cell_415/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_159/lstm_478/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_159/lstm_478/while/addAddV2)sequential_159_lstm_478_while_placeholder,sequential_159/lstm_478/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_159/lstm_478/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_159/lstm_478/while/add_1AddV2Hsequential_159_lstm_478_while_sequential_159_lstm_478_while_loop_counter.sequential_159/lstm_478/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_159/lstm_478/while/IdentityIdentity'sequential_159/lstm_478/while/add_1:z:0#^sequential_159/lstm_478/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_478/while/Identity_1IdentityNsequential_159_lstm_478_while_sequential_159_lstm_478_while_maximum_iterations#^sequential_159/lstm_478/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_478/while/Identity_2Identity%sequential_159/lstm_478/while/add:z:0#^sequential_159/lstm_478/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_478/while/Identity_3IdentityRsequential_159/lstm_478/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_159/lstm_478/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_478/while/Identity_4Identity5sequential_159/lstm_478/while/lstm_cell_415/mul_2:z:0#^sequential_159/lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_159/lstm_478/while/Identity_5Identity5sequential_159/lstm_478/while/lstm_cell_415/add_1:z:0#^sequential_159/lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_159/lstm_478/while/NoOpNoOpC^sequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOpB^sequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOpD^sequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_159_lstm_478_while_identity/sequential_159/lstm_478/while/Identity:output:0"]
(sequential_159_lstm_478_while_identity_11sequential_159/lstm_478/while/Identity_1:output:0"]
(sequential_159_lstm_478_while_identity_21sequential_159/lstm_478/while/Identity_2:output:0"]
(sequential_159_lstm_478_while_identity_31sequential_159/lstm_478/while/Identity_3:output:0"]
(sequential_159_lstm_478_while_identity_41sequential_159/lstm_478/while/Identity_4:output:0"]
(sequential_159_lstm_478_while_identity_51sequential_159/lstm_478/while/Identity_5:output:0"?
Ksequential_159_lstm_478_while_lstm_cell_415_biasadd_readvariableop_resourceMsequential_159_lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0"?
Lsequential_159_lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resourceNsequential_159_lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0"?
Jsequential_159_lstm_478_while_lstm_cell_415_matmul_readvariableop_resourceLsequential_159_lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0"?
Esequential_159_lstm_478_while_sequential_159_lstm_478_strided_slice_1Gsequential_159_lstm_478_while_sequential_159_lstm_478_strided_slice_1_0"?
?sequential_159_lstm_478_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_478_tensorarrayunstack_tensorlistfromtensor?sequential_159_lstm_478_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_478_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOpBsequential_159/lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp2?
Asequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOpAsequential_159/lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp2?
Csequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOpCsequential_159/lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2515627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_414_2515651_0:	?0
while_lstm_cell_414_2515653_0:	d?,
while_lstm_cell_414_2515655_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_414_2515651:	?.
while_lstm_cell_414_2515653:	d?*
while_lstm_cell_414_2515655:	???+while/lstm_cell_414/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_414/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_414_2515651_0while_lstm_cell_414_2515653_0while_lstm_cell_414_2515655_0*
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515613?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_414/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_414/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_414/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_414/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_414_2515651while_lstm_cell_414_2515651_0"<
while_lstm_cell_414_2515653while_lstm_cell_414_2515653_0"<
while_lstm_cell_414_2515655while_lstm_cell_414_2515655_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_414/StatefulPartitionedCall+while/lstm_cell_414/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2517506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2517506___redundant_placeholder05
1while_while_cond_2517506___redundant_placeholder15
1while_while_cond_2517506___redundant_placeholder25
1while_while_cond_2517506___redundant_placeholder3
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
lstm_478_while_cond_2518057.
*lstm_478_while_lstm_478_while_loop_counter4
0lstm_478_while_lstm_478_while_maximum_iterations
lstm_478_while_placeholder 
lstm_478_while_placeholder_1 
lstm_478_while_placeholder_2 
lstm_478_while_placeholder_30
,lstm_478_while_less_lstm_478_strided_slice_1G
Clstm_478_while_lstm_478_while_cond_2518057___redundant_placeholder0G
Clstm_478_while_lstm_478_while_cond_2518057___redundant_placeholder1G
Clstm_478_while_lstm_478_while_cond_2518057___redundant_placeholder2G
Clstm_478_while_lstm_478_while_cond_2518057___redundant_placeholder3
lstm_478_while_identity
?
lstm_478/while/LessLesslstm_478_while_placeholder,lstm_478_while_less_lstm_478_strided_slice_1*
T0*
_output_shapes
: ]
lstm_478/while/IdentityIdentitylstm_478/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_478_while_identity lstm_478/while/Identity:output:0*(
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
?
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517741
lstm_477_input#
lstm_477_2517714:	?#
lstm_477_2517716:	d?
lstm_477_2517718:	?#
lstm_478_2517721:	d?#
lstm_478_2517723:	2?
lstm_478_2517725:	?"
lstm_479_2517728:2("
lstm_479_2517730:
(
lstm_479_2517732:(#
dense_159_2517735:

dense_159_2517737:
identity??!dense_159/StatefulPartitionedCall? lstm_477/StatefulPartitionedCall? lstm_478/StatefulPartitionedCall? lstm_479/StatefulPartitionedCall?
 lstm_477/StatefulPartitionedCallStatefulPartitionedCalllstm_477_inputlstm_477_2517714lstm_477_2517716lstm_477_2517718*
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2516745?
 lstm_478/StatefulPartitionedCallStatefulPartitionedCall)lstm_477/StatefulPartitionedCall:output:0lstm_478_2517721lstm_478_2517723lstm_478_2517725*
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516895?
 lstm_479/StatefulPartitionedCallStatefulPartitionedCall)lstm_478/StatefulPartitionedCall:output:0lstm_479_2517728lstm_479_2517730lstm_479_2517732*
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517045?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall)lstm_479/StatefulPartitionedCall:output:0dense_159_2517735dense_159_2517737*
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063y
IdentityIdentity*dense_159/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_159/StatefulPartitionedCall!^lstm_477/StatefulPartitionedCall!^lstm_478/StatefulPartitionedCall!^lstm_479/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2D
 lstm_477/StatefulPartitionedCall lstm_477/StatefulPartitionedCall2D
 lstm_478/StatefulPartitionedCall lstm_478/StatefulPartitionedCall2D
 lstm_479/StatefulPartitionedCall lstm_479/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_477_input
?
?
while_cond_2519432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519432___redundant_placeholder05
1while_while_cond_2519432___redundant_placeholder15
1while_while_cond_2519432___redundant_placeholder25
1while_while_cond_2519432___redundant_placeholder3
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519803

inputs?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2519719*
condR
while_cond_2519718*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2519102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519102___redundant_placeholder05
1while_while_cond_2519102___redundant_placeholder15
1while_while_cond_2519102___redundant_placeholder25
1while_while_cond_2519102___redundant_placeholder3
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519517
inputs_0?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2519433*
condR
while_cond_2519432*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516313

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
*__inference_lstm_479_layer_call_fn_2519957
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2516396o
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
?
*__inference_lstm_477_layer_call_fn_2518725
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2515696|
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
while_cond_2516960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516960___redundant_placeholder05
1while_while_cond_2516960___redundant_placeholder15
1while_while_cond_2516960___redundant_placeholder25
1while_while_cond_2516960___redundant_placeholder3
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
while_cond_2520334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2520334___redundant_placeholder05
1while_while_cond_2520334___redundant_placeholder15
1while_while_cond_2520334___redundant_placeholder25
1while_while_cond_2520334___redundant_placeholder3
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
while_cond_2519861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519861___redundant_placeholder05
1while_while_cond_2519861___redundant_placeholder15
1while_while_cond_2519861___redundant_placeholder25
1while_while_cond_2519861___redundant_placeholder3
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
*__inference_lstm_478_layer_call_fn_2519341
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516046|
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
while_body_2520335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_415_layer_call_fn_2520713

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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2516109o
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
?T
?
*sequential_159_lstm_477_while_body_2515178L
Hsequential_159_lstm_477_while_sequential_159_lstm_477_while_loop_counterR
Nsequential_159_lstm_477_while_sequential_159_lstm_477_while_maximum_iterations-
)sequential_159_lstm_477_while_placeholder/
+sequential_159_lstm_477_while_placeholder_1/
+sequential_159_lstm_477_while_placeholder_2/
+sequential_159_lstm_477_while_placeholder_3K
Gsequential_159_lstm_477_while_sequential_159_lstm_477_strided_slice_1_0?
?sequential_159_lstm_477_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_477_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_159_lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0:	?a
Nsequential_159_lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?\
Msequential_159_lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0:	?*
&sequential_159_lstm_477_while_identity,
(sequential_159_lstm_477_while_identity_1,
(sequential_159_lstm_477_while_identity_2,
(sequential_159_lstm_477_while_identity_3,
(sequential_159_lstm_477_while_identity_4,
(sequential_159_lstm_477_while_identity_5I
Esequential_159_lstm_477_while_sequential_159_lstm_477_strided_slice_1?
?sequential_159_lstm_477_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_477_tensorarrayunstack_tensorlistfromtensor]
Jsequential_159_lstm_477_while_lstm_cell_414_matmul_readvariableop_resource:	?_
Lsequential_159_lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource:	d?Z
Ksequential_159_lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource:	???Bsequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp?Asequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp?Csequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp?
Osequential_159/lstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_159/lstm_477/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_159_lstm_477_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_477_tensorarrayunstack_tensorlistfromtensor_0)sequential_159_lstm_477_while_placeholderXsequential_159/lstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOpLsequential_159_lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_159/lstm_477/while/lstm_cell_414/MatMulMatMulHsequential_159/lstm_477/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOpNsequential_159_lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_159/lstm_477/while/lstm_cell_414/MatMul_1MatMul+sequential_159_lstm_477_while_placeholder_2Ksequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_159/lstm_477/while/lstm_cell_414/addAddV2<sequential_159/lstm_477/while/lstm_cell_414/MatMul:product:0>sequential_159/lstm_477/while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOpMsequential_159_lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_159/lstm_477/while/lstm_cell_414/BiasAddBiasAdd3sequential_159/lstm_477/while/lstm_cell_414/add:z:0Jsequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_159/lstm_477/while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_159/lstm_477/while/lstm_cell_414/splitSplitDsequential_159/lstm_477/while/lstm_cell_414/split/split_dim:output:0<sequential_159/lstm_477/while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_159/lstm_477/while/lstm_cell_414/SigmoidSigmoid:sequential_159/lstm_477/while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_159/lstm_477/while/lstm_cell_414/Sigmoid_1Sigmoid:sequential_159/lstm_477/while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_159/lstm_477/while/lstm_cell_414/mulMul9sequential_159/lstm_477/while/lstm_cell_414/Sigmoid_1:y:0+sequential_159_lstm_477_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_159/lstm_477/while/lstm_cell_414/ReluRelu:sequential_159/lstm_477/while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_159/lstm_477/while/lstm_cell_414/mul_1Mul7sequential_159/lstm_477/while/lstm_cell_414/Sigmoid:y:0>sequential_159/lstm_477/while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_159/lstm_477/while/lstm_cell_414/add_1AddV23sequential_159/lstm_477/while/lstm_cell_414/mul:z:05sequential_159/lstm_477/while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_159/lstm_477/while/lstm_cell_414/Sigmoid_2Sigmoid:sequential_159/lstm_477/while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_159/lstm_477/while/lstm_cell_414/Relu_1Relu5sequential_159/lstm_477/while/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_159/lstm_477/while/lstm_cell_414/mul_2Mul9sequential_159/lstm_477/while/lstm_cell_414/Sigmoid_2:y:0@sequential_159/lstm_477/while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_159/lstm_477/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_159_lstm_477_while_placeholder_1)sequential_159_lstm_477_while_placeholder5sequential_159/lstm_477/while/lstm_cell_414/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_159/lstm_477/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_159/lstm_477/while/addAddV2)sequential_159_lstm_477_while_placeholder,sequential_159/lstm_477/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_159/lstm_477/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_159/lstm_477/while/add_1AddV2Hsequential_159_lstm_477_while_sequential_159_lstm_477_while_loop_counter.sequential_159/lstm_477/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_159/lstm_477/while/IdentityIdentity'sequential_159/lstm_477/while/add_1:z:0#^sequential_159/lstm_477/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_477/while/Identity_1IdentityNsequential_159_lstm_477_while_sequential_159_lstm_477_while_maximum_iterations#^sequential_159/lstm_477/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_477/while/Identity_2Identity%sequential_159/lstm_477/while/add:z:0#^sequential_159/lstm_477/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_477/while/Identity_3IdentityRsequential_159/lstm_477/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_159/lstm_477/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_477/while/Identity_4Identity5sequential_159/lstm_477/while/lstm_cell_414/mul_2:z:0#^sequential_159/lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_159/lstm_477/while/Identity_5Identity5sequential_159/lstm_477/while/lstm_cell_414/add_1:z:0#^sequential_159/lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_159/lstm_477/while/NoOpNoOpC^sequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOpB^sequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOpD^sequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_159_lstm_477_while_identity/sequential_159/lstm_477/while/Identity:output:0"]
(sequential_159_lstm_477_while_identity_11sequential_159/lstm_477/while/Identity_1:output:0"]
(sequential_159_lstm_477_while_identity_21sequential_159/lstm_477/while/Identity_2:output:0"]
(sequential_159_lstm_477_while_identity_31sequential_159/lstm_477/while/Identity_3:output:0"]
(sequential_159_lstm_477_while_identity_41sequential_159/lstm_477/while/Identity_4:output:0"]
(sequential_159_lstm_477_while_identity_51sequential_159/lstm_477/while/Identity_5:output:0"?
Ksequential_159_lstm_477_while_lstm_cell_414_biasadd_readvariableop_resourceMsequential_159_lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0"?
Lsequential_159_lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resourceNsequential_159_lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0"?
Jsequential_159_lstm_477_while_lstm_cell_414_matmul_readvariableop_resourceLsequential_159_lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0"?
Esequential_159_lstm_477_while_sequential_159_lstm_477_strided_slice_1Gsequential_159_lstm_477_while_sequential_159_lstm_477_strided_slice_1_0"?
?sequential_159_lstm_477_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_477_tensorarrayunstack_tensorlistfromtensor?sequential_159_lstm_477_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_477_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOpBsequential_159/lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp2?
Asequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOpAsequential_159/lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp2?
Csequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOpCsequential_159/lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2516587

inputs'
lstm_cell_416_2516505:2('
lstm_cell_416_2516507:
(#
lstm_cell_416_2516509:(
identity??%lstm_cell_416/StatefulPartitionedCall?while;
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
%lstm_cell_416/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_416_2516505lstm_cell_416_2516507lstm_cell_416_2516509*
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516459n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_416_2516505lstm_cell_416_2516507lstm_cell_416_2516509*
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
while_body_2516518*
condR
while_cond_2516517*K
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
NoOpNoOp&^lstm_cell_416/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_416/StatefulPartitionedCall%lstm_cell_416/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515613

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
while_body_2519576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516895

inputs?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2516811*
condR
while_cond_2516810*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_477_while_body_2518346.
*lstm_477_while_lstm_477_while_loop_counter4
0lstm_477_while_lstm_477_while_maximum_iterations
lstm_477_while_placeholder 
lstm_477_while_placeholder_1 
lstm_477_while_placeholder_2 
lstm_477_while_placeholder_3-
)lstm_477_while_lstm_477_strided_slice_1_0i
elstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0:	?R
?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?M
>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
lstm_477_while_identity
lstm_477_while_identity_1
lstm_477_while_identity_2
lstm_477_while_identity_3
lstm_477_while_identity_4
lstm_477_while_identity_5+
'lstm_477_while_lstm_477_strided_slice_1g
clstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensorN
;lstm_477_while_lstm_cell_414_matmul_readvariableop_resource:	?P
=lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource:	d?K
<lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource:	???3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp?2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp?4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp?
@lstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_477/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0lstm_477_while_placeholderIlstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_477/while/lstm_cell_414/MatMulMatMul9lstm_477/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_477/while/lstm_cell_414/MatMul_1MatMullstm_477_while_placeholder_2<lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_477/while/lstm_cell_414/addAddV2-lstm_477/while/lstm_cell_414/MatMul:product:0/lstm_477/while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_477/while/lstm_cell_414/BiasAddBiasAdd$lstm_477/while/lstm_cell_414/add:z:0;lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_477/while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_477/while/lstm_cell_414/splitSplit5lstm_477/while/lstm_cell_414/split/split_dim:output:0-lstm_477/while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_477/while/lstm_cell_414/SigmoidSigmoid+lstm_477/while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_477/while/lstm_cell_414/Sigmoid_1Sigmoid+lstm_477/while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_477/while/lstm_cell_414/mulMul*lstm_477/while/lstm_cell_414/Sigmoid_1:y:0lstm_477_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_477/while/lstm_cell_414/ReluRelu+lstm_477/while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/mul_1Mul(lstm_477/while/lstm_cell_414/Sigmoid:y:0/lstm_477/while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/add_1AddV2$lstm_477/while/lstm_cell_414/mul:z:0&lstm_477/while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_477/while/lstm_cell_414/Sigmoid_2Sigmoid+lstm_477/while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_477/while/lstm_cell_414/Relu_1Relu&lstm_477/while/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/mul_2Mul*lstm_477/while/lstm_cell_414/Sigmoid_2:y:01lstm_477/while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_477/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_477_while_placeholder_1lstm_477_while_placeholder&lstm_477/while/lstm_cell_414/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_477/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_477/while/addAddV2lstm_477_while_placeholderlstm_477/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_477/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_477/while/add_1AddV2*lstm_477_while_lstm_477_while_loop_counterlstm_477/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_477/while/IdentityIdentitylstm_477/while/add_1:z:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_1Identity0lstm_477_while_lstm_477_while_maximum_iterations^lstm_477/while/NoOp*
T0*
_output_shapes
: t
lstm_477/while/Identity_2Identitylstm_477/while/add:z:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_3IdentityClstm_477/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_4Identity&lstm_477/while/lstm_cell_414/mul_2:z:0^lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_477/while/Identity_5Identity&lstm_477/while/lstm_cell_414/add_1:z:0^lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_477/while/NoOpNoOp4^lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp3^lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp5^lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_477_while_identity lstm_477/while/Identity:output:0"?
lstm_477_while_identity_1"lstm_477/while/Identity_1:output:0"?
lstm_477_while_identity_2"lstm_477/while/Identity_2:output:0"?
lstm_477_while_identity_3"lstm_477/while/Identity_3:output:0"?
lstm_477_while_identity_4"lstm_477/while/Identity_4:output:0"?
lstm_477_while_identity_5"lstm_477/while/Identity_5:output:0"T
'lstm_477_while_lstm_477_strided_slice_1)lstm_477_while_lstm_477_strided_slice_1_0"~
<lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0"?
=lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0"|
;lstm_477_while_lstm_cell_414_matmul_readvariableop_resource=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0"?
clstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensorelstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp2h
2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp2l
4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2519246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2520478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2516811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_477_layer_call_fn_2518736
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2515887|
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520419

inputs>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2520335*
condR
while_cond_2520334*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519946

inputs?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2519862*
condR
while_cond_2519861*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516237

inputs(
lstm_cell_415_2516155:	d?(
lstm_cell_415_2516157:	2?$
lstm_cell_415_2516159:	?
identity??%lstm_cell_415/StatefulPartitionedCall?while;
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
%lstm_cell_415/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_415_2516155lstm_cell_415_2516157lstm_cell_415_2516159*
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2516109n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_415_2516155lstm_cell_415_2516157lstm_cell_415_2516159*
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
while_body_2516168*
condR
while_cond_2516167*K
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
NoOpNoOp&^lstm_cell_415/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_415/StatefulPartitionedCall%lstm_cell_415/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_414_layer_call_fn_2520598

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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515613o
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
while_body_2518960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519330

inputs?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2519246*
condR
while_cond_2519245*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2516518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_416_2516542_0:2(/
while_lstm_cell_416_2516544_0:
(+
while_lstm_cell_416_2516546_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_416_2516542:2(-
while_lstm_cell_416_2516544:
()
while_lstm_cell_416_2516546:(??+while/lstm_cell_416/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_416/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_416_2516542_0while_lstm_cell_416_2516544_0while_lstm_cell_416_2516546_0*
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516459?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_416/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_416/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_416/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_416_2516542while_lstm_cell_416_2516542_0"<
while_lstm_cell_416_2516544while_lstm_cell_416_2516544_0"<
while_lstm_cell_416_2516546while_lstm_cell_416_2516546_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_416/StatefulPartitionedCall+while/lstm_cell_416/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520875

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

lstm_479_while_body_2518624.
*lstm_479_while_lstm_479_while_loop_counter4
0lstm_479_while_lstm_479_while_maximum_iterations
lstm_479_while_placeholder 
lstm_479_while_placeholder_1 
lstm_479_while_placeholder_2 
lstm_479_while_placeholder_3-
)lstm_479_while_lstm_479_strided_slice_1_0i
elstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0:2(Q
?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(L
>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0:(
lstm_479_while_identity
lstm_479_while_identity_1
lstm_479_while_identity_2
lstm_479_while_identity_3
lstm_479_while_identity_4
lstm_479_while_identity_5+
'lstm_479_while_lstm_479_strided_slice_1g
clstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensorM
;lstm_479_while_lstm_cell_416_matmul_readvariableop_resource:2(O
=lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource:
(J
<lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource:(??3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp?2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp?4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp?
@lstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_479/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0lstm_479_while_placeholderIlstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_479/while/lstm_cell_416/MatMulMatMul9lstm_479/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_479/while/lstm_cell_416/MatMul_1MatMullstm_479_while_placeholder_2<lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_479/while/lstm_cell_416/addAddV2-lstm_479/while/lstm_cell_416/MatMul:product:0/lstm_479/while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_479/while/lstm_cell_416/BiasAddBiasAdd$lstm_479/while/lstm_cell_416/add:z:0;lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_479/while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_479/while/lstm_cell_416/splitSplit5lstm_479/while/lstm_cell_416/split/split_dim:output:0-lstm_479/while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_479/while/lstm_cell_416/SigmoidSigmoid+lstm_479/while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_479/while/lstm_cell_416/Sigmoid_1Sigmoid+lstm_479/while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_479/while/lstm_cell_416/mulMul*lstm_479/while/lstm_cell_416/Sigmoid_1:y:0lstm_479_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_479/while/lstm_cell_416/ReluRelu+lstm_479/while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/mul_1Mul(lstm_479/while/lstm_cell_416/Sigmoid:y:0/lstm_479/while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/add_1AddV2$lstm_479/while/lstm_cell_416/mul:z:0&lstm_479/while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_479/while/lstm_cell_416/Sigmoid_2Sigmoid+lstm_479/while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_479/while/lstm_cell_416/Relu_1Relu&lstm_479/while/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/mul_2Mul*lstm_479/while/lstm_cell_416/Sigmoid_2:y:01lstm_479/while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_479/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_479_while_placeholder_1lstm_479_while_placeholder&lstm_479/while/lstm_cell_416/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_479/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_479/while/addAddV2lstm_479_while_placeholderlstm_479/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_479/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_479/while/add_1AddV2*lstm_479_while_lstm_479_while_loop_counterlstm_479/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_479/while/IdentityIdentitylstm_479/while/add_1:z:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_1Identity0lstm_479_while_lstm_479_while_maximum_iterations^lstm_479/while/NoOp*
T0*
_output_shapes
: t
lstm_479/while/Identity_2Identitylstm_479/while/add:z:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_3IdentityClstm_479/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_4Identity&lstm_479/while/lstm_cell_416/mul_2:z:0^lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_479/while/Identity_5Identity&lstm_479/while/lstm_cell_416/add_1:z:0^lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_479/while/NoOpNoOp4^lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp3^lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp5^lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_479_while_identity lstm_479/while/Identity:output:0"?
lstm_479_while_identity_1"lstm_479/while/Identity_1:output:0"?
lstm_479_while_identity_2"lstm_479/while/Identity_2:output:0"?
lstm_479_while_identity_3"lstm_479/while/Identity_3:output:0"?
lstm_479_while_identity_4"lstm_479/while/Identity_4:output:0"?
lstm_479_while_identity_5"lstm_479/while/Identity_5:output:0"T
'lstm_479_while_lstm_479_strided_slice_1)lstm_479_while_lstm_479_strided_slice_1_0"~
<lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0"?
=lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0"|
;lstm_479_while_lstm_cell_416_matmul_readvariableop_resource=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0"?
clstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensorelstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp2h
2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp2l
4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520562

inputs>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2520478*
condR
while_cond_2520477*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_414_layer_call_fn_2520615

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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515759o
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517045

inputs>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2516961*
condR
while_cond_2516960*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2519719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_2521018
file_prefix/
+savev2_dense_159_kernel_read_readvariableop-
)savev2_dense_159_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_477_lstm_cell_477_kernel_read_readvariableopF
Bsavev2_lstm_477_lstm_cell_477_recurrent_kernel_read_readvariableop:
6savev2_lstm_477_lstm_cell_477_bias_read_readvariableop<
8savev2_lstm_478_lstm_cell_478_kernel_read_readvariableopF
Bsavev2_lstm_478_lstm_cell_478_recurrent_kernel_read_readvariableop:
6savev2_lstm_478_lstm_cell_478_bias_read_readvariableop<
8savev2_lstm_479_lstm_cell_479_kernel_read_readvariableopF
Bsavev2_lstm_479_lstm_cell_479_recurrent_kernel_read_readvariableop:
6savev2_lstm_479_lstm_cell_479_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_159_kernel_m_read_readvariableop4
0savev2_adam_dense_159_bias_m_read_readvariableopC
?savev2_adam_lstm_477_lstm_cell_477_kernel_m_read_readvariableopM
Isavev2_adam_lstm_477_lstm_cell_477_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_477_lstm_cell_477_bias_m_read_readvariableopC
?savev2_adam_lstm_478_lstm_cell_478_kernel_m_read_readvariableopM
Isavev2_adam_lstm_478_lstm_cell_478_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_478_lstm_cell_478_bias_m_read_readvariableopC
?savev2_adam_lstm_479_lstm_cell_479_kernel_m_read_readvariableopM
Isavev2_adam_lstm_479_lstm_cell_479_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_479_lstm_cell_479_bias_m_read_readvariableop6
2savev2_adam_dense_159_kernel_v_read_readvariableop4
0savev2_adam_dense_159_bias_v_read_readvariableopC
?savev2_adam_lstm_477_lstm_cell_477_kernel_v_read_readvariableopM
Isavev2_adam_lstm_477_lstm_cell_477_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_477_lstm_cell_477_bias_v_read_readvariableopC
?savev2_adam_lstm_478_lstm_cell_478_kernel_v_read_readvariableopM
Isavev2_adam_lstm_478_lstm_cell_478_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_478_lstm_cell_478_bias_v_read_readvariableopC
?savev2_adam_lstm_479_lstm_cell_479_kernel_v_read_readvariableopM
Isavev2_adam_lstm_479_lstm_cell_479_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_479_lstm_cell_479_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_159_kernel_read_readvariableop)savev2_dense_159_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_477_lstm_cell_477_kernel_read_readvariableopBsavev2_lstm_477_lstm_cell_477_recurrent_kernel_read_readvariableop6savev2_lstm_477_lstm_cell_477_bias_read_readvariableop8savev2_lstm_478_lstm_cell_478_kernel_read_readvariableopBsavev2_lstm_478_lstm_cell_478_recurrent_kernel_read_readvariableop6savev2_lstm_478_lstm_cell_478_bias_read_readvariableop8savev2_lstm_479_lstm_cell_479_kernel_read_readvariableopBsavev2_lstm_479_lstm_cell_479_recurrent_kernel_read_readvariableop6savev2_lstm_479_lstm_cell_479_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_159_kernel_m_read_readvariableop0savev2_adam_dense_159_bias_m_read_readvariableop?savev2_adam_lstm_477_lstm_cell_477_kernel_m_read_readvariableopIsavev2_adam_lstm_477_lstm_cell_477_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_477_lstm_cell_477_bias_m_read_readvariableop?savev2_adam_lstm_478_lstm_cell_478_kernel_m_read_readvariableopIsavev2_adam_lstm_478_lstm_cell_478_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_478_lstm_cell_478_bias_m_read_readvariableop?savev2_adam_lstm_479_lstm_cell_479_kernel_m_read_readvariableopIsavev2_adam_lstm_479_lstm_cell_479_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_479_lstm_cell_479_bias_m_read_readvariableop2savev2_adam_dense_159_kernel_v_read_readvariableop0savev2_adam_dense_159_bias_v_read_readvariableop?savev2_adam_lstm_477_lstm_cell_477_kernel_v_read_readvariableopIsavev2_adam_lstm_477_lstm_cell_477_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_477_lstm_cell_477_bias_v_read_readvariableop?savev2_adam_lstm_478_lstm_cell_478_kernel_v_read_readvariableopIsavev2_adam_lstm_478_lstm_cell_478_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_478_lstm_cell_478_bias_v_read_readvariableop?savev2_adam_lstm_479_lstm_cell_479_kernel_v_read_readvariableopIsavev2_adam_lstm_479_lstm_cell_479_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_479_lstm_cell_479_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520843

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
*__inference_lstm_477_layer_call_fn_2518747

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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2516745s
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
while_body_2516961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2518817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2515977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_415_2516001_0:	d?0
while_lstm_cell_415_2516003_0:	2?,
while_lstm_cell_415_2516005_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_415_2516001:	d?.
while_lstm_cell_415_2516003:	2?*
while_lstm_cell_415_2516005:	???+while/lstm_cell_415/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_415/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_415_2516001_0while_lstm_cell_415_2516003_0while_lstm_cell_415_2516005_0*
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2515963?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_415/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_415/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_415/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_415/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_415_2516001while_lstm_cell_415_2516001_0"<
while_lstm_cell_415_2516003while_lstm_cell_415_2516003_0"<
while_lstm_cell_415_2516005while_lstm_cell_415_2516005_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_415/StatefulPartitionedCall+while/lstm_cell_415/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520679

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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2517426

inputs?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2517342*
condR
while_cond_2517341*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519187

inputs?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2519103*
condR
while_cond_2519102*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2516661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515759

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
while_cond_2516517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516517___redundant_placeholder05
1while_while_cond_2516517___redundant_placeholder15
1while_while_cond_2516517___redundant_placeholder25
1while_while_cond_2516517___redundant_placeholder3
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
while_cond_2520048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2520048___redundant_placeholder05
1while_while_cond_2520048___redundant_placeholder15
1while_while_cond_2520048___redundant_placeholder25
1while_while_cond_2520048___redundant_placeholder3
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

lstm_479_while_body_2518197.
*lstm_479_while_lstm_479_while_loop_counter4
0lstm_479_while_lstm_479_while_maximum_iterations
lstm_479_while_placeholder 
lstm_479_while_placeholder_1 
lstm_479_while_placeholder_2 
lstm_479_while_placeholder_3-
)lstm_479_while_lstm_479_strided_slice_1_0i
elstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0:2(Q
?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(L
>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0:(
lstm_479_while_identity
lstm_479_while_identity_1
lstm_479_while_identity_2
lstm_479_while_identity_3
lstm_479_while_identity_4
lstm_479_while_identity_5+
'lstm_479_while_lstm_479_strided_slice_1g
clstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensorM
;lstm_479_while_lstm_cell_416_matmul_readvariableop_resource:2(O
=lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource:
(J
<lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource:(??3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp?2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp?4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp?
@lstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_479/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0lstm_479_while_placeholderIlstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_479/while/lstm_cell_416/MatMulMatMul9lstm_479/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_479/while/lstm_cell_416/MatMul_1MatMullstm_479_while_placeholder_2<lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_479/while/lstm_cell_416/addAddV2-lstm_479/while/lstm_cell_416/MatMul:product:0/lstm_479/while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_479/while/lstm_cell_416/BiasAddBiasAdd$lstm_479/while/lstm_cell_416/add:z:0;lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_479/while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_479/while/lstm_cell_416/splitSplit5lstm_479/while/lstm_cell_416/split/split_dim:output:0-lstm_479/while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_479/while/lstm_cell_416/SigmoidSigmoid+lstm_479/while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_479/while/lstm_cell_416/Sigmoid_1Sigmoid+lstm_479/while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_479/while/lstm_cell_416/mulMul*lstm_479/while/lstm_cell_416/Sigmoid_1:y:0lstm_479_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_479/while/lstm_cell_416/ReluRelu+lstm_479/while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/mul_1Mul(lstm_479/while/lstm_cell_416/Sigmoid:y:0/lstm_479/while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/add_1AddV2$lstm_479/while/lstm_cell_416/mul:z:0&lstm_479/while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_479/while/lstm_cell_416/Sigmoid_2Sigmoid+lstm_479/while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_479/while/lstm_cell_416/Relu_1Relu&lstm_479/while/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_479/while/lstm_cell_416/mul_2Mul*lstm_479/while/lstm_cell_416/Sigmoid_2:y:01lstm_479/while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_479/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_479_while_placeholder_1lstm_479_while_placeholder&lstm_479/while/lstm_cell_416/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_479/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_479/while/addAddV2lstm_479_while_placeholderlstm_479/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_479/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_479/while/add_1AddV2*lstm_479_while_lstm_479_while_loop_counterlstm_479/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_479/while/IdentityIdentitylstm_479/while/add_1:z:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_1Identity0lstm_479_while_lstm_479_while_maximum_iterations^lstm_479/while/NoOp*
T0*
_output_shapes
: t
lstm_479/while/Identity_2Identitylstm_479/while/add:z:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_3IdentityClstm_479/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_479/while/NoOp*
T0*
_output_shapes
: ?
lstm_479/while/Identity_4Identity&lstm_479/while/lstm_cell_416/mul_2:z:0^lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_479/while/Identity_5Identity&lstm_479/while/lstm_cell_416/add_1:z:0^lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_479/while/NoOpNoOp4^lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp3^lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp5^lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_479_while_identity lstm_479/while/Identity:output:0"?
lstm_479_while_identity_1"lstm_479/while/Identity_1:output:0"?
lstm_479_while_identity_2"lstm_479/while/Identity_2:output:0"?
lstm_479_while_identity_3"lstm_479/while/Identity_3:output:0"?
lstm_479_while_identity_4"lstm_479/while/Identity_4:output:0"?
lstm_479_while_identity_5"lstm_479/while/Identity_5:output:0"T
'lstm_479_while_lstm_479_strided_slice_1)lstm_479_while_lstm_479_strided_slice_1_0"~
<lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource>lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0"?
=lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource?lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0"|
;lstm_479_while_lstm_cell_416_matmul_readvariableop_resource=lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0"?
clstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensorelstm_479_while_tensorarrayv2read_tensorlistgetitem_lstm_479_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp3lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp2h
2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp2lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp2l
4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp4lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2515887

inputs(
lstm_cell_414_2515805:	?(
lstm_cell_414_2515807:	d?$
lstm_cell_414_2515809:	?
identity??%lstm_cell_414/StatefulPartitionedCall?while;
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
%lstm_cell_414/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_414_2515805lstm_cell_414_2515807lstm_cell_414_2515809*
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515759n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_414_2515805lstm_cell_414_2515807lstm_cell_414_2515809*
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
while_body_2515818*
condR
while_cond_2515817*K
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
NoOpNoOp&^lstm_cell_414/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_414/StatefulPartitionedCall%lstm_cell_414/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
+__inference_dense_159_layer_call_fn_2520571

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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063o
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
?
?
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520745

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
while_body_2519433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_159_lstm_479_while_cond_2515455L
Hsequential_159_lstm_479_while_sequential_159_lstm_479_while_loop_counterR
Nsequential_159_lstm_479_while_sequential_159_lstm_479_while_maximum_iterations-
)sequential_159_lstm_479_while_placeholder/
+sequential_159_lstm_479_while_placeholder_1/
+sequential_159_lstm_479_while_placeholder_2/
+sequential_159_lstm_479_while_placeholder_3N
Jsequential_159_lstm_479_while_less_sequential_159_lstm_479_strided_slice_1e
asequential_159_lstm_479_while_sequential_159_lstm_479_while_cond_2515455___redundant_placeholder0e
asequential_159_lstm_479_while_sequential_159_lstm_479_while_cond_2515455___redundant_placeholder1e
asequential_159_lstm_479_while_sequential_159_lstm_479_while_cond_2515455___redundant_placeholder2e
asequential_159_lstm_479_while_sequential_159_lstm_479_while_cond_2515455___redundant_placeholder3*
&sequential_159_lstm_479_while_identity
?
"sequential_159/lstm_479/while/LessLess)sequential_159_lstm_479_while_placeholderJsequential_159_lstm_479_while_less_sequential_159_lstm_479_strided_slice_1*
T0*
_output_shapes
: {
&sequential_159/lstm_479/while/IdentityIdentity&sequential_159/lstm_479/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_159_lstm_479_while_identity/sequential_159/lstm_479/while/Identity:output:0*(
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
lstm_477_while_cond_2518345.
*lstm_477_while_lstm_477_while_loop_counter4
0lstm_477_while_lstm_477_while_maximum_iterations
lstm_477_while_placeholder 
lstm_477_while_placeholder_1 
lstm_477_while_placeholder_2 
lstm_477_while_placeholder_30
,lstm_477_while_less_lstm_477_strided_slice_1G
Clstm_477_while_lstm_477_while_cond_2518345___redundant_placeholder0G
Clstm_477_while_lstm_477_while_cond_2518345___redundant_placeholder1G
Clstm_477_while_lstm_477_while_cond_2518345___redundant_placeholder2G
Clstm_477_while_lstm_477_while_cond_2518345___redundant_placeholder3
lstm_477_while_identity
?
lstm_477/while/LessLesslstm_477_while_placeholder,lstm_477_while_less_lstm_477_strided_slice_1*
T0*
_output_shapes
: ]
lstm_477/while/IdentityIdentitylstm_477/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_477_while_identity lstm_477/while/Identity:output:0*(
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

lstm_478_while_body_2518485.
*lstm_478_while_lstm_478_while_loop_counter4
0lstm_478_while_lstm_478_while_maximum_iterations
lstm_478_while_placeholder 
lstm_478_while_placeholder_1 
lstm_478_while_placeholder_2 
lstm_478_while_placeholder_3-
)lstm_478_while_lstm_478_strided_slice_1_0i
elstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0:	d?R
?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?M
>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
lstm_478_while_identity
lstm_478_while_identity_1
lstm_478_while_identity_2
lstm_478_while_identity_3
lstm_478_while_identity_4
lstm_478_while_identity_5+
'lstm_478_while_lstm_478_strided_slice_1g
clstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensorN
;lstm_478_while_lstm_cell_415_matmul_readvariableop_resource:	d?P
=lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource:	2?K
<lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource:	???3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp?2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp?4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp?
@lstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_478/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0lstm_478_while_placeholderIlstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_478/while/lstm_cell_415/MatMulMatMul9lstm_478/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_478/while/lstm_cell_415/MatMul_1MatMullstm_478_while_placeholder_2<lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_478/while/lstm_cell_415/addAddV2-lstm_478/while/lstm_cell_415/MatMul:product:0/lstm_478/while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_478/while/lstm_cell_415/BiasAddBiasAdd$lstm_478/while/lstm_cell_415/add:z:0;lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_478/while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_478/while/lstm_cell_415/splitSplit5lstm_478/while/lstm_cell_415/split/split_dim:output:0-lstm_478/while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_478/while/lstm_cell_415/SigmoidSigmoid+lstm_478/while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_478/while/lstm_cell_415/Sigmoid_1Sigmoid+lstm_478/while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_478/while/lstm_cell_415/mulMul*lstm_478/while/lstm_cell_415/Sigmoid_1:y:0lstm_478_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_478/while/lstm_cell_415/ReluRelu+lstm_478/while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/mul_1Mul(lstm_478/while/lstm_cell_415/Sigmoid:y:0/lstm_478/while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/add_1AddV2$lstm_478/while/lstm_cell_415/mul:z:0&lstm_478/while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_478/while/lstm_cell_415/Sigmoid_2Sigmoid+lstm_478/while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_478/while/lstm_cell_415/Relu_1Relu&lstm_478/while/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/mul_2Mul*lstm_478/while/lstm_cell_415/Sigmoid_2:y:01lstm_478/while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_478/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_478_while_placeholder_1lstm_478_while_placeholder&lstm_478/while/lstm_cell_415/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_478/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_478/while/addAddV2lstm_478_while_placeholderlstm_478/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_478/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_478/while/add_1AddV2*lstm_478_while_lstm_478_while_loop_counterlstm_478/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_478/while/IdentityIdentitylstm_478/while/add_1:z:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_1Identity0lstm_478_while_lstm_478_while_maximum_iterations^lstm_478/while/NoOp*
T0*
_output_shapes
: t
lstm_478/while/Identity_2Identitylstm_478/while/add:z:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_3IdentityClstm_478/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_4Identity&lstm_478/while/lstm_cell_415/mul_2:z:0^lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_478/while/Identity_5Identity&lstm_478/while/lstm_cell_415/add_1:z:0^lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_478/while/NoOpNoOp4^lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp3^lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp5^lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_478_while_identity lstm_478/while/Identity:output:0"?
lstm_478_while_identity_1"lstm_478/while/Identity_1:output:0"?
lstm_478_while_identity_2"lstm_478/while/Identity_2:output:0"?
lstm_478_while_identity_3"lstm_478/while/Identity_3:output:0"?
lstm_478_while_identity_4"lstm_478/while/Identity_4:output:0"?
lstm_478_while_identity_5"lstm_478/while/Identity_5:output:0"T
'lstm_478_while_lstm_478_strided_slice_1)lstm_478_while_lstm_478_strided_slice_1_0"~
<lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0"?
=lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0"|
;lstm_478_while_lstm_cell_415_matmul_readvariableop_resource=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0"?
clstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensorelstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp2h
2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp2l
4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_477_layer_call_fn_2518758

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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2517591s
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
?K
?
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519044
inputs_0?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2518960*
condR
while_cond_2518959*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2520477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2520477___redundant_placeholder05
1while_while_cond_2520477___redundant_placeholder15
1while_while_cond_2520477___redundant_placeholder25
1while_while_cond_2520477___redundant_placeholder3
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
while_cond_2518959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2518959___redundant_placeholder05
1while_while_cond_2518959___redundant_placeholder15
1while_while_cond_2518959___redundant_placeholder25
1while_while_cond_2518959___redundant_placeholder3
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
lstm_479_while_cond_2518623.
*lstm_479_while_lstm_479_while_loop_counter4
0lstm_479_while_lstm_479_while_maximum_iterations
lstm_479_while_placeholder 
lstm_479_while_placeholder_1 
lstm_479_while_placeholder_2 
lstm_479_while_placeholder_30
,lstm_479_while_less_lstm_479_strided_slice_1G
Clstm_479_while_lstm_479_while_cond_2518623___redundant_placeholder0G
Clstm_479_while_lstm_479_while_cond_2518623___redundant_placeholder1G
Clstm_479_while_lstm_479_while_cond_2518623___redundant_placeholder2G
Clstm_479_while_lstm_479_while_cond_2518623___redundant_placeholder3
lstm_479_while_identity
?
lstm_479/while/LessLesslstm_479_while_placeholder,lstm_479_while_less_lstm_479_strided_slice_1*
T0*
_output_shapes
: ]
lstm_479/while/IdentityIdentitylstm_479/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_479_while_identity lstm_479/while/Identity:output:0*(
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
while_cond_2516810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516810___redundant_placeholder05
1while_while_cond_2516810___redundant_placeholder15
1while_while_cond_2516810___redundant_placeholder25
1while_while_cond_2516810___redundant_placeholder3
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520276
inputs_0>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2520192*
condR
while_cond_2520191*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2516109

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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2516396

inputs'
lstm_cell_416_2516314:2('
lstm_cell_416_2516316:
(#
lstm_cell_416_2516318:(
identity??%lstm_cell_416/StatefulPartitionedCall?while;
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
%lstm_cell_416/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_416_2516314lstm_cell_416_2516316lstm_cell_416_2516318*
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516313n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_416_2516314lstm_cell_416_2516316lstm_cell_416_2516318*
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
while_body_2516327*
condR
while_cond_2516326*K
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
NoOpNoOp&^lstm_cell_416/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_416/StatefulPartitionedCall%lstm_cell_416/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_479_layer_call_fn_2519979

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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517045o
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
while_body_2517342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2515817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2515817___redundant_placeholder05
1while_while_cond_2515817___redundant_placeholder15
1while_while_cond_2515817___redundant_placeholder25
1while_while_cond_2515817___redundant_placeholder3
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
while_body_2516168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_415_2516192_0:	d?0
while_lstm_cell_415_2516194_0:	2?,
while_lstm_cell_415_2516196_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_415_2516192:	d?.
while_lstm_cell_415_2516194:	2?*
while_lstm_cell_415_2516196:	???+while/lstm_cell_415/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_415/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_415_2516192_0while_lstm_cell_415_2516194_0while_lstm_cell_415_2516196_0*
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2516109?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_415/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_415/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_415/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_415/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_415_2516192while_lstm_cell_415_2516192_0"<
while_lstm_cell_415_2516194while_lstm_cell_415_2516194_0"<
while_lstm_cell_415_2516196while_lstm_cell_415_2516196_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_415/StatefulPartitionedCall+while/lstm_cell_415/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_477_while_body_2517919.
*lstm_477_while_lstm_477_while_loop_counter4
0lstm_477_while_lstm_477_while_maximum_iterations
lstm_477_while_placeholder 
lstm_477_while_placeholder_1 
lstm_477_while_placeholder_2 
lstm_477_while_placeholder_3-
)lstm_477_while_lstm_477_strided_slice_1_0i
elstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0:	?R
?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?M
>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
lstm_477_while_identity
lstm_477_while_identity_1
lstm_477_while_identity_2
lstm_477_while_identity_3
lstm_477_while_identity_4
lstm_477_while_identity_5+
'lstm_477_while_lstm_477_strided_slice_1g
clstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensorN
;lstm_477_while_lstm_cell_414_matmul_readvariableop_resource:	?P
=lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource:	d?K
<lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource:	???3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp?2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp?4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp?
@lstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_477/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0lstm_477_while_placeholderIlstm_477/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_477/while/lstm_cell_414/MatMulMatMul9lstm_477/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_477/while/lstm_cell_414/MatMul_1MatMullstm_477_while_placeholder_2<lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_477/while/lstm_cell_414/addAddV2-lstm_477/while/lstm_cell_414/MatMul:product:0/lstm_477/while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_477/while/lstm_cell_414/BiasAddBiasAdd$lstm_477/while/lstm_cell_414/add:z:0;lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_477/while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_477/while/lstm_cell_414/splitSplit5lstm_477/while/lstm_cell_414/split/split_dim:output:0-lstm_477/while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_477/while/lstm_cell_414/SigmoidSigmoid+lstm_477/while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_477/while/lstm_cell_414/Sigmoid_1Sigmoid+lstm_477/while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_477/while/lstm_cell_414/mulMul*lstm_477/while/lstm_cell_414/Sigmoid_1:y:0lstm_477_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_477/while/lstm_cell_414/ReluRelu+lstm_477/while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/mul_1Mul(lstm_477/while/lstm_cell_414/Sigmoid:y:0/lstm_477/while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/add_1AddV2$lstm_477/while/lstm_cell_414/mul:z:0&lstm_477/while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_477/while/lstm_cell_414/Sigmoid_2Sigmoid+lstm_477/while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_477/while/lstm_cell_414/Relu_1Relu&lstm_477/while/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_477/while/lstm_cell_414/mul_2Mul*lstm_477/while/lstm_cell_414/Sigmoid_2:y:01lstm_477/while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_477/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_477_while_placeholder_1lstm_477_while_placeholder&lstm_477/while/lstm_cell_414/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_477/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_477/while/addAddV2lstm_477_while_placeholderlstm_477/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_477/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_477/while/add_1AddV2*lstm_477_while_lstm_477_while_loop_counterlstm_477/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_477/while/IdentityIdentitylstm_477/while/add_1:z:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_1Identity0lstm_477_while_lstm_477_while_maximum_iterations^lstm_477/while/NoOp*
T0*
_output_shapes
: t
lstm_477/while/Identity_2Identitylstm_477/while/add:z:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_3IdentityClstm_477/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_477/while/NoOp*
T0*
_output_shapes
: ?
lstm_477/while/Identity_4Identity&lstm_477/while/lstm_cell_414/mul_2:z:0^lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_477/while/Identity_5Identity&lstm_477/while/lstm_cell_414/add_1:z:0^lstm_477/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_477/while/NoOpNoOp4^lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp3^lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp5^lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_477_while_identity lstm_477/while/Identity:output:0"?
lstm_477_while_identity_1"lstm_477/while/Identity_1:output:0"?
lstm_477_while_identity_2"lstm_477/while/Identity_2:output:0"?
lstm_477_while_identity_3"lstm_477/while/Identity_3:output:0"?
lstm_477_while_identity_4"lstm_477/while/Identity_4:output:0"?
lstm_477_while_identity_5"lstm_477/while/Identity_5:output:0"T
'lstm_477_while_lstm_477_strided_slice_1)lstm_477_while_lstm_477_strided_slice_1_0"~
<lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource>lstm_477_while_lstm_cell_414_biasadd_readvariableop_resource_0"?
=lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource?lstm_477_while_lstm_cell_414_matmul_1_readvariableop_resource_0"|
;lstm_477_while_lstm_cell_414_matmul_readvariableop_resource=lstm_477_while_lstm_cell_414_matmul_readvariableop_resource_0"?
clstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensorelstm_477_while_tensorarrayv2read_tensorlistgetitem_lstm_477_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp3lstm_477/while/lstm_cell_414/BiasAdd/ReadVariableOp2h
2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp2lstm_477/while/lstm_cell_414/MatMul/ReadVariableOp2l
4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp4lstm_477/while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2515818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_414_2515842_0:	?0
while_lstm_cell_414_2515844_0:	d?,
while_lstm_cell_414_2515846_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_414_2515842:	?.
while_lstm_cell_414_2515844:	d?*
while_lstm_cell_414_2515846:	???+while/lstm_cell_414/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_414/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_414_2515842_0while_lstm_cell_414_2515844_0while_lstm_cell_414_2515846_0*
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515759?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_414/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_414/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_414/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_414/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_414_2515842while_lstm_cell_414_2515842_0"<
while_lstm_cell_414_2515844while_lstm_cell_414_2515844_0"<
while_lstm_cell_414_2515846while_lstm_cell_414_2515846_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_414/StatefulPartitionedCall+while/lstm_cell_414/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2515976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2515976___redundant_placeholder05
1while_while_cond_2515976___redundant_placeholder15
1while_while_cond_2515976___redundant_placeholder25
1while_while_cond_2515976___redundant_placeholder3
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
while_body_2520192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2516327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_416_2516351_0:2(/
while_lstm_cell_416_2516353_0:
(+
while_lstm_cell_416_2516355_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_416_2516351:2(-
while_lstm_cell_416_2516353:
()
while_lstm_cell_416_2516355:(??+while/lstm_cell_416/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_416/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_416_2516351_0while_lstm_cell_416_2516353_0while_lstm_cell_416_2516355_0*
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516313?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_416/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_416/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_416/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_416_2516351while_lstm_cell_416_2516351_0"<
while_lstm_cell_416_2516353while_lstm_cell_416_2516353_0"<
while_lstm_cell_416_2516355while_lstm_cell_416_2516355_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_416/StatefulPartitionedCall+while/lstm_cell_416/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_416_layer_call_fn_2520794

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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516313o
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
while_body_2519862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_415_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_415_matmul_readvariableop_resource:	d?G
4while_lstm_cell_415_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_415_biasadd_readvariableop_resource:	???*while/lstm_cell_415/BiasAdd/ReadVariableOp?)while/lstm_cell_415/MatMul/ReadVariableOp?+while/lstm_cell_415/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_415/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_415/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_415/addAddV2$while/lstm_cell_415/MatMul:product:0&while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_415/BiasAddBiasAddwhile/lstm_cell_415/add:z:02while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_415/splitSplit,while/lstm_cell_415/split/split_dim:output:0$while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_415/SigmoidSigmoid"while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_1Sigmoid"while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mulMul!while/lstm_cell_415/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_415/ReluRelu"while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_1Mulwhile/lstm_cell_415/Sigmoid:y:0&while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/add_1AddV2while/lstm_cell_415/mul:z:0while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_415/Sigmoid_2Sigmoid"while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_415/Relu_1Reluwhile/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_415/mul_2Mul!while/lstm_cell_415/Sigmoid_2:y:0(while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_415/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_415/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_415/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_415/BiasAdd/ReadVariableOp*^while/lstm_cell_415/MatMul/ReadVariableOp,^while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_415_biasadd_readvariableop_resource5while_lstm_cell_415_biasadd_readvariableop_resource_0"n
4while_lstm_cell_415_matmul_1_readvariableop_resource6while_lstm_cell_415_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_415_matmul_readvariableop_resource4while_lstm_cell_415_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_415/BiasAdd/ReadVariableOp*while/lstm_cell_415/BiasAdd/ReadVariableOp2V
)while/lstm_cell_415/MatMul/ReadVariableOp)while/lstm_cell_415/MatMul/ReadVariableOp2Z
+while/lstm_cell_415/MatMul_1/ReadVariableOp+while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2521148
file_prefix3
!assignvariableop_dense_159_kernel:
/
!assignvariableop_1_dense_159_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_477_lstm_cell_477_kernel:	?M
:assignvariableop_8_lstm_477_lstm_cell_477_recurrent_kernel:	d?=
.assignvariableop_9_lstm_477_lstm_cell_477_bias:	?D
1assignvariableop_10_lstm_478_lstm_cell_478_kernel:	d?N
;assignvariableop_11_lstm_478_lstm_cell_478_recurrent_kernel:	2?>
/assignvariableop_12_lstm_478_lstm_cell_478_bias:	?C
1assignvariableop_13_lstm_479_lstm_cell_479_kernel:2(M
;assignvariableop_14_lstm_479_lstm_cell_479_recurrent_kernel:
(=
/assignvariableop_15_lstm_479_lstm_cell_479_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_159_kernel_m:
7
)assignvariableop_19_adam_dense_159_bias_m:K
8assignvariableop_20_adam_lstm_477_lstm_cell_477_kernel_m:	?U
Bassignvariableop_21_adam_lstm_477_lstm_cell_477_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_477_lstm_cell_477_bias_m:	?K
8assignvariableop_23_adam_lstm_478_lstm_cell_478_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_478_lstm_cell_478_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_478_lstm_cell_478_bias_m:	?J
8assignvariableop_26_adam_lstm_479_lstm_cell_479_kernel_m:2(T
Bassignvariableop_27_adam_lstm_479_lstm_cell_479_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_479_lstm_cell_479_bias_m:(=
+assignvariableop_29_adam_dense_159_kernel_v:
7
)assignvariableop_30_adam_dense_159_bias_v:K
8assignvariableop_31_adam_lstm_477_lstm_cell_477_kernel_v:	?U
Bassignvariableop_32_adam_lstm_477_lstm_cell_477_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_477_lstm_cell_477_bias_v:	?K
8assignvariableop_34_adam_lstm_478_lstm_cell_478_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_478_lstm_cell_478_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_478_lstm_cell_478_bias_v:	?J
8assignvariableop_37_adam_lstm_479_lstm_cell_479_kernel_v:2(T
Bassignvariableop_38_adam_lstm_479_lstm_cell_479_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_479_lstm_cell_479_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_159_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_159_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_477_lstm_cell_477_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_477_lstm_cell_477_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_477_lstm_cell_477_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_478_lstm_cell_478_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_478_lstm_cell_478_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_478_lstm_cell_478_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_479_lstm_cell_479_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_479_lstm_cell_479_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_479_lstm_cell_479_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_159_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_159_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_477_lstm_cell_477_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_477_lstm_cell_477_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_477_lstm_cell_477_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_478_lstm_cell_478_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_478_lstm_cell_478_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_478_lstm_cell_478_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_479_lstm_cell_479_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_479_lstm_cell_479_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_479_lstm_cell_479_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_159_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_159_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_477_lstm_cell_477_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_477_lstm_cell_477_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_477_lstm_cell_477_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_478_lstm_cell_478_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_478_lstm_cell_478_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_478_lstm_cell_478_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_479_lstm_cell_479_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_479_lstm_cell_479_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_479_lstm_cell_479_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516046

inputs(
lstm_cell_415_2515964:	d?(
lstm_cell_415_2515966:	2?$
lstm_cell_415_2515968:	?
identity??%lstm_cell_415/StatefulPartitionedCall?while;
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
%lstm_cell_415/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_415_2515964lstm_cell_415_2515966lstm_cell_415_2515968*
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2515963n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_415_2515964lstm_cell_415_2515966lstm_cell_415_2515968*
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
while_body_2515977*
condR
while_cond_2515976*K
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
NoOpNoOp&^lstm_cell_415/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_415/StatefulPartitionedCall%lstm_cell_415/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_477_layer_call_and_return_conditional_losses_2517591

inputs?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2517507*
condR
while_cond_2517506*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520647

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
?
*sequential_159_lstm_478_while_cond_2515316L
Hsequential_159_lstm_478_while_sequential_159_lstm_478_while_loop_counterR
Nsequential_159_lstm_478_while_sequential_159_lstm_478_while_maximum_iterations-
)sequential_159_lstm_478_while_placeholder/
+sequential_159_lstm_478_while_placeholder_1/
+sequential_159_lstm_478_while_placeholder_2/
+sequential_159_lstm_478_while_placeholder_3N
Jsequential_159_lstm_478_while_less_sequential_159_lstm_478_strided_slice_1e
asequential_159_lstm_478_while_sequential_159_lstm_478_while_cond_2515316___redundant_placeholder0e
asequential_159_lstm_478_while_sequential_159_lstm_478_while_cond_2515316___redundant_placeholder1e
asequential_159_lstm_478_while_sequential_159_lstm_478_while_cond_2515316___redundant_placeholder2e
asequential_159_lstm_478_while_sequential_159_lstm_478_while_cond_2515316___redundant_placeholder3*
&sequential_159_lstm_478_while_identity
?
"sequential_159/lstm_478/while/LessLess)sequential_159_lstm_478_while_placeholderJsequential_159_lstm_478_while_less_sequential_159_lstm_478_strided_slice_1*
T0*
_output_shapes
: {
&sequential_159/lstm_478/while/IdentityIdentity&sequential_159/lstm_478/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_159_lstm_478_while_identity/sequential_159/lstm_478/while/Identity:output:0*(
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2515696

inputs(
lstm_cell_414_2515614:	?(
lstm_cell_414_2515616:	d?$
lstm_cell_414_2515618:	?
identity??%lstm_cell_414/StatefulPartitionedCall?while;
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
%lstm_cell_414/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_414_2515614lstm_cell_414_2515616lstm_cell_414_2515618*
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2515613n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_414_2515614lstm_cell_414_2515616lstm_cell_414_2515618*
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
while_body_2515627*
condR
while_cond_2515626*K
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
NoOpNoOp&^lstm_cell_414/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_414/StatefulPartitionedCall%lstm_cell_414/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2517341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2517341___redundant_placeholder05
1while_while_cond_2517341___redundant_placeholder15
1while_while_cond_2517341___redundant_placeholder25
1while_while_cond_2517341___redundant_placeholder3
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2516745

inputs?
,lstm_cell_414_matmul_readvariableop_resource:	?A
.lstm_cell_414_matmul_1_readvariableop_resource:	d?<
-lstm_cell_414_biasadd_readvariableop_resource:	?
identity??$lstm_cell_414/BiasAdd/ReadVariableOp?#lstm_cell_414/MatMul/ReadVariableOp?%lstm_cell_414/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_414/MatMul/ReadVariableOpReadVariableOp,lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_414/MatMulMatMulstrided_slice_2:output:0+lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_414/MatMul_1MatMulzeros:output:0-lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_414/addAddV2lstm_cell_414/MatMul:product:0 lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_414/BiasAddBiasAddlstm_cell_414/add:z:0,lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_414/splitSplit&lstm_cell_414/split/split_dim:output:0lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_414/SigmoidSigmoidlstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_1Sigmoidlstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_414/mulMullstm_cell_414/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_414/ReluRelulstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_1Mullstm_cell_414/Sigmoid:y:0 lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_414/add_1AddV2lstm_cell_414/mul:z:0lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_414/Sigmoid_2Sigmoidlstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_414/Relu_1Relulstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_414/mul_2Mullstm_cell_414/Sigmoid_2:y:0"lstm_cell_414/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_414_matmul_readvariableop_resource.lstm_cell_414_matmul_1_readvariableop_resource-lstm_cell_414_biasadd_readvariableop_resource*
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
while_body_2516661*
condR
while_cond_2516660*K
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
NoOpNoOp%^lstm_cell_414/BiasAdd/ReadVariableOp$^lstm_cell_414/MatMul/ReadVariableOp&^lstm_cell_414/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_414/BiasAdd/ReadVariableOp$lstm_cell_414/BiasAdd/ReadVariableOp2J
#lstm_cell_414/MatMul/ReadVariableOp#lstm_cell_414/MatMul/ReadVariableOp2N
%lstm_cell_414/MatMul_1/ReadVariableOp%lstm_cell_414/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519660
inputs_0?
,lstm_cell_415_matmul_readvariableop_resource:	d?A
.lstm_cell_415_matmul_1_readvariableop_resource:	2?<
-lstm_cell_415_biasadd_readvariableop_resource:	?
identity??$lstm_cell_415/BiasAdd/ReadVariableOp?#lstm_cell_415/MatMul/ReadVariableOp?%lstm_cell_415/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_415/MatMul/ReadVariableOpReadVariableOp,lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_415/MatMulMatMulstrided_slice_2:output:0+lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_415/MatMul_1MatMulzeros:output:0-lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_415/addAddV2lstm_cell_415/MatMul:product:0 lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_415/BiasAddBiasAddlstm_cell_415/add:z:0,lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_415/splitSplit&lstm_cell_415/split/split_dim:output:0lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_415/SigmoidSigmoidlstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_1Sigmoidlstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_415/mulMullstm_cell_415/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_415/ReluRelulstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_1Mullstm_cell_415/Sigmoid:y:0 lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_415/add_1AddV2lstm_cell_415/mul:z:0lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_415/Sigmoid_2Sigmoidlstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_415/Relu_1Relulstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_415/mul_2Mullstm_cell_415/Sigmoid_2:y:0"lstm_cell_415/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_415_matmul_readvariableop_resource.lstm_cell_415_matmul_1_readvariableop_resource-lstm_cell_415_biasadd_readvariableop_resource*
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
while_body_2519576*
condR
while_cond_2519575*K
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
NoOpNoOp%^lstm_cell_415/BiasAdd/ReadVariableOp$^lstm_cell_415/MatMul/ReadVariableOp&^lstm_cell_415/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_415/BiasAdd/ReadVariableOp$lstm_cell_415/BiasAdd/ReadVariableOp2J
#lstm_cell_415/MatMul/ReadVariableOp#lstm_cell_415/MatMul/ReadVariableOp2N
%lstm_cell_415/MatMul_1/ReadVariableOp%lstm_cell_415/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?T
?
*sequential_159_lstm_479_while_body_2515456L
Hsequential_159_lstm_479_while_sequential_159_lstm_479_while_loop_counterR
Nsequential_159_lstm_479_while_sequential_159_lstm_479_while_maximum_iterations-
)sequential_159_lstm_479_while_placeholder/
+sequential_159_lstm_479_while_placeholder_1/
+sequential_159_lstm_479_while_placeholder_2/
+sequential_159_lstm_479_while_placeholder_3K
Gsequential_159_lstm_479_while_sequential_159_lstm_479_strided_slice_1_0?
?sequential_159_lstm_479_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_479_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_159_lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0:2(`
Nsequential_159_lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0:
([
Msequential_159_lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0:(*
&sequential_159_lstm_479_while_identity,
(sequential_159_lstm_479_while_identity_1,
(sequential_159_lstm_479_while_identity_2,
(sequential_159_lstm_479_while_identity_3,
(sequential_159_lstm_479_while_identity_4,
(sequential_159_lstm_479_while_identity_5I
Esequential_159_lstm_479_while_sequential_159_lstm_479_strided_slice_1?
?sequential_159_lstm_479_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_479_tensorarrayunstack_tensorlistfromtensor\
Jsequential_159_lstm_479_while_lstm_cell_416_matmul_readvariableop_resource:2(^
Lsequential_159_lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource:
(Y
Ksequential_159_lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource:(??Bsequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp?Asequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp?Csequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp?
Osequential_159/lstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_159/lstm_479/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_159_lstm_479_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_479_tensorarrayunstack_tensorlistfromtensor_0)sequential_159_lstm_479_while_placeholderXsequential_159/lstm_479/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOpLsequential_159_lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_159/lstm_479/while/lstm_cell_416/MatMulMatMulHsequential_159/lstm_479/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOpNsequential_159_lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_159/lstm_479/while/lstm_cell_416/MatMul_1MatMul+sequential_159_lstm_479_while_placeholder_2Ksequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_159/lstm_479/while/lstm_cell_416/addAddV2<sequential_159/lstm_479/while/lstm_cell_416/MatMul:product:0>sequential_159/lstm_479/while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOpMsequential_159_lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_159/lstm_479/while/lstm_cell_416/BiasAddBiasAdd3sequential_159/lstm_479/while/lstm_cell_416/add:z:0Jsequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_159/lstm_479/while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_159/lstm_479/while/lstm_cell_416/splitSplitDsequential_159/lstm_479/while/lstm_cell_416/split/split_dim:output:0<sequential_159/lstm_479/while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_159/lstm_479/while/lstm_cell_416/SigmoidSigmoid:sequential_159/lstm_479/while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_159/lstm_479/while/lstm_cell_416/Sigmoid_1Sigmoid:sequential_159/lstm_479/while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_159/lstm_479/while/lstm_cell_416/mulMul9sequential_159/lstm_479/while/lstm_cell_416/Sigmoid_1:y:0+sequential_159_lstm_479_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_159/lstm_479/while/lstm_cell_416/ReluRelu:sequential_159/lstm_479/while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_159/lstm_479/while/lstm_cell_416/mul_1Mul7sequential_159/lstm_479/while/lstm_cell_416/Sigmoid:y:0>sequential_159/lstm_479/while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_159/lstm_479/while/lstm_cell_416/add_1AddV23sequential_159/lstm_479/while/lstm_cell_416/mul:z:05sequential_159/lstm_479/while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_159/lstm_479/while/lstm_cell_416/Sigmoid_2Sigmoid:sequential_159/lstm_479/while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_159/lstm_479/while/lstm_cell_416/Relu_1Relu5sequential_159/lstm_479/while/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_159/lstm_479/while/lstm_cell_416/mul_2Mul9sequential_159/lstm_479/while/lstm_cell_416/Sigmoid_2:y:0@sequential_159/lstm_479/while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_159/lstm_479/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_159_lstm_479_while_placeholder_1)sequential_159_lstm_479_while_placeholder5sequential_159/lstm_479/while/lstm_cell_416/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_159/lstm_479/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_159/lstm_479/while/addAddV2)sequential_159_lstm_479_while_placeholder,sequential_159/lstm_479/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_159/lstm_479/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_159/lstm_479/while/add_1AddV2Hsequential_159_lstm_479_while_sequential_159_lstm_479_while_loop_counter.sequential_159/lstm_479/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_159/lstm_479/while/IdentityIdentity'sequential_159/lstm_479/while/add_1:z:0#^sequential_159/lstm_479/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_479/while/Identity_1IdentityNsequential_159_lstm_479_while_sequential_159_lstm_479_while_maximum_iterations#^sequential_159/lstm_479/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_479/while/Identity_2Identity%sequential_159/lstm_479/while/add:z:0#^sequential_159/lstm_479/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_479/while/Identity_3IdentityRsequential_159/lstm_479/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_159/lstm_479/while/NoOp*
T0*
_output_shapes
: ?
(sequential_159/lstm_479/while/Identity_4Identity5sequential_159/lstm_479/while/lstm_cell_416/mul_2:z:0#^sequential_159/lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_159/lstm_479/while/Identity_5Identity5sequential_159/lstm_479/while/lstm_cell_416/add_1:z:0#^sequential_159/lstm_479/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_159/lstm_479/while/NoOpNoOpC^sequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOpB^sequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOpD^sequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_159_lstm_479_while_identity/sequential_159/lstm_479/while/Identity:output:0"]
(sequential_159_lstm_479_while_identity_11sequential_159/lstm_479/while/Identity_1:output:0"]
(sequential_159_lstm_479_while_identity_21sequential_159/lstm_479/while/Identity_2:output:0"]
(sequential_159_lstm_479_while_identity_31sequential_159/lstm_479/while/Identity_3:output:0"]
(sequential_159_lstm_479_while_identity_41sequential_159/lstm_479/while/Identity_4:output:0"]
(sequential_159_lstm_479_while_identity_51sequential_159/lstm_479/while/Identity_5:output:0"?
Ksequential_159_lstm_479_while_lstm_cell_416_biasadd_readvariableop_resourceMsequential_159_lstm_479_while_lstm_cell_416_biasadd_readvariableop_resource_0"?
Lsequential_159_lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resourceNsequential_159_lstm_479_while_lstm_cell_416_matmul_1_readvariableop_resource_0"?
Jsequential_159_lstm_479_while_lstm_cell_416_matmul_readvariableop_resourceLsequential_159_lstm_479_while_lstm_cell_416_matmul_readvariableop_resource_0"?
Esequential_159_lstm_479_while_sequential_159_lstm_479_strided_slice_1Gsequential_159_lstm_479_while_sequential_159_lstm_479_strided_slice_1_0"?
?sequential_159_lstm_479_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_479_tensorarrayunstack_tensorlistfromtensor?sequential_159_lstm_479_while_tensorarrayv2read_tensorlistgetitem_sequential_159_lstm_479_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOpBsequential_159/lstm_479/while/lstm_cell_416/BiasAdd/ReadVariableOp2?
Asequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOpAsequential_159/lstm_479/while/lstm_cell_416/MatMul/ReadVariableOp2?
Csequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOpCsequential_159/lstm_479/while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_159_layer_call_fn_2517860

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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517659o
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
??
?
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518714

inputsH
5lstm_477_lstm_cell_414_matmul_readvariableop_resource:	?J
7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource:	d?E
6lstm_477_lstm_cell_414_biasadd_readvariableop_resource:	?H
5lstm_478_lstm_cell_415_matmul_readvariableop_resource:	d?J
7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource:	2?E
6lstm_478_lstm_cell_415_biasadd_readvariableop_resource:	?G
5lstm_479_lstm_cell_416_matmul_readvariableop_resource:2(I
7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource:
(D
6lstm_479_lstm_cell_416_biasadd_readvariableop_resource:(:
(dense_159_matmul_readvariableop_resource:
7
)dense_159_biasadd_readvariableop_resource:
identity?? dense_159/BiasAdd/ReadVariableOp?dense_159/MatMul/ReadVariableOp?-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp?,lstm_477/lstm_cell_414/MatMul/ReadVariableOp?.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp?lstm_477/while?-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp?,lstm_478/lstm_cell_415/MatMul/ReadVariableOp?.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp?lstm_478/while?-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp?,lstm_479/lstm_cell_416/MatMul/ReadVariableOp?.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp?lstm_479/whileD
lstm_477/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_477/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_477/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_477/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_sliceStridedSlicelstm_477/Shape:output:0%lstm_477/strided_slice/stack:output:0'lstm_477/strided_slice/stack_1:output:0'lstm_477/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_477/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_477/zeros/packedPacklstm_477/strided_slice:output:0 lstm_477/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_477/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_477/zerosFilllstm_477/zeros/packed:output:0lstm_477/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_477/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_477/zeros_1/packedPacklstm_477/strided_slice:output:0"lstm_477/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_477/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_477/zeros_1Fill lstm_477/zeros_1/packed:output:0lstm_477/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_477/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_477/transpose	Transposeinputs lstm_477/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_477/Shape_1Shapelstm_477/transpose:y:0*
T0*
_output_shapes
:h
lstm_477/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_477/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_1StridedSlicelstm_477/Shape_1:output:0'lstm_477/strided_slice_1/stack:output:0)lstm_477/strided_slice_1/stack_1:output:0)lstm_477/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_477/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_477/TensorArrayV2TensorListReserve-lstm_477/TensorArrayV2/element_shape:output:0!lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_477/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_477/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_477/transpose:y:0Glstm_477/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_477/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_477/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_2StridedSlicelstm_477/transpose:y:0'lstm_477/strided_slice_2/stack:output:0)lstm_477/strided_slice_2/stack_1:output:0)lstm_477/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_477/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp5lstm_477_lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_477/lstm_cell_414/MatMulMatMul!lstm_477/strided_slice_2:output:04lstm_477/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_477/lstm_cell_414/MatMul_1MatMullstm_477/zeros:output:06lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_477/lstm_cell_414/addAddV2'lstm_477/lstm_cell_414/MatMul:product:0)lstm_477/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp6lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_477/lstm_cell_414/BiasAddBiasAddlstm_477/lstm_cell_414/add:z:05lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_477/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_477/lstm_cell_414/splitSplit/lstm_477/lstm_cell_414/split/split_dim:output:0'lstm_477/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_477/lstm_cell_414/SigmoidSigmoid%lstm_477/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_477/lstm_cell_414/Sigmoid_1Sigmoid%lstm_477/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mulMul$lstm_477/lstm_cell_414/Sigmoid_1:y:0lstm_477/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_477/lstm_cell_414/ReluRelu%lstm_477/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mul_1Mul"lstm_477/lstm_cell_414/Sigmoid:y:0)lstm_477/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/add_1AddV2lstm_477/lstm_cell_414/mul:z:0 lstm_477/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_477/lstm_cell_414/Sigmoid_2Sigmoid%lstm_477/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_477/lstm_cell_414/Relu_1Relu lstm_477/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_477/lstm_cell_414/mul_2Mul$lstm_477/lstm_cell_414/Sigmoid_2:y:0+lstm_477/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_477/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_477/TensorArrayV2_1TensorListReserve/lstm_477/TensorArrayV2_1/element_shape:output:0!lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_477/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_477/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_477/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_477/whileWhile$lstm_477/while/loop_counter:output:0*lstm_477/while/maximum_iterations:output:0lstm_477/time:output:0!lstm_477/TensorArrayV2_1:handle:0lstm_477/zeros:output:0lstm_477/zeros_1:output:0!lstm_477/strided_slice_1:output:0@lstm_477/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_477_lstm_cell_414_matmul_readvariableop_resource7lstm_477_lstm_cell_414_matmul_1_readvariableop_resource6lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
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
lstm_477_while_body_2518346*'
condR
lstm_477_while_cond_2518345*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_477/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_477/TensorArrayV2Stack/TensorListStackTensorListStacklstm_477/while:output:3Blstm_477/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_477/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_477/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_477/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_477/strided_slice_3StridedSlice4lstm_477/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_477/strided_slice_3/stack:output:0)lstm_477/strided_slice_3/stack_1:output:0)lstm_477/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_477/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_477/transpose_1	Transpose4lstm_477/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_477/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_477/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_478/ShapeShapelstm_477/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_sliceStridedSlicelstm_478/Shape:output:0%lstm_478/strided_slice/stack:output:0'lstm_478/strided_slice/stack_1:output:0'lstm_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_478/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_478/zeros/packedPacklstm_478/strided_slice:output:0 lstm_478/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_478/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_478/zerosFilllstm_478/zeros/packed:output:0lstm_478/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_478/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_478/zeros_1/packedPacklstm_478/strided_slice:output:0"lstm_478/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_478/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_478/zeros_1Fill lstm_478/zeros_1/packed:output:0lstm_478/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_478/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_478/transpose	Transposelstm_477/transpose_1:y:0 lstm_478/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_478/Shape_1Shapelstm_478/transpose:y:0*
T0*
_output_shapes
:h
lstm_478/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_478/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_1StridedSlicelstm_478/Shape_1:output:0'lstm_478/strided_slice_1/stack:output:0)lstm_478/strided_slice_1/stack_1:output:0)lstm_478/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_478/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_478/TensorArrayV2TensorListReserve-lstm_478/TensorArrayV2/element_shape:output:0!lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_478/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_478/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_478/transpose:y:0Glstm_478/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_478/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_478/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_2StridedSlicelstm_478/transpose:y:0'lstm_478/strided_slice_2/stack:output:0)lstm_478/strided_slice_2/stack_1:output:0)lstm_478/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_478/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp5lstm_478_lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_478/lstm_cell_415/MatMulMatMul!lstm_478/strided_slice_2:output:04lstm_478/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_478/lstm_cell_415/MatMul_1MatMullstm_478/zeros:output:06lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_478/lstm_cell_415/addAddV2'lstm_478/lstm_cell_415/MatMul:product:0)lstm_478/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp6lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_478/lstm_cell_415/BiasAddBiasAddlstm_478/lstm_cell_415/add:z:05lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_478/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_478/lstm_cell_415/splitSplit/lstm_478/lstm_cell_415/split/split_dim:output:0'lstm_478/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_478/lstm_cell_415/SigmoidSigmoid%lstm_478/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_478/lstm_cell_415/Sigmoid_1Sigmoid%lstm_478/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mulMul$lstm_478/lstm_cell_415/Sigmoid_1:y:0lstm_478/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_478/lstm_cell_415/ReluRelu%lstm_478/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mul_1Mul"lstm_478/lstm_cell_415/Sigmoid:y:0)lstm_478/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/add_1AddV2lstm_478/lstm_cell_415/mul:z:0 lstm_478/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_478/lstm_cell_415/Sigmoid_2Sigmoid%lstm_478/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_478/lstm_cell_415/Relu_1Relu lstm_478/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_478/lstm_cell_415/mul_2Mul$lstm_478/lstm_cell_415/Sigmoid_2:y:0+lstm_478/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_478/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_478/TensorArrayV2_1TensorListReserve/lstm_478/TensorArrayV2_1/element_shape:output:0!lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_478/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_478/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_478/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_478/whileWhile$lstm_478/while/loop_counter:output:0*lstm_478/while/maximum_iterations:output:0lstm_478/time:output:0!lstm_478/TensorArrayV2_1:handle:0lstm_478/zeros:output:0lstm_478/zeros_1:output:0!lstm_478/strided_slice_1:output:0@lstm_478/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_478_lstm_cell_415_matmul_readvariableop_resource7lstm_478_lstm_cell_415_matmul_1_readvariableop_resource6lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
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
lstm_478_while_body_2518485*'
condR
lstm_478_while_cond_2518484*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_478/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_478/TensorArrayV2Stack/TensorListStackTensorListStacklstm_478/while:output:3Blstm_478/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_478/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_478/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_478/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_478/strided_slice_3StridedSlice4lstm_478/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_478/strided_slice_3/stack:output:0)lstm_478/strided_slice_3/stack_1:output:0)lstm_478/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_478/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_478/transpose_1	Transpose4lstm_478/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_478/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_478/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_479/ShapeShapelstm_478/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_sliceStridedSlicelstm_479/Shape:output:0%lstm_479/strided_slice/stack:output:0'lstm_479/strided_slice/stack_1:output:0'lstm_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_479/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_479/zeros/packedPacklstm_479/strided_slice:output:0 lstm_479/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_479/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_479/zerosFilllstm_479/zeros/packed:output:0lstm_479/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_479/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_479/zeros_1/packedPacklstm_479/strided_slice:output:0"lstm_479/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_479/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_479/zeros_1Fill lstm_479/zeros_1/packed:output:0lstm_479/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_479/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_479/transpose	Transposelstm_478/transpose_1:y:0 lstm_479/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_479/Shape_1Shapelstm_479/transpose:y:0*
T0*
_output_shapes
:h
lstm_479/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_479/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_1StridedSlicelstm_479/Shape_1:output:0'lstm_479/strided_slice_1/stack:output:0)lstm_479/strided_slice_1/stack_1:output:0)lstm_479/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_479/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_479/TensorArrayV2TensorListReserve-lstm_479/TensorArrayV2/element_shape:output:0!lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_479/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_479/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_479/transpose:y:0Glstm_479/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_479/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_479/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_2StridedSlicelstm_479/transpose:y:0'lstm_479/strided_slice_2/stack:output:0)lstm_479/strided_slice_2/stack_1:output:0)lstm_479/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_479/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp5lstm_479_lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_479/lstm_cell_416/MatMulMatMul!lstm_479/strided_slice_2:output:04lstm_479/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_479/lstm_cell_416/MatMul_1MatMullstm_479/zeros:output:06lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_479/lstm_cell_416/addAddV2'lstm_479/lstm_cell_416/MatMul:product:0)lstm_479/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp6lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_479/lstm_cell_416/BiasAddBiasAddlstm_479/lstm_cell_416/add:z:05lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_479/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_479/lstm_cell_416/splitSplit/lstm_479/lstm_cell_416/split/split_dim:output:0'lstm_479/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_479/lstm_cell_416/SigmoidSigmoid%lstm_479/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_479/lstm_cell_416/Sigmoid_1Sigmoid%lstm_479/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mulMul$lstm_479/lstm_cell_416/Sigmoid_1:y:0lstm_479/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_479/lstm_cell_416/ReluRelu%lstm_479/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mul_1Mul"lstm_479/lstm_cell_416/Sigmoid:y:0)lstm_479/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/add_1AddV2lstm_479/lstm_cell_416/mul:z:0 lstm_479/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_479/lstm_cell_416/Sigmoid_2Sigmoid%lstm_479/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_479/lstm_cell_416/Relu_1Relu lstm_479/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_479/lstm_cell_416/mul_2Mul$lstm_479/lstm_cell_416/Sigmoid_2:y:0+lstm_479/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_479/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_479/TensorArrayV2_1TensorListReserve/lstm_479/TensorArrayV2_1/element_shape:output:0!lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_479/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_479/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_479/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_479/whileWhile$lstm_479/while/loop_counter:output:0*lstm_479/while/maximum_iterations:output:0lstm_479/time:output:0!lstm_479/TensorArrayV2_1:handle:0lstm_479/zeros:output:0lstm_479/zeros_1:output:0!lstm_479/strided_slice_1:output:0@lstm_479/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_479_lstm_cell_416_matmul_readvariableop_resource7lstm_479_lstm_cell_416_matmul_1_readvariableop_resource6lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
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
lstm_479_while_body_2518624*'
condR
lstm_479_while_cond_2518623*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_479/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_479/TensorArrayV2Stack/TensorListStackTensorListStacklstm_479/while:output:3Blstm_479/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_479/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_479/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_479/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_479/strided_slice_3StridedSlice4lstm_479/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_479/strided_slice_3/stack:output:0)lstm_479/strided_slice_3/stack_1:output:0)lstm_479/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_479/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_479/transpose_1	Transpose4lstm_479/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_479/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_479/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_159/MatMul/ReadVariableOpReadVariableOp(dense_159_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_159/MatMulMatMul!lstm_479/strided_slice_3:output:0'dense_159/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_159/BiasAdd/ReadVariableOpReadVariableOp)dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_159/BiasAddBiasAdddense_159/MatMul:product:0(dense_159/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_159/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_159/BiasAdd/ReadVariableOp ^dense_159/MatMul/ReadVariableOp.^lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp-^lstm_477/lstm_cell_414/MatMul/ReadVariableOp/^lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp^lstm_477/while.^lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp-^lstm_478/lstm_cell_415/MatMul/ReadVariableOp/^lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp^lstm_478/while.^lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp-^lstm_479/lstm_cell_416/MatMul/ReadVariableOp/^lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp^lstm_479/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_159/BiasAdd/ReadVariableOp dense_159/BiasAdd/ReadVariableOp2B
dense_159/MatMul/ReadVariableOpdense_159/MatMul/ReadVariableOp2^
-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp-lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp2\
,lstm_477/lstm_cell_414/MatMul/ReadVariableOp,lstm_477/lstm_cell_414/MatMul/ReadVariableOp2`
.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp.lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp2 
lstm_477/whilelstm_477/while2^
-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp-lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp2\
,lstm_478/lstm_cell_415/MatMul/ReadVariableOp,lstm_478/lstm_cell_415/MatMul/ReadVariableOp2`
.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp.lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp2 
lstm_478/whilelstm_478/while2^
-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp-lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp2\
,lstm_479/lstm_cell_416/MatMul/ReadVariableOp,lstm_479/lstm_cell_416/MatMul/ReadVariableOp2`
.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp.lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp2 
lstm_479/whilelstm_479/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2517507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520777

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
0__inference_sequential_159_layer_call_fn_2517711
lstm_477_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_477_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517659o
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
_user_specified_namelstm_477_input
?
?
*__inference_lstm_478_layer_call_fn_2519352
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516237|
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
*__inference_lstm_478_layer_call_fn_2519374

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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2517426s
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
lstm_478_while_cond_2518484.
*lstm_478_while_lstm_478_while_loop_counter4
0lstm_478_while_lstm_478_while_maximum_iterations
lstm_478_while_placeholder 
lstm_478_while_placeholder_1 
lstm_478_while_placeholder_2 
lstm_478_while_placeholder_30
,lstm_478_while_less_lstm_478_strided_slice_1G
Clstm_478_while_lstm_478_while_cond_2518484___redundant_placeholder0G
Clstm_478_while_lstm_478_while_cond_2518484___redundant_placeholder1G
Clstm_478_while_lstm_478_while_cond_2518484___redundant_placeholder2G
Clstm_478_while_lstm_478_while_cond_2518484___redundant_placeholder3
lstm_478_while_identity
?
lstm_478/while/LessLesslstm_478_while_placeholder,lstm_478_while_less_lstm_478_strided_slice_1*
T0*
_output_shapes
: ]
lstm_478/while/IdentityIdentitylstm_478/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_478_while_identity lstm_478/while/Identity:output:0*(
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
/__inference_lstm_cell_415_layer_call_fn_2520696

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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2515963o
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
while_cond_2520191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2520191___redundant_placeholder05
1while_while_cond_2520191___redundant_placeholder15
1while_while_cond_2520191___redundant_placeholder25
1while_while_cond_2520191___redundant_placeholder3
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
"__inference__wrapped_model_2515546
lstm_477_inputW
Dsequential_159_lstm_477_lstm_cell_414_matmul_readvariableop_resource:	?Y
Fsequential_159_lstm_477_lstm_cell_414_matmul_1_readvariableop_resource:	d?T
Esequential_159_lstm_477_lstm_cell_414_biasadd_readvariableop_resource:	?W
Dsequential_159_lstm_478_lstm_cell_415_matmul_readvariableop_resource:	d?Y
Fsequential_159_lstm_478_lstm_cell_415_matmul_1_readvariableop_resource:	2?T
Esequential_159_lstm_478_lstm_cell_415_biasadd_readvariableop_resource:	?V
Dsequential_159_lstm_479_lstm_cell_416_matmul_readvariableop_resource:2(X
Fsequential_159_lstm_479_lstm_cell_416_matmul_1_readvariableop_resource:
(S
Esequential_159_lstm_479_lstm_cell_416_biasadd_readvariableop_resource:(I
7sequential_159_dense_159_matmul_readvariableop_resource:
F
8sequential_159_dense_159_biasadd_readvariableop_resource:
identity??/sequential_159/dense_159/BiasAdd/ReadVariableOp?.sequential_159/dense_159/MatMul/ReadVariableOp?<sequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp?;sequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOp?=sequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp?sequential_159/lstm_477/while?<sequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp?;sequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOp?=sequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp?sequential_159/lstm_478/while?<sequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp?;sequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOp?=sequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp?sequential_159/lstm_479/while[
sequential_159/lstm_477/ShapeShapelstm_477_input*
T0*
_output_shapes
:u
+sequential_159/lstm_477/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_159/lstm_477/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_159/lstm_477/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_159/lstm_477/strided_sliceStridedSlice&sequential_159/lstm_477/Shape:output:04sequential_159/lstm_477/strided_slice/stack:output:06sequential_159/lstm_477/strided_slice/stack_1:output:06sequential_159/lstm_477/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_159/lstm_477/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_159/lstm_477/zeros/packedPack.sequential_159/lstm_477/strided_slice:output:0/sequential_159/lstm_477/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_159/lstm_477/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_477/zerosFill-sequential_159/lstm_477/zeros/packed:output:0,sequential_159/lstm_477/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_159/lstm_477/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_159/lstm_477/zeros_1/packedPack.sequential_159/lstm_477/strided_slice:output:01sequential_159/lstm_477/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_159/lstm_477/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_477/zeros_1Fill/sequential_159/lstm_477/zeros_1/packed:output:0.sequential_159/lstm_477/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_159/lstm_477/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_159/lstm_477/transpose	Transposelstm_477_input/sequential_159/lstm_477/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_159/lstm_477/Shape_1Shape%sequential_159/lstm_477/transpose:y:0*
T0*
_output_shapes
:w
-sequential_159/lstm_477/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_477/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_477/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_477/strided_slice_1StridedSlice(sequential_159/lstm_477/Shape_1:output:06sequential_159/lstm_477/strided_slice_1/stack:output:08sequential_159/lstm_477/strided_slice_1/stack_1:output:08sequential_159/lstm_477/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_159/lstm_477/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_159/lstm_477/TensorArrayV2TensorListReserve<sequential_159/lstm_477/TensorArrayV2/element_shape:output:00sequential_159/lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_159/lstm_477/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_159/lstm_477/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_159/lstm_477/transpose:y:0Vsequential_159/lstm_477/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_159/lstm_477/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_477/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_477/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_477/strided_slice_2StridedSlice%sequential_159/lstm_477/transpose:y:06sequential_159/lstm_477/strided_slice_2/stack:output:08sequential_159/lstm_477/strided_slice_2/stack_1:output:08sequential_159/lstm_477/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOpReadVariableOpDsequential_159_lstm_477_lstm_cell_414_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_159/lstm_477/lstm_cell_414/MatMulMatMul0sequential_159/lstm_477/strided_slice_2:output:0Csequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOpFsequential_159_lstm_477_lstm_cell_414_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_159/lstm_477/lstm_cell_414/MatMul_1MatMul&sequential_159/lstm_477/zeros:output:0Esequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_159/lstm_477/lstm_cell_414/addAddV26sequential_159/lstm_477/lstm_cell_414/MatMul:product:08sequential_159/lstm_477/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOpEsequential_159_lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_159/lstm_477/lstm_cell_414/BiasAddBiasAdd-sequential_159/lstm_477/lstm_cell_414/add:z:0Dsequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_159/lstm_477/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_159/lstm_477/lstm_cell_414/splitSplit>sequential_159/lstm_477/lstm_cell_414/split/split_dim:output:06sequential_159/lstm_477/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_159/lstm_477/lstm_cell_414/SigmoidSigmoid4sequential_159/lstm_477/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_159/lstm_477/lstm_cell_414/Sigmoid_1Sigmoid4sequential_159/lstm_477/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_159/lstm_477/lstm_cell_414/mulMul3sequential_159/lstm_477/lstm_cell_414/Sigmoid_1:y:0(sequential_159/lstm_477/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_159/lstm_477/lstm_cell_414/ReluRelu4sequential_159/lstm_477/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_159/lstm_477/lstm_cell_414/mul_1Mul1sequential_159/lstm_477/lstm_cell_414/Sigmoid:y:08sequential_159/lstm_477/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_159/lstm_477/lstm_cell_414/add_1AddV2-sequential_159/lstm_477/lstm_cell_414/mul:z:0/sequential_159/lstm_477/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_159/lstm_477/lstm_cell_414/Sigmoid_2Sigmoid4sequential_159/lstm_477/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_159/lstm_477/lstm_cell_414/Relu_1Relu/sequential_159/lstm_477/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_159/lstm_477/lstm_cell_414/mul_2Mul3sequential_159/lstm_477/lstm_cell_414/Sigmoid_2:y:0:sequential_159/lstm_477/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_159/lstm_477/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_159/lstm_477/TensorArrayV2_1TensorListReserve>sequential_159/lstm_477/TensorArrayV2_1/element_shape:output:00sequential_159/lstm_477/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_159/lstm_477/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_159/lstm_477/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_159/lstm_477/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_159/lstm_477/whileWhile3sequential_159/lstm_477/while/loop_counter:output:09sequential_159/lstm_477/while/maximum_iterations:output:0%sequential_159/lstm_477/time:output:00sequential_159/lstm_477/TensorArrayV2_1:handle:0&sequential_159/lstm_477/zeros:output:0(sequential_159/lstm_477/zeros_1:output:00sequential_159/lstm_477/strided_slice_1:output:0Osequential_159/lstm_477/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_159_lstm_477_lstm_cell_414_matmul_readvariableop_resourceFsequential_159_lstm_477_lstm_cell_414_matmul_1_readvariableop_resourceEsequential_159_lstm_477_lstm_cell_414_biasadd_readvariableop_resource*
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
*sequential_159_lstm_477_while_body_2515178*6
cond.R,
*sequential_159_lstm_477_while_cond_2515177*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_159/lstm_477/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_159/lstm_477/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_159/lstm_477/while:output:3Qsequential_159/lstm_477/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_159/lstm_477/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_159/lstm_477/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_477/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_477/strided_slice_3StridedSliceCsequential_159/lstm_477/TensorArrayV2Stack/TensorListStack:tensor:06sequential_159/lstm_477/strided_slice_3/stack:output:08sequential_159/lstm_477/strided_slice_3/stack_1:output:08sequential_159/lstm_477/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_159/lstm_477/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_159/lstm_477/transpose_1	TransposeCsequential_159/lstm_477/TensorArrayV2Stack/TensorListStack:tensor:01sequential_159/lstm_477/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_159/lstm_477/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_159/lstm_478/ShapeShape'sequential_159/lstm_477/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_159/lstm_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_159/lstm_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_159/lstm_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_159/lstm_478/strided_sliceStridedSlice&sequential_159/lstm_478/Shape:output:04sequential_159/lstm_478/strided_slice/stack:output:06sequential_159/lstm_478/strided_slice/stack_1:output:06sequential_159/lstm_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_159/lstm_478/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_159/lstm_478/zeros/packedPack.sequential_159/lstm_478/strided_slice:output:0/sequential_159/lstm_478/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_159/lstm_478/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_478/zerosFill-sequential_159/lstm_478/zeros/packed:output:0,sequential_159/lstm_478/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_159/lstm_478/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_159/lstm_478/zeros_1/packedPack.sequential_159/lstm_478/strided_slice:output:01sequential_159/lstm_478/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_159/lstm_478/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_478/zeros_1Fill/sequential_159/lstm_478/zeros_1/packed:output:0.sequential_159/lstm_478/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_159/lstm_478/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_159/lstm_478/transpose	Transpose'sequential_159/lstm_477/transpose_1:y:0/sequential_159/lstm_478/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_159/lstm_478/Shape_1Shape%sequential_159/lstm_478/transpose:y:0*
T0*
_output_shapes
:w
-sequential_159/lstm_478/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_478/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_478/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_478/strided_slice_1StridedSlice(sequential_159/lstm_478/Shape_1:output:06sequential_159/lstm_478/strided_slice_1/stack:output:08sequential_159/lstm_478/strided_slice_1/stack_1:output:08sequential_159/lstm_478/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_159/lstm_478/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_159/lstm_478/TensorArrayV2TensorListReserve<sequential_159/lstm_478/TensorArrayV2/element_shape:output:00sequential_159/lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_159/lstm_478/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_159/lstm_478/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_159/lstm_478/transpose:y:0Vsequential_159/lstm_478/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_159/lstm_478/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_478/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_478/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_478/strided_slice_2StridedSlice%sequential_159/lstm_478/transpose:y:06sequential_159/lstm_478/strided_slice_2/stack:output:08sequential_159/lstm_478/strided_slice_2/stack_1:output:08sequential_159/lstm_478/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOpReadVariableOpDsequential_159_lstm_478_lstm_cell_415_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_159/lstm_478/lstm_cell_415/MatMulMatMul0sequential_159/lstm_478/strided_slice_2:output:0Csequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOpFsequential_159_lstm_478_lstm_cell_415_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_159/lstm_478/lstm_cell_415/MatMul_1MatMul&sequential_159/lstm_478/zeros:output:0Esequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_159/lstm_478/lstm_cell_415/addAddV26sequential_159/lstm_478/lstm_cell_415/MatMul:product:08sequential_159/lstm_478/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOpEsequential_159_lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_159/lstm_478/lstm_cell_415/BiasAddBiasAdd-sequential_159/lstm_478/lstm_cell_415/add:z:0Dsequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_159/lstm_478/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_159/lstm_478/lstm_cell_415/splitSplit>sequential_159/lstm_478/lstm_cell_415/split/split_dim:output:06sequential_159/lstm_478/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_159/lstm_478/lstm_cell_415/SigmoidSigmoid4sequential_159/lstm_478/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_159/lstm_478/lstm_cell_415/Sigmoid_1Sigmoid4sequential_159/lstm_478/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_159/lstm_478/lstm_cell_415/mulMul3sequential_159/lstm_478/lstm_cell_415/Sigmoid_1:y:0(sequential_159/lstm_478/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_159/lstm_478/lstm_cell_415/ReluRelu4sequential_159/lstm_478/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_159/lstm_478/lstm_cell_415/mul_1Mul1sequential_159/lstm_478/lstm_cell_415/Sigmoid:y:08sequential_159/lstm_478/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_159/lstm_478/lstm_cell_415/add_1AddV2-sequential_159/lstm_478/lstm_cell_415/mul:z:0/sequential_159/lstm_478/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_159/lstm_478/lstm_cell_415/Sigmoid_2Sigmoid4sequential_159/lstm_478/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_159/lstm_478/lstm_cell_415/Relu_1Relu/sequential_159/lstm_478/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_159/lstm_478/lstm_cell_415/mul_2Mul3sequential_159/lstm_478/lstm_cell_415/Sigmoid_2:y:0:sequential_159/lstm_478/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_159/lstm_478/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_159/lstm_478/TensorArrayV2_1TensorListReserve>sequential_159/lstm_478/TensorArrayV2_1/element_shape:output:00sequential_159/lstm_478/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_159/lstm_478/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_159/lstm_478/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_159/lstm_478/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_159/lstm_478/whileWhile3sequential_159/lstm_478/while/loop_counter:output:09sequential_159/lstm_478/while/maximum_iterations:output:0%sequential_159/lstm_478/time:output:00sequential_159/lstm_478/TensorArrayV2_1:handle:0&sequential_159/lstm_478/zeros:output:0(sequential_159/lstm_478/zeros_1:output:00sequential_159/lstm_478/strided_slice_1:output:0Osequential_159/lstm_478/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_159_lstm_478_lstm_cell_415_matmul_readvariableop_resourceFsequential_159_lstm_478_lstm_cell_415_matmul_1_readvariableop_resourceEsequential_159_lstm_478_lstm_cell_415_biasadd_readvariableop_resource*
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
*sequential_159_lstm_478_while_body_2515317*6
cond.R,
*sequential_159_lstm_478_while_cond_2515316*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_159/lstm_478/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_159/lstm_478/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_159/lstm_478/while:output:3Qsequential_159/lstm_478/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_159/lstm_478/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_159/lstm_478/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_478/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_478/strided_slice_3StridedSliceCsequential_159/lstm_478/TensorArrayV2Stack/TensorListStack:tensor:06sequential_159/lstm_478/strided_slice_3/stack:output:08sequential_159/lstm_478/strided_slice_3/stack_1:output:08sequential_159/lstm_478/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_159/lstm_478/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_159/lstm_478/transpose_1	TransposeCsequential_159/lstm_478/TensorArrayV2Stack/TensorListStack:tensor:01sequential_159/lstm_478/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_159/lstm_478/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_159/lstm_479/ShapeShape'sequential_159/lstm_478/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_159/lstm_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_159/lstm_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_159/lstm_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_159/lstm_479/strided_sliceStridedSlice&sequential_159/lstm_479/Shape:output:04sequential_159/lstm_479/strided_slice/stack:output:06sequential_159/lstm_479/strided_slice/stack_1:output:06sequential_159/lstm_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_159/lstm_479/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_159/lstm_479/zeros/packedPack.sequential_159/lstm_479/strided_slice:output:0/sequential_159/lstm_479/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_159/lstm_479/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_479/zerosFill-sequential_159/lstm_479/zeros/packed:output:0,sequential_159/lstm_479/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_159/lstm_479/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_159/lstm_479/zeros_1/packedPack.sequential_159/lstm_479/strided_slice:output:01sequential_159/lstm_479/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_159/lstm_479/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_159/lstm_479/zeros_1Fill/sequential_159/lstm_479/zeros_1/packed:output:0.sequential_159/lstm_479/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_159/lstm_479/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_159/lstm_479/transpose	Transpose'sequential_159/lstm_478/transpose_1:y:0/sequential_159/lstm_479/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_159/lstm_479/Shape_1Shape%sequential_159/lstm_479/transpose:y:0*
T0*
_output_shapes
:w
-sequential_159/lstm_479/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_479/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_479/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_479/strided_slice_1StridedSlice(sequential_159/lstm_479/Shape_1:output:06sequential_159/lstm_479/strided_slice_1/stack:output:08sequential_159/lstm_479/strided_slice_1/stack_1:output:08sequential_159/lstm_479/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_159/lstm_479/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_159/lstm_479/TensorArrayV2TensorListReserve<sequential_159/lstm_479/TensorArrayV2/element_shape:output:00sequential_159/lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_159/lstm_479/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_159/lstm_479/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_159/lstm_479/transpose:y:0Vsequential_159/lstm_479/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_159/lstm_479/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_479/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_159/lstm_479/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_479/strided_slice_2StridedSlice%sequential_159/lstm_479/transpose:y:06sequential_159/lstm_479/strided_slice_2/stack:output:08sequential_159/lstm_479/strided_slice_2/stack_1:output:08sequential_159/lstm_479/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOpReadVariableOpDsequential_159_lstm_479_lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_159/lstm_479/lstm_cell_416/MatMulMatMul0sequential_159/lstm_479/strided_slice_2:output:0Csequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOpFsequential_159_lstm_479_lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_159/lstm_479/lstm_cell_416/MatMul_1MatMul&sequential_159/lstm_479/zeros:output:0Esequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_159/lstm_479/lstm_cell_416/addAddV26sequential_159/lstm_479/lstm_cell_416/MatMul:product:08sequential_159/lstm_479/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOpEsequential_159_lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_159/lstm_479/lstm_cell_416/BiasAddBiasAdd-sequential_159/lstm_479/lstm_cell_416/add:z:0Dsequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_159/lstm_479/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_159/lstm_479/lstm_cell_416/splitSplit>sequential_159/lstm_479/lstm_cell_416/split/split_dim:output:06sequential_159/lstm_479/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_159/lstm_479/lstm_cell_416/SigmoidSigmoid4sequential_159/lstm_479/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_159/lstm_479/lstm_cell_416/Sigmoid_1Sigmoid4sequential_159/lstm_479/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_159/lstm_479/lstm_cell_416/mulMul3sequential_159/lstm_479/lstm_cell_416/Sigmoid_1:y:0(sequential_159/lstm_479/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_159/lstm_479/lstm_cell_416/ReluRelu4sequential_159/lstm_479/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_159/lstm_479/lstm_cell_416/mul_1Mul1sequential_159/lstm_479/lstm_cell_416/Sigmoid:y:08sequential_159/lstm_479/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_159/lstm_479/lstm_cell_416/add_1AddV2-sequential_159/lstm_479/lstm_cell_416/mul:z:0/sequential_159/lstm_479/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_159/lstm_479/lstm_cell_416/Sigmoid_2Sigmoid4sequential_159/lstm_479/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_159/lstm_479/lstm_cell_416/Relu_1Relu/sequential_159/lstm_479/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_159/lstm_479/lstm_cell_416/mul_2Mul3sequential_159/lstm_479/lstm_cell_416/Sigmoid_2:y:0:sequential_159/lstm_479/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_159/lstm_479/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_159/lstm_479/TensorArrayV2_1TensorListReserve>sequential_159/lstm_479/TensorArrayV2_1/element_shape:output:00sequential_159/lstm_479/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_159/lstm_479/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_159/lstm_479/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_159/lstm_479/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_159/lstm_479/whileWhile3sequential_159/lstm_479/while/loop_counter:output:09sequential_159/lstm_479/while/maximum_iterations:output:0%sequential_159/lstm_479/time:output:00sequential_159/lstm_479/TensorArrayV2_1:handle:0&sequential_159/lstm_479/zeros:output:0(sequential_159/lstm_479/zeros_1:output:00sequential_159/lstm_479/strided_slice_1:output:0Osequential_159/lstm_479/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_159_lstm_479_lstm_cell_416_matmul_readvariableop_resourceFsequential_159_lstm_479_lstm_cell_416_matmul_1_readvariableop_resourceEsequential_159_lstm_479_lstm_cell_416_biasadd_readvariableop_resource*
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
*sequential_159_lstm_479_while_body_2515456*6
cond.R,
*sequential_159_lstm_479_while_cond_2515455*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_159/lstm_479/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_159/lstm_479/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_159/lstm_479/while:output:3Qsequential_159/lstm_479/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_159/lstm_479/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_159/lstm_479/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_159/lstm_479/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_159/lstm_479/strided_slice_3StridedSliceCsequential_159/lstm_479/TensorArrayV2Stack/TensorListStack:tensor:06sequential_159/lstm_479/strided_slice_3/stack:output:08sequential_159/lstm_479/strided_slice_3/stack_1:output:08sequential_159/lstm_479/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_159/lstm_479/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_159/lstm_479/transpose_1	TransposeCsequential_159/lstm_479/TensorArrayV2Stack/TensorListStack:tensor:01sequential_159/lstm_479/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_159/lstm_479/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_159/dense_159/MatMul/ReadVariableOpReadVariableOp7sequential_159_dense_159_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_159/dense_159/MatMulMatMul0sequential_159/lstm_479/strided_slice_3:output:06sequential_159/dense_159/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_159/dense_159/BiasAdd/ReadVariableOpReadVariableOp8sequential_159_dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_159/dense_159/BiasAddBiasAdd)sequential_159/dense_159/MatMul:product:07sequential_159/dense_159/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_159/dense_159/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_159/dense_159/BiasAdd/ReadVariableOp/^sequential_159/dense_159/MatMul/ReadVariableOp=^sequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp<^sequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOp>^sequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp^sequential_159/lstm_477/while=^sequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp<^sequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOp>^sequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp^sequential_159/lstm_478/while=^sequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp<^sequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOp>^sequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp^sequential_159/lstm_479/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_159/dense_159/BiasAdd/ReadVariableOp/sequential_159/dense_159/BiasAdd/ReadVariableOp2`
.sequential_159/dense_159/MatMul/ReadVariableOp.sequential_159/dense_159/MatMul/ReadVariableOp2|
<sequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp<sequential_159/lstm_477/lstm_cell_414/BiasAdd/ReadVariableOp2z
;sequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOp;sequential_159/lstm_477/lstm_cell_414/MatMul/ReadVariableOp2~
=sequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp=sequential_159/lstm_477/lstm_cell_414/MatMul_1/ReadVariableOp2>
sequential_159/lstm_477/whilesequential_159/lstm_477/while2|
<sequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp<sequential_159/lstm_478/lstm_cell_415/BiasAdd/ReadVariableOp2z
;sequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOp;sequential_159/lstm_478/lstm_cell_415/MatMul/ReadVariableOp2~
=sequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp=sequential_159/lstm_478/lstm_cell_415/MatMul_1/ReadVariableOp2>
sequential_159/lstm_478/whilesequential_159/lstm_478/while2|
<sequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp<sequential_159/lstm_479/lstm_cell_416/BiasAdd/ReadVariableOp2z
;sequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOp;sequential_159/lstm_479/lstm_cell_416/MatMul/ReadVariableOp2~
=sequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp=sequential_159/lstm_479/lstm_cell_416/MatMul_1/ReadVariableOp2>
sequential_159/lstm_479/whilesequential_159/lstm_479/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_477_input
?

?
%__inference_signature_wrapper_2517806
lstm_477_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_477_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2515546o
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
_user_specified_namelstm_477_input
?
?
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2515963

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
/__inference_lstm_cell_416_layer_call_fn_2520811

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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2516459o
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
*__inference_lstm_479_layer_call_fn_2519990

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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517261o
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
while_cond_2519718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519718___redundant_placeholder05
1while_while_cond_2519718___redundant_placeholder15
1while_while_cond_2519718___redundant_placeholder25
1while_while_cond_2519718___redundant_placeholder3
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2520581

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
?C
?

lstm_478_while_body_2518058.
*lstm_478_while_lstm_478_while_loop_counter4
0lstm_478_while_lstm_478_while_maximum_iterations
lstm_478_while_placeholder 
lstm_478_while_placeholder_1 
lstm_478_while_placeholder_2 
lstm_478_while_placeholder_3-
)lstm_478_while_lstm_478_strided_slice_1_0i
elstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0:	d?R
?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0:	2?M
>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0:	?
lstm_478_while_identity
lstm_478_while_identity_1
lstm_478_while_identity_2
lstm_478_while_identity_3
lstm_478_while_identity_4
lstm_478_while_identity_5+
'lstm_478_while_lstm_478_strided_slice_1g
clstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensorN
;lstm_478_while_lstm_cell_415_matmul_readvariableop_resource:	d?P
=lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource:	2?K
<lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource:	???3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp?2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp?4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp?
@lstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_478/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0lstm_478_while_placeholderIlstm_478/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOpReadVariableOp=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_478/while/lstm_cell_415/MatMulMatMul9lstm_478/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOpReadVariableOp?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_478/while/lstm_cell_415/MatMul_1MatMullstm_478_while_placeholder_2<lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_478/while/lstm_cell_415/addAddV2-lstm_478/while/lstm_cell_415/MatMul:product:0/lstm_478/while/lstm_cell_415/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOpReadVariableOp>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_478/while/lstm_cell_415/BiasAddBiasAdd$lstm_478/while/lstm_cell_415/add:z:0;lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_478/while/lstm_cell_415/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_478/while/lstm_cell_415/splitSplit5lstm_478/while/lstm_cell_415/split/split_dim:output:0-lstm_478/while/lstm_cell_415/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_478/while/lstm_cell_415/SigmoidSigmoid+lstm_478/while/lstm_cell_415/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_478/while/lstm_cell_415/Sigmoid_1Sigmoid+lstm_478/while/lstm_cell_415/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_478/while/lstm_cell_415/mulMul*lstm_478/while/lstm_cell_415/Sigmoid_1:y:0lstm_478_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_478/while/lstm_cell_415/ReluRelu+lstm_478/while/lstm_cell_415/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/mul_1Mul(lstm_478/while/lstm_cell_415/Sigmoid:y:0/lstm_478/while/lstm_cell_415/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/add_1AddV2$lstm_478/while/lstm_cell_415/mul:z:0&lstm_478/while/lstm_cell_415/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_478/while/lstm_cell_415/Sigmoid_2Sigmoid+lstm_478/while/lstm_cell_415/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_478/while/lstm_cell_415/Relu_1Relu&lstm_478/while/lstm_cell_415/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_478/while/lstm_cell_415/mul_2Mul*lstm_478/while/lstm_cell_415/Sigmoid_2:y:01lstm_478/while/lstm_cell_415/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_478/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_478_while_placeholder_1lstm_478_while_placeholder&lstm_478/while/lstm_cell_415/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_478/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_478/while/addAddV2lstm_478_while_placeholderlstm_478/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_478/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_478/while/add_1AddV2*lstm_478_while_lstm_478_while_loop_counterlstm_478/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_478/while/IdentityIdentitylstm_478/while/add_1:z:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_1Identity0lstm_478_while_lstm_478_while_maximum_iterations^lstm_478/while/NoOp*
T0*
_output_shapes
: t
lstm_478/while/Identity_2Identitylstm_478/while/add:z:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_3IdentityClstm_478/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_478/while/NoOp*
T0*
_output_shapes
: ?
lstm_478/while/Identity_4Identity&lstm_478/while/lstm_cell_415/mul_2:z:0^lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_478/while/Identity_5Identity&lstm_478/while/lstm_cell_415/add_1:z:0^lstm_478/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_478/while/NoOpNoOp4^lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp3^lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp5^lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_478_while_identity lstm_478/while/Identity:output:0"?
lstm_478_while_identity_1"lstm_478/while/Identity_1:output:0"?
lstm_478_while_identity_2"lstm_478/while/Identity_2:output:0"?
lstm_478_while_identity_3"lstm_478/while/Identity_3:output:0"?
lstm_478_while_identity_4"lstm_478/while/Identity_4:output:0"?
lstm_478_while_identity_5"lstm_478/while/Identity_5:output:0"T
'lstm_478_while_lstm_478_strided_slice_1)lstm_478_while_lstm_478_strided_slice_1_0"~
<lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource>lstm_478_while_lstm_cell_415_biasadd_readvariableop_resource_0"?
=lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource?lstm_478_while_lstm_cell_415_matmul_1_readvariableop_resource_0"|
;lstm_478_while_lstm_cell_415_matmul_readvariableop_resource=lstm_478_while_lstm_cell_415_matmul_readvariableop_resource_0"?
clstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensorelstm_478_while_tensorarrayv2read_tensorlistgetitem_lstm_478_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp3lstm_478/while/lstm_cell_415/BiasAdd/ReadVariableOp2h
2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp2lstm_478/while/lstm_cell_415/MatMul/ReadVariableOp2l
4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp4lstm_478/while/lstm_cell_415/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_479_while_cond_2518196.
*lstm_479_while_lstm_479_while_loop_counter4
0lstm_479_while_lstm_479_while_maximum_iterations
lstm_479_while_placeholder 
lstm_479_while_placeholder_1 
lstm_479_while_placeholder_2 
lstm_479_while_placeholder_30
,lstm_479_while_less_lstm_479_strided_slice_1G
Clstm_479_while_lstm_479_while_cond_2518196___redundant_placeholder0G
Clstm_479_while_lstm_479_while_cond_2518196___redundant_placeholder1G
Clstm_479_while_lstm_479_while_cond_2518196___redundant_placeholder2G
Clstm_479_while_lstm_479_while_cond_2518196___redundant_placeholder3
lstm_479_while_identity
?
lstm_479/while/LessLesslstm_479_while_placeholder,lstm_479_while_less_lstm_479_strided_slice_1*
T0*
_output_shapes
: ]
lstm_479/while/IdentityIdentitylstm_479/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_479_while_identity lstm_479/while/Identity:output:0*(
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517261

inputs>
,lstm_cell_416_matmul_readvariableop_resource:2(@
.lstm_cell_416_matmul_1_readvariableop_resource:
(;
-lstm_cell_416_biasadd_readvariableop_resource:(
identity??$lstm_cell_416/BiasAdd/ReadVariableOp?#lstm_cell_416/MatMul/ReadVariableOp?%lstm_cell_416/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_416/MatMul/ReadVariableOpReadVariableOp,lstm_cell_416_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_416/MatMulMatMulstrided_slice_2:output:0+lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_416_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_416/MatMul_1MatMulzeros:output:0-lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_416/addAddV2lstm_cell_416/MatMul:product:0 lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_416_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_416/BiasAddBiasAddlstm_cell_416/add:z:0,lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_416/splitSplit&lstm_cell_416/split/split_dim:output:0lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_416/SigmoidSigmoidlstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_1Sigmoidlstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_416/mulMullstm_cell_416/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_416/ReluRelulstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_1Mullstm_cell_416/Sigmoid:y:0 lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_416/add_1AddV2lstm_cell_416/mul:z:0lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_416/Sigmoid_2Sigmoidlstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_416/Relu_1Relulstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_416/mul_2Mullstm_cell_416/Sigmoid_2:y:0"lstm_cell_416/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_416_matmul_readvariableop_resource.lstm_cell_416_matmul_1_readvariableop_resource-lstm_cell_416_biasadd_readvariableop_resource*
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
while_body_2517177*
condR
while_cond_2517176*K
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
NoOpNoOp%^lstm_cell_416/BiasAdd/ReadVariableOp$^lstm_cell_416/MatMul/ReadVariableOp&^lstm_cell_416/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_416/BiasAdd/ReadVariableOp$lstm_cell_416/BiasAdd/ReadVariableOp2J
#lstm_cell_416/MatMul/ReadVariableOp#lstm_cell_416/MatMul/ReadVariableOp2N
%lstm_cell_416/MatMul_1/ReadVariableOp%lstm_cell_416/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2515626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2515626___redundant_placeholder05
1while_while_cond_2515626___redundant_placeholder15
1while_while_cond_2515626___redundant_placeholder25
1while_while_cond_2515626___redundant_placeholder3
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
while_body_2520049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_416_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_416_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_416_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_416_matmul_readvariableop_resource:2(F
4while_lstm_cell_416_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_416_biasadd_readvariableop_resource:(??*while/lstm_cell_416/BiasAdd/ReadVariableOp?)while/lstm_cell_416/MatMul/ReadVariableOp?+while/lstm_cell_416/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_416/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_416_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_416/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_416/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_416/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_416_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_416/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_416/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_416/addAddV2$while/lstm_cell_416/MatMul:product:0&while/lstm_cell_416/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_416/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_416_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_416/BiasAddBiasAddwhile/lstm_cell_416/add:z:02while/lstm_cell_416/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_416/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_416/splitSplit,while/lstm_cell_416/split/split_dim:output:0$while/lstm_cell_416/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_416/SigmoidSigmoid"while/lstm_cell_416/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_1Sigmoid"while/lstm_cell_416/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mulMul!while/lstm_cell_416/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_416/ReluRelu"while/lstm_cell_416/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_1Mulwhile/lstm_cell_416/Sigmoid:y:0&while/lstm_cell_416/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/add_1AddV2while/lstm_cell_416/mul:z:0while/lstm_cell_416/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_416/Sigmoid_2Sigmoid"while/lstm_cell_416/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_416/Relu_1Reluwhile/lstm_cell_416/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_416/mul_2Mul!while/lstm_cell_416/Sigmoid_2:y:0(while/lstm_cell_416/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_416/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_416/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_416/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_416/BiasAdd/ReadVariableOp*^while/lstm_cell_416/MatMul/ReadVariableOp,^while/lstm_cell_416/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_416_biasadd_readvariableop_resource5while_lstm_cell_416_biasadd_readvariableop_resource_0"n
4while_lstm_cell_416_matmul_1_readvariableop_resource6while_lstm_cell_416_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_416_matmul_readvariableop_resource4while_lstm_cell_416_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_416/BiasAdd/ReadVariableOp*while/lstm_cell_416/BiasAdd/ReadVariableOp2V
)while/lstm_cell_416/MatMul/ReadVariableOp)while/lstm_cell_416/MatMul/ReadVariableOp2Z
+while/lstm_cell_416/MatMul_1/ReadVariableOp+while/lstm_cell_416/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517659

inputs#
lstm_477_2517632:	?#
lstm_477_2517634:	d?
lstm_477_2517636:	?#
lstm_478_2517639:	d?#
lstm_478_2517641:	2?
lstm_478_2517643:	?"
lstm_479_2517646:2("
lstm_479_2517648:
(
lstm_479_2517650:(#
dense_159_2517653:

dense_159_2517655:
identity??!dense_159/StatefulPartitionedCall? lstm_477/StatefulPartitionedCall? lstm_478/StatefulPartitionedCall? lstm_479/StatefulPartitionedCall?
 lstm_477/StatefulPartitionedCallStatefulPartitionedCallinputslstm_477_2517632lstm_477_2517634lstm_477_2517636*
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2517591?
 lstm_478/StatefulPartitionedCallStatefulPartitionedCall)lstm_477/StatefulPartitionedCall:output:0lstm_478_2517639lstm_478_2517641lstm_478_2517643*
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2517426?
 lstm_479/StatefulPartitionedCallStatefulPartitionedCall)lstm_478/StatefulPartitionedCall:output:0lstm_479_2517646lstm_479_2517648lstm_479_2517650*
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517261?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall)lstm_479/StatefulPartitionedCall:output:0dense_159_2517653dense_159_2517655*
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063y
IdentityIdentity*dense_159/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_159/StatefulPartitionedCall!^lstm_477/StatefulPartitionedCall!^lstm_478/StatefulPartitionedCall!^lstm_479/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2D
 lstm_477/StatefulPartitionedCall lstm_477/StatefulPartitionedCall2D
 lstm_478/StatefulPartitionedCall lstm_478/StatefulPartitionedCall2D
 lstm_479/StatefulPartitionedCall lstm_479/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2516660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516660___redundant_placeholder05
1while_while_cond_2516660___redundant_placeholder15
1while_while_cond_2516660___redundant_placeholder25
1while_while_cond_2516660___redundant_placeholder3
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
*sequential_159_lstm_477_while_cond_2515177L
Hsequential_159_lstm_477_while_sequential_159_lstm_477_while_loop_counterR
Nsequential_159_lstm_477_while_sequential_159_lstm_477_while_maximum_iterations-
)sequential_159_lstm_477_while_placeholder/
+sequential_159_lstm_477_while_placeholder_1/
+sequential_159_lstm_477_while_placeholder_2/
+sequential_159_lstm_477_while_placeholder_3N
Jsequential_159_lstm_477_while_less_sequential_159_lstm_477_strided_slice_1e
asequential_159_lstm_477_while_sequential_159_lstm_477_while_cond_2515177___redundant_placeholder0e
asequential_159_lstm_477_while_sequential_159_lstm_477_while_cond_2515177___redundant_placeholder1e
asequential_159_lstm_477_while_sequential_159_lstm_477_while_cond_2515177___redundant_placeholder2e
asequential_159_lstm_477_while_sequential_159_lstm_477_while_cond_2515177___redundant_placeholder3*
&sequential_159_lstm_477_while_identity
?
"sequential_159/lstm_477/while/LessLess)sequential_159_lstm_477_while_placeholderJsequential_159_lstm_477_while_less_sequential_159_lstm_477_strided_slice_1*
T0*
_output_shapes
: {
&sequential_159/lstm_477/while/IdentityIdentity&sequential_159/lstm_477/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_159_lstm_477_while_identity/sequential_159/lstm_477/while/Identity:output:0*(
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
while_cond_2518816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2518816___redundant_placeholder05
1while_while_cond_2518816___redundant_placeholder15
1while_while_cond_2518816___redundant_placeholder25
1while_while_cond_2518816___redundant_placeholder3
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
while_body_2519103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_414_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_414_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_414_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_414_matmul_readvariableop_resource:	?G
4while_lstm_cell_414_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_414_biasadd_readvariableop_resource:	???*while/lstm_cell_414/BiasAdd/ReadVariableOp?)while/lstm_cell_414/MatMul/ReadVariableOp?+while/lstm_cell_414/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_414/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_414_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_414/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_414/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_414/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_414_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_414/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_414/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_414/addAddV2$while/lstm_cell_414/MatMul:product:0&while/lstm_cell_414/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_414/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_414_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_414/BiasAddBiasAddwhile/lstm_cell_414/add:z:02while/lstm_cell_414/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_414/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_414/splitSplit,while/lstm_cell_414/split/split_dim:output:0$while/lstm_cell_414/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_414/SigmoidSigmoid"while/lstm_cell_414/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_1Sigmoid"while/lstm_cell_414/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mulMul!while/lstm_cell_414/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_414/ReluRelu"while/lstm_cell_414/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_1Mulwhile/lstm_cell_414/Sigmoid:y:0&while/lstm_cell_414/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/add_1AddV2while/lstm_cell_414/mul:z:0while/lstm_cell_414/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_414/Sigmoid_2Sigmoid"while/lstm_cell_414/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_414/Relu_1Reluwhile/lstm_cell_414/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_414/mul_2Mul!while/lstm_cell_414/Sigmoid_2:y:0(while/lstm_cell_414/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_414/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_414/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_414/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_414/BiasAdd/ReadVariableOp*^while/lstm_cell_414/MatMul/ReadVariableOp,^while/lstm_cell_414/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_414_biasadd_readvariableop_resource5while_lstm_cell_414_biasadd_readvariableop_resource_0"n
4while_lstm_cell_414_matmul_1_readvariableop_resource6while_lstm_cell_414_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_414_matmul_readvariableop_resource4while_lstm_cell_414_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_414/BiasAdd/ReadVariableOp*while/lstm_cell_414/BiasAdd/ReadVariableOp2V
)while/lstm_cell_414/MatMul/ReadVariableOp)while/lstm_cell_414/MatMul/ReadVariableOp2Z
+while/lstm_cell_414/MatMul_1/ReadVariableOp+while/lstm_cell_414/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517070

inputs#
lstm_477_2516746:	?#
lstm_477_2516748:	d?
lstm_477_2516750:	?#
lstm_478_2516896:	d?#
lstm_478_2516898:	2?
lstm_478_2516900:	?"
lstm_479_2517046:2("
lstm_479_2517048:
(
lstm_479_2517050:(#
dense_159_2517064:

dense_159_2517066:
identity??!dense_159/StatefulPartitionedCall? lstm_477/StatefulPartitionedCall? lstm_478/StatefulPartitionedCall? lstm_479/StatefulPartitionedCall?
 lstm_477/StatefulPartitionedCallStatefulPartitionedCallinputslstm_477_2516746lstm_477_2516748lstm_477_2516750*
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2516745?
 lstm_478/StatefulPartitionedCallStatefulPartitionedCall)lstm_477/StatefulPartitionedCall:output:0lstm_478_2516896lstm_478_2516898lstm_478_2516900*
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2516895?
 lstm_479/StatefulPartitionedCallStatefulPartitionedCall)lstm_478/StatefulPartitionedCall:output:0lstm_479_2517046lstm_479_2517048lstm_479_2517050*
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2517045?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall)lstm_479/StatefulPartitionedCall:output:0dense_159_2517064dense_159_2517066*
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063y
IdentityIdentity*dense_159/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_159/StatefulPartitionedCall!^lstm_477/StatefulPartitionedCall!^lstm_478/StatefulPartitionedCall!^lstm_479/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2D
 lstm_477/StatefulPartitionedCall lstm_477/StatefulPartitionedCall2D
 lstm_478/StatefulPartitionedCall lstm_478/StatefulPartitionedCall2D
 lstm_479/StatefulPartitionedCall lstm_479/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2519245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2519245___redundant_placeholder05
1while_while_cond_2519245___redundant_placeholder15
1while_while_cond_2519245___redundant_placeholder25
1while_while_cond_2519245___redundant_placeholder3
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
lstm_477_while_cond_2517918.
*lstm_477_while_lstm_477_while_loop_counter4
0lstm_477_while_lstm_477_while_maximum_iterations
lstm_477_while_placeholder 
lstm_477_while_placeholder_1 
lstm_477_while_placeholder_2 
lstm_477_while_placeholder_30
,lstm_477_while_less_lstm_477_strided_slice_1G
Clstm_477_while_lstm_477_while_cond_2517918___redundant_placeholder0G
Clstm_477_while_lstm_477_while_cond_2517918___redundant_placeholder1G
Clstm_477_while_lstm_477_while_cond_2517918___redundant_placeholder2G
Clstm_477_while_lstm_477_while_cond_2517918___redundant_placeholder3
lstm_477_while_identity
?
lstm_477/while/LessLesslstm_477_while_placeholder,lstm_477_while_less_lstm_477_strided_slice_1*
T0*
_output_shapes
: ]
lstm_477/while/IdentityIdentitylstm_477/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_477_while_identity lstm_477/while/Identity:output:0*(
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2517063

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
while_cond_2516326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2516326___redundant_placeholder05
1while_while_cond_2516326___redundant_placeholder15
1while_while_cond_2516326___redundant_placeholder25
1while_while_cond_2516326___redundant_placeholder3
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
0__inference_sequential_159_layer_call_fn_2517095
lstm_477_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_477_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517070o
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
_user_specified_namelstm_477_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_477_input;
 serving_default_lstm_477_input:0?????????=
	dense_1590
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
2dense_159/kernel
:2dense_159/bias
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
0:.	?2lstm_477/lstm_cell_477/kernel
::8	d?2'lstm_477/lstm_cell_477/recurrent_kernel
*:(?2lstm_477/lstm_cell_477/bias
0:.	d?2lstm_478/lstm_cell_478/kernel
::8	2?2'lstm_478/lstm_cell_478/recurrent_kernel
*:(?2lstm_478/lstm_cell_478/bias
/:-2(2lstm_479/lstm_cell_479/kernel
9:7
(2'lstm_479/lstm_cell_479/recurrent_kernel
):'(2lstm_479/lstm_cell_479/bias
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
2Adam/dense_159/kernel/m
!:2Adam/dense_159/bias/m
5:3	?2$Adam/lstm_477/lstm_cell_477/kernel/m
?:=	d?2.Adam/lstm_477/lstm_cell_477/recurrent_kernel/m
/:-?2"Adam/lstm_477/lstm_cell_477/bias/m
5:3	d?2$Adam/lstm_478/lstm_cell_478/kernel/m
?:=	2?2.Adam/lstm_478/lstm_cell_478/recurrent_kernel/m
/:-?2"Adam/lstm_478/lstm_cell_478/bias/m
4:22(2$Adam/lstm_479/lstm_cell_479/kernel/m
>:<
(2.Adam/lstm_479/lstm_cell_479/recurrent_kernel/m
.:,(2"Adam/lstm_479/lstm_cell_479/bias/m
':%
2Adam/dense_159/kernel/v
!:2Adam/dense_159/bias/v
5:3	?2$Adam/lstm_477/lstm_cell_477/kernel/v
?:=	d?2.Adam/lstm_477/lstm_cell_477/recurrent_kernel/v
/:-?2"Adam/lstm_477/lstm_cell_477/bias/v
5:3	d?2$Adam/lstm_478/lstm_cell_478/kernel/v
?:=	2?2.Adam/lstm_478/lstm_cell_478/recurrent_kernel/v
/:-?2"Adam/lstm_478/lstm_cell_478/bias/v
4:22(2$Adam/lstm_479/lstm_cell_479/kernel/v
>:<
(2.Adam/lstm_479/lstm_cell_479/recurrent_kernel/v
.:,(2"Adam/lstm_479/lstm_cell_479/bias/v
?2?
0__inference_sequential_159_layer_call_fn_2517095
0__inference_sequential_159_layer_call_fn_2517833
0__inference_sequential_159_layer_call_fn_2517860
0__inference_sequential_159_layer_call_fn_2517711?
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518287
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518714
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517741
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517771?
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
"__inference__wrapped_model_2515546lstm_477_input"?
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
*__inference_lstm_477_layer_call_fn_2518725
*__inference_lstm_477_layer_call_fn_2518736
*__inference_lstm_477_layer_call_fn_2518747
*__inference_lstm_477_layer_call_fn_2518758?
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2518901
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519044
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519187
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519330?
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
*__inference_lstm_478_layer_call_fn_2519341
*__inference_lstm_478_layer_call_fn_2519352
*__inference_lstm_478_layer_call_fn_2519363
*__inference_lstm_478_layer_call_fn_2519374?
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519517
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519660
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519803
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519946?
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
*__inference_lstm_479_layer_call_fn_2519957
*__inference_lstm_479_layer_call_fn_2519968
*__inference_lstm_479_layer_call_fn_2519979
*__inference_lstm_479_layer_call_fn_2519990?
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520133
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520276
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520419
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520562?
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
+__inference_dense_159_layer_call_fn_2520571?
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
F__inference_dense_159_layer_call_and_return_conditional_losses_2520581?
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
%__inference_signature_wrapper_2517806lstm_477_input"?
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
/__inference_lstm_cell_414_layer_call_fn_2520598
/__inference_lstm_cell_414_layer_call_fn_2520615?
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520647
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520679?
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
/__inference_lstm_cell_415_layer_call_fn_2520696
/__inference_lstm_cell_415_layer_call_fn_2520713?
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520745
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520777?
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
/__inference_lstm_cell_416_layer_call_fn_2520794
/__inference_lstm_cell_416_layer_call_fn_2520811?
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520843
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520875?
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
"__inference__wrapped_model_2515546?-./012345!";?8
1?.
,?)
lstm_477_input?????????
? "5?2
0
	dense_159#? 
	dense_159??????????
F__inference_dense_159_layer_call_and_return_conditional_losses_2520581\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_159_layer_call_fn_2520571O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_477_layer_call_and_return_conditional_losses_2518901?-./O?L
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519044?-./O?L
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519187q-./??<
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
E__inference_lstm_477_layer_call_and_return_conditional_losses_2519330q-./??<
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
*__inference_lstm_477_layer_call_fn_2518725}-./O?L
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
*__inference_lstm_477_layer_call_fn_2518736}-./O?L
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
*__inference_lstm_477_layer_call_fn_2518747d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_477_layer_call_fn_2518758d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519517?012O?L
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519660?012O?L
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519803q012??<
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
E__inference_lstm_478_layer_call_and_return_conditional_losses_2519946q012??<
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
*__inference_lstm_478_layer_call_fn_2519341}012O?L
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
*__inference_lstm_478_layer_call_fn_2519352}012O?L
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
*__inference_lstm_478_layer_call_fn_2519363d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_478_layer_call_fn_2519374d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520133}345O?L
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520276}345O?L
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520419m345??<
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
E__inference_lstm_479_layer_call_and_return_conditional_losses_2520562m345??<
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
*__inference_lstm_479_layer_call_fn_2519957p345O?L
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
*__inference_lstm_479_layer_call_fn_2519968p345O?L
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
*__inference_lstm_479_layer_call_fn_2519979`345??<
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
*__inference_lstm_479_layer_call_fn_2519990`345??<
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520647?-./??}
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
J__inference_lstm_cell_414_layer_call_and_return_conditional_losses_2520679?-./??}
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
/__inference_lstm_cell_414_layer_call_fn_2520598?-./??}
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
/__inference_lstm_cell_414_layer_call_fn_2520615?-./??}
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520745?012??}
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
J__inference_lstm_cell_415_layer_call_and_return_conditional_losses_2520777?012??}
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
/__inference_lstm_cell_415_layer_call_fn_2520696?012??}
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
/__inference_lstm_cell_415_layer_call_fn_2520713?012??}
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520843?345??}
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
J__inference_lstm_cell_416_layer_call_and_return_conditional_losses_2520875?345??}
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
/__inference_lstm_cell_416_layer_call_fn_2520794?345??}
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
/__inference_lstm_cell_416_layer_call_fn_2520811?345??}
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517741y-./012345!"C?@
9?6
,?)
lstm_477_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_159_layer_call_and_return_conditional_losses_2517771y-./012345!"C?@
9?6
,?)
lstm_477_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518287q-./012345!";?8
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
K__inference_sequential_159_layer_call_and_return_conditional_losses_2518714q-./012345!";?8
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
0__inference_sequential_159_layer_call_fn_2517095l-./012345!"C?@
9?6
,?)
lstm_477_input?????????
p 

 
? "???????????
0__inference_sequential_159_layer_call_fn_2517711l-./012345!"C?@
9?6
,?)
lstm_477_input?????????
p

 
? "???????????
0__inference_sequential_159_layer_call_fn_2517833d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_159_layer_call_fn_2517860d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2517806?-./012345!"M?J
? 
C?@
>
lstm_477_input,?)
lstm_477_input?????????"5?2
0
	dense_159#? 
	dense_159?????????