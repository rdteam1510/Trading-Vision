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
dense_266/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_266/kernel
u
$dense_266/kernel/Read/ReadVariableOpReadVariableOpdense_266/kernel*
_output_shapes

:
*
dtype0
t
dense_266/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_266/bias
m
"dense_266/bias/Read/ReadVariableOpReadVariableOpdense_266/bias*
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
lstm_798/lstm_cell_798/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_798/lstm_cell_798/kernel
?
1lstm_798/lstm_cell_798/kernel/Read/ReadVariableOpReadVariableOplstm_798/lstm_cell_798/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_798/lstm_cell_798/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_798/lstm_cell_798/recurrent_kernel
?
;lstm_798/lstm_cell_798/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_798/lstm_cell_798/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_798/lstm_cell_798/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_798/lstm_cell_798/bias
?
/lstm_798/lstm_cell_798/bias/Read/ReadVariableOpReadVariableOplstm_798/lstm_cell_798/bias*
_output_shapes	
:?*
dtype0
?
lstm_799/lstm_cell_799/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_799/lstm_cell_799/kernel
?
1lstm_799/lstm_cell_799/kernel/Read/ReadVariableOpReadVariableOplstm_799/lstm_cell_799/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_799/lstm_cell_799/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_799/lstm_cell_799/recurrent_kernel
?
;lstm_799/lstm_cell_799/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_799/lstm_cell_799/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_799/lstm_cell_799/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_799/lstm_cell_799/bias
?
/lstm_799/lstm_cell_799/bias/Read/ReadVariableOpReadVariableOplstm_799/lstm_cell_799/bias*
_output_shapes	
:?*
dtype0
?
lstm_800/lstm_cell_800/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_800/lstm_cell_800/kernel
?
1lstm_800/lstm_cell_800/kernel/Read/ReadVariableOpReadVariableOplstm_800/lstm_cell_800/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_800/lstm_cell_800/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_800/lstm_cell_800/recurrent_kernel
?
;lstm_800/lstm_cell_800/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_800/lstm_cell_800/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_800/lstm_cell_800/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_800/lstm_cell_800/bias
?
/lstm_800/lstm_cell_800/bias/Read/ReadVariableOpReadVariableOplstm_800/lstm_cell_800/bias*
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
Adam/dense_266/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_266/kernel/m
?
+Adam/dense_266/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_266/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_266/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_266/bias/m
{
)Adam/dense_266/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_266/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_798/lstm_cell_798/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_798/lstm_cell_798/kernel/m
?
8Adam/lstm_798/lstm_cell_798/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_798/lstm_cell_798/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_798/lstm_cell_798/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_798/lstm_cell_798/recurrent_kernel/m
?
BAdam/lstm_798/lstm_cell_798/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_798/lstm_cell_798/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_798/lstm_cell_798/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_798/lstm_cell_798/bias/m
?
6Adam/lstm_798/lstm_cell_798/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_798/lstm_cell_798/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_799/lstm_cell_799/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_799/lstm_cell_799/kernel/m
?
8Adam/lstm_799/lstm_cell_799/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_799/lstm_cell_799/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_799/lstm_cell_799/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_799/lstm_cell_799/recurrent_kernel/m
?
BAdam/lstm_799/lstm_cell_799/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_799/lstm_cell_799/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_799/lstm_cell_799/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_799/lstm_cell_799/bias/m
?
6Adam/lstm_799/lstm_cell_799/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_799/lstm_cell_799/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_800/lstm_cell_800/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_800/lstm_cell_800/kernel/m
?
8Adam/lstm_800/lstm_cell_800/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_800/lstm_cell_800/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_800/lstm_cell_800/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_800/lstm_cell_800/recurrent_kernel/m
?
BAdam/lstm_800/lstm_cell_800/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_800/lstm_cell_800/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_800/lstm_cell_800/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_800/lstm_cell_800/bias/m
?
6Adam/lstm_800/lstm_cell_800/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_800/lstm_cell_800/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_266/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_266/kernel/v
?
+Adam/dense_266/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_266/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_266/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_266/bias/v
{
)Adam/dense_266/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_266/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_798/lstm_cell_798/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_798/lstm_cell_798/kernel/v
?
8Adam/lstm_798/lstm_cell_798/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_798/lstm_cell_798/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_798/lstm_cell_798/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_798/lstm_cell_798/recurrent_kernel/v
?
BAdam/lstm_798/lstm_cell_798/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_798/lstm_cell_798/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_798/lstm_cell_798/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_798/lstm_cell_798/bias/v
?
6Adam/lstm_798/lstm_cell_798/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_798/lstm_cell_798/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_799/lstm_cell_799/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_799/lstm_cell_799/kernel/v
?
8Adam/lstm_799/lstm_cell_799/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_799/lstm_cell_799/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_799/lstm_cell_799/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_799/lstm_cell_799/recurrent_kernel/v
?
BAdam/lstm_799/lstm_cell_799/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_799/lstm_cell_799/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_799/lstm_cell_799/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_799/lstm_cell_799/bias/v
?
6Adam/lstm_799/lstm_cell_799/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_799/lstm_cell_799/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_800/lstm_cell_800/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_800/lstm_cell_800/kernel/v
?
8Adam/lstm_800/lstm_cell_800/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_800/lstm_cell_800/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_800/lstm_cell_800/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_800/lstm_cell_800/recurrent_kernel/v
?
BAdam/lstm_800/lstm_cell_800/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_800/lstm_cell_800/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_800/lstm_cell_800/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_800/lstm_cell_800/bias/v
?
6Adam/lstm_800/lstm_cell_800/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_800/lstm_cell_800/bias/v*
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
VARIABLE_VALUEdense_266/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_266/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_798/lstm_cell_798/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_798/lstm_cell_798/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_798/lstm_cell_798/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_799/lstm_cell_799/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_799/lstm_cell_799/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_799/lstm_cell_799/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_800/lstm_cell_800/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_800/lstm_cell_800/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_800/lstm_cell_800/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_266/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_266/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_798/lstm_cell_798/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_798/lstm_cell_798/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_798/lstm_cell_798/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_799/lstm_cell_799/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_799/lstm_cell_799/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_799/lstm_cell_799/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_800/lstm_cell_800/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_800/lstm_cell_800/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_800/lstm_cell_800/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_266/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_266/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_798/lstm_cell_798/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_798/lstm_cell_798/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_798/lstm_cell_798/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_799/lstm_cell_799/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_799/lstm_cell_799/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_799/lstm_cell_799/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_800/lstm_cell_800/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_800/lstm_cell_800/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_800/lstm_cell_800/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_798_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_798_inputlstm_798/lstm_cell_798/kernel'lstm_798/lstm_cell_798/recurrent_kernellstm_798/lstm_cell_798/biaslstm_799/lstm_cell_799/kernel'lstm_799/lstm_cell_799/recurrent_kernellstm_799/lstm_cell_799/biaslstm_800/lstm_cell_800/kernel'lstm_800/lstm_cell_800/recurrent_kernellstm_800/lstm_cell_800/biasdense_266/kerneldense_266/bias*
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
%__inference_signature_wrapper_4061967
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_266/kernel/Read/ReadVariableOp"dense_266/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_798/lstm_cell_798/kernel/Read/ReadVariableOp;lstm_798/lstm_cell_798/recurrent_kernel/Read/ReadVariableOp/lstm_798/lstm_cell_798/bias/Read/ReadVariableOp1lstm_799/lstm_cell_799/kernel/Read/ReadVariableOp;lstm_799/lstm_cell_799/recurrent_kernel/Read/ReadVariableOp/lstm_799/lstm_cell_799/bias/Read/ReadVariableOp1lstm_800/lstm_cell_800/kernel/Read/ReadVariableOp;lstm_800/lstm_cell_800/recurrent_kernel/Read/ReadVariableOp/lstm_800/lstm_cell_800/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_266/kernel/m/Read/ReadVariableOp)Adam/dense_266/bias/m/Read/ReadVariableOp8Adam/lstm_798/lstm_cell_798/kernel/m/Read/ReadVariableOpBAdam/lstm_798/lstm_cell_798/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_798/lstm_cell_798/bias/m/Read/ReadVariableOp8Adam/lstm_799/lstm_cell_799/kernel/m/Read/ReadVariableOpBAdam/lstm_799/lstm_cell_799/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_799/lstm_cell_799/bias/m/Read/ReadVariableOp8Adam/lstm_800/lstm_cell_800/kernel/m/Read/ReadVariableOpBAdam/lstm_800/lstm_cell_800/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_800/lstm_cell_800/bias/m/Read/ReadVariableOp+Adam/dense_266/kernel/v/Read/ReadVariableOp)Adam/dense_266/bias/v/Read/ReadVariableOp8Adam/lstm_798/lstm_cell_798/kernel/v/Read/ReadVariableOpBAdam/lstm_798/lstm_cell_798/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_798/lstm_cell_798/bias/v/Read/ReadVariableOp8Adam/lstm_799/lstm_cell_799/kernel/v/Read/ReadVariableOpBAdam/lstm_799/lstm_cell_799/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_799/lstm_cell_799/bias/v/Read/ReadVariableOp8Adam/lstm_800/lstm_cell_800/kernel/v/Read/ReadVariableOpBAdam/lstm_800/lstm_cell_800/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_800/lstm_cell_800/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4065179
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_266/kerneldense_266/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_798/lstm_cell_798/kernel'lstm_798/lstm_cell_798/recurrent_kernellstm_798/lstm_cell_798/biaslstm_799/lstm_cell_799/kernel'lstm_799/lstm_cell_799/recurrent_kernellstm_799/lstm_cell_799/biaslstm_800/lstm_cell_800/kernel'lstm_800/lstm_cell_800/recurrent_kernellstm_800/lstm_cell_800/biastotalcountAdam/dense_266/kernel/mAdam/dense_266/bias/m$Adam/lstm_798/lstm_cell_798/kernel/m.Adam/lstm_798/lstm_cell_798/recurrent_kernel/m"Adam/lstm_798/lstm_cell_798/bias/m$Adam/lstm_799/lstm_cell_799/kernel/m.Adam/lstm_799/lstm_cell_799/recurrent_kernel/m"Adam/lstm_799/lstm_cell_799/bias/m$Adam/lstm_800/lstm_cell_800/kernel/m.Adam/lstm_800/lstm_cell_800/recurrent_kernel/m"Adam/lstm_800/lstm_cell_800/bias/mAdam/dense_266/kernel/vAdam/dense_266/bias/v$Adam/lstm_798/lstm_cell_798/kernel/v.Adam/lstm_798/lstm_cell_798/recurrent_kernel/v"Adam/lstm_798/lstm_cell_798/bias/v$Adam/lstm_799/lstm_cell_799/kernel/v.Adam/lstm_799/lstm_cell_799/recurrent_kernel/v"Adam/lstm_799/lstm_cell_799/bias/v$Adam/lstm_800/lstm_cell_800/kernel/v.Adam/lstm_800/lstm_cell_800/recurrent_kernel/v"Adam/lstm_800/lstm_cell_800/bias/v*4
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
#__inference__traced_restore_4065309??+
?
?
while_cond_4064495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4064495___redundant_placeholder05
1while_while_cond_4064495___redundant_placeholder15
1while_while_cond_4064495___redundant_placeholder25
1while_while_cond_4064495___redundant_placeholder3
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
/__inference_lstm_cell_669_layer_call_fn_4064776

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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059920o
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064808

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
/__inference_lstm_cell_669_layer_call_fn_4064759

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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059774o
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
while_cond_4060137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060137___redundant_placeholder05
1while_while_cond_4060137___redundant_placeholder15
1while_while_cond_4060137___redundant_placeholder25
1while_while_cond_4060137___redundant_placeholder3
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

lstm_799_while_body_4062646.
*lstm_799_while_lstm_799_while_loop_counter4
0lstm_799_while_lstm_799_while_maximum_iterations
lstm_799_while_placeholder 
lstm_799_while_placeholder_1 
lstm_799_while_placeholder_2 
lstm_799_while_placeholder_3-
)lstm_799_while_lstm_799_strided_slice_1_0i
elstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0:	d?R
?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?M
>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
lstm_799_while_identity
lstm_799_while_identity_1
lstm_799_while_identity_2
lstm_799_while_identity_3
lstm_799_while_identity_4
lstm_799_while_identity_5+
'lstm_799_while_lstm_799_strided_slice_1g
clstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensorN
;lstm_799_while_lstm_cell_670_matmul_readvariableop_resource:	d?P
=lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource:	2?K
<lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource:	???3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp?2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp?4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp?
@lstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_799/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0lstm_799_while_placeholderIlstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_799/while/lstm_cell_670/MatMulMatMul9lstm_799/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_799/while/lstm_cell_670/MatMul_1MatMullstm_799_while_placeholder_2<lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_799/while/lstm_cell_670/addAddV2-lstm_799/while/lstm_cell_670/MatMul:product:0/lstm_799/while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_799/while/lstm_cell_670/BiasAddBiasAdd$lstm_799/while/lstm_cell_670/add:z:0;lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_799/while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_799/while/lstm_cell_670/splitSplit5lstm_799/while/lstm_cell_670/split/split_dim:output:0-lstm_799/while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_799/while/lstm_cell_670/SigmoidSigmoid+lstm_799/while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_799/while/lstm_cell_670/Sigmoid_1Sigmoid+lstm_799/while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_799/while/lstm_cell_670/mulMul*lstm_799/while/lstm_cell_670/Sigmoid_1:y:0lstm_799_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_799/while/lstm_cell_670/ReluRelu+lstm_799/while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/mul_1Mul(lstm_799/while/lstm_cell_670/Sigmoid:y:0/lstm_799/while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/add_1AddV2$lstm_799/while/lstm_cell_670/mul:z:0&lstm_799/while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_799/while/lstm_cell_670/Sigmoid_2Sigmoid+lstm_799/while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_799/while/lstm_cell_670/Relu_1Relu&lstm_799/while/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/mul_2Mul*lstm_799/while/lstm_cell_670/Sigmoid_2:y:01lstm_799/while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_799/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_799_while_placeholder_1lstm_799_while_placeholder&lstm_799/while/lstm_cell_670/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_799/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_799/while/addAddV2lstm_799_while_placeholderlstm_799/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_799/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_799/while/add_1AddV2*lstm_799_while_lstm_799_while_loop_counterlstm_799/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_799/while/IdentityIdentitylstm_799/while/add_1:z:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_1Identity0lstm_799_while_lstm_799_while_maximum_iterations^lstm_799/while/NoOp*
T0*
_output_shapes
: t
lstm_799/while/Identity_2Identitylstm_799/while/add:z:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_3IdentityClstm_799/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_4Identity&lstm_799/while/lstm_cell_670/mul_2:z:0^lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_799/while/Identity_5Identity&lstm_799/while/lstm_cell_670/add_1:z:0^lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_799/while/NoOpNoOp4^lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp3^lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp5^lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_799_while_identity lstm_799/while/Identity:output:0"?
lstm_799_while_identity_1"lstm_799/while/Identity_1:output:0"?
lstm_799_while_identity_2"lstm_799/while/Identity_2:output:0"?
lstm_799_while_identity_3"lstm_799/while/Identity_3:output:0"?
lstm_799_while_identity_4"lstm_799/while/Identity_4:output:0"?
lstm_799_while_identity_5"lstm_799/while/Identity_5:output:0"T
'lstm_799_while_lstm_799_strided_slice_1)lstm_799_while_lstm_799_strided_slice_1_0"~
<lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0"?
=lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0"|
;lstm_799_while_lstm_cell_670_matmul_readvariableop_resource=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0"?
clstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensorelstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp2h
2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp2l
4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_798_while_cond_4062506.
*lstm_798_while_lstm_798_while_loop_counter4
0lstm_798_while_lstm_798_while_maximum_iterations
lstm_798_while_placeholder 
lstm_798_while_placeholder_1 
lstm_798_while_placeholder_2 
lstm_798_while_placeholder_30
,lstm_798_while_less_lstm_798_strided_slice_1G
Clstm_798_while_lstm_798_while_cond_4062506___redundant_placeholder0G
Clstm_798_while_lstm_798_while_cond_4062506___redundant_placeholder1G
Clstm_798_while_lstm_798_while_cond_4062506___redundant_placeholder2G
Clstm_798_while_lstm_798_while_cond_4062506___redundant_placeholder3
lstm_798_while_identity
?
lstm_798/while/LessLesslstm_798_while_placeholder,lstm_798_while_less_lstm_798_strided_slice_1*
T0*
_output_shapes
: ]
lstm_798/while/IdentityIdentitylstm_798/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_798_while_identity lstm_798/while/Identity:output:0*(
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
*__inference_lstm_799_layer_call_fn_4063524

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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061056s
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
*__inference_lstm_800_layer_call_fn_4064140

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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061206o
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
lstm_799_while_cond_4062645.
*lstm_799_while_lstm_799_while_loop_counter4
0lstm_799_while_lstm_799_while_maximum_iterations
lstm_799_while_placeholder 
lstm_799_while_placeholder_1 
lstm_799_while_placeholder_2 
lstm_799_while_placeholder_30
,lstm_799_while_less_lstm_799_strided_slice_1G
Clstm_799_while_lstm_799_while_cond_4062645___redundant_placeholder0G
Clstm_799_while_lstm_799_while_cond_4062645___redundant_placeholder1G
Clstm_799_while_lstm_799_while_cond_4062645___redundant_placeholder2G
Clstm_799_while_lstm_799_while_cond_4062645___redundant_placeholder3
lstm_799_while_identity
?
lstm_799/while/LessLesslstm_799_while_placeholder,lstm_799_while_less_lstm_799_strided_slice_1*
T0*
_output_shapes
: ]
lstm_799/while/IdentityIdentitylstm_799/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_799_while_identity lstm_799/while/Identity:output:0*(
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
while_cond_4061121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4061121___redundant_placeholder05
1while_while_cond_4061121___redundant_placeholder15
1while_while_cond_4061121___redundant_placeholder25
1while_while_cond_4061121___redundant_placeholder3
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060474

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
while_cond_4063120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063120___redundant_placeholder05
1while_while_cond_4063120___redundant_placeholder15
1while_while_cond_4063120___redundant_placeholder25
1while_while_cond_4063120___redundant_placeholder3
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063491

inputs?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4063407*
condR
while_cond_4063406*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_800_layer_call_fn_4064151

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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061422o
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
?W
?
 __inference__traced_save_4065179
file_prefix/
+savev2_dense_266_kernel_read_readvariableop-
)savev2_dense_266_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_798_lstm_cell_798_kernel_read_readvariableopF
Bsavev2_lstm_798_lstm_cell_798_recurrent_kernel_read_readvariableop:
6savev2_lstm_798_lstm_cell_798_bias_read_readvariableop<
8savev2_lstm_799_lstm_cell_799_kernel_read_readvariableopF
Bsavev2_lstm_799_lstm_cell_799_recurrent_kernel_read_readvariableop:
6savev2_lstm_799_lstm_cell_799_bias_read_readvariableop<
8savev2_lstm_800_lstm_cell_800_kernel_read_readvariableopF
Bsavev2_lstm_800_lstm_cell_800_recurrent_kernel_read_readvariableop:
6savev2_lstm_800_lstm_cell_800_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_266_kernel_m_read_readvariableop4
0savev2_adam_dense_266_bias_m_read_readvariableopC
?savev2_adam_lstm_798_lstm_cell_798_kernel_m_read_readvariableopM
Isavev2_adam_lstm_798_lstm_cell_798_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_798_lstm_cell_798_bias_m_read_readvariableopC
?savev2_adam_lstm_799_lstm_cell_799_kernel_m_read_readvariableopM
Isavev2_adam_lstm_799_lstm_cell_799_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_799_lstm_cell_799_bias_m_read_readvariableopC
?savev2_adam_lstm_800_lstm_cell_800_kernel_m_read_readvariableopM
Isavev2_adam_lstm_800_lstm_cell_800_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_800_lstm_cell_800_bias_m_read_readvariableop6
2savev2_adam_dense_266_kernel_v_read_readvariableop4
0savev2_adam_dense_266_bias_v_read_readvariableopC
?savev2_adam_lstm_798_lstm_cell_798_kernel_v_read_readvariableopM
Isavev2_adam_lstm_798_lstm_cell_798_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_798_lstm_cell_798_bias_v_read_readvariableopC
?savev2_adam_lstm_799_lstm_cell_799_kernel_v_read_readvariableopM
Isavev2_adam_lstm_799_lstm_cell_799_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_799_lstm_cell_799_bias_v_read_readvariableopC
?savev2_adam_lstm_800_lstm_cell_800_kernel_v_read_readvariableopM
Isavev2_adam_lstm_800_lstm_cell_800_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_800_lstm_cell_800_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_266_kernel_read_readvariableop)savev2_dense_266_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_798_lstm_cell_798_kernel_read_readvariableopBsavev2_lstm_798_lstm_cell_798_recurrent_kernel_read_readvariableop6savev2_lstm_798_lstm_cell_798_bias_read_readvariableop8savev2_lstm_799_lstm_cell_799_kernel_read_readvariableopBsavev2_lstm_799_lstm_cell_799_recurrent_kernel_read_readvariableop6savev2_lstm_799_lstm_cell_799_bias_read_readvariableop8savev2_lstm_800_lstm_cell_800_kernel_read_readvariableopBsavev2_lstm_800_lstm_cell_800_recurrent_kernel_read_readvariableop6savev2_lstm_800_lstm_cell_800_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_266_kernel_m_read_readvariableop0savev2_adam_dense_266_bias_m_read_readvariableop?savev2_adam_lstm_798_lstm_cell_798_kernel_m_read_readvariableopIsavev2_adam_lstm_798_lstm_cell_798_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_798_lstm_cell_798_bias_m_read_readvariableop?savev2_adam_lstm_799_lstm_cell_799_kernel_m_read_readvariableopIsavev2_adam_lstm_799_lstm_cell_799_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_799_lstm_cell_799_bias_m_read_readvariableop?savev2_adam_lstm_800_lstm_cell_800_kernel_m_read_readvariableopIsavev2_adam_lstm_800_lstm_cell_800_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_800_lstm_cell_800_bias_m_read_readvariableop2savev2_adam_dense_266_kernel_v_read_readvariableop0savev2_adam_dense_266_bias_v_read_readvariableop?savev2_adam_lstm_798_lstm_cell_798_kernel_v_read_readvariableopIsavev2_adam_lstm_798_lstm_cell_798_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_798_lstm_cell_798_bias_v_read_readvariableop?savev2_adam_lstm_799_lstm_cell_799_kernel_v_read_readvariableopIsavev2_adam_lstm_799_lstm_cell_799_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_799_lstm_cell_799_bias_v_read_readvariableop?savev2_adam_lstm_800_lstm_cell_800_kernel_v_read_readvariableopIsavev2_adam_lstm_800_lstm_cell_800_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_800_lstm_cell_800_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_lstm_cell_670_layer_call_fn_4064874

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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060270o
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
while_cond_4062977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4062977___redundant_placeholder05
1while_while_cond_4062977___redundant_placeholder15
1while_while_cond_4062977___redundant_placeholder25
1while_while_cond_4062977___redundant_placeholder3
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
*sequential_266_lstm_798_while_body_4059339L
Hsequential_266_lstm_798_while_sequential_266_lstm_798_while_loop_counterR
Nsequential_266_lstm_798_while_sequential_266_lstm_798_while_maximum_iterations-
)sequential_266_lstm_798_while_placeholder/
+sequential_266_lstm_798_while_placeholder_1/
+sequential_266_lstm_798_while_placeholder_2/
+sequential_266_lstm_798_while_placeholder_3K
Gsequential_266_lstm_798_while_sequential_266_lstm_798_strided_slice_1_0?
?sequential_266_lstm_798_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_798_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_266_lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0:	?a
Nsequential_266_lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?\
Msequential_266_lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0:	?*
&sequential_266_lstm_798_while_identity,
(sequential_266_lstm_798_while_identity_1,
(sequential_266_lstm_798_while_identity_2,
(sequential_266_lstm_798_while_identity_3,
(sequential_266_lstm_798_while_identity_4,
(sequential_266_lstm_798_while_identity_5I
Esequential_266_lstm_798_while_sequential_266_lstm_798_strided_slice_1?
?sequential_266_lstm_798_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_798_tensorarrayunstack_tensorlistfromtensor]
Jsequential_266_lstm_798_while_lstm_cell_669_matmul_readvariableop_resource:	?_
Lsequential_266_lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource:	d?Z
Ksequential_266_lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource:	???Bsequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp?Asequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp?Csequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp?
Osequential_266/lstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_266/lstm_798/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_266_lstm_798_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_798_tensorarrayunstack_tensorlistfromtensor_0)sequential_266_lstm_798_while_placeholderXsequential_266/lstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOpLsequential_266_lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_266/lstm_798/while/lstm_cell_669/MatMulMatMulHsequential_266/lstm_798/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOpNsequential_266_lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_266/lstm_798/while/lstm_cell_669/MatMul_1MatMul+sequential_266_lstm_798_while_placeholder_2Ksequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_266/lstm_798/while/lstm_cell_669/addAddV2<sequential_266/lstm_798/while/lstm_cell_669/MatMul:product:0>sequential_266/lstm_798/while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOpMsequential_266_lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_266/lstm_798/while/lstm_cell_669/BiasAddBiasAdd3sequential_266/lstm_798/while/lstm_cell_669/add:z:0Jsequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_266/lstm_798/while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_266/lstm_798/while/lstm_cell_669/splitSplitDsequential_266/lstm_798/while/lstm_cell_669/split/split_dim:output:0<sequential_266/lstm_798/while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_266/lstm_798/while/lstm_cell_669/SigmoidSigmoid:sequential_266/lstm_798/while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_266/lstm_798/while/lstm_cell_669/Sigmoid_1Sigmoid:sequential_266/lstm_798/while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_266/lstm_798/while/lstm_cell_669/mulMul9sequential_266/lstm_798/while/lstm_cell_669/Sigmoid_1:y:0+sequential_266_lstm_798_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_266/lstm_798/while/lstm_cell_669/ReluRelu:sequential_266/lstm_798/while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_266/lstm_798/while/lstm_cell_669/mul_1Mul7sequential_266/lstm_798/while/lstm_cell_669/Sigmoid:y:0>sequential_266/lstm_798/while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_266/lstm_798/while/lstm_cell_669/add_1AddV23sequential_266/lstm_798/while/lstm_cell_669/mul:z:05sequential_266/lstm_798/while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_266/lstm_798/while/lstm_cell_669/Sigmoid_2Sigmoid:sequential_266/lstm_798/while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_266/lstm_798/while/lstm_cell_669/Relu_1Relu5sequential_266/lstm_798/while/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_266/lstm_798/while/lstm_cell_669/mul_2Mul9sequential_266/lstm_798/while/lstm_cell_669/Sigmoid_2:y:0@sequential_266/lstm_798/while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_266/lstm_798/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_266_lstm_798_while_placeholder_1)sequential_266_lstm_798_while_placeholder5sequential_266/lstm_798/while/lstm_cell_669/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_266/lstm_798/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_266/lstm_798/while/addAddV2)sequential_266_lstm_798_while_placeholder,sequential_266/lstm_798/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_266/lstm_798/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_266/lstm_798/while/add_1AddV2Hsequential_266_lstm_798_while_sequential_266_lstm_798_while_loop_counter.sequential_266/lstm_798/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_266/lstm_798/while/IdentityIdentity'sequential_266/lstm_798/while/add_1:z:0#^sequential_266/lstm_798/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_798/while/Identity_1IdentityNsequential_266_lstm_798_while_sequential_266_lstm_798_while_maximum_iterations#^sequential_266/lstm_798/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_798/while/Identity_2Identity%sequential_266/lstm_798/while/add:z:0#^sequential_266/lstm_798/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_798/while/Identity_3IdentityRsequential_266/lstm_798/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_266/lstm_798/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_798/while/Identity_4Identity5sequential_266/lstm_798/while/lstm_cell_669/mul_2:z:0#^sequential_266/lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_266/lstm_798/while/Identity_5Identity5sequential_266/lstm_798/while/lstm_cell_669/add_1:z:0#^sequential_266/lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_266/lstm_798/while/NoOpNoOpC^sequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOpB^sequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOpD^sequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_266_lstm_798_while_identity/sequential_266/lstm_798/while/Identity:output:0"]
(sequential_266_lstm_798_while_identity_11sequential_266/lstm_798/while/Identity_1:output:0"]
(sequential_266_lstm_798_while_identity_21sequential_266/lstm_798/while/Identity_2:output:0"]
(sequential_266_lstm_798_while_identity_31sequential_266/lstm_798/while/Identity_3:output:0"]
(sequential_266_lstm_798_while_identity_41sequential_266/lstm_798/while/Identity_4:output:0"]
(sequential_266_lstm_798_while_identity_51sequential_266/lstm_798/while/Identity_5:output:0"?
Ksequential_266_lstm_798_while_lstm_cell_669_biasadd_readvariableop_resourceMsequential_266_lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0"?
Lsequential_266_lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resourceNsequential_266_lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0"?
Jsequential_266_lstm_798_while_lstm_cell_669_matmul_readvariableop_resourceLsequential_266_lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0"?
Esequential_266_lstm_798_while_sequential_266_lstm_798_strided_slice_1Gsequential_266_lstm_798_while_sequential_266_lstm_798_strided_slice_1_0"?
?sequential_266_lstm_798_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_798_tensorarrayunstack_tensorlistfromtensor?sequential_266_lstm_798_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_798_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOpBsequential_266/lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp2?
Asequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOpAsequential_266/lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp2?
Csequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOpCsequential_266/lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4060398

inputs(
lstm_cell_670_4060316:	d?(
lstm_cell_670_4060318:	2?$
lstm_cell_670_4060320:	?
identity??%lstm_cell_670/StatefulPartitionedCall?while;
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
%lstm_cell_670/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_670_4060316lstm_cell_670_4060318lstm_cell_670_4060320*
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060270n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_670_4060316lstm_cell_670_4060318lstm_cell_670_4060320*
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
while_body_4060329*
condR
while_cond_4060328*K
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
NoOpNoOp&^lstm_cell_670/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_670/StatefulPartitionedCall%lstm_cell_670/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4061502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4061502___redundant_placeholder05
1while_while_cond_4061502___redundant_placeholder15
1while_while_cond_4061502___redundant_placeholder25
1while_while_cond_4061502___redundant_placeholder3
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
while_cond_4064352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4064352___redundant_placeholder05
1while_while_cond_4064352___redundant_placeholder15
1while_while_cond_4064352___redundant_placeholder25
1while_while_cond_4064352___redundant_placeholder3
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
?T
?
*sequential_266_lstm_800_while_body_4059617L
Hsequential_266_lstm_800_while_sequential_266_lstm_800_while_loop_counterR
Nsequential_266_lstm_800_while_sequential_266_lstm_800_while_maximum_iterations-
)sequential_266_lstm_800_while_placeholder/
+sequential_266_lstm_800_while_placeholder_1/
+sequential_266_lstm_800_while_placeholder_2/
+sequential_266_lstm_800_while_placeholder_3K
Gsequential_266_lstm_800_while_sequential_266_lstm_800_strided_slice_1_0?
?sequential_266_lstm_800_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_800_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_266_lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0:2(`
Nsequential_266_lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0:
([
Msequential_266_lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0:(*
&sequential_266_lstm_800_while_identity,
(sequential_266_lstm_800_while_identity_1,
(sequential_266_lstm_800_while_identity_2,
(sequential_266_lstm_800_while_identity_3,
(sequential_266_lstm_800_while_identity_4,
(sequential_266_lstm_800_while_identity_5I
Esequential_266_lstm_800_while_sequential_266_lstm_800_strided_slice_1?
?sequential_266_lstm_800_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_800_tensorarrayunstack_tensorlistfromtensor\
Jsequential_266_lstm_800_while_lstm_cell_671_matmul_readvariableop_resource:2(^
Lsequential_266_lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource:
(Y
Ksequential_266_lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource:(??Bsequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp?Asequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp?Csequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp?
Osequential_266/lstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_266/lstm_800/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_266_lstm_800_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_800_tensorarrayunstack_tensorlistfromtensor_0)sequential_266_lstm_800_while_placeholderXsequential_266/lstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOpLsequential_266_lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_266/lstm_800/while/lstm_cell_671/MatMulMatMulHsequential_266/lstm_800/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOpNsequential_266_lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_266/lstm_800/while/lstm_cell_671/MatMul_1MatMul+sequential_266_lstm_800_while_placeholder_2Ksequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_266/lstm_800/while/lstm_cell_671/addAddV2<sequential_266/lstm_800/while/lstm_cell_671/MatMul:product:0>sequential_266/lstm_800/while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOpMsequential_266_lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_266/lstm_800/while/lstm_cell_671/BiasAddBiasAdd3sequential_266/lstm_800/while/lstm_cell_671/add:z:0Jsequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_266/lstm_800/while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_266/lstm_800/while/lstm_cell_671/splitSplitDsequential_266/lstm_800/while/lstm_cell_671/split/split_dim:output:0<sequential_266/lstm_800/while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_266/lstm_800/while/lstm_cell_671/SigmoidSigmoid:sequential_266/lstm_800/while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_266/lstm_800/while/lstm_cell_671/Sigmoid_1Sigmoid:sequential_266/lstm_800/while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_266/lstm_800/while/lstm_cell_671/mulMul9sequential_266/lstm_800/while/lstm_cell_671/Sigmoid_1:y:0+sequential_266_lstm_800_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_266/lstm_800/while/lstm_cell_671/ReluRelu:sequential_266/lstm_800/while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_266/lstm_800/while/lstm_cell_671/mul_1Mul7sequential_266/lstm_800/while/lstm_cell_671/Sigmoid:y:0>sequential_266/lstm_800/while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_266/lstm_800/while/lstm_cell_671/add_1AddV23sequential_266/lstm_800/while/lstm_cell_671/mul:z:05sequential_266/lstm_800/while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_266/lstm_800/while/lstm_cell_671/Sigmoid_2Sigmoid:sequential_266/lstm_800/while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_266/lstm_800/while/lstm_cell_671/Relu_1Relu5sequential_266/lstm_800/while/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_266/lstm_800/while/lstm_cell_671/mul_2Mul9sequential_266/lstm_800/while/lstm_cell_671/Sigmoid_2:y:0@sequential_266/lstm_800/while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_266/lstm_800/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_266_lstm_800_while_placeholder_1)sequential_266_lstm_800_while_placeholder5sequential_266/lstm_800/while/lstm_cell_671/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_266/lstm_800/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_266/lstm_800/while/addAddV2)sequential_266_lstm_800_while_placeholder,sequential_266/lstm_800/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_266/lstm_800/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_266/lstm_800/while/add_1AddV2Hsequential_266_lstm_800_while_sequential_266_lstm_800_while_loop_counter.sequential_266/lstm_800/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_266/lstm_800/while/IdentityIdentity'sequential_266/lstm_800/while/add_1:z:0#^sequential_266/lstm_800/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_800/while/Identity_1IdentityNsequential_266_lstm_800_while_sequential_266_lstm_800_while_maximum_iterations#^sequential_266/lstm_800/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_800/while/Identity_2Identity%sequential_266/lstm_800/while/add:z:0#^sequential_266/lstm_800/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_800/while/Identity_3IdentityRsequential_266/lstm_800/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_266/lstm_800/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_800/while/Identity_4Identity5sequential_266/lstm_800/while/lstm_cell_671/mul_2:z:0#^sequential_266/lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_266/lstm_800/while/Identity_5Identity5sequential_266/lstm_800/while/lstm_cell_671/add_1:z:0#^sequential_266/lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_266/lstm_800/while/NoOpNoOpC^sequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOpB^sequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOpD^sequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_266_lstm_800_while_identity/sequential_266/lstm_800/while/Identity:output:0"]
(sequential_266_lstm_800_while_identity_11sequential_266/lstm_800/while/Identity_1:output:0"]
(sequential_266_lstm_800_while_identity_21sequential_266/lstm_800/while/Identity_2:output:0"]
(sequential_266_lstm_800_while_identity_31sequential_266/lstm_800/while/Identity_3:output:0"]
(sequential_266_lstm_800_while_identity_41sequential_266/lstm_800/while/Identity_4:output:0"]
(sequential_266_lstm_800_while_identity_51sequential_266/lstm_800/while/Identity_5:output:0"?
Ksequential_266_lstm_800_while_lstm_cell_671_biasadd_readvariableop_resourceMsequential_266_lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0"?
Lsequential_266_lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resourceNsequential_266_lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0"?
Jsequential_266_lstm_800_while_lstm_cell_671_matmul_readvariableop_resourceLsequential_266_lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0"?
Esequential_266_lstm_800_while_sequential_266_lstm_800_strided_slice_1Gsequential_266_lstm_800_while_sequential_266_lstm_800_strided_slice_1_0"?
?sequential_266_lstm_800_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_800_tensorarrayunstack_tensorlistfromtensor?sequential_266_lstm_800_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_800_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOpBsequential_266/lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp2?
Asequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOpAsequential_266/lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp2?
Csequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOpCsequential_266/lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_800_while_cond_4062357.
*lstm_800_while_lstm_800_while_loop_counter4
0lstm_800_while_lstm_800_while_maximum_iterations
lstm_800_while_placeholder 
lstm_800_while_placeholder_1 
lstm_800_while_placeholder_2 
lstm_800_while_placeholder_30
,lstm_800_while_less_lstm_800_strided_slice_1G
Clstm_800_while_lstm_800_while_cond_4062357___redundant_placeholder0G
Clstm_800_while_lstm_800_while_cond_4062357___redundant_placeholder1G
Clstm_800_while_lstm_800_while_cond_4062357___redundant_placeholder2G
Clstm_800_while_lstm_800_while_cond_4062357___redundant_placeholder3
lstm_800_while_identity
?
lstm_800/while/LessLesslstm_800_while_placeholder,lstm_800_while_less_lstm_800_strided_slice_1*
T0*
_output_shapes
: ]
lstm_800/while/IdentityIdentitylstm_800/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_800_while_identity lstm_800/while/Identity:output:0*(
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062448

inputsH
5lstm_798_lstm_cell_669_matmul_readvariableop_resource:	?J
7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource:	d?E
6lstm_798_lstm_cell_669_biasadd_readvariableop_resource:	?H
5lstm_799_lstm_cell_670_matmul_readvariableop_resource:	d?J
7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource:	2?E
6lstm_799_lstm_cell_670_biasadd_readvariableop_resource:	?G
5lstm_800_lstm_cell_671_matmul_readvariableop_resource:2(I
7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource:
(D
6lstm_800_lstm_cell_671_biasadd_readvariableop_resource:(:
(dense_266_matmul_readvariableop_resource:
7
)dense_266_biasadd_readvariableop_resource:
identity?? dense_266/BiasAdd/ReadVariableOp?dense_266/MatMul/ReadVariableOp?-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp?,lstm_798/lstm_cell_669/MatMul/ReadVariableOp?.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp?lstm_798/while?-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp?,lstm_799/lstm_cell_670/MatMul/ReadVariableOp?.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp?lstm_799/while?-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp?,lstm_800/lstm_cell_671/MatMul/ReadVariableOp?.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp?lstm_800/whileD
lstm_798/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_798/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_798/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_798/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_sliceStridedSlicelstm_798/Shape:output:0%lstm_798/strided_slice/stack:output:0'lstm_798/strided_slice/stack_1:output:0'lstm_798/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_798/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_798/zeros/packedPacklstm_798/strided_slice:output:0 lstm_798/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_798/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_798/zerosFilllstm_798/zeros/packed:output:0lstm_798/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_798/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_798/zeros_1/packedPacklstm_798/strided_slice:output:0"lstm_798/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_798/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_798/zeros_1Fill lstm_798/zeros_1/packed:output:0lstm_798/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_798/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_798/transpose	Transposeinputs lstm_798/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_798/Shape_1Shapelstm_798/transpose:y:0*
T0*
_output_shapes
:h
lstm_798/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_798/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_1StridedSlicelstm_798/Shape_1:output:0'lstm_798/strided_slice_1/stack:output:0)lstm_798/strided_slice_1/stack_1:output:0)lstm_798/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_798/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_798/TensorArrayV2TensorListReserve-lstm_798/TensorArrayV2/element_shape:output:0!lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_798/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_798/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_798/transpose:y:0Glstm_798/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_798/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_798/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_2StridedSlicelstm_798/transpose:y:0'lstm_798/strided_slice_2/stack:output:0)lstm_798/strided_slice_2/stack_1:output:0)lstm_798/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_798/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp5lstm_798_lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_798/lstm_cell_669/MatMulMatMul!lstm_798/strided_slice_2:output:04lstm_798/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_798/lstm_cell_669/MatMul_1MatMullstm_798/zeros:output:06lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_798/lstm_cell_669/addAddV2'lstm_798/lstm_cell_669/MatMul:product:0)lstm_798/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp6lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_798/lstm_cell_669/BiasAddBiasAddlstm_798/lstm_cell_669/add:z:05lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_798/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_798/lstm_cell_669/splitSplit/lstm_798/lstm_cell_669/split/split_dim:output:0'lstm_798/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_798/lstm_cell_669/SigmoidSigmoid%lstm_798/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_798/lstm_cell_669/Sigmoid_1Sigmoid%lstm_798/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mulMul$lstm_798/lstm_cell_669/Sigmoid_1:y:0lstm_798/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_798/lstm_cell_669/ReluRelu%lstm_798/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mul_1Mul"lstm_798/lstm_cell_669/Sigmoid:y:0)lstm_798/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/add_1AddV2lstm_798/lstm_cell_669/mul:z:0 lstm_798/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_798/lstm_cell_669/Sigmoid_2Sigmoid%lstm_798/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_798/lstm_cell_669/Relu_1Relu lstm_798/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mul_2Mul$lstm_798/lstm_cell_669/Sigmoid_2:y:0+lstm_798/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_798/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_798/TensorArrayV2_1TensorListReserve/lstm_798/TensorArrayV2_1/element_shape:output:0!lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_798/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_798/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_798/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_798/whileWhile$lstm_798/while/loop_counter:output:0*lstm_798/while/maximum_iterations:output:0lstm_798/time:output:0!lstm_798/TensorArrayV2_1:handle:0lstm_798/zeros:output:0lstm_798/zeros_1:output:0!lstm_798/strided_slice_1:output:0@lstm_798/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_798_lstm_cell_669_matmul_readvariableop_resource7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource6lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
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
lstm_798_while_body_4062080*'
condR
lstm_798_while_cond_4062079*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_798/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_798/TensorArrayV2Stack/TensorListStackTensorListStacklstm_798/while:output:3Blstm_798/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_798/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_798/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_3StridedSlice4lstm_798/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_798/strided_slice_3/stack:output:0)lstm_798/strided_slice_3/stack_1:output:0)lstm_798/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_798/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_798/transpose_1	Transpose4lstm_798/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_798/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_798/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_799/ShapeShapelstm_798/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_799/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_799/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_799/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_sliceStridedSlicelstm_799/Shape:output:0%lstm_799/strided_slice/stack:output:0'lstm_799/strided_slice/stack_1:output:0'lstm_799/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_799/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_799/zeros/packedPacklstm_799/strided_slice:output:0 lstm_799/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_799/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_799/zerosFilllstm_799/zeros/packed:output:0lstm_799/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_799/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_799/zeros_1/packedPacklstm_799/strided_slice:output:0"lstm_799/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_799/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_799/zeros_1Fill lstm_799/zeros_1/packed:output:0lstm_799/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_799/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_799/transpose	Transposelstm_798/transpose_1:y:0 lstm_799/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_799/Shape_1Shapelstm_799/transpose:y:0*
T0*
_output_shapes
:h
lstm_799/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_799/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_1StridedSlicelstm_799/Shape_1:output:0'lstm_799/strided_slice_1/stack:output:0)lstm_799/strided_slice_1/stack_1:output:0)lstm_799/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_799/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_799/TensorArrayV2TensorListReserve-lstm_799/TensorArrayV2/element_shape:output:0!lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_799/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_799/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_799/transpose:y:0Glstm_799/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_799/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_799/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_2StridedSlicelstm_799/transpose:y:0'lstm_799/strided_slice_2/stack:output:0)lstm_799/strided_slice_2/stack_1:output:0)lstm_799/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_799/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp5lstm_799_lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_799/lstm_cell_670/MatMulMatMul!lstm_799/strided_slice_2:output:04lstm_799/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_799/lstm_cell_670/MatMul_1MatMullstm_799/zeros:output:06lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_799/lstm_cell_670/addAddV2'lstm_799/lstm_cell_670/MatMul:product:0)lstm_799/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp6lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_799/lstm_cell_670/BiasAddBiasAddlstm_799/lstm_cell_670/add:z:05lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_799/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_799/lstm_cell_670/splitSplit/lstm_799/lstm_cell_670/split/split_dim:output:0'lstm_799/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_799/lstm_cell_670/SigmoidSigmoid%lstm_799/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_799/lstm_cell_670/Sigmoid_1Sigmoid%lstm_799/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mulMul$lstm_799/lstm_cell_670/Sigmoid_1:y:0lstm_799/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_799/lstm_cell_670/ReluRelu%lstm_799/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mul_1Mul"lstm_799/lstm_cell_670/Sigmoid:y:0)lstm_799/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/add_1AddV2lstm_799/lstm_cell_670/mul:z:0 lstm_799/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_799/lstm_cell_670/Sigmoid_2Sigmoid%lstm_799/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_799/lstm_cell_670/Relu_1Relu lstm_799/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mul_2Mul$lstm_799/lstm_cell_670/Sigmoid_2:y:0+lstm_799/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_799/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_799/TensorArrayV2_1TensorListReserve/lstm_799/TensorArrayV2_1/element_shape:output:0!lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_799/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_799/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_799/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_799/whileWhile$lstm_799/while/loop_counter:output:0*lstm_799/while/maximum_iterations:output:0lstm_799/time:output:0!lstm_799/TensorArrayV2_1:handle:0lstm_799/zeros:output:0lstm_799/zeros_1:output:0!lstm_799/strided_slice_1:output:0@lstm_799/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_799_lstm_cell_670_matmul_readvariableop_resource7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource6lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
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
lstm_799_while_body_4062219*'
condR
lstm_799_while_cond_4062218*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_799/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_799/TensorArrayV2Stack/TensorListStackTensorListStacklstm_799/while:output:3Blstm_799/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_799/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_799/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_3StridedSlice4lstm_799/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_799/strided_slice_3/stack:output:0)lstm_799/strided_slice_3/stack_1:output:0)lstm_799/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_799/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_799/transpose_1	Transpose4lstm_799/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_799/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_799/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_800/ShapeShapelstm_799/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_800/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_800/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_800/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_sliceStridedSlicelstm_800/Shape:output:0%lstm_800/strided_slice/stack:output:0'lstm_800/strided_slice/stack_1:output:0'lstm_800/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_800/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_800/zeros/packedPacklstm_800/strided_slice:output:0 lstm_800/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_800/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_800/zerosFilllstm_800/zeros/packed:output:0lstm_800/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_800/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_800/zeros_1/packedPacklstm_800/strided_slice:output:0"lstm_800/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_800/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_800/zeros_1Fill lstm_800/zeros_1/packed:output:0lstm_800/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_800/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_800/transpose	Transposelstm_799/transpose_1:y:0 lstm_800/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_800/Shape_1Shapelstm_800/transpose:y:0*
T0*
_output_shapes
:h
lstm_800/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_800/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_1StridedSlicelstm_800/Shape_1:output:0'lstm_800/strided_slice_1/stack:output:0)lstm_800/strided_slice_1/stack_1:output:0)lstm_800/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_800/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_800/TensorArrayV2TensorListReserve-lstm_800/TensorArrayV2/element_shape:output:0!lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_800/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_800/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_800/transpose:y:0Glstm_800/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_800/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_800/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_2StridedSlicelstm_800/transpose:y:0'lstm_800/strided_slice_2/stack:output:0)lstm_800/strided_slice_2/stack_1:output:0)lstm_800/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_800/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp5lstm_800_lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_800/lstm_cell_671/MatMulMatMul!lstm_800/strided_slice_2:output:04lstm_800/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_800/lstm_cell_671/MatMul_1MatMullstm_800/zeros:output:06lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_800/lstm_cell_671/addAddV2'lstm_800/lstm_cell_671/MatMul:product:0)lstm_800/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp6lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_800/lstm_cell_671/BiasAddBiasAddlstm_800/lstm_cell_671/add:z:05lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_800/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_800/lstm_cell_671/splitSplit/lstm_800/lstm_cell_671/split/split_dim:output:0'lstm_800/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_800/lstm_cell_671/SigmoidSigmoid%lstm_800/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_800/lstm_cell_671/Sigmoid_1Sigmoid%lstm_800/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mulMul$lstm_800/lstm_cell_671/Sigmoid_1:y:0lstm_800/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_800/lstm_cell_671/ReluRelu%lstm_800/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mul_1Mul"lstm_800/lstm_cell_671/Sigmoid:y:0)lstm_800/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/add_1AddV2lstm_800/lstm_cell_671/mul:z:0 lstm_800/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_800/lstm_cell_671/Sigmoid_2Sigmoid%lstm_800/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_800/lstm_cell_671/Relu_1Relu lstm_800/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mul_2Mul$lstm_800/lstm_cell_671/Sigmoid_2:y:0+lstm_800/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_800/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_800/TensorArrayV2_1TensorListReserve/lstm_800/TensorArrayV2_1/element_shape:output:0!lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_800/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_800/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_800/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_800/whileWhile$lstm_800/while/loop_counter:output:0*lstm_800/while/maximum_iterations:output:0lstm_800/time:output:0!lstm_800/TensorArrayV2_1:handle:0lstm_800/zeros:output:0lstm_800/zeros_1:output:0!lstm_800/strided_slice_1:output:0@lstm_800/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_800_lstm_cell_671_matmul_readvariableop_resource7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource6lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
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
lstm_800_while_body_4062358*'
condR
lstm_800_while_cond_4062357*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_800/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_800/TensorArrayV2Stack/TensorListStackTensorListStacklstm_800/while:output:3Blstm_800/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_800/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_800/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_3StridedSlice4lstm_800/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_800/strided_slice_3/stack:output:0)lstm_800/strided_slice_3/stack_1:output:0)lstm_800/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_800/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_800/transpose_1	Transpose4lstm_800/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_800/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_800/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_266/MatMul/ReadVariableOpReadVariableOp(dense_266_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_266/MatMulMatMul!lstm_800/strided_slice_3:output:0'dense_266/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_266/BiasAdd/ReadVariableOpReadVariableOp)dense_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_266/BiasAddBiasAdddense_266/MatMul:product:0(dense_266/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_266/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_266/BiasAdd/ReadVariableOp ^dense_266/MatMul/ReadVariableOp.^lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp-^lstm_798/lstm_cell_669/MatMul/ReadVariableOp/^lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp^lstm_798/while.^lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp-^lstm_799/lstm_cell_670/MatMul/ReadVariableOp/^lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp^lstm_799/while.^lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp-^lstm_800/lstm_cell_671/MatMul/ReadVariableOp/^lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp^lstm_800/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_266/BiasAdd/ReadVariableOp dense_266/BiasAdd/ReadVariableOp2B
dense_266/MatMul/ReadVariableOpdense_266/MatMul/ReadVariableOp2^
-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp2\
,lstm_798/lstm_cell_669/MatMul/ReadVariableOp,lstm_798/lstm_cell_669/MatMul/ReadVariableOp2`
.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp2 
lstm_798/whilelstm_798/while2^
-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp2\
,lstm_799/lstm_cell_670/MatMul/ReadVariableOp,lstm_799/lstm_cell_670/MatMul/ReadVariableOp2`
.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp2 
lstm_799/whilelstm_799/while2^
-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp2\
,lstm_800/lstm_cell_671/MatMul/ReadVariableOp,lstm_800/lstm_cell_671/MatMul/ReadVariableOp2`
.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp2 
lstm_800/whilelstm_800/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_266_lstm_799_while_body_4059478L
Hsequential_266_lstm_799_while_sequential_266_lstm_799_while_loop_counterR
Nsequential_266_lstm_799_while_sequential_266_lstm_799_while_maximum_iterations-
)sequential_266_lstm_799_while_placeholder/
+sequential_266_lstm_799_while_placeholder_1/
+sequential_266_lstm_799_while_placeholder_2/
+sequential_266_lstm_799_while_placeholder_3K
Gsequential_266_lstm_799_while_sequential_266_lstm_799_strided_slice_1_0?
?sequential_266_lstm_799_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_799_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_266_lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0:	d?a
Nsequential_266_lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?\
Msequential_266_lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0:	?*
&sequential_266_lstm_799_while_identity,
(sequential_266_lstm_799_while_identity_1,
(sequential_266_lstm_799_while_identity_2,
(sequential_266_lstm_799_while_identity_3,
(sequential_266_lstm_799_while_identity_4,
(sequential_266_lstm_799_while_identity_5I
Esequential_266_lstm_799_while_sequential_266_lstm_799_strided_slice_1?
?sequential_266_lstm_799_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_799_tensorarrayunstack_tensorlistfromtensor]
Jsequential_266_lstm_799_while_lstm_cell_670_matmul_readvariableop_resource:	d?_
Lsequential_266_lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource:	2?Z
Ksequential_266_lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource:	???Bsequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp?Asequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp?Csequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp?
Osequential_266/lstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_266/lstm_799/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_266_lstm_799_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_799_tensorarrayunstack_tensorlistfromtensor_0)sequential_266_lstm_799_while_placeholderXsequential_266/lstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOpLsequential_266_lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_266/lstm_799/while/lstm_cell_670/MatMulMatMulHsequential_266/lstm_799/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOpNsequential_266_lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_266/lstm_799/while/lstm_cell_670/MatMul_1MatMul+sequential_266_lstm_799_while_placeholder_2Ksequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_266/lstm_799/while/lstm_cell_670/addAddV2<sequential_266/lstm_799/while/lstm_cell_670/MatMul:product:0>sequential_266/lstm_799/while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOpMsequential_266_lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_266/lstm_799/while/lstm_cell_670/BiasAddBiasAdd3sequential_266/lstm_799/while/lstm_cell_670/add:z:0Jsequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_266/lstm_799/while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_266/lstm_799/while/lstm_cell_670/splitSplitDsequential_266/lstm_799/while/lstm_cell_670/split/split_dim:output:0<sequential_266/lstm_799/while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_266/lstm_799/while/lstm_cell_670/SigmoidSigmoid:sequential_266/lstm_799/while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_266/lstm_799/while/lstm_cell_670/Sigmoid_1Sigmoid:sequential_266/lstm_799/while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_266/lstm_799/while/lstm_cell_670/mulMul9sequential_266/lstm_799/while/lstm_cell_670/Sigmoid_1:y:0+sequential_266_lstm_799_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_266/lstm_799/while/lstm_cell_670/ReluRelu:sequential_266/lstm_799/while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_266/lstm_799/while/lstm_cell_670/mul_1Mul7sequential_266/lstm_799/while/lstm_cell_670/Sigmoid:y:0>sequential_266/lstm_799/while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_266/lstm_799/while/lstm_cell_670/add_1AddV23sequential_266/lstm_799/while/lstm_cell_670/mul:z:05sequential_266/lstm_799/while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_266/lstm_799/while/lstm_cell_670/Sigmoid_2Sigmoid:sequential_266/lstm_799/while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_266/lstm_799/while/lstm_cell_670/Relu_1Relu5sequential_266/lstm_799/while/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_266/lstm_799/while/lstm_cell_670/mul_2Mul9sequential_266/lstm_799/while/lstm_cell_670/Sigmoid_2:y:0@sequential_266/lstm_799/while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_266/lstm_799/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_266_lstm_799_while_placeholder_1)sequential_266_lstm_799_while_placeholder5sequential_266/lstm_799/while/lstm_cell_670/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_266/lstm_799/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_266/lstm_799/while/addAddV2)sequential_266_lstm_799_while_placeholder,sequential_266/lstm_799/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_266/lstm_799/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_266/lstm_799/while/add_1AddV2Hsequential_266_lstm_799_while_sequential_266_lstm_799_while_loop_counter.sequential_266/lstm_799/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_266/lstm_799/while/IdentityIdentity'sequential_266/lstm_799/while/add_1:z:0#^sequential_266/lstm_799/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_799/while/Identity_1IdentityNsequential_266_lstm_799_while_sequential_266_lstm_799_while_maximum_iterations#^sequential_266/lstm_799/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_799/while/Identity_2Identity%sequential_266/lstm_799/while/add:z:0#^sequential_266/lstm_799/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_799/while/Identity_3IdentityRsequential_266/lstm_799/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_266/lstm_799/while/NoOp*
T0*
_output_shapes
: ?
(sequential_266/lstm_799/while/Identity_4Identity5sequential_266/lstm_799/while/lstm_cell_670/mul_2:z:0#^sequential_266/lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_266/lstm_799/while/Identity_5Identity5sequential_266/lstm_799/while/lstm_cell_670/add_1:z:0#^sequential_266/lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_266/lstm_799/while/NoOpNoOpC^sequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOpB^sequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOpD^sequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_266_lstm_799_while_identity/sequential_266/lstm_799/while/Identity:output:0"]
(sequential_266_lstm_799_while_identity_11sequential_266/lstm_799/while/Identity_1:output:0"]
(sequential_266_lstm_799_while_identity_21sequential_266/lstm_799/while/Identity_2:output:0"]
(sequential_266_lstm_799_while_identity_31sequential_266/lstm_799/while/Identity_3:output:0"]
(sequential_266_lstm_799_while_identity_41sequential_266/lstm_799/while/Identity_4:output:0"]
(sequential_266_lstm_799_while_identity_51sequential_266/lstm_799/while/Identity_5:output:0"?
Ksequential_266_lstm_799_while_lstm_cell_670_biasadd_readvariableop_resourceMsequential_266_lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0"?
Lsequential_266_lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resourceNsequential_266_lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0"?
Jsequential_266_lstm_799_while_lstm_cell_670_matmul_readvariableop_resourceLsequential_266_lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0"?
Esequential_266_lstm_799_while_sequential_266_lstm_799_strided_slice_1Gsequential_266_lstm_799_while_sequential_266_lstm_799_strided_slice_1_0"?
?sequential_266_lstm_799_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_799_tensorarrayunstack_tensorlistfromtensor?sequential_266_lstm_799_while_tensorarrayv2read_tensorlistgetitem_sequential_266_lstm_799_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOpBsequential_266/lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp2?
Asequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOpAsequential_266/lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp2?
Csequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOpCsequential_266/lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061206

inputs>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4061122*
condR
while_cond_4061121*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_266_layer_call_fn_4061872
lstm_798_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_798_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061820o
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
_user_specified_namelstm_798_input
?
?
/__inference_lstm_cell_670_layer_call_fn_4064857

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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060124o
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
while_body_4060972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4063121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4061503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_266_lstm_798_while_cond_4059338L
Hsequential_266_lstm_798_while_sequential_266_lstm_798_while_loop_counterR
Nsequential_266_lstm_798_while_sequential_266_lstm_798_while_maximum_iterations-
)sequential_266_lstm_798_while_placeholder/
+sequential_266_lstm_798_while_placeholder_1/
+sequential_266_lstm_798_while_placeholder_2/
+sequential_266_lstm_798_while_placeholder_3N
Jsequential_266_lstm_798_while_less_sequential_266_lstm_798_strided_slice_1e
asequential_266_lstm_798_while_sequential_266_lstm_798_while_cond_4059338___redundant_placeholder0e
asequential_266_lstm_798_while_sequential_266_lstm_798_while_cond_4059338___redundant_placeholder1e
asequential_266_lstm_798_while_sequential_266_lstm_798_while_cond_4059338___redundant_placeholder2e
asequential_266_lstm_798_while_sequential_266_lstm_798_while_cond_4059338___redundant_placeholder3*
&sequential_266_lstm_798_while_identity
?
"sequential_266/lstm_798/while/LessLess)sequential_266_lstm_798_while_placeholderJsequential_266_lstm_798_while_less_sequential_266_lstm_798_strided_slice_1*
T0*
_output_shapes
: {
&sequential_266/lstm_798/while/IdentityIdentity&sequential_266/lstm_798/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_266_lstm_798_while_identity/sequential_266/lstm_798/while/Identity:output:0*(
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4064742

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
while_body_4063407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_799_layer_call_fn_4063513
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4060398|
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

?
lstm_798_while_cond_4062079.
*lstm_798_while_lstm_798_while_loop_counter4
0lstm_798_while_lstm_798_while_maximum_iterations
lstm_798_while_placeholder 
lstm_798_while_placeholder_1 
lstm_798_while_placeholder_2 
lstm_798_while_placeholder_30
,lstm_798_while_less_lstm_798_strided_slice_1G
Clstm_798_while_lstm_798_while_cond_4062079___redundant_placeholder0G
Clstm_798_while_lstm_798_while_cond_4062079___redundant_placeholder1G
Clstm_798_while_lstm_798_while_cond_4062079___redundant_placeholder2G
Clstm_798_while_lstm_798_while_cond_4062079___redundant_placeholder3
lstm_798_while_identity
?
lstm_798/while/LessLesslstm_798_while_placeholder,lstm_798_while_less_lstm_798_strided_slice_1*
T0*
_output_shapes
: ]
lstm_798/while/IdentityIdentitylstm_798/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_798_while_identity lstm_798/while/Identity:output:0*(
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
lstm_799_while_cond_4062218.
*lstm_799_while_lstm_799_while_loop_counter4
0lstm_799_while_lstm_799_while_maximum_iterations
lstm_799_while_placeholder 
lstm_799_while_placeholder_1 
lstm_799_while_placeholder_2 
lstm_799_while_placeholder_30
,lstm_799_while_less_lstm_799_strided_slice_1G
Clstm_799_while_lstm_799_while_cond_4062218___redundant_placeholder0G
Clstm_799_while_lstm_799_while_cond_4062218___redundant_placeholder1G
Clstm_799_while_lstm_799_while_cond_4062218___redundant_placeholder2G
Clstm_799_while_lstm_799_while_cond_4062218___redundant_placeholder3
lstm_799_while_identity
?
lstm_799/while/LessLesslstm_799_while_placeholder,lstm_799_while_less_lstm_799_strided_slice_1*
T0*
_output_shapes
: ]
lstm_799/while/IdentityIdentitylstm_799/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_799_while_identity lstm_799/while/Identity:output:0*(
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

lstm_800_while_body_4062785.
*lstm_800_while_lstm_800_while_loop_counter4
0lstm_800_while_lstm_800_while_maximum_iterations
lstm_800_while_placeholder 
lstm_800_while_placeholder_1 
lstm_800_while_placeholder_2 
lstm_800_while_placeholder_3-
)lstm_800_while_lstm_800_strided_slice_1_0i
elstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0:2(Q
?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(L
>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0:(
lstm_800_while_identity
lstm_800_while_identity_1
lstm_800_while_identity_2
lstm_800_while_identity_3
lstm_800_while_identity_4
lstm_800_while_identity_5+
'lstm_800_while_lstm_800_strided_slice_1g
clstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensorM
;lstm_800_while_lstm_cell_671_matmul_readvariableop_resource:2(O
=lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource:
(J
<lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource:(??3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp?2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp?4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp?
@lstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_800/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0lstm_800_while_placeholderIlstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_800/while/lstm_cell_671/MatMulMatMul9lstm_800/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_800/while/lstm_cell_671/MatMul_1MatMullstm_800_while_placeholder_2<lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_800/while/lstm_cell_671/addAddV2-lstm_800/while/lstm_cell_671/MatMul:product:0/lstm_800/while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_800/while/lstm_cell_671/BiasAddBiasAdd$lstm_800/while/lstm_cell_671/add:z:0;lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_800/while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_800/while/lstm_cell_671/splitSplit5lstm_800/while/lstm_cell_671/split/split_dim:output:0-lstm_800/while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_800/while/lstm_cell_671/SigmoidSigmoid+lstm_800/while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_800/while/lstm_cell_671/Sigmoid_1Sigmoid+lstm_800/while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_800/while/lstm_cell_671/mulMul*lstm_800/while/lstm_cell_671/Sigmoid_1:y:0lstm_800_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_800/while/lstm_cell_671/ReluRelu+lstm_800/while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/mul_1Mul(lstm_800/while/lstm_cell_671/Sigmoid:y:0/lstm_800/while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/add_1AddV2$lstm_800/while/lstm_cell_671/mul:z:0&lstm_800/while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_800/while/lstm_cell_671/Sigmoid_2Sigmoid+lstm_800/while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_800/while/lstm_cell_671/Relu_1Relu&lstm_800/while/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/mul_2Mul*lstm_800/while/lstm_cell_671/Sigmoid_2:y:01lstm_800/while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_800/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_800_while_placeholder_1lstm_800_while_placeholder&lstm_800/while/lstm_cell_671/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_800/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_800/while/addAddV2lstm_800_while_placeholderlstm_800/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_800/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_800/while/add_1AddV2*lstm_800_while_lstm_800_while_loop_counterlstm_800/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_800/while/IdentityIdentitylstm_800/while/add_1:z:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_1Identity0lstm_800_while_lstm_800_while_maximum_iterations^lstm_800/while/NoOp*
T0*
_output_shapes
: t
lstm_800/while/Identity_2Identitylstm_800/while/add:z:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_3IdentityClstm_800/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_4Identity&lstm_800/while/lstm_cell_671/mul_2:z:0^lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_800/while/Identity_5Identity&lstm_800/while/lstm_cell_671/add_1:z:0^lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_800/while/NoOpNoOp4^lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp3^lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp5^lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_800_while_identity lstm_800/while/Identity:output:0"?
lstm_800_while_identity_1"lstm_800/while/Identity_1:output:0"?
lstm_800_while_identity_2"lstm_800/while/Identity_2:output:0"?
lstm_800_while_identity_3"lstm_800/while/Identity_3:output:0"?
lstm_800_while_identity_4"lstm_800/while/Identity_4:output:0"?
lstm_800_while_identity_5"lstm_800/while/Identity_5:output:0"T
'lstm_800_while_lstm_800_strided_slice_1)lstm_800_while_lstm_800_strided_slice_1_0"~
<lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0"?
=lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0"|
;lstm_800_while_lstm_cell_671_matmul_readvariableop_resource=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0"?
clstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensorelstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp2h
2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp2l
4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_800_layer_call_fn_4064118
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4060557o
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060906

inputs?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4060822*
condR
while_cond_4060821*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064580

inputs>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4064496*
condR
while_cond_4064495*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4063263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063263___redundant_placeholder05
1while_while_cond_4063263___redundant_placeholder15
1while_while_cond_4063263___redundant_placeholder25
1while_while_cond_4063263___redundant_placeholder3
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064723

inputs>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4064639*
condR
while_cond_4064638*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4064638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4064638___redundant_placeholder05
1while_while_cond_4064638___redundant_placeholder15
1while_while_cond_4064638___redundant_placeholder25
1while_while_cond_4064638___redundant_placeholder3
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064938

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
?
*__inference_lstm_798_layer_call_fn_4062886
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4059857|
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
*__inference_lstm_799_layer_call_fn_4063535

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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061587s
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
?
?
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061231

inputs#
lstm_798_4060907:	?#
lstm_798_4060909:	d?
lstm_798_4060911:	?#
lstm_799_4061057:	d?#
lstm_799_4061059:	2?
lstm_799_4061061:	?"
lstm_800_4061207:2("
lstm_800_4061209:
(
lstm_800_4061211:(#
dense_266_4061225:

dense_266_4061227:
identity??!dense_266/StatefulPartitionedCall? lstm_798/StatefulPartitionedCall? lstm_799/StatefulPartitionedCall? lstm_800/StatefulPartitionedCall?
 lstm_798/StatefulPartitionedCallStatefulPartitionedCallinputslstm_798_4060907lstm_798_4060909lstm_798_4060911*
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060906?
 lstm_799/StatefulPartitionedCallStatefulPartitionedCall)lstm_798/StatefulPartitionedCall:output:0lstm_799_4061057lstm_799_4061059lstm_799_4061061*
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061056?
 lstm_800/StatefulPartitionedCallStatefulPartitionedCall)lstm_799/StatefulPartitionedCall:output:0lstm_800_4061207lstm_800_4061209lstm_800_4061211*
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061206?
!dense_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_800/StatefulPartitionedCall:output:0dense_266_4061225dense_266_4061227*
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224y
IdentityIdentity*dense_266/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_266/StatefulPartitionedCall!^lstm_798/StatefulPartitionedCall!^lstm_799/StatefulPartitionedCall!^lstm_800/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_266/StatefulPartitionedCall!dense_266/StatefulPartitionedCall2D
 lstm_798/StatefulPartitionedCall lstm_798/StatefulPartitionedCall2D
 lstm_799/StatefulPartitionedCall lstm_799/StatefulPartitionedCall2D
 lstm_800/StatefulPartitionedCall lstm_800/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4061338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4061967
lstm_798_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_798_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4059707o
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
_user_specified_namelstm_798_input
??
?
#__inference__traced_restore_4065309
file_prefix3
!assignvariableop_dense_266_kernel:
/
!assignvariableop_1_dense_266_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_798_lstm_cell_798_kernel:	?M
:assignvariableop_8_lstm_798_lstm_cell_798_recurrent_kernel:	d?=
.assignvariableop_9_lstm_798_lstm_cell_798_bias:	?D
1assignvariableop_10_lstm_799_lstm_cell_799_kernel:	d?N
;assignvariableop_11_lstm_799_lstm_cell_799_recurrent_kernel:	2?>
/assignvariableop_12_lstm_799_lstm_cell_799_bias:	?C
1assignvariableop_13_lstm_800_lstm_cell_800_kernel:2(M
;assignvariableop_14_lstm_800_lstm_cell_800_recurrent_kernel:
(=
/assignvariableop_15_lstm_800_lstm_cell_800_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_266_kernel_m:
7
)assignvariableop_19_adam_dense_266_bias_m:K
8assignvariableop_20_adam_lstm_798_lstm_cell_798_kernel_m:	?U
Bassignvariableop_21_adam_lstm_798_lstm_cell_798_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_798_lstm_cell_798_bias_m:	?K
8assignvariableop_23_adam_lstm_799_lstm_cell_799_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_799_lstm_cell_799_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_799_lstm_cell_799_bias_m:	?J
8assignvariableop_26_adam_lstm_800_lstm_cell_800_kernel_m:2(T
Bassignvariableop_27_adam_lstm_800_lstm_cell_800_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_800_lstm_cell_800_bias_m:(=
+assignvariableop_29_adam_dense_266_kernel_v:
7
)assignvariableop_30_adam_dense_266_bias_v:K
8assignvariableop_31_adam_lstm_798_lstm_cell_798_kernel_v:	?U
Bassignvariableop_32_adam_lstm_798_lstm_cell_798_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_798_lstm_cell_798_bias_v:	?K
8assignvariableop_34_adam_lstm_799_lstm_cell_799_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_799_lstm_cell_799_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_799_lstm_cell_799_bias_v:	?J
8assignvariableop_37_adam_lstm_800_lstm_cell_800_kernel_v:2(T
Bassignvariableop_38_adam_lstm_800_lstm_cell_800_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_800_lstm_cell_800_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_266_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_266_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_798_lstm_cell_798_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_798_lstm_cell_798_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_798_lstm_cell_798_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_799_lstm_cell_799_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_799_lstm_cell_799_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_799_lstm_cell_799_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_800_lstm_cell_800_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_800_lstm_cell_800_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_800_lstm_cell_800_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_266_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_266_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_798_lstm_cell_798_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_798_lstm_cell_798_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_798_lstm_cell_798_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_799_lstm_cell_799_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_799_lstm_cell_799_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_799_lstm_cell_799_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_800_lstm_cell_800_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_800_lstm_cell_800_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_800_lstm_cell_800_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_266_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_266_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_798_lstm_cell_798_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_798_lstm_cell_798_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_798_lstm_cell_798_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_799_lstm_cell_799_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_799_lstm_cell_799_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_799_lstm_cell_799_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_800_lstm_cell_800_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_800_lstm_cell_800_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_800_lstm_cell_800_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059920

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
while_body_4062978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4064353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059774

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
while_cond_4059978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4059978___redundant_placeholder05
1while_while_cond_4059978___redundant_placeholder15
1while_while_cond_4059978___redundant_placeholder25
1while_while_cond_4059978___redundant_placeholder3
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
*__inference_lstm_799_layer_call_fn_4063502
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4060207|
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
?K
?
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063821
inputs_0?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4063737*
condR
while_cond_4063736*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063678
inputs_0?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4063594*
condR
while_cond_4063593*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4060678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060678___redundant_placeholder05
1while_while_cond_4060678___redundant_placeholder15
1while_while_cond_4060678___redundant_placeholder25
1while_while_cond_4060678___redundant_placeholder3
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
?
?
+__inference_dense_266_layer_call_fn_4064732

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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224o
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
?
while_cond_4059787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4059787___redundant_placeholder05
1while_while_cond_4059787___redundant_placeholder15
1while_while_cond_4059787___redundant_placeholder25
1while_while_cond_4059787___redundant_placeholder3
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
while_cond_4060328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060328___redundant_placeholder05
1while_while_cond_4060328___redundant_placeholder15
1while_while_cond_4060328___redundant_placeholder25
1while_while_cond_4060328___redundant_placeholder3
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
*__inference_lstm_798_layer_call_fn_4062908

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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060906s
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
0__inference_sequential_266_layer_call_fn_4061256
lstm_798_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_798_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061231o
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
_user_specified_namelstm_798_input
?J
?
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061587

inputs?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4061503*
condR
while_cond_4061502*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_798_while_body_4062080.
*lstm_798_while_lstm_798_while_loop_counter4
0lstm_798_while_lstm_798_while_maximum_iterations
lstm_798_while_placeholder 
lstm_798_while_placeholder_1 
lstm_798_while_placeholder_2 
lstm_798_while_placeholder_3-
)lstm_798_while_lstm_798_strided_slice_1_0i
elstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0:	?R
?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?M
>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
lstm_798_while_identity
lstm_798_while_identity_1
lstm_798_while_identity_2
lstm_798_while_identity_3
lstm_798_while_identity_4
lstm_798_while_identity_5+
'lstm_798_while_lstm_798_strided_slice_1g
clstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensorN
;lstm_798_while_lstm_cell_669_matmul_readvariableop_resource:	?P
=lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource:	d?K
<lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource:	???3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp?2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp?4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp?
@lstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_798/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0lstm_798_while_placeholderIlstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_798/while/lstm_cell_669/MatMulMatMul9lstm_798/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_798/while/lstm_cell_669/MatMul_1MatMullstm_798_while_placeholder_2<lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_798/while/lstm_cell_669/addAddV2-lstm_798/while/lstm_cell_669/MatMul:product:0/lstm_798/while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_798/while/lstm_cell_669/BiasAddBiasAdd$lstm_798/while/lstm_cell_669/add:z:0;lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_798/while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_798/while/lstm_cell_669/splitSplit5lstm_798/while/lstm_cell_669/split/split_dim:output:0-lstm_798/while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_798/while/lstm_cell_669/SigmoidSigmoid+lstm_798/while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_798/while/lstm_cell_669/Sigmoid_1Sigmoid+lstm_798/while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_798/while/lstm_cell_669/mulMul*lstm_798/while/lstm_cell_669/Sigmoid_1:y:0lstm_798_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_798/while/lstm_cell_669/ReluRelu+lstm_798/while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/mul_1Mul(lstm_798/while/lstm_cell_669/Sigmoid:y:0/lstm_798/while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/add_1AddV2$lstm_798/while/lstm_cell_669/mul:z:0&lstm_798/while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_798/while/lstm_cell_669/Sigmoid_2Sigmoid+lstm_798/while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_798/while/lstm_cell_669/Relu_1Relu&lstm_798/while/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/mul_2Mul*lstm_798/while/lstm_cell_669/Sigmoid_2:y:01lstm_798/while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_798/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_798_while_placeholder_1lstm_798_while_placeholder&lstm_798/while/lstm_cell_669/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_798/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_798/while/addAddV2lstm_798_while_placeholderlstm_798/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_798/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_798/while/add_1AddV2*lstm_798_while_lstm_798_while_loop_counterlstm_798/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_798/while/IdentityIdentitylstm_798/while/add_1:z:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_1Identity0lstm_798_while_lstm_798_while_maximum_iterations^lstm_798/while/NoOp*
T0*
_output_shapes
: t
lstm_798/while/Identity_2Identitylstm_798/while/add:z:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_3IdentityClstm_798/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_4Identity&lstm_798/while/lstm_cell_669/mul_2:z:0^lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_798/while/Identity_5Identity&lstm_798/while/lstm_cell_669/add_1:z:0^lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_798/while/NoOpNoOp4^lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp3^lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp5^lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_798_while_identity lstm_798/while/Identity:output:0"?
lstm_798_while_identity_1"lstm_798/while/Identity_1:output:0"?
lstm_798_while_identity_2"lstm_798/while/Identity_2:output:0"?
lstm_798_while_identity_3"lstm_798/while/Identity_3:output:0"?
lstm_798_while_identity_4"lstm_798/while/Identity_4:output:0"?
lstm_798_while_identity_5"lstm_798/while/Identity_5:output:0"T
'lstm_798_while_lstm_798_strided_slice_1)lstm_798_while_lstm_798_strided_slice_1_0"~
<lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0"?
=lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0"|
;lstm_798_while_lstm_cell_669_matmul_readvariableop_resource=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0"?
clstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensorelstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp2h
2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp2l
4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4064022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4064022___redundant_placeholder05
1while_while_cond_4064022___redundant_placeholder15
1while_while_cond_4064022___redundant_placeholder25
1while_while_cond_4064022___redundant_placeholder3
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
while_cond_4061337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4061337___redundant_placeholder05
1while_while_cond_4061337___redundant_placeholder15
1while_while_cond_4061337___redundant_placeholder25
1while_while_cond_4061337___redundant_placeholder3
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
while_body_4064210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4063406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063406___redundant_placeholder05
1while_while_cond_4063406___redundant_placeholder15
1while_while_cond_4063406___redundant_placeholder25
1while_while_cond_4063406___redundant_placeholder3
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
*sequential_266_lstm_800_while_cond_4059616L
Hsequential_266_lstm_800_while_sequential_266_lstm_800_while_loop_counterR
Nsequential_266_lstm_800_while_sequential_266_lstm_800_while_maximum_iterations-
)sequential_266_lstm_800_while_placeholder/
+sequential_266_lstm_800_while_placeholder_1/
+sequential_266_lstm_800_while_placeholder_2/
+sequential_266_lstm_800_while_placeholder_3N
Jsequential_266_lstm_800_while_less_sequential_266_lstm_800_strided_slice_1e
asequential_266_lstm_800_while_sequential_266_lstm_800_while_cond_4059616___redundant_placeholder0e
asequential_266_lstm_800_while_sequential_266_lstm_800_while_cond_4059616___redundant_placeholder1e
asequential_266_lstm_800_while_sequential_266_lstm_800_while_cond_4059616___redundant_placeholder2e
asequential_266_lstm_800_while_sequential_266_lstm_800_while_cond_4059616___redundant_placeholder3*
&sequential_266_lstm_800_while_identity
?
"sequential_266/lstm_800/while/LessLess)sequential_266_lstm_800_while_placeholderJsequential_266_lstm_800_while_less_sequential_266_lstm_800_strided_slice_1*
T0*
_output_shapes
: {
&sequential_266/lstm_800/while/IdentityIdentity&sequential_266/lstm_800/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_266_lstm_800_while_identity/sequential_266/lstm_800/while/Identity:output:0*(
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062875

inputsH
5lstm_798_lstm_cell_669_matmul_readvariableop_resource:	?J
7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource:	d?E
6lstm_798_lstm_cell_669_biasadd_readvariableop_resource:	?H
5lstm_799_lstm_cell_670_matmul_readvariableop_resource:	d?J
7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource:	2?E
6lstm_799_lstm_cell_670_biasadd_readvariableop_resource:	?G
5lstm_800_lstm_cell_671_matmul_readvariableop_resource:2(I
7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource:
(D
6lstm_800_lstm_cell_671_biasadd_readvariableop_resource:(:
(dense_266_matmul_readvariableop_resource:
7
)dense_266_biasadd_readvariableop_resource:
identity?? dense_266/BiasAdd/ReadVariableOp?dense_266/MatMul/ReadVariableOp?-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp?,lstm_798/lstm_cell_669/MatMul/ReadVariableOp?.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp?lstm_798/while?-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp?,lstm_799/lstm_cell_670/MatMul/ReadVariableOp?.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp?lstm_799/while?-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp?,lstm_800/lstm_cell_671/MatMul/ReadVariableOp?.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp?lstm_800/whileD
lstm_798/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_798/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_798/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_798/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_sliceStridedSlicelstm_798/Shape:output:0%lstm_798/strided_slice/stack:output:0'lstm_798/strided_slice/stack_1:output:0'lstm_798/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_798/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_798/zeros/packedPacklstm_798/strided_slice:output:0 lstm_798/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_798/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_798/zerosFilllstm_798/zeros/packed:output:0lstm_798/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_798/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_798/zeros_1/packedPacklstm_798/strided_slice:output:0"lstm_798/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_798/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_798/zeros_1Fill lstm_798/zeros_1/packed:output:0lstm_798/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_798/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_798/transpose	Transposeinputs lstm_798/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_798/Shape_1Shapelstm_798/transpose:y:0*
T0*
_output_shapes
:h
lstm_798/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_798/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_1StridedSlicelstm_798/Shape_1:output:0'lstm_798/strided_slice_1/stack:output:0)lstm_798/strided_slice_1/stack_1:output:0)lstm_798/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_798/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_798/TensorArrayV2TensorListReserve-lstm_798/TensorArrayV2/element_shape:output:0!lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_798/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_798/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_798/transpose:y:0Glstm_798/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_798/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_798/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_2StridedSlicelstm_798/transpose:y:0'lstm_798/strided_slice_2/stack:output:0)lstm_798/strided_slice_2/stack_1:output:0)lstm_798/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_798/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp5lstm_798_lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_798/lstm_cell_669/MatMulMatMul!lstm_798/strided_slice_2:output:04lstm_798/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_798/lstm_cell_669/MatMul_1MatMullstm_798/zeros:output:06lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_798/lstm_cell_669/addAddV2'lstm_798/lstm_cell_669/MatMul:product:0)lstm_798/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp6lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_798/lstm_cell_669/BiasAddBiasAddlstm_798/lstm_cell_669/add:z:05lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_798/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_798/lstm_cell_669/splitSplit/lstm_798/lstm_cell_669/split/split_dim:output:0'lstm_798/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_798/lstm_cell_669/SigmoidSigmoid%lstm_798/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_798/lstm_cell_669/Sigmoid_1Sigmoid%lstm_798/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mulMul$lstm_798/lstm_cell_669/Sigmoid_1:y:0lstm_798/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_798/lstm_cell_669/ReluRelu%lstm_798/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mul_1Mul"lstm_798/lstm_cell_669/Sigmoid:y:0)lstm_798/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/add_1AddV2lstm_798/lstm_cell_669/mul:z:0 lstm_798/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_798/lstm_cell_669/Sigmoid_2Sigmoid%lstm_798/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_798/lstm_cell_669/Relu_1Relu lstm_798/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_798/lstm_cell_669/mul_2Mul$lstm_798/lstm_cell_669/Sigmoid_2:y:0+lstm_798/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_798/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_798/TensorArrayV2_1TensorListReserve/lstm_798/TensorArrayV2_1/element_shape:output:0!lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_798/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_798/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_798/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_798/whileWhile$lstm_798/while/loop_counter:output:0*lstm_798/while/maximum_iterations:output:0lstm_798/time:output:0!lstm_798/TensorArrayV2_1:handle:0lstm_798/zeros:output:0lstm_798/zeros_1:output:0!lstm_798/strided_slice_1:output:0@lstm_798/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_798_lstm_cell_669_matmul_readvariableop_resource7lstm_798_lstm_cell_669_matmul_1_readvariableop_resource6lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
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
lstm_798_while_body_4062507*'
condR
lstm_798_while_cond_4062506*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_798/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_798/TensorArrayV2Stack/TensorListStackTensorListStacklstm_798/while:output:3Blstm_798/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_798/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_798/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_798/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_798/strided_slice_3StridedSlice4lstm_798/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_798/strided_slice_3/stack:output:0)lstm_798/strided_slice_3/stack_1:output:0)lstm_798/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_798/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_798/transpose_1	Transpose4lstm_798/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_798/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_798/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_799/ShapeShapelstm_798/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_799/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_799/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_799/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_sliceStridedSlicelstm_799/Shape:output:0%lstm_799/strided_slice/stack:output:0'lstm_799/strided_slice/stack_1:output:0'lstm_799/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_799/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_799/zeros/packedPacklstm_799/strided_slice:output:0 lstm_799/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_799/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_799/zerosFilllstm_799/zeros/packed:output:0lstm_799/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_799/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_799/zeros_1/packedPacklstm_799/strided_slice:output:0"lstm_799/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_799/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_799/zeros_1Fill lstm_799/zeros_1/packed:output:0lstm_799/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_799/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_799/transpose	Transposelstm_798/transpose_1:y:0 lstm_799/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_799/Shape_1Shapelstm_799/transpose:y:0*
T0*
_output_shapes
:h
lstm_799/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_799/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_1StridedSlicelstm_799/Shape_1:output:0'lstm_799/strided_slice_1/stack:output:0)lstm_799/strided_slice_1/stack_1:output:0)lstm_799/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_799/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_799/TensorArrayV2TensorListReserve-lstm_799/TensorArrayV2/element_shape:output:0!lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_799/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_799/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_799/transpose:y:0Glstm_799/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_799/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_799/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_2StridedSlicelstm_799/transpose:y:0'lstm_799/strided_slice_2/stack:output:0)lstm_799/strided_slice_2/stack_1:output:0)lstm_799/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_799/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp5lstm_799_lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_799/lstm_cell_670/MatMulMatMul!lstm_799/strided_slice_2:output:04lstm_799/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_799/lstm_cell_670/MatMul_1MatMullstm_799/zeros:output:06lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_799/lstm_cell_670/addAddV2'lstm_799/lstm_cell_670/MatMul:product:0)lstm_799/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp6lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_799/lstm_cell_670/BiasAddBiasAddlstm_799/lstm_cell_670/add:z:05lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_799/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_799/lstm_cell_670/splitSplit/lstm_799/lstm_cell_670/split/split_dim:output:0'lstm_799/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_799/lstm_cell_670/SigmoidSigmoid%lstm_799/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_799/lstm_cell_670/Sigmoid_1Sigmoid%lstm_799/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mulMul$lstm_799/lstm_cell_670/Sigmoid_1:y:0lstm_799/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_799/lstm_cell_670/ReluRelu%lstm_799/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mul_1Mul"lstm_799/lstm_cell_670/Sigmoid:y:0)lstm_799/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/add_1AddV2lstm_799/lstm_cell_670/mul:z:0 lstm_799/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_799/lstm_cell_670/Sigmoid_2Sigmoid%lstm_799/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_799/lstm_cell_670/Relu_1Relu lstm_799/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_799/lstm_cell_670/mul_2Mul$lstm_799/lstm_cell_670/Sigmoid_2:y:0+lstm_799/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_799/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_799/TensorArrayV2_1TensorListReserve/lstm_799/TensorArrayV2_1/element_shape:output:0!lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_799/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_799/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_799/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_799/whileWhile$lstm_799/while/loop_counter:output:0*lstm_799/while/maximum_iterations:output:0lstm_799/time:output:0!lstm_799/TensorArrayV2_1:handle:0lstm_799/zeros:output:0lstm_799/zeros_1:output:0!lstm_799/strided_slice_1:output:0@lstm_799/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_799_lstm_cell_670_matmul_readvariableop_resource7lstm_799_lstm_cell_670_matmul_1_readvariableop_resource6lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
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
lstm_799_while_body_4062646*'
condR
lstm_799_while_cond_4062645*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_799/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_799/TensorArrayV2Stack/TensorListStackTensorListStacklstm_799/while:output:3Blstm_799/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_799/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_799/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_799/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_799/strided_slice_3StridedSlice4lstm_799/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_799/strided_slice_3/stack:output:0)lstm_799/strided_slice_3/stack_1:output:0)lstm_799/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_799/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_799/transpose_1	Transpose4lstm_799/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_799/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_799/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_800/ShapeShapelstm_799/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_800/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_800/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_800/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_sliceStridedSlicelstm_800/Shape:output:0%lstm_800/strided_slice/stack:output:0'lstm_800/strided_slice/stack_1:output:0'lstm_800/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_800/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_800/zeros/packedPacklstm_800/strided_slice:output:0 lstm_800/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_800/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_800/zerosFilllstm_800/zeros/packed:output:0lstm_800/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_800/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_800/zeros_1/packedPacklstm_800/strided_slice:output:0"lstm_800/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_800/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_800/zeros_1Fill lstm_800/zeros_1/packed:output:0lstm_800/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_800/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_800/transpose	Transposelstm_799/transpose_1:y:0 lstm_800/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_800/Shape_1Shapelstm_800/transpose:y:0*
T0*
_output_shapes
:h
lstm_800/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_800/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_1StridedSlicelstm_800/Shape_1:output:0'lstm_800/strided_slice_1/stack:output:0)lstm_800/strided_slice_1/stack_1:output:0)lstm_800/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_800/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_800/TensorArrayV2TensorListReserve-lstm_800/TensorArrayV2/element_shape:output:0!lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_800/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_800/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_800/transpose:y:0Glstm_800/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_800/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_800/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_2StridedSlicelstm_800/transpose:y:0'lstm_800/strided_slice_2/stack:output:0)lstm_800/strided_slice_2/stack_1:output:0)lstm_800/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_800/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp5lstm_800_lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_800/lstm_cell_671/MatMulMatMul!lstm_800/strided_slice_2:output:04lstm_800/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_800/lstm_cell_671/MatMul_1MatMullstm_800/zeros:output:06lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_800/lstm_cell_671/addAddV2'lstm_800/lstm_cell_671/MatMul:product:0)lstm_800/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp6lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_800/lstm_cell_671/BiasAddBiasAddlstm_800/lstm_cell_671/add:z:05lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_800/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_800/lstm_cell_671/splitSplit/lstm_800/lstm_cell_671/split/split_dim:output:0'lstm_800/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_800/lstm_cell_671/SigmoidSigmoid%lstm_800/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_800/lstm_cell_671/Sigmoid_1Sigmoid%lstm_800/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mulMul$lstm_800/lstm_cell_671/Sigmoid_1:y:0lstm_800/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_800/lstm_cell_671/ReluRelu%lstm_800/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mul_1Mul"lstm_800/lstm_cell_671/Sigmoid:y:0)lstm_800/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/add_1AddV2lstm_800/lstm_cell_671/mul:z:0 lstm_800/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_800/lstm_cell_671/Sigmoid_2Sigmoid%lstm_800/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_800/lstm_cell_671/Relu_1Relu lstm_800/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_800/lstm_cell_671/mul_2Mul$lstm_800/lstm_cell_671/Sigmoid_2:y:0+lstm_800/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_800/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_800/TensorArrayV2_1TensorListReserve/lstm_800/TensorArrayV2_1/element_shape:output:0!lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_800/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_800/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_800/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_800/whileWhile$lstm_800/while/loop_counter:output:0*lstm_800/while/maximum_iterations:output:0lstm_800/time:output:0!lstm_800/TensorArrayV2_1:handle:0lstm_800/zeros:output:0lstm_800/zeros_1:output:0!lstm_800/strided_slice_1:output:0@lstm_800/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_800_lstm_cell_671_matmul_readvariableop_resource7lstm_800_lstm_cell_671_matmul_1_readvariableop_resource6lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
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
lstm_800_while_body_4062785*'
condR
lstm_800_while_cond_4062784*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_800/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_800/TensorArrayV2Stack/TensorListStackTensorListStacklstm_800/while:output:3Blstm_800/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_800/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_800/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_800/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_800/strided_slice_3StridedSlice4lstm_800/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_800/strided_slice_3/stack:output:0)lstm_800/strided_slice_3/stack_1:output:0)lstm_800/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_800/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_800/transpose_1	Transpose4lstm_800/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_800/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_800/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_266/MatMul/ReadVariableOpReadVariableOp(dense_266_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_266/MatMulMatMul!lstm_800/strided_slice_3:output:0'dense_266/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_266/BiasAdd/ReadVariableOpReadVariableOp)dense_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_266/BiasAddBiasAdddense_266/MatMul:product:0(dense_266/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_266/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_266/BiasAdd/ReadVariableOp ^dense_266/MatMul/ReadVariableOp.^lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp-^lstm_798/lstm_cell_669/MatMul/ReadVariableOp/^lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp^lstm_798/while.^lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp-^lstm_799/lstm_cell_670/MatMul/ReadVariableOp/^lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp^lstm_799/while.^lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp-^lstm_800/lstm_cell_671/MatMul/ReadVariableOp/^lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp^lstm_800/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_266/BiasAdd/ReadVariableOp dense_266/BiasAdd/ReadVariableOp2B
dense_266/MatMul/ReadVariableOpdense_266/MatMul/ReadVariableOp2^
-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp-lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp2\
,lstm_798/lstm_cell_669/MatMul/ReadVariableOp,lstm_798/lstm_cell_669/MatMul/ReadVariableOp2`
.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp.lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp2 
lstm_798/whilelstm_798/while2^
-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp-lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp2\
,lstm_799/lstm_cell_670/MatMul/ReadVariableOp,lstm_799/lstm_cell_670/MatMul/ReadVariableOp2`
.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp.lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp2 
lstm_799/whilelstm_799/while2^
-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp-lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp2\
,lstm_800/lstm_cell_671/MatMul/ReadVariableOp,lstm_800/lstm_cell_671/MatMul/ReadVariableOp2`
.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp.lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp2 
lstm_800/whilelstm_800/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4060487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060487___redundant_placeholder05
1while_while_cond_4060487___redundant_placeholder15
1while_while_cond_4060487___redundant_placeholder25
1while_while_cond_4060487___redundant_placeholder3
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
?
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061902
lstm_798_input#
lstm_798_4061875:	?#
lstm_798_4061877:	d?
lstm_798_4061879:	?#
lstm_799_4061882:	d?#
lstm_799_4061884:	2?
lstm_799_4061886:	?"
lstm_800_4061889:2("
lstm_800_4061891:
(
lstm_800_4061893:(#
dense_266_4061896:

dense_266_4061898:
identity??!dense_266/StatefulPartitionedCall? lstm_798/StatefulPartitionedCall? lstm_799/StatefulPartitionedCall? lstm_800/StatefulPartitionedCall?
 lstm_798/StatefulPartitionedCallStatefulPartitionedCalllstm_798_inputlstm_798_4061875lstm_798_4061877lstm_798_4061879*
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060906?
 lstm_799/StatefulPartitionedCallStatefulPartitionedCall)lstm_798/StatefulPartitionedCall:output:0lstm_799_4061882lstm_799_4061884lstm_799_4061886*
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061056?
 lstm_800/StatefulPartitionedCallStatefulPartitionedCall)lstm_799/StatefulPartitionedCall:output:0lstm_800_4061889lstm_800_4061891lstm_800_4061893*
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061206?
!dense_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_800/StatefulPartitionedCall:output:0dense_266_4061896dense_266_4061898*
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224y
IdentityIdentity*dense_266/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_266/StatefulPartitionedCall!^lstm_798/StatefulPartitionedCall!^lstm_799/StatefulPartitionedCall!^lstm_800/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_266/StatefulPartitionedCall!dense_266/StatefulPartitionedCall2D
 lstm_798/StatefulPartitionedCall lstm_798/StatefulPartitionedCall2D
 lstm_799/StatefulPartitionedCall lstm_799/StatefulPartitionedCall2D
 lstm_800/StatefulPartitionedCall lstm_800/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_798_input
?C
?

lstm_798_while_body_4062507.
*lstm_798_while_lstm_798_while_loop_counter4
0lstm_798_while_lstm_798_while_maximum_iterations
lstm_798_while_placeholder 
lstm_798_while_placeholder_1 
lstm_798_while_placeholder_2 
lstm_798_while_placeholder_3-
)lstm_798_while_lstm_798_strided_slice_1_0i
elstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0:	?R
?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?M
>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
lstm_798_while_identity
lstm_798_while_identity_1
lstm_798_while_identity_2
lstm_798_while_identity_3
lstm_798_while_identity_4
lstm_798_while_identity_5+
'lstm_798_while_lstm_798_strided_slice_1g
clstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensorN
;lstm_798_while_lstm_cell_669_matmul_readvariableop_resource:	?P
=lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource:	d?K
<lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource:	???3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp?2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp?4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp?
@lstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_798/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0lstm_798_while_placeholderIlstm_798/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_798/while/lstm_cell_669/MatMulMatMul9lstm_798/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_798/while/lstm_cell_669/MatMul_1MatMullstm_798_while_placeholder_2<lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_798/while/lstm_cell_669/addAddV2-lstm_798/while/lstm_cell_669/MatMul:product:0/lstm_798/while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_798/while/lstm_cell_669/BiasAddBiasAdd$lstm_798/while/lstm_cell_669/add:z:0;lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_798/while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_798/while/lstm_cell_669/splitSplit5lstm_798/while/lstm_cell_669/split/split_dim:output:0-lstm_798/while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_798/while/lstm_cell_669/SigmoidSigmoid+lstm_798/while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_798/while/lstm_cell_669/Sigmoid_1Sigmoid+lstm_798/while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_798/while/lstm_cell_669/mulMul*lstm_798/while/lstm_cell_669/Sigmoid_1:y:0lstm_798_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_798/while/lstm_cell_669/ReluRelu+lstm_798/while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/mul_1Mul(lstm_798/while/lstm_cell_669/Sigmoid:y:0/lstm_798/while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/add_1AddV2$lstm_798/while/lstm_cell_669/mul:z:0&lstm_798/while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_798/while/lstm_cell_669/Sigmoid_2Sigmoid+lstm_798/while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_798/while/lstm_cell_669/Relu_1Relu&lstm_798/while/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_798/while/lstm_cell_669/mul_2Mul*lstm_798/while/lstm_cell_669/Sigmoid_2:y:01lstm_798/while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_798/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_798_while_placeholder_1lstm_798_while_placeholder&lstm_798/while/lstm_cell_669/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_798/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_798/while/addAddV2lstm_798_while_placeholderlstm_798/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_798/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_798/while/add_1AddV2*lstm_798_while_lstm_798_while_loop_counterlstm_798/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_798/while/IdentityIdentitylstm_798/while/add_1:z:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_1Identity0lstm_798_while_lstm_798_while_maximum_iterations^lstm_798/while/NoOp*
T0*
_output_shapes
: t
lstm_798/while/Identity_2Identitylstm_798/while/add:z:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_3IdentityClstm_798/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_798/while/NoOp*
T0*
_output_shapes
: ?
lstm_798/while/Identity_4Identity&lstm_798/while/lstm_cell_669/mul_2:z:0^lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_798/while/Identity_5Identity&lstm_798/while/lstm_cell_669/add_1:z:0^lstm_798/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_798/while/NoOpNoOp4^lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp3^lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp5^lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_798_while_identity lstm_798/while/Identity:output:0"?
lstm_798_while_identity_1"lstm_798/while/Identity_1:output:0"?
lstm_798_while_identity_2"lstm_798/while/Identity_2:output:0"?
lstm_798_while_identity_3"lstm_798/while/Identity_3:output:0"?
lstm_798_while_identity_4"lstm_798/while/Identity_4:output:0"?
lstm_798_while_identity_5"lstm_798/while/Identity_5:output:0"T
'lstm_798_while_lstm_798_strided_slice_1)lstm_798_while_lstm_798_strided_slice_1_0"~
<lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource>lstm_798_while_lstm_cell_669_biasadd_readvariableop_resource_0"?
=lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource?lstm_798_while_lstm_cell_669_matmul_1_readvariableop_resource_0"|
;lstm_798_while_lstm_cell_669_matmul_readvariableop_resource=lstm_798_while_lstm_cell_669_matmul_readvariableop_resource_0"?
clstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensorelstm_798_while_tensorarrayv2read_tensorlistgetitem_lstm_798_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp3lstm_798/while/lstm_cell_669/BiasAdd/ReadVariableOp2h
2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp2lstm_798/while/lstm_cell_669/MatMul/ReadVariableOp2l
4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp4lstm_798/while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4060679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_671_4060703_0:2(/
while_lstm_cell_671_4060705_0:
(+
while_lstm_cell_671_4060707_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_671_4060703:2(-
while_lstm_cell_671_4060705:
()
while_lstm_cell_671_4060707:(??+while/lstm_cell_671/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_671/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_671_4060703_0while_lstm_cell_671_4060705_0while_lstm_cell_671_4060707_0*
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060620?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_671/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_671/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_671/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_671_4060703while_lstm_cell_671_4060703_0"<
while_lstm_cell_671_4060705while_lstm_cell_671_4060705_0"<
while_lstm_cell_671_4060707while_lstm_cell_671_4060707_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_671/StatefulPartitionedCall+while/lstm_cell_671/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4059707
lstm_798_inputW
Dsequential_266_lstm_798_lstm_cell_669_matmul_readvariableop_resource:	?Y
Fsequential_266_lstm_798_lstm_cell_669_matmul_1_readvariableop_resource:	d?T
Esequential_266_lstm_798_lstm_cell_669_biasadd_readvariableop_resource:	?W
Dsequential_266_lstm_799_lstm_cell_670_matmul_readvariableop_resource:	d?Y
Fsequential_266_lstm_799_lstm_cell_670_matmul_1_readvariableop_resource:	2?T
Esequential_266_lstm_799_lstm_cell_670_biasadd_readvariableop_resource:	?V
Dsequential_266_lstm_800_lstm_cell_671_matmul_readvariableop_resource:2(X
Fsequential_266_lstm_800_lstm_cell_671_matmul_1_readvariableop_resource:
(S
Esequential_266_lstm_800_lstm_cell_671_biasadd_readvariableop_resource:(I
7sequential_266_dense_266_matmul_readvariableop_resource:
F
8sequential_266_dense_266_biasadd_readvariableop_resource:
identity??/sequential_266/dense_266/BiasAdd/ReadVariableOp?.sequential_266/dense_266/MatMul/ReadVariableOp?<sequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp?;sequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOp?=sequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp?sequential_266/lstm_798/while?<sequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp?;sequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOp?=sequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp?sequential_266/lstm_799/while?<sequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp?;sequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOp?=sequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp?sequential_266/lstm_800/while[
sequential_266/lstm_798/ShapeShapelstm_798_input*
T0*
_output_shapes
:u
+sequential_266/lstm_798/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_266/lstm_798/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_266/lstm_798/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_266/lstm_798/strided_sliceStridedSlice&sequential_266/lstm_798/Shape:output:04sequential_266/lstm_798/strided_slice/stack:output:06sequential_266/lstm_798/strided_slice/stack_1:output:06sequential_266/lstm_798/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_266/lstm_798/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_266/lstm_798/zeros/packedPack.sequential_266/lstm_798/strided_slice:output:0/sequential_266/lstm_798/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_266/lstm_798/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_798/zerosFill-sequential_266/lstm_798/zeros/packed:output:0,sequential_266/lstm_798/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_266/lstm_798/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_266/lstm_798/zeros_1/packedPack.sequential_266/lstm_798/strided_slice:output:01sequential_266/lstm_798/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_266/lstm_798/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_798/zeros_1Fill/sequential_266/lstm_798/zeros_1/packed:output:0.sequential_266/lstm_798/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_266/lstm_798/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_266/lstm_798/transpose	Transposelstm_798_input/sequential_266/lstm_798/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_266/lstm_798/Shape_1Shape%sequential_266/lstm_798/transpose:y:0*
T0*
_output_shapes
:w
-sequential_266/lstm_798/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_798/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_798/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_798/strided_slice_1StridedSlice(sequential_266/lstm_798/Shape_1:output:06sequential_266/lstm_798/strided_slice_1/stack:output:08sequential_266/lstm_798/strided_slice_1/stack_1:output:08sequential_266/lstm_798/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_266/lstm_798/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_266/lstm_798/TensorArrayV2TensorListReserve<sequential_266/lstm_798/TensorArrayV2/element_shape:output:00sequential_266/lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_266/lstm_798/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_266/lstm_798/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_266/lstm_798/transpose:y:0Vsequential_266/lstm_798/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_266/lstm_798/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_798/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_798/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_798/strided_slice_2StridedSlice%sequential_266/lstm_798/transpose:y:06sequential_266/lstm_798/strided_slice_2/stack:output:08sequential_266/lstm_798/strided_slice_2/stack_1:output:08sequential_266/lstm_798/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOpReadVariableOpDsequential_266_lstm_798_lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_266/lstm_798/lstm_cell_669/MatMulMatMul0sequential_266/lstm_798/strided_slice_2:output:0Csequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOpFsequential_266_lstm_798_lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_266/lstm_798/lstm_cell_669/MatMul_1MatMul&sequential_266/lstm_798/zeros:output:0Esequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_266/lstm_798/lstm_cell_669/addAddV26sequential_266/lstm_798/lstm_cell_669/MatMul:product:08sequential_266/lstm_798/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOpEsequential_266_lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_266/lstm_798/lstm_cell_669/BiasAddBiasAdd-sequential_266/lstm_798/lstm_cell_669/add:z:0Dsequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_266/lstm_798/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_266/lstm_798/lstm_cell_669/splitSplit>sequential_266/lstm_798/lstm_cell_669/split/split_dim:output:06sequential_266/lstm_798/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_266/lstm_798/lstm_cell_669/SigmoidSigmoid4sequential_266/lstm_798/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_266/lstm_798/lstm_cell_669/Sigmoid_1Sigmoid4sequential_266/lstm_798/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_266/lstm_798/lstm_cell_669/mulMul3sequential_266/lstm_798/lstm_cell_669/Sigmoid_1:y:0(sequential_266/lstm_798/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_266/lstm_798/lstm_cell_669/ReluRelu4sequential_266/lstm_798/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_266/lstm_798/lstm_cell_669/mul_1Mul1sequential_266/lstm_798/lstm_cell_669/Sigmoid:y:08sequential_266/lstm_798/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_266/lstm_798/lstm_cell_669/add_1AddV2-sequential_266/lstm_798/lstm_cell_669/mul:z:0/sequential_266/lstm_798/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_266/lstm_798/lstm_cell_669/Sigmoid_2Sigmoid4sequential_266/lstm_798/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_266/lstm_798/lstm_cell_669/Relu_1Relu/sequential_266/lstm_798/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_266/lstm_798/lstm_cell_669/mul_2Mul3sequential_266/lstm_798/lstm_cell_669/Sigmoid_2:y:0:sequential_266/lstm_798/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_266/lstm_798/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_266/lstm_798/TensorArrayV2_1TensorListReserve>sequential_266/lstm_798/TensorArrayV2_1/element_shape:output:00sequential_266/lstm_798/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_266/lstm_798/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_266/lstm_798/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_266/lstm_798/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_266/lstm_798/whileWhile3sequential_266/lstm_798/while/loop_counter:output:09sequential_266/lstm_798/while/maximum_iterations:output:0%sequential_266/lstm_798/time:output:00sequential_266/lstm_798/TensorArrayV2_1:handle:0&sequential_266/lstm_798/zeros:output:0(sequential_266/lstm_798/zeros_1:output:00sequential_266/lstm_798/strided_slice_1:output:0Osequential_266/lstm_798/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_266_lstm_798_lstm_cell_669_matmul_readvariableop_resourceFsequential_266_lstm_798_lstm_cell_669_matmul_1_readvariableop_resourceEsequential_266_lstm_798_lstm_cell_669_biasadd_readvariableop_resource*
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
*sequential_266_lstm_798_while_body_4059339*6
cond.R,
*sequential_266_lstm_798_while_cond_4059338*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_266/lstm_798/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_266/lstm_798/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_266/lstm_798/while:output:3Qsequential_266/lstm_798/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_266/lstm_798/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_266/lstm_798/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_798/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_798/strided_slice_3StridedSliceCsequential_266/lstm_798/TensorArrayV2Stack/TensorListStack:tensor:06sequential_266/lstm_798/strided_slice_3/stack:output:08sequential_266/lstm_798/strided_slice_3/stack_1:output:08sequential_266/lstm_798/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_266/lstm_798/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_266/lstm_798/transpose_1	TransposeCsequential_266/lstm_798/TensorArrayV2Stack/TensorListStack:tensor:01sequential_266/lstm_798/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_266/lstm_798/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_266/lstm_799/ShapeShape'sequential_266/lstm_798/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_266/lstm_799/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_266/lstm_799/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_266/lstm_799/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_266/lstm_799/strided_sliceStridedSlice&sequential_266/lstm_799/Shape:output:04sequential_266/lstm_799/strided_slice/stack:output:06sequential_266/lstm_799/strided_slice/stack_1:output:06sequential_266/lstm_799/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_266/lstm_799/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_266/lstm_799/zeros/packedPack.sequential_266/lstm_799/strided_slice:output:0/sequential_266/lstm_799/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_266/lstm_799/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_799/zerosFill-sequential_266/lstm_799/zeros/packed:output:0,sequential_266/lstm_799/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_266/lstm_799/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_266/lstm_799/zeros_1/packedPack.sequential_266/lstm_799/strided_slice:output:01sequential_266/lstm_799/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_266/lstm_799/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_799/zeros_1Fill/sequential_266/lstm_799/zeros_1/packed:output:0.sequential_266/lstm_799/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_266/lstm_799/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_266/lstm_799/transpose	Transpose'sequential_266/lstm_798/transpose_1:y:0/sequential_266/lstm_799/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_266/lstm_799/Shape_1Shape%sequential_266/lstm_799/transpose:y:0*
T0*
_output_shapes
:w
-sequential_266/lstm_799/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_799/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_799/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_799/strided_slice_1StridedSlice(sequential_266/lstm_799/Shape_1:output:06sequential_266/lstm_799/strided_slice_1/stack:output:08sequential_266/lstm_799/strided_slice_1/stack_1:output:08sequential_266/lstm_799/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_266/lstm_799/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_266/lstm_799/TensorArrayV2TensorListReserve<sequential_266/lstm_799/TensorArrayV2/element_shape:output:00sequential_266/lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_266/lstm_799/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_266/lstm_799/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_266/lstm_799/transpose:y:0Vsequential_266/lstm_799/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_266/lstm_799/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_799/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_799/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_799/strided_slice_2StridedSlice%sequential_266/lstm_799/transpose:y:06sequential_266/lstm_799/strided_slice_2/stack:output:08sequential_266/lstm_799/strided_slice_2/stack_1:output:08sequential_266/lstm_799/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOpReadVariableOpDsequential_266_lstm_799_lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_266/lstm_799/lstm_cell_670/MatMulMatMul0sequential_266/lstm_799/strided_slice_2:output:0Csequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOpFsequential_266_lstm_799_lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_266/lstm_799/lstm_cell_670/MatMul_1MatMul&sequential_266/lstm_799/zeros:output:0Esequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_266/lstm_799/lstm_cell_670/addAddV26sequential_266/lstm_799/lstm_cell_670/MatMul:product:08sequential_266/lstm_799/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOpEsequential_266_lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_266/lstm_799/lstm_cell_670/BiasAddBiasAdd-sequential_266/lstm_799/lstm_cell_670/add:z:0Dsequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_266/lstm_799/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_266/lstm_799/lstm_cell_670/splitSplit>sequential_266/lstm_799/lstm_cell_670/split/split_dim:output:06sequential_266/lstm_799/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_266/lstm_799/lstm_cell_670/SigmoidSigmoid4sequential_266/lstm_799/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_266/lstm_799/lstm_cell_670/Sigmoid_1Sigmoid4sequential_266/lstm_799/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_266/lstm_799/lstm_cell_670/mulMul3sequential_266/lstm_799/lstm_cell_670/Sigmoid_1:y:0(sequential_266/lstm_799/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_266/lstm_799/lstm_cell_670/ReluRelu4sequential_266/lstm_799/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_266/lstm_799/lstm_cell_670/mul_1Mul1sequential_266/lstm_799/lstm_cell_670/Sigmoid:y:08sequential_266/lstm_799/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_266/lstm_799/lstm_cell_670/add_1AddV2-sequential_266/lstm_799/lstm_cell_670/mul:z:0/sequential_266/lstm_799/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_266/lstm_799/lstm_cell_670/Sigmoid_2Sigmoid4sequential_266/lstm_799/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_266/lstm_799/lstm_cell_670/Relu_1Relu/sequential_266/lstm_799/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_266/lstm_799/lstm_cell_670/mul_2Mul3sequential_266/lstm_799/lstm_cell_670/Sigmoid_2:y:0:sequential_266/lstm_799/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_266/lstm_799/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_266/lstm_799/TensorArrayV2_1TensorListReserve>sequential_266/lstm_799/TensorArrayV2_1/element_shape:output:00sequential_266/lstm_799/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_266/lstm_799/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_266/lstm_799/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_266/lstm_799/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_266/lstm_799/whileWhile3sequential_266/lstm_799/while/loop_counter:output:09sequential_266/lstm_799/while/maximum_iterations:output:0%sequential_266/lstm_799/time:output:00sequential_266/lstm_799/TensorArrayV2_1:handle:0&sequential_266/lstm_799/zeros:output:0(sequential_266/lstm_799/zeros_1:output:00sequential_266/lstm_799/strided_slice_1:output:0Osequential_266/lstm_799/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_266_lstm_799_lstm_cell_670_matmul_readvariableop_resourceFsequential_266_lstm_799_lstm_cell_670_matmul_1_readvariableop_resourceEsequential_266_lstm_799_lstm_cell_670_biasadd_readvariableop_resource*
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
*sequential_266_lstm_799_while_body_4059478*6
cond.R,
*sequential_266_lstm_799_while_cond_4059477*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_266/lstm_799/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_266/lstm_799/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_266/lstm_799/while:output:3Qsequential_266/lstm_799/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_266/lstm_799/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_266/lstm_799/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_799/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_799/strided_slice_3StridedSliceCsequential_266/lstm_799/TensorArrayV2Stack/TensorListStack:tensor:06sequential_266/lstm_799/strided_slice_3/stack:output:08sequential_266/lstm_799/strided_slice_3/stack_1:output:08sequential_266/lstm_799/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_266/lstm_799/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_266/lstm_799/transpose_1	TransposeCsequential_266/lstm_799/TensorArrayV2Stack/TensorListStack:tensor:01sequential_266/lstm_799/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_266/lstm_799/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_266/lstm_800/ShapeShape'sequential_266/lstm_799/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_266/lstm_800/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_266/lstm_800/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_266/lstm_800/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_266/lstm_800/strided_sliceStridedSlice&sequential_266/lstm_800/Shape:output:04sequential_266/lstm_800/strided_slice/stack:output:06sequential_266/lstm_800/strided_slice/stack_1:output:06sequential_266/lstm_800/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_266/lstm_800/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_266/lstm_800/zeros/packedPack.sequential_266/lstm_800/strided_slice:output:0/sequential_266/lstm_800/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_266/lstm_800/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_800/zerosFill-sequential_266/lstm_800/zeros/packed:output:0,sequential_266/lstm_800/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_266/lstm_800/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_266/lstm_800/zeros_1/packedPack.sequential_266/lstm_800/strided_slice:output:01sequential_266/lstm_800/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_266/lstm_800/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_266/lstm_800/zeros_1Fill/sequential_266/lstm_800/zeros_1/packed:output:0.sequential_266/lstm_800/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_266/lstm_800/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_266/lstm_800/transpose	Transpose'sequential_266/lstm_799/transpose_1:y:0/sequential_266/lstm_800/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_266/lstm_800/Shape_1Shape%sequential_266/lstm_800/transpose:y:0*
T0*
_output_shapes
:w
-sequential_266/lstm_800/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_800/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_800/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_800/strided_slice_1StridedSlice(sequential_266/lstm_800/Shape_1:output:06sequential_266/lstm_800/strided_slice_1/stack:output:08sequential_266/lstm_800/strided_slice_1/stack_1:output:08sequential_266/lstm_800/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_266/lstm_800/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_266/lstm_800/TensorArrayV2TensorListReserve<sequential_266/lstm_800/TensorArrayV2/element_shape:output:00sequential_266/lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_266/lstm_800/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_266/lstm_800/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_266/lstm_800/transpose:y:0Vsequential_266/lstm_800/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_266/lstm_800/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_800/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_266/lstm_800/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_800/strided_slice_2StridedSlice%sequential_266/lstm_800/transpose:y:06sequential_266/lstm_800/strided_slice_2/stack:output:08sequential_266/lstm_800/strided_slice_2/stack_1:output:08sequential_266/lstm_800/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOpReadVariableOpDsequential_266_lstm_800_lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_266/lstm_800/lstm_cell_671/MatMulMatMul0sequential_266/lstm_800/strided_slice_2:output:0Csequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOpFsequential_266_lstm_800_lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_266/lstm_800/lstm_cell_671/MatMul_1MatMul&sequential_266/lstm_800/zeros:output:0Esequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_266/lstm_800/lstm_cell_671/addAddV26sequential_266/lstm_800/lstm_cell_671/MatMul:product:08sequential_266/lstm_800/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOpEsequential_266_lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_266/lstm_800/lstm_cell_671/BiasAddBiasAdd-sequential_266/lstm_800/lstm_cell_671/add:z:0Dsequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_266/lstm_800/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_266/lstm_800/lstm_cell_671/splitSplit>sequential_266/lstm_800/lstm_cell_671/split/split_dim:output:06sequential_266/lstm_800/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_266/lstm_800/lstm_cell_671/SigmoidSigmoid4sequential_266/lstm_800/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_266/lstm_800/lstm_cell_671/Sigmoid_1Sigmoid4sequential_266/lstm_800/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_266/lstm_800/lstm_cell_671/mulMul3sequential_266/lstm_800/lstm_cell_671/Sigmoid_1:y:0(sequential_266/lstm_800/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_266/lstm_800/lstm_cell_671/ReluRelu4sequential_266/lstm_800/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_266/lstm_800/lstm_cell_671/mul_1Mul1sequential_266/lstm_800/lstm_cell_671/Sigmoid:y:08sequential_266/lstm_800/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_266/lstm_800/lstm_cell_671/add_1AddV2-sequential_266/lstm_800/lstm_cell_671/mul:z:0/sequential_266/lstm_800/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_266/lstm_800/lstm_cell_671/Sigmoid_2Sigmoid4sequential_266/lstm_800/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_266/lstm_800/lstm_cell_671/Relu_1Relu/sequential_266/lstm_800/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_266/lstm_800/lstm_cell_671/mul_2Mul3sequential_266/lstm_800/lstm_cell_671/Sigmoid_2:y:0:sequential_266/lstm_800/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_266/lstm_800/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_266/lstm_800/TensorArrayV2_1TensorListReserve>sequential_266/lstm_800/TensorArrayV2_1/element_shape:output:00sequential_266/lstm_800/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_266/lstm_800/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_266/lstm_800/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_266/lstm_800/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_266/lstm_800/whileWhile3sequential_266/lstm_800/while/loop_counter:output:09sequential_266/lstm_800/while/maximum_iterations:output:0%sequential_266/lstm_800/time:output:00sequential_266/lstm_800/TensorArrayV2_1:handle:0&sequential_266/lstm_800/zeros:output:0(sequential_266/lstm_800/zeros_1:output:00sequential_266/lstm_800/strided_slice_1:output:0Osequential_266/lstm_800/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_266_lstm_800_lstm_cell_671_matmul_readvariableop_resourceFsequential_266_lstm_800_lstm_cell_671_matmul_1_readvariableop_resourceEsequential_266_lstm_800_lstm_cell_671_biasadd_readvariableop_resource*
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
*sequential_266_lstm_800_while_body_4059617*6
cond.R,
*sequential_266_lstm_800_while_cond_4059616*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_266/lstm_800/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_266/lstm_800/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_266/lstm_800/while:output:3Qsequential_266/lstm_800/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_266/lstm_800/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_266/lstm_800/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_266/lstm_800/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_266/lstm_800/strided_slice_3StridedSliceCsequential_266/lstm_800/TensorArrayV2Stack/TensorListStack:tensor:06sequential_266/lstm_800/strided_slice_3/stack:output:08sequential_266/lstm_800/strided_slice_3/stack_1:output:08sequential_266/lstm_800/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_266/lstm_800/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_266/lstm_800/transpose_1	TransposeCsequential_266/lstm_800/TensorArrayV2Stack/TensorListStack:tensor:01sequential_266/lstm_800/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_266/lstm_800/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_266/dense_266/MatMul/ReadVariableOpReadVariableOp7sequential_266_dense_266_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_266/dense_266/MatMulMatMul0sequential_266/lstm_800/strided_slice_3:output:06sequential_266/dense_266/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_266/dense_266/BiasAdd/ReadVariableOpReadVariableOp8sequential_266_dense_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_266/dense_266/BiasAddBiasAdd)sequential_266/dense_266/MatMul:product:07sequential_266/dense_266/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_266/dense_266/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_266/dense_266/BiasAdd/ReadVariableOp/^sequential_266/dense_266/MatMul/ReadVariableOp=^sequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp<^sequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOp>^sequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp^sequential_266/lstm_798/while=^sequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp<^sequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOp>^sequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp^sequential_266/lstm_799/while=^sequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp<^sequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOp>^sequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp^sequential_266/lstm_800/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_266/dense_266/BiasAdd/ReadVariableOp/sequential_266/dense_266/BiasAdd/ReadVariableOp2`
.sequential_266/dense_266/MatMul/ReadVariableOp.sequential_266/dense_266/MatMul/ReadVariableOp2|
<sequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp<sequential_266/lstm_798/lstm_cell_669/BiasAdd/ReadVariableOp2z
;sequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOp;sequential_266/lstm_798/lstm_cell_669/MatMul/ReadVariableOp2~
=sequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp=sequential_266/lstm_798/lstm_cell_669/MatMul_1/ReadVariableOp2>
sequential_266/lstm_798/whilesequential_266/lstm_798/while2|
<sequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp<sequential_266/lstm_799/lstm_cell_670/BiasAdd/ReadVariableOp2z
;sequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOp;sequential_266/lstm_799/lstm_cell_670/MatMul/ReadVariableOp2~
=sequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp=sequential_266/lstm_799/lstm_cell_670/MatMul_1/ReadVariableOp2>
sequential_266/lstm_799/whilesequential_266/lstm_799/while2|
<sequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp<sequential_266/lstm_800/lstm_cell_671/BiasAdd/ReadVariableOp2z
;sequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOp;sequential_266/lstm_800/lstm_cell_671/MatMul/ReadVariableOp2~
=sequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp=sequential_266/lstm_800/lstm_cell_671/MatMul_1/ReadVariableOp2>
sequential_266/lstm_800/whilesequential_266/lstm_800/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_798_input
?J
?
E__inference_lstm_799_layer_call_and_return_conditional_losses_4064107

inputs?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4064023*
condR
while_cond_4064022*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_798_layer_call_and_return_conditional_losses_4059857

inputs(
lstm_cell_669_4059775:	?(
lstm_cell_669_4059777:	d?$
lstm_cell_669_4059779:	?
identity??%lstm_cell_669/StatefulPartitionedCall?while;
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
%lstm_cell_669/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_669_4059775lstm_cell_669_4059777lstm_cell_669_4059779*
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059774n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_669_4059775lstm_cell_669_4059777lstm_cell_669_4059779*
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
while_body_4059788*
condR
while_cond_4059787*K
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
NoOpNoOp&^lstm_cell_669/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_669/StatefulPartitionedCall%lstm_cell_669/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061820

inputs#
lstm_798_4061793:	?#
lstm_798_4061795:	d?
lstm_798_4061797:	?#
lstm_799_4061800:	d?#
lstm_799_4061802:	2?
lstm_799_4061804:	?"
lstm_800_4061807:2("
lstm_800_4061809:
(
lstm_800_4061811:(#
dense_266_4061814:

dense_266_4061816:
identity??!dense_266/StatefulPartitionedCall? lstm_798/StatefulPartitionedCall? lstm_799/StatefulPartitionedCall? lstm_800/StatefulPartitionedCall?
 lstm_798/StatefulPartitionedCallStatefulPartitionedCallinputslstm_798_4061793lstm_798_4061795lstm_798_4061797*
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4061752?
 lstm_799/StatefulPartitionedCallStatefulPartitionedCall)lstm_798/StatefulPartitionedCall:output:0lstm_799_4061800lstm_799_4061802lstm_799_4061804*
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061587?
 lstm_800/StatefulPartitionedCallStatefulPartitionedCall)lstm_799/StatefulPartitionedCall:output:0lstm_800_4061807lstm_800_4061809lstm_800_4061811*
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061422?
!dense_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_800/StatefulPartitionedCall:output:0dense_266_4061814dense_266_4061816*
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224y
IdentityIdentity*dense_266/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_266/StatefulPartitionedCall!^lstm_798/StatefulPartitionedCall!^lstm_799/StatefulPartitionedCall!^lstm_800/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_266/StatefulPartitionedCall!dense_266/StatefulPartitionedCall2D
 lstm_798/StatefulPartitionedCall lstm_798/StatefulPartitionedCall2D
 lstm_799/StatefulPartitionedCall lstm_799/StatefulPartitionedCall2D
 lstm_800/StatefulPartitionedCall lstm_800/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4063880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4061752

inputs?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4061668*
condR
while_cond_4061667*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4064496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4060822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4063736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063736___redundant_placeholder05
1while_while_cond_4063736___redundant_placeholder15
1while_while_cond_4063736___redundant_placeholder25
1while_while_cond_4063736___redundant_placeholder3
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
while_cond_4063593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063593___redundant_placeholder05
1while_while_cond_4063593___redundant_placeholder15
1while_while_cond_4063593___redundant_placeholder25
1while_while_cond_4063593___redundant_placeholder3
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060124

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
?
*sequential_266_lstm_799_while_cond_4059477L
Hsequential_266_lstm_799_while_sequential_266_lstm_799_while_loop_counterR
Nsequential_266_lstm_799_while_sequential_266_lstm_799_while_maximum_iterations-
)sequential_266_lstm_799_while_placeholder/
+sequential_266_lstm_799_while_placeholder_1/
+sequential_266_lstm_799_while_placeholder_2/
+sequential_266_lstm_799_while_placeholder_3N
Jsequential_266_lstm_799_while_less_sequential_266_lstm_799_strided_slice_1e
asequential_266_lstm_799_while_sequential_266_lstm_799_while_cond_4059477___redundant_placeholder0e
asequential_266_lstm_799_while_sequential_266_lstm_799_while_cond_4059477___redundant_placeholder1e
asequential_266_lstm_799_while_sequential_266_lstm_799_while_cond_4059477___redundant_placeholder2e
asequential_266_lstm_799_while_sequential_266_lstm_799_while_cond_4059477___redundant_placeholder3*
&sequential_266_lstm_799_while_identity
?
"sequential_266/lstm_799/while/LessLess)sequential_266_lstm_799_while_placeholderJsequential_266_lstm_799_while_less_sequential_266_lstm_799_strided_slice_1*
T0*
_output_shapes
: {
&sequential_266/lstm_799/while/IdentityIdentity&sequential_266/lstm_799/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_266_lstm_799_while_identity/sequential_266/lstm_799/while/Identity:output:0*(
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
while_cond_4060971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060971___redundant_placeholder05
1while_while_cond_4060971___redundant_placeholder15
1while_while_cond_4060971___redundant_placeholder25
1while_while_cond_4060971___redundant_placeholder3
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

?
0__inference_sequential_266_layer_call_fn_4061994

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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061231o
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
while_cond_4061667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4061667___redundant_placeholder05
1while_while_cond_4061667___redundant_placeholder15
1while_while_cond_4061667___redundant_placeholder25
1while_while_cond_4061667___redundant_placeholder3
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

lstm_800_while_body_4062358.
*lstm_800_while_lstm_800_while_loop_counter4
0lstm_800_while_lstm_800_while_maximum_iterations
lstm_800_while_placeholder 
lstm_800_while_placeholder_1 
lstm_800_while_placeholder_2 
lstm_800_while_placeholder_3-
)lstm_800_while_lstm_800_strided_slice_1_0i
elstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0:2(Q
?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(L
>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0:(
lstm_800_while_identity
lstm_800_while_identity_1
lstm_800_while_identity_2
lstm_800_while_identity_3
lstm_800_while_identity_4
lstm_800_while_identity_5+
'lstm_800_while_lstm_800_strided_slice_1g
clstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensorM
;lstm_800_while_lstm_cell_671_matmul_readvariableop_resource:2(O
=lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource:
(J
<lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource:(??3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp?2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp?4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp?
@lstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_800/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0lstm_800_while_placeholderIlstm_800/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_800/while/lstm_cell_671/MatMulMatMul9lstm_800/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_800/while/lstm_cell_671/MatMul_1MatMullstm_800_while_placeholder_2<lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_800/while/lstm_cell_671/addAddV2-lstm_800/while/lstm_cell_671/MatMul:product:0/lstm_800/while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_800/while/lstm_cell_671/BiasAddBiasAdd$lstm_800/while/lstm_cell_671/add:z:0;lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_800/while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_800/while/lstm_cell_671/splitSplit5lstm_800/while/lstm_cell_671/split/split_dim:output:0-lstm_800/while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_800/while/lstm_cell_671/SigmoidSigmoid+lstm_800/while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_800/while/lstm_cell_671/Sigmoid_1Sigmoid+lstm_800/while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_800/while/lstm_cell_671/mulMul*lstm_800/while/lstm_cell_671/Sigmoid_1:y:0lstm_800_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_800/while/lstm_cell_671/ReluRelu+lstm_800/while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/mul_1Mul(lstm_800/while/lstm_cell_671/Sigmoid:y:0/lstm_800/while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/add_1AddV2$lstm_800/while/lstm_cell_671/mul:z:0&lstm_800/while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_800/while/lstm_cell_671/Sigmoid_2Sigmoid+lstm_800/while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_800/while/lstm_cell_671/Relu_1Relu&lstm_800/while/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_800/while/lstm_cell_671/mul_2Mul*lstm_800/while/lstm_cell_671/Sigmoid_2:y:01lstm_800/while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_800/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_800_while_placeholder_1lstm_800_while_placeholder&lstm_800/while/lstm_cell_671/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_800/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_800/while/addAddV2lstm_800_while_placeholderlstm_800/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_800/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_800/while/add_1AddV2*lstm_800_while_lstm_800_while_loop_counterlstm_800/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_800/while/IdentityIdentitylstm_800/while/add_1:z:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_1Identity0lstm_800_while_lstm_800_while_maximum_iterations^lstm_800/while/NoOp*
T0*
_output_shapes
: t
lstm_800/while/Identity_2Identitylstm_800/while/add:z:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_3IdentityClstm_800/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_800/while/NoOp*
T0*
_output_shapes
: ?
lstm_800/while/Identity_4Identity&lstm_800/while/lstm_cell_671/mul_2:z:0^lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_800/while/Identity_5Identity&lstm_800/while/lstm_cell_671/add_1:z:0^lstm_800/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_800/while/NoOpNoOp4^lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp3^lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp5^lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_800_while_identity lstm_800/while/Identity:output:0"?
lstm_800_while_identity_1"lstm_800/while/Identity_1:output:0"?
lstm_800_while_identity_2"lstm_800/while/Identity_2:output:0"?
lstm_800_while_identity_3"lstm_800/while/Identity_3:output:0"?
lstm_800_while_identity_4"lstm_800/while/Identity_4:output:0"?
lstm_800_while_identity_5"lstm_800/while/Identity_5:output:0"T
'lstm_800_while_lstm_800_strided_slice_1)lstm_800_while_lstm_800_strided_slice_1_0"~
<lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource>lstm_800_while_lstm_cell_671_biasadd_readvariableop_resource_0"?
=lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource?lstm_800_while_lstm_cell_671_matmul_1_readvariableop_resource_0"|
;lstm_800_while_lstm_cell_671_matmul_readvariableop_resource=lstm_800_while_lstm_cell_671_matmul_readvariableop_resource_0"?
clstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensorelstm_800_while_tensorarrayv2read_tensorlistgetitem_lstm_800_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp3lstm_800/while/lstm_cell_671/BiasAdd/ReadVariableOp2h
2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp2lstm_800/while/lstm_cell_671/MatMul/ReadVariableOp2l
4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp4lstm_800/while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4059788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_669_4059812_0:	?0
while_lstm_cell_669_4059814_0:	d?,
while_lstm_cell_669_4059816_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_669_4059812:	?.
while_lstm_cell_669_4059814:	d?*
while_lstm_cell_669_4059816:	???+while/lstm_cell_669/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_669/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_669_4059812_0while_lstm_cell_669_4059814_0while_lstm_cell_669_4059816_0*
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059774?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_669/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_669/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_669/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_669/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_669_4059812while_lstm_cell_669_4059812_0"<
while_lstm_cell_669_4059814while_lstm_cell_669_4059814_0"<
while_lstm_cell_669_4059816while_lstm_cell_669_4059816_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_669/StatefulPartitionedCall+while/lstm_cell_669/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_800_layer_call_fn_4064129
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4060748o
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
?K
?
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064294
inputs_0>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4064210*
condR
while_cond_4064209*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_4060488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_671_4060512_0:2(/
while_lstm_cell_671_4060514_0:
(+
while_lstm_cell_671_4060516_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_671_4060512:2(-
while_lstm_cell_671_4060514:
()
while_lstm_cell_671_4060516:(??+while/lstm_cell_671/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_671/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_671_4060512_0while_lstm_cell_671_4060514_0while_lstm_cell_671_4060516_0*
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060474?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_671/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_671/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_671/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_671_4060512while_lstm_cell_671_4060512_0"<
while_lstm_cell_671_4060514while_lstm_cell_671_4060514_0"<
while_lstm_cell_671_4060516while_lstm_cell_671_4060516_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_671/StatefulPartitionedCall+while/lstm_cell_671/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065036

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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061932
lstm_798_input#
lstm_798_4061905:	?#
lstm_798_4061907:	d?
lstm_798_4061909:	?#
lstm_799_4061912:	d?#
lstm_799_4061914:	2?
lstm_799_4061916:	?"
lstm_800_4061919:2("
lstm_800_4061921:
(
lstm_800_4061923:(#
dense_266_4061926:

dense_266_4061928:
identity??!dense_266/StatefulPartitionedCall? lstm_798/StatefulPartitionedCall? lstm_799/StatefulPartitionedCall? lstm_800/StatefulPartitionedCall?
 lstm_798/StatefulPartitionedCallStatefulPartitionedCalllstm_798_inputlstm_798_4061905lstm_798_4061907lstm_798_4061909*
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4061752?
 lstm_799/StatefulPartitionedCallStatefulPartitionedCall)lstm_798/StatefulPartitionedCall:output:0lstm_799_4061912lstm_799_4061914lstm_799_4061916*
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061587?
 lstm_800/StatefulPartitionedCallStatefulPartitionedCall)lstm_799/StatefulPartitionedCall:output:0lstm_800_4061919lstm_800_4061921lstm_800_4061923*
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061422?
!dense_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_800/StatefulPartitionedCall:output:0dense_266_4061926dense_266_4061928*
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224y
IdentityIdentity*dense_266/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_266/StatefulPartitionedCall!^lstm_798/StatefulPartitionedCall!^lstm_799/StatefulPartitionedCall!^lstm_800/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_266/StatefulPartitionedCall!dense_266/StatefulPartitionedCall2D
 lstm_798/StatefulPartitionedCall lstm_798/StatefulPartitionedCall2D
 lstm_799/StatefulPartitionedCall lstm_799/StatefulPartitionedCall2D
 lstm_800/StatefulPartitionedCall lstm_800/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_798_input
?
?
*__inference_lstm_798_layer_call_fn_4062919

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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4061752s
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4060748

inputs'
lstm_cell_671_4060666:2('
lstm_cell_671_4060668:
(#
lstm_cell_671_4060670:(
identity??%lstm_cell_671/StatefulPartitionedCall?while;
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
%lstm_cell_671/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_671_4060666lstm_cell_671_4060668lstm_cell_671_4060670*
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060620n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_671_4060666lstm_cell_671_4060668lstm_cell_671_4060670*
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
while_body_4060679*
condR
while_cond_4060678*K
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
NoOpNoOp&^lstm_cell_671/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_671/StatefulPartitionedCall%lstm_cell_671/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4063879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4063879___redundant_placeholder05
1while_while_cond_4063879___redundant_placeholder15
1while_while_cond_4063879___redundant_placeholder25
1while_while_cond_4063879___redundant_placeholder3
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4061422

inputs>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4061338*
condR
while_cond_4061337*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_800_while_cond_4062784.
*lstm_800_while_lstm_800_while_loop_counter4
0lstm_800_while_lstm_800_while_maximum_iterations
lstm_800_while_placeholder 
lstm_800_while_placeholder_1 
lstm_800_while_placeholder_2 
lstm_800_while_placeholder_30
,lstm_800_while_less_lstm_800_strided_slice_1G
Clstm_800_while_lstm_800_while_cond_4062784___redundant_placeholder0G
Clstm_800_while_lstm_800_while_cond_4062784___redundant_placeholder1G
Clstm_800_while_lstm_800_while_cond_4062784___redundant_placeholder2G
Clstm_800_while_lstm_800_while_cond_4062784___redundant_placeholder3
lstm_800_while_identity
?
lstm_800/while/LessLesslstm_800_while_placeholder,lstm_800_while_less_lstm_800_strided_slice_1*
T0*
_output_shapes
: ]
lstm_800/while/IdentityIdentitylstm_800/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_800_while_identity lstm_800/while/Identity:output:0*(
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
while_body_4061122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4060138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_670_4060162_0:	d?0
while_lstm_cell_670_4060164_0:	2?,
while_lstm_cell_670_4060166_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_670_4060162:	d?.
while_lstm_cell_670_4060164:	2?*
while_lstm_cell_670_4060166:	???+while/lstm_cell_670/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_670/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_670_4060162_0while_lstm_cell_670_4060164_0while_lstm_cell_670_4060166_0*
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060124?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_670/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_670/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_670/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_670/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_670_4060162while_lstm_cell_670_4060162_0"<
while_lstm_cell_670_4060164while_lstm_cell_670_4060164_0"<
while_lstm_cell_670_4060166while_lstm_cell_670_4060166_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_670/StatefulPartitionedCall+while/lstm_cell_670/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4064023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4060821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4060821___redundant_placeholder05
1while_while_cond_4060821___redundant_placeholder15
1while_while_cond_4060821___redundant_placeholder25
1while_while_cond_4060821___redundant_placeholder3
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064437
inputs_0>
,lstm_cell_671_matmul_readvariableop_resource:2(@
.lstm_cell_671_matmul_1_readvariableop_resource:
(;
-lstm_cell_671_biasadd_readvariableop_resource:(
identity??$lstm_cell_671/BiasAdd/ReadVariableOp?#lstm_cell_671/MatMul/ReadVariableOp?%lstm_cell_671/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_671/MatMul/ReadVariableOpReadVariableOp,lstm_cell_671_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_671/MatMulMatMulstrided_slice_2:output:0+lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_671_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_671/MatMul_1MatMulzeros:output:0-lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_671/addAddV2lstm_cell_671/MatMul:product:0 lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_671_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_671/BiasAddBiasAddlstm_cell_671/add:z:0,lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_671/splitSplit&lstm_cell_671/split/split_dim:output:0lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_671/SigmoidSigmoidlstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_1Sigmoidlstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_671/mulMullstm_cell_671/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_671/ReluRelulstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_1Mullstm_cell_671/Sigmoid:y:0 lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_671/add_1AddV2lstm_cell_671/mul:z:0lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_671/Sigmoid_2Sigmoidlstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_671/Relu_1Relulstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_671/mul_2Mullstm_cell_671/Sigmoid_2:y:0"lstm_cell_671/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_671_matmul_readvariableop_resource.lstm_cell_671_matmul_1_readvariableop_resource-lstm_cell_671_biasadd_readvariableop_resource*
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
while_body_4064353*
condR
while_cond_4064352*K
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
NoOpNoOp%^lstm_cell_671/BiasAdd/ReadVariableOp$^lstm_cell_671/MatMul/ReadVariableOp&^lstm_cell_671/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_671/BiasAdd/ReadVariableOp$lstm_cell_671/BiasAdd/ReadVariableOp2J
#lstm_cell_671/MatMul/ReadVariableOp#lstm_cell_671/MatMul/ReadVariableOp2N
%lstm_cell_671/MatMul_1/ReadVariableOp%lstm_cell_671/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064840

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

?
0__inference_sequential_266_layer_call_fn_4062021

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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061820o
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4060207

inputs(
lstm_cell_670_4060125:	d?(
lstm_cell_670_4060127:	2?$
lstm_cell_670_4060129:	?
identity??%lstm_cell_670/StatefulPartitionedCall?while;
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
%lstm_cell_670/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_670_4060125lstm_cell_670_4060127lstm_cell_670_4060129*
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060124n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_670_4060125lstm_cell_670_4060127lstm_cell_670_4060129*
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
while_body_4060138*
condR
while_cond_4060137*K
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
NoOpNoOp&^lstm_cell_670/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_670/StatefulPartitionedCall%lstm_cell_670/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_800_layer_call_and_return_conditional_losses_4060557

inputs'
lstm_cell_671_4060475:2('
lstm_cell_671_4060477:
(#
lstm_cell_671_4060479:(
identity??%lstm_cell_671/StatefulPartitionedCall?while;
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
%lstm_cell_671/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_671_4060475lstm_cell_671_4060477lstm_cell_671_4060479*
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060474n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_671_4060475lstm_cell_671_4060477lstm_cell_671_4060479*
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
while_body_4060488*
condR
while_cond_4060487*K
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
NoOpNoOp&^lstm_cell_671/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_671/StatefulPartitionedCall%lstm_cell_671/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063205
inputs_0?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4063121*
condR
while_cond_4063120*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4064639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_671_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_671_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_671_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_671_matmul_readvariableop_resource:2(F
4while_lstm_cell_671_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_671_biasadd_readvariableop_resource:(??*while/lstm_cell_671/BiasAdd/ReadVariableOp?)while/lstm_cell_671/MatMul/ReadVariableOp?+while/lstm_cell_671/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_671/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_671_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_671/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_671/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_671_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_671/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_671/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_671/addAddV2$while/lstm_cell_671/MatMul:product:0&while/lstm_cell_671/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_671/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_671_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_671/BiasAddBiasAddwhile/lstm_cell_671/add:z:02while/lstm_cell_671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_671/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_671/splitSplit,while/lstm_cell_671/split/split_dim:output:0$while/lstm_cell_671/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_671/SigmoidSigmoid"while/lstm_cell_671/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_1Sigmoid"while/lstm_cell_671/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mulMul!while/lstm_cell_671/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_671/ReluRelu"while/lstm_cell_671/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_1Mulwhile/lstm_cell_671/Sigmoid:y:0&while/lstm_cell_671/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/add_1AddV2while/lstm_cell_671/mul:z:0while/lstm_cell_671/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_671/Sigmoid_2Sigmoid"while/lstm_cell_671/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_671/Relu_1Reluwhile/lstm_cell_671/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_671/mul_2Mul!while/lstm_cell_671/Sigmoid_2:y:0(while/lstm_cell_671/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_671/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_671/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_671/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_671/BiasAdd/ReadVariableOp*^while/lstm_cell_671/MatMul/ReadVariableOp,^while/lstm_cell_671/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_671_biasadd_readvariableop_resource5while_lstm_cell_671_biasadd_readvariableop_resource_0"n
4while_lstm_cell_671_matmul_1_readvariableop_resource6while_lstm_cell_671_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_671_matmul_readvariableop_resource4while_lstm_cell_671_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_671/BiasAdd/ReadVariableOp*while/lstm_cell_671/BiasAdd/ReadVariableOp2V
)while/lstm_cell_671/MatMul/ReadVariableOp)while/lstm_cell_671/MatMul/ReadVariableOp2Z
+while/lstm_cell_671/MatMul_1/ReadVariableOp+while/lstm_cell_671/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_671_layer_call_fn_4064972

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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060620o
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4061056

inputs?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4060972*
condR
while_cond_4060971*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4063737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064906

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
?J
?
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063348

inputs?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4063264*
condR
while_cond_4063263*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4060329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_670_4060353_0:	d?0
while_lstm_cell_670_4060355_0:	2?,
while_lstm_cell_670_4060357_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_670_4060353:	d?.
while_lstm_cell_670_4060355:	2?*
while_lstm_cell_670_4060357:	???+while/lstm_cell_670/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_670/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_670_4060353_0while_lstm_cell_670_4060355_0while_lstm_cell_670_4060357_0*
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060270?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_670/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_670/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_670/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_670/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_670_4060353while_lstm_cell_670_4060353_0"<
while_lstm_cell_670_4060355while_lstm_cell_670_4060355_0"<
while_lstm_cell_670_4060357while_lstm_cell_670_4060357_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_670/StatefulPartitionedCall+while/lstm_cell_670/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063062
inputs_0?
,lstm_cell_669_matmul_readvariableop_resource:	?A
.lstm_cell_669_matmul_1_readvariableop_resource:	d?<
-lstm_cell_669_biasadd_readvariableop_resource:	?
identity??$lstm_cell_669/BiasAdd/ReadVariableOp?#lstm_cell_669/MatMul/ReadVariableOp?%lstm_cell_669/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_669/MatMul/ReadVariableOpReadVariableOp,lstm_cell_669_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_669/MatMulMatMulstrided_slice_2:output:0+lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_669_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_669/MatMul_1MatMulzeros:output:0-lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_669/addAddV2lstm_cell_669/MatMul:product:0 lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_669_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_669/BiasAddBiasAddlstm_cell_669/add:z:0,lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_669/splitSplit&lstm_cell_669/split/split_dim:output:0lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_669/SigmoidSigmoidlstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_1Sigmoidlstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_669/mulMullstm_cell_669/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_669/ReluRelulstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_1Mullstm_cell_669/Sigmoid:y:0 lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_669/add_1AddV2lstm_cell_669/mul:z:0lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_669/Sigmoid_2Sigmoidlstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_669/Relu_1Relulstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_669/mul_2Mullstm_cell_669/Sigmoid_2:y:0"lstm_cell_669/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_669_matmul_readvariableop_resource.lstm_cell_669_matmul_1_readvariableop_resource-lstm_cell_669_biasadd_readvariableop_resource*
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
while_body_4062978*
condR
while_cond_4062977*K
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
NoOpNoOp%^lstm_cell_669/BiasAdd/ReadVariableOp$^lstm_cell_669/MatMul/ReadVariableOp&^lstm_cell_669/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_669/BiasAdd/ReadVariableOp$lstm_cell_669/BiasAdd/ReadVariableOp2J
#lstm_cell_669/MatMul/ReadVariableOp#lstm_cell_669/MatMul/ReadVariableOp2N
%lstm_cell_669/MatMul_1/ReadVariableOp%lstm_cell_669/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_798_layer_call_fn_4062897
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060048|
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
?
E__inference_lstm_798_layer_call_and_return_conditional_losses_4060048

inputs(
lstm_cell_669_4059966:	?(
lstm_cell_669_4059968:	d?$
lstm_cell_669_4059970:	?
identity??%lstm_cell_669/StatefulPartitionedCall?while;
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
%lstm_cell_669/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_669_4059966lstm_cell_669_4059968lstm_cell_669_4059970*
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059920n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_669_4059966lstm_cell_669_4059968lstm_cell_669_4059970*
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
while_body_4059979*
condR
while_cond_4059978*K
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
NoOpNoOp&^lstm_cell_669/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_669/StatefulPartitionedCall%lstm_cell_669/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4063594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_670_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_670_matmul_readvariableop_resource:	d?G
4while_lstm_cell_670_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_670_biasadd_readvariableop_resource:	???*while/lstm_cell_670/BiasAdd/ReadVariableOp?)while/lstm_cell_670/MatMul/ReadVariableOp?+while/lstm_cell_670/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_670/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_670/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_670/addAddV2$while/lstm_cell_670/MatMul:product:0&while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_670/BiasAddBiasAddwhile/lstm_cell_670/add:z:02while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_670/splitSplit,while/lstm_cell_670/split/split_dim:output:0$while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_670/SigmoidSigmoid"while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_1Sigmoid"while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mulMul!while/lstm_cell_670/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_670/ReluRelu"while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_1Mulwhile/lstm_cell_670/Sigmoid:y:0&while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/add_1AddV2while/lstm_cell_670/mul:z:0while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_670/Sigmoid_2Sigmoid"while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_670/Relu_1Reluwhile/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_670/mul_2Mul!while/lstm_cell_670/Sigmoid_2:y:0(while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_670/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_670/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_670/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_670/BiasAdd/ReadVariableOp*^while/lstm_cell_670/MatMul/ReadVariableOp,^while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_670_biasadd_readvariableop_resource5while_lstm_cell_670_biasadd_readvariableop_resource_0"n
4while_lstm_cell_670_matmul_1_readvariableop_resource6while_lstm_cell_670_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_670_matmul_readvariableop_resource4while_lstm_cell_670_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_670/BiasAdd/ReadVariableOp*while/lstm_cell_670/BiasAdd/ReadVariableOp2V
)while/lstm_cell_670/MatMul/ReadVariableOp)while/lstm_cell_670/MatMul/ReadVariableOp2Z
+while/lstm_cell_670/MatMul_1/ReadVariableOp+while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063964

inputs?
,lstm_cell_670_matmul_readvariableop_resource:	d?A
.lstm_cell_670_matmul_1_readvariableop_resource:	2?<
-lstm_cell_670_biasadd_readvariableop_resource:	?
identity??$lstm_cell_670/BiasAdd/ReadVariableOp?#lstm_cell_670/MatMul/ReadVariableOp?%lstm_cell_670/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_670/MatMul/ReadVariableOpReadVariableOp,lstm_cell_670_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_670/MatMulMatMulstrided_slice_2:output:0+lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_670_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_670/MatMul_1MatMulzeros:output:0-lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_670/addAddV2lstm_cell_670/MatMul:product:0 lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_670_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_670/BiasAddBiasAddlstm_cell_670/add:z:0,lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_670/splitSplit&lstm_cell_670/split/split_dim:output:0lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_670/SigmoidSigmoidlstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_1Sigmoidlstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_670/mulMullstm_cell_670/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_670/ReluRelulstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_1Mullstm_cell_670/Sigmoid:y:0 lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_670/add_1AddV2lstm_cell_670/mul:z:0lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_670/Sigmoid_2Sigmoidlstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_670/Relu_1Relulstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_670/mul_2Mullstm_cell_670/Sigmoid_2:y:0"lstm_cell_670/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_670_matmul_readvariableop_resource.lstm_cell_670_matmul_1_readvariableop_resource-lstm_cell_670_biasadd_readvariableop_resource*
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
while_body_4063880*
condR
while_cond_4063879*K
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
NoOpNoOp%^lstm_cell_670/BiasAdd/ReadVariableOp$^lstm_cell_670/MatMul/ReadVariableOp&^lstm_cell_670/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_670/BiasAdd/ReadVariableOp$lstm_cell_670/BiasAdd/ReadVariableOp2J
#lstm_cell_670/MatMul/ReadVariableOp#lstm_cell_670/MatMul/ReadVariableOp2N
%lstm_cell_670/MatMul_1/ReadVariableOp%lstm_cell_670/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_671_layer_call_fn_4064955

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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060474o
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
while_body_4061668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4060620

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

lstm_799_while_body_4062219.
*lstm_799_while_lstm_799_while_loop_counter4
0lstm_799_while_lstm_799_while_maximum_iterations
lstm_799_while_placeholder 
lstm_799_while_placeholder_1 
lstm_799_while_placeholder_2 
lstm_799_while_placeholder_3-
)lstm_799_while_lstm_799_strided_slice_1_0i
elstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0:	d?R
?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0:	2?M
>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0:	?
lstm_799_while_identity
lstm_799_while_identity_1
lstm_799_while_identity_2
lstm_799_while_identity_3
lstm_799_while_identity_4
lstm_799_while_identity_5+
'lstm_799_while_lstm_799_strided_slice_1g
clstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensorN
;lstm_799_while_lstm_cell_670_matmul_readvariableop_resource:	d?P
=lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource:	2?K
<lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource:	???3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp?2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp?4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp?
@lstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_799/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0lstm_799_while_placeholderIlstm_799/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOpReadVariableOp=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_799/while/lstm_cell_670/MatMulMatMul9lstm_799/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOpReadVariableOp?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_799/while/lstm_cell_670/MatMul_1MatMullstm_799_while_placeholder_2<lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_799/while/lstm_cell_670/addAddV2-lstm_799/while/lstm_cell_670/MatMul:product:0/lstm_799/while/lstm_cell_670/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOpReadVariableOp>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_799/while/lstm_cell_670/BiasAddBiasAdd$lstm_799/while/lstm_cell_670/add:z:0;lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_799/while/lstm_cell_670/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_799/while/lstm_cell_670/splitSplit5lstm_799/while/lstm_cell_670/split/split_dim:output:0-lstm_799/while/lstm_cell_670/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_799/while/lstm_cell_670/SigmoidSigmoid+lstm_799/while/lstm_cell_670/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_799/while/lstm_cell_670/Sigmoid_1Sigmoid+lstm_799/while/lstm_cell_670/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_799/while/lstm_cell_670/mulMul*lstm_799/while/lstm_cell_670/Sigmoid_1:y:0lstm_799_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_799/while/lstm_cell_670/ReluRelu+lstm_799/while/lstm_cell_670/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/mul_1Mul(lstm_799/while/lstm_cell_670/Sigmoid:y:0/lstm_799/while/lstm_cell_670/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/add_1AddV2$lstm_799/while/lstm_cell_670/mul:z:0&lstm_799/while/lstm_cell_670/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_799/while/lstm_cell_670/Sigmoid_2Sigmoid+lstm_799/while/lstm_cell_670/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_799/while/lstm_cell_670/Relu_1Relu&lstm_799/while/lstm_cell_670/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_799/while/lstm_cell_670/mul_2Mul*lstm_799/while/lstm_cell_670/Sigmoid_2:y:01lstm_799/while/lstm_cell_670/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_799/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_799_while_placeholder_1lstm_799_while_placeholder&lstm_799/while/lstm_cell_670/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_799/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_799/while/addAddV2lstm_799_while_placeholderlstm_799/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_799/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_799/while/add_1AddV2*lstm_799_while_lstm_799_while_loop_counterlstm_799/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_799/while/IdentityIdentitylstm_799/while/add_1:z:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_1Identity0lstm_799_while_lstm_799_while_maximum_iterations^lstm_799/while/NoOp*
T0*
_output_shapes
: t
lstm_799/while/Identity_2Identitylstm_799/while/add:z:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_3IdentityClstm_799/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_799/while/NoOp*
T0*
_output_shapes
: ?
lstm_799/while/Identity_4Identity&lstm_799/while/lstm_cell_670/mul_2:z:0^lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_799/while/Identity_5Identity&lstm_799/while/lstm_cell_670/add_1:z:0^lstm_799/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_799/while/NoOpNoOp4^lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp3^lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp5^lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_799_while_identity lstm_799/while/Identity:output:0"?
lstm_799_while_identity_1"lstm_799/while/Identity_1:output:0"?
lstm_799_while_identity_2"lstm_799/while/Identity_2:output:0"?
lstm_799_while_identity_3"lstm_799/while/Identity_3:output:0"?
lstm_799_while_identity_4"lstm_799/while/Identity_4:output:0"?
lstm_799_while_identity_5"lstm_799/while/Identity_5:output:0"T
'lstm_799_while_lstm_799_strided_slice_1)lstm_799_while_lstm_799_strided_slice_1_0"~
<lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource>lstm_799_while_lstm_cell_670_biasadd_readvariableop_resource_0"?
=lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource?lstm_799_while_lstm_cell_670_matmul_1_readvariableop_resource_0"|
;lstm_799_while_lstm_cell_670_matmul_readvariableop_resource=lstm_799_while_lstm_cell_670_matmul_readvariableop_resource_0"?
clstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensorelstm_799_while_tensorarrayv2read_tensorlistgetitem_lstm_799_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp3lstm_799/while/lstm_cell_670/BiasAdd/ReadVariableOp2h
2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp2lstm_799/while/lstm_cell_670/MatMul/ReadVariableOp2l
4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp4lstm_799/while/lstm_cell_670/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4061224

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
while_body_4059979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_669_4060003_0:	?0
while_lstm_cell_669_4060005_0:	d?,
while_lstm_cell_669_4060007_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_669_4060003:	?.
while_lstm_cell_669_4060005:	d?*
while_lstm_cell_669_4060007:	???+while/lstm_cell_669/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_669/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_669_4060003_0while_lstm_cell_669_4060005_0while_lstm_cell_669_4060007_0*
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4059920?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_669/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_669/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_669/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_669/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_669_4060003while_lstm_cell_669_4060003_0"<
while_lstm_cell_669_4060005while_lstm_cell_669_4060005_0"<
while_lstm_cell_669_4060007while_lstm_cell_669_4060007_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_669/StatefulPartitionedCall+while/lstm_cell_669/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4060270

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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065004

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
?
while_body_4063264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_669_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_669_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_669_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_669_matmul_readvariableop_resource:	?G
4while_lstm_cell_669_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_669_biasadd_readvariableop_resource:	???*while/lstm_cell_669/BiasAdd/ReadVariableOp?)while/lstm_cell_669/MatMul/ReadVariableOp?+while/lstm_cell_669/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_669/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_669_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_669/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_669/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_669/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_669_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_669/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_669/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_669/addAddV2$while/lstm_cell_669/MatMul:product:0&while/lstm_cell_669/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_669/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_669_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_669/BiasAddBiasAddwhile/lstm_cell_669/add:z:02while/lstm_cell_669/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_669/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_669/splitSplit,while/lstm_cell_669/split/split_dim:output:0$while/lstm_cell_669/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_669/SigmoidSigmoid"while/lstm_cell_669/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_1Sigmoid"while/lstm_cell_669/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mulMul!while/lstm_cell_669/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_669/ReluRelu"while/lstm_cell_669/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_1Mulwhile/lstm_cell_669/Sigmoid:y:0&while/lstm_cell_669/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/add_1AddV2while/lstm_cell_669/mul:z:0while/lstm_cell_669/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_669/Sigmoid_2Sigmoid"while/lstm_cell_669/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_669/Relu_1Reluwhile/lstm_cell_669/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_669/mul_2Mul!while/lstm_cell_669/Sigmoid_2:y:0(while/lstm_cell_669/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_669/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_669/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_669/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_669/BiasAdd/ReadVariableOp*^while/lstm_cell_669/MatMul/ReadVariableOp,^while/lstm_cell_669/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_669_biasadd_readvariableop_resource5while_lstm_cell_669_biasadd_readvariableop_resource_0"n
4while_lstm_cell_669_matmul_1_readvariableop_resource6while_lstm_cell_669_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_669_matmul_readvariableop_resource4while_lstm_cell_669_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_669/BiasAdd/ReadVariableOp*while/lstm_cell_669/BiasAdd/ReadVariableOp2V
)while/lstm_cell_669/MatMul/ReadVariableOp)while/lstm_cell_669/MatMul/ReadVariableOp2Z
+while/lstm_cell_669/MatMul_1/ReadVariableOp+while/lstm_cell_669/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4064209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4064209___redundant_placeholder05
1while_while_cond_4064209___redundant_placeholder15
1while_while_cond_4064209___redundant_placeholder25
1while_while_cond_4064209___redundant_placeholder3
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
lstm_798_input;
 serving_default_lstm_798_input:0?????????=
	dense_2660
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
2dense_266/kernel
:2dense_266/bias
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
0:.	?2lstm_798/lstm_cell_798/kernel
::8	d?2'lstm_798/lstm_cell_798/recurrent_kernel
*:(?2lstm_798/lstm_cell_798/bias
0:.	d?2lstm_799/lstm_cell_799/kernel
::8	2?2'lstm_799/lstm_cell_799/recurrent_kernel
*:(?2lstm_799/lstm_cell_799/bias
/:-2(2lstm_800/lstm_cell_800/kernel
9:7
(2'lstm_800/lstm_cell_800/recurrent_kernel
):'(2lstm_800/lstm_cell_800/bias
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
2Adam/dense_266/kernel/m
!:2Adam/dense_266/bias/m
5:3	?2$Adam/lstm_798/lstm_cell_798/kernel/m
?:=	d?2.Adam/lstm_798/lstm_cell_798/recurrent_kernel/m
/:-?2"Adam/lstm_798/lstm_cell_798/bias/m
5:3	d?2$Adam/lstm_799/lstm_cell_799/kernel/m
?:=	2?2.Adam/lstm_799/lstm_cell_799/recurrent_kernel/m
/:-?2"Adam/lstm_799/lstm_cell_799/bias/m
4:22(2$Adam/lstm_800/lstm_cell_800/kernel/m
>:<
(2.Adam/lstm_800/lstm_cell_800/recurrent_kernel/m
.:,(2"Adam/lstm_800/lstm_cell_800/bias/m
':%
2Adam/dense_266/kernel/v
!:2Adam/dense_266/bias/v
5:3	?2$Adam/lstm_798/lstm_cell_798/kernel/v
?:=	d?2.Adam/lstm_798/lstm_cell_798/recurrent_kernel/v
/:-?2"Adam/lstm_798/lstm_cell_798/bias/v
5:3	d?2$Adam/lstm_799/lstm_cell_799/kernel/v
?:=	2?2.Adam/lstm_799/lstm_cell_799/recurrent_kernel/v
/:-?2"Adam/lstm_799/lstm_cell_799/bias/v
4:22(2$Adam/lstm_800/lstm_cell_800/kernel/v
>:<
(2.Adam/lstm_800/lstm_cell_800/recurrent_kernel/v
.:,(2"Adam/lstm_800/lstm_cell_800/bias/v
?2?
0__inference_sequential_266_layer_call_fn_4061256
0__inference_sequential_266_layer_call_fn_4061994
0__inference_sequential_266_layer_call_fn_4062021
0__inference_sequential_266_layer_call_fn_4061872?
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062448
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062875
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061902
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061932?
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
"__inference__wrapped_model_4059707lstm_798_input"?
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
*__inference_lstm_798_layer_call_fn_4062886
*__inference_lstm_798_layer_call_fn_4062897
*__inference_lstm_798_layer_call_fn_4062908
*__inference_lstm_798_layer_call_fn_4062919?
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063062
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063205
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063348
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063491?
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
*__inference_lstm_799_layer_call_fn_4063502
*__inference_lstm_799_layer_call_fn_4063513
*__inference_lstm_799_layer_call_fn_4063524
*__inference_lstm_799_layer_call_fn_4063535?
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063678
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063821
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063964
E__inference_lstm_799_layer_call_and_return_conditional_losses_4064107?
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
*__inference_lstm_800_layer_call_fn_4064118
*__inference_lstm_800_layer_call_fn_4064129
*__inference_lstm_800_layer_call_fn_4064140
*__inference_lstm_800_layer_call_fn_4064151?
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064294
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064437
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064580
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064723?
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
+__inference_dense_266_layer_call_fn_4064732?
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
F__inference_dense_266_layer_call_and_return_conditional_losses_4064742?
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
%__inference_signature_wrapper_4061967lstm_798_input"?
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
/__inference_lstm_cell_669_layer_call_fn_4064759
/__inference_lstm_cell_669_layer_call_fn_4064776?
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064808
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064840?
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
/__inference_lstm_cell_670_layer_call_fn_4064857
/__inference_lstm_cell_670_layer_call_fn_4064874?
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064906
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064938?
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
/__inference_lstm_cell_671_layer_call_fn_4064955
/__inference_lstm_cell_671_layer_call_fn_4064972?
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065004
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065036?
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
"__inference__wrapped_model_4059707?-./012345!";?8
1?.
,?)
lstm_798_input?????????
? "5?2
0
	dense_266#? 
	dense_266??????????
F__inference_dense_266_layer_call_and_return_conditional_losses_4064742\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_266_layer_call_fn_4064732O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063062?-./O?L
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063205?-./O?L
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063348q-./??<
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
E__inference_lstm_798_layer_call_and_return_conditional_losses_4063491q-./??<
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
*__inference_lstm_798_layer_call_fn_4062886}-./O?L
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
*__inference_lstm_798_layer_call_fn_4062897}-./O?L
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
*__inference_lstm_798_layer_call_fn_4062908d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_798_layer_call_fn_4062919d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063678?012O?L
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063821?012O?L
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4063964q012??<
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
E__inference_lstm_799_layer_call_and_return_conditional_losses_4064107q012??<
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
*__inference_lstm_799_layer_call_fn_4063502}012O?L
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
*__inference_lstm_799_layer_call_fn_4063513}012O?L
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
*__inference_lstm_799_layer_call_fn_4063524d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_799_layer_call_fn_4063535d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064294}345O?L
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064437}345O?L
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064580m345??<
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
E__inference_lstm_800_layer_call_and_return_conditional_losses_4064723m345??<
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
*__inference_lstm_800_layer_call_fn_4064118p345O?L
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
*__inference_lstm_800_layer_call_fn_4064129p345O?L
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
*__inference_lstm_800_layer_call_fn_4064140`345??<
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
*__inference_lstm_800_layer_call_fn_4064151`345??<
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064808?-./??}
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
J__inference_lstm_cell_669_layer_call_and_return_conditional_losses_4064840?-./??}
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
/__inference_lstm_cell_669_layer_call_fn_4064759?-./??}
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
/__inference_lstm_cell_669_layer_call_fn_4064776?-./??}
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064906?012??}
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
J__inference_lstm_cell_670_layer_call_and_return_conditional_losses_4064938?012??}
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
/__inference_lstm_cell_670_layer_call_fn_4064857?012??}
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
/__inference_lstm_cell_670_layer_call_fn_4064874?012??}
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065004?345??}
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
J__inference_lstm_cell_671_layer_call_and_return_conditional_losses_4065036?345??}
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
/__inference_lstm_cell_671_layer_call_fn_4064955?345??}
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
/__inference_lstm_cell_671_layer_call_fn_4064972?345??}
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061902y-./012345!"C?@
9?6
,?)
lstm_798_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_266_layer_call_and_return_conditional_losses_4061932y-./012345!"C?@
9?6
,?)
lstm_798_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062448q-./012345!";?8
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
K__inference_sequential_266_layer_call_and_return_conditional_losses_4062875q-./012345!";?8
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
0__inference_sequential_266_layer_call_fn_4061256l-./012345!"C?@
9?6
,?)
lstm_798_input?????????
p 

 
? "???????????
0__inference_sequential_266_layer_call_fn_4061872l-./012345!"C?@
9?6
,?)
lstm_798_input?????????
p

 
? "???????????
0__inference_sequential_266_layer_call_fn_4061994d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_266_layer_call_fn_4062021d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4061967?-./012345!"M?J
? 
C?@
>
lstm_798_input,?)
lstm_798_input?????????"5?2
0
	dense_266#? 
	dense_266?????????